# LEGO Global API

## Description

The LEGO Global API is a RESTful API that provides information about all LEGO video-games, movies, themes and sets we could find. It allows users to retrieve details about LEGO games, paginate through the data, and access information about individual games.

## Disclaimer

we are not affiliated, associated, or in any way officially connected LEGO, the LEGO Group, or any companies and/or brands mentioned on our website and api, or their subsidiaries or affiliates.

## Prerequisites and Dependancies

- [Node.js](https://nodejs.org) (version 14.18.1 or later)
- MySQL database server
- [dotenv](https://www.npmjs.com/package/dotenv) (version 16.3.1 or later)

## Installation Guide

1. Clone the repository: `git clone https://github.com/dragan-constantin/lego-global-api.git`
  a. Navigate to the project directory: `cd lego-global-api`
2. Or download the project: [here](https://github.com/Dragan-Constantin/LEGO-Global-API/archive/refs/heads/main.zip)
3. Install dependencies: `npm install`
4. Create the database using the provided [file](database/db.sql): `database/db.sql`
5. Set up your MySQL database and update the `.env.example` file with the appropriate credentials.
6. Rename `.env.example` to `.env` for it to work as intended.
7. Run the application: `node app.js`

## User Guide and Troubleshooting

- If you encounter issues during installation, please make sure you have the correct Node.js version and that your MySQL server is running.
- For further troubleshooting and guidance, please refer to our [documentation](docs/api-docs.md)

## Roadmap

* [x] Add all pc and console LEGO Games
* [x] Add LEGO flash games
* [ ] Add all LEGO themes
* [ ] Add all LEGO colours
* [ ] Add all LEGO sets per theme

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

## User License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contributors

<p align="left">
&emsp;• Dragan Constantin:
<a href="https://www.linkedin.com/in/dragan-constantin" target="_blank"><img align="center" alt="LinkedIn Profile" width="16px" src="assets/images/README/linkedin-icon.png"></a>&nbsp;<a href="" target="_blank"><img align="center" alt="email" width="16px" src="assets/images/README/mail-icon.png" style="a:link{text-decoration: none;}"></a><br>
</p>

## 🤝 Contributing

Contributions, issues and feature requests are welcome.<br />
Feel free to check [issues page](https://github.com/dragan-constantin/lego-global-api/issues) if you want to contribute.<br />
[Check the contributing guide](./CONTRIBUTING.md).<br />

## Author

👤 **Dragan Constantin**

- <img align="center" alt="LinkedIn Profile" width="16px" src="assets/images/README/linkedin-icon.png"> LinkedIn: [dragan-constantin](https://www.linkedin.com/in/dragan-constantin)
- <img align="center" alt="email" width="16px" src="assets/images/README/mail-icon.png" style="a:link{text-decoration: none;}"> Mail: [constantin.dragan@efrei.net](mailto:constantin.dragan@efrei.net&subject=LEGO%20Global%20API&body=%0A-----------%0APlease%20indicate%20your%20name%20and%20surname%20and%20how%20you%20came%20to%20find%20this%20repository.%0AIf%20your%20are,%20or%20were,%20a%20student%20at%20EFREI,%20please%20indicate%20your%20class%20(along%20with%20the%20section)%0A%0AThank%20you%20in%20advance,%0AThe%20LEGO%20Global%20API%20team.%0A-----------%0A%0A)
- Github: [@dragan-constantin](https://github.com/dragan-constantin)

## Code Contributors
<a href="https://github.com/dragan-constantin/lego-global-api/graphs/contributors"><img src="https://opencollective.com/lego-global-api/contributors.svg?width=890&button=false" /></a>

## Show your support

Please ⭐️ this repository if this project helped you!

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/Y8Y3HZDYU)
[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/coffeeoverflow)

## 📝 License

Copyright © 2024 [Dragan Constantin](https://github.com/dragan-constantin).<br>
This project is [MIT](LICENSE) licensed.
<br>

## Feedback

We welcome your feedback! Feel free to open an issue or contact us directly with your suggestions or concerns.

<br>