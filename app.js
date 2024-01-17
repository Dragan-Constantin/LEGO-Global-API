require('dotenv').config();
const express = require('express');
const bodyParser = require('body-parser');
const mysql = require('mysql');

const app = express();
const port = process.env.APP_PORT;
const DB_NAME = process.env.DB_NAME;

app.use(bodyParser.json());

const db = mysql.createConnection({
    host: process.env.DB_HOSTNAME,
    user: process.env.DB_USERNAME,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME
});

db.connect(err => {
    if (err) {
        console.error('Error connecting to MySQL:', err);
    } else {
        console.log('Connected to MySQL database');
    }
});

// Define routes
// Route to get a list of all tables
app.get('/api', (req, res) => {
    db.query('SHOW TABLES', (err, result) => {
        if (err) {
            res.status(500).json({ error: 'Internal Server Error' });
        } else {
            const categories = result.map(row => row[`Tables_in_${DB_NAME}`]);
            res.status(200).json({ categories });
        }
    });
});

// Route to get information about a specific LEGO game by ID
app.get('/api/games/:id', (req, res) => {
    const gameId = req.params.id;
    db.query('SELECT * FROM games WHERE game_id = ?', [gameId], (err, result) => {
        if (err) {
            res.status(500).json({ error: 'Internal Server Error' });
        } else if (result.length === 0) {
            res.status(404).json({ error: 'Game not found' });
        } else {
            res.status(200).json(result[0]);
        }
    });
});

// Route to get information about LEGO games with pagination
app.get('/api/games', (req, res) => {
    itemsPerPage = 20;
    const page = req.query.page || 1;
    const offset = (page - 1) * itemsPerPage;

    // Fetch the total count of items
    db.query('SELECT COUNT(*) AS count FROM games', (err, countResult) => {
        if (err) {
            res.status(500).json({ error: 'Internal Server Error' });
        } else {
            const totalCount = countResult[0].count;

            // Fetch the data for the current page
            db.query('SELECT * FROM games LIMIT ? OFFSET ?', [itemsPerPage, offset], (err, result) => {
                if (err) {
                    res.status(500).json({ error: 'Internal Server Error' });
                } else {
                    const totalPages = Math.ceil(totalCount / itemsPerPage);
                    const nextPage = page < totalPages ? `/api/games?page=${parseInt(page) + 1}` : null;
                    const prevPage = page > 1 ? `/api/games?page=${parseInt(page) - 1}` : null;

                    const response = {
                        info: {
                            count: totalCount,
                            pages: totalPages,
                            next: nextPage,
                            prev: prevPage,
                        },
                        results: result,
                    };

                    res.status(200).json(response);
                }
            });
        }
    });
});

app.post('/api/games', (req, res) => {
    const newGame = req.body;
    console.log('Received request headers:', req.headers);
    console.log('Received request params:', req.params);
    console.log('Received request body:', req.body);

    // Remove null or undefined fields
    Object.keys(newGame).forEach(key => newGame[key] == null && delete newGame[key]);

    // Validate that the required fields are present
    const requiredFields = ['title', 'release_date', 'platform', 'genre', 'developer', 'description'];
    const missingFields = requiredFields.filter(field => !newGame[field]);

    if (missingFields.length > 0) {
        res.status(400).json({ error: `Missing required fields: ${missingFields.join(', ')}` });
    } else {
        // Insert the new game into the database
        db.query('INSERT INTO games SET ?', newGame, (err, result) => {
            if (err) {
                console.error(err);
                res.status(500).json({ error: 'Internal Server Error' });
            } else {
                res.status(201).json({ message: 'Game added successfully', gameId: result.insertId });
            }
        });
    }
});

app.listen(port, () => {
    console.log(`Server is running on http://localhost:${port}`);
});
