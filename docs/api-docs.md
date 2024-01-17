# LEGO Global API Documentation

## Introduction

Welcome to the LEGO Global API documentation. This API provides information about all the LEGO video-games, movies, themes, and sets we could find. The API supports RESTful operations for LEGO games (the rest is soon to come) and includes pagination for listing games.

## Disclaimer

we are not affiliated, associated, or in any way officially connected LEGO, the LEGO Group, or any companies and/or brands mentioned on our website and api, or their subsidiaries or affiliates.

## API Diagram

```plaintext
+-----------------------------------------------------+
|                  LEGO  Global  API                  |
|                                                     |
|  /api                                               |
|   |-- GET                                           |
|   |   |-- Response: { categories: ["games"] }       |
|                                                     |
|  /api/games                                         |
|   |-- GET                                           |
|   |   |-- Query Parameters: page (optional)         |
|   |   |-- Response: { info, results }               |
|   |                                                 |
|   |-- GET /:id                                      |
|       |-- URL Parameters: id (required)             |
|       |-- Responses: 200 (OK), 404 (Not Found)      |
+-----------------------------------------------------+
```

## Base URL

The base URL for this API is `http://localhost:3000`.

## Routes

### 1. Get List of Categories

- **Endpoint:** `/api`
- **Method:** `GET`
- **Description:** Fetch a list of all tables in the LEGO database.

#### Request

- **URL:** `http://localhost:3000/api`

#### Responses

- **200 OK**
  ```json
  {
    "categories": ["games", "comingsoon"]
  }
  ```
- **500 Internal Server Error**
  ```json
  {
    "error": "Internal Server Error"
  }
  ```

### 2. Get Paginated List of LEGO Video Games

- **Endpoint:** `/api/games`
- **Method:** `GET`
- **Description:** Fetch a paginated list of LEGO video games with information about the total number of games, total number of pages, next page's url, and previous page's url.
- **Query Parameters:**
  - `page` (optional): Page number (default is 1)

#### Request

- **URL:** `http://localhost:3000/api/games`

#### Responses

- **200 OK**

  ```json
  {
    "info": {
      "count": 50,
      "pages": 3,
      "next": "/api/games?page=2",
      "prev": null
    },
    "results": [
      {
        "game_id": 1,
        "title": "LEGO Game 1",
        "release_date": "2022-01-01",
        "platform": "Xbox",
        "genre": "Adventure",
        "developer": "LEGO Studios",
        "rating": 4.5,
        "description": "Exciting adventure in the LEGO world."
      },
      // ... (more games)
    ]
  }
  ```
- **500 Internal Server Error**

  ```json
  {
    "error": "Internal Server Error"
  }
  ```

### 3. Get Information about a Specific LEGO Game

- **Endpoint:** `/api/games/:id`
- **Method:** `GET`
- **Description:** Fetch information about a specific LEGO game by providing its ID.
- **Path Variable:**
  - `id`: ID of the LEGO game

#### Request

- **URL:** `http://localhost:3000/api/games/1`

#### Responses

- **200 OK**

  ```json
  {
    "game_id": 1,
    "title": "LEGO Game 1",
    "release_date": "2022-01-01",
    "platform": "Xbox",
    "genre": "Adventure",
    "developer": "LEGO Studios",
    "rating": 4.5,
    "description": "Exciting adventure in the LEGO world."
  }
  ```
- **404 Not Found**

  ```json
  {
    "error": "Game not found"
  }
  ```
- **500 Internal Server Error**

  ```json
  {
    "error": "Internal Server Error"
  }
  ```

## Troubleshooting

**Common Issues:**

- Incorrect API endpoint or method.
- Invalid or missing parameters in the request.
- Database connection issues.

If you encounter any issues or have questions, please refer to the following troubleshooting steps:

1. **Error 500 - Internal Server Error:**

   - Check the server logs for details on the internal server error.
   - Check your MySQL database connection details in `dbconfig.js`.
   - Ensure that the MySQL server is runnign and accessible.
2. **Error 404 - Not Found:**

   - For routes with IDs, check if the specified resource/ID exists in the database.
3. **Error 403 - Forbidden:**

   - Ensure that the request has the necessary permissions to access the resource.
   - ⚠️ Attention :
     The LEGO Global API does not currently require authentication for public access. It is open for general use. For future enhancements or specific use cases, authentication mechanisms such as API keys or OAuth tokens may be implemented. Please refer to the API documentation for any updates on authentication requirements.
4. **General Troubleshooting:**

   - Review your API code for potential syntax errors or logical issues.
   - Check the console logs for any error messages.
   - Refer to the [routes API documentation](#routes) for proper request and response formats.
5. **Other Issues:**

   - If you encounter other issues, feel free to reach out to the API administrator for assistance.
   - Additionally, you can [open an issue](https://github.com/Dragan-Constantin/LEGO-Global-API/issues) on our GitHub.
