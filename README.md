# LEGO Global API

## Description

The LEGO Global API is a RESTful API that provides information about all LEGO video-games, movies, themes and sets we could find. It allows users to retrieve details about LEGO games, paginate through the data, and access information about individual games.

## Prerequisites

- Node.js (version 14.18.1)
- MySQL database server

## Installation Guide

1. Clone the repository: `git clone https://github.com/dragan-constantin/lego-global-api.git`
2. Navigate to the project directory: `cd lego-global-api`
3. Install dependencies: `npm install`
4. Set up your MySQL database and update the `dbconfig.js` file with the appropriate credentials.
5. Run the application: `node app.js`

### Troubleshooting

- If you encounter issues during installation, please make sure you have the correct Node.js version and that your MySQL server is running.

## User Guide

### Get List of Tables

- Endpoint: `/api`
- Method: GET
- Description: Retrieve a list of all tables in the LEGO database.

### Get Paginated List of LEGO Games

- Endpoint: `/api/games`
- Method: GET
- Parameters: `page` (optional)
- Description: Retrieve a paginated list of LEGO games with information about the total count, pages, next page, and previous page.

### Get Information About a Specific LEGO Game

- Endpoint: `/api/games/:id`
- Method: GET
- Parameters: `id` (game ID)
- Description: Retrieve information about a specific LEGO game by providing its ID.

<!-- Include more sections as needed -->

## Roadmap (Gantt Chart)

![Gantt Chart](link-to-your-gantt-chart-image.png)

## User License

This project is licensed under the [Your License Name] License - see the [LICENSE.md](LICENSE.md) file for details.

## Contributors

- [Your Name] - [Your Contact Information]
- [Contributor 1] - [Contact Information]
- ...

## Images

![LEGO Global API](link-to-your-image.png)

## Links

- [Presentation Video](link-to-your-video)
- [Implementation Example](link-to-your-example)

## Feedback

We welcome your feedback! Feel free to open an issue or contact us directly with your suggestions or concerns.
