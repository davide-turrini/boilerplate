# Sanita a domicilio

Welcome to the "Sanita a domicilio" project repository! This monorepo contains Docker Compose files and directories for various components, including the web application, database, and Directus CMS, allowing you to create a comprehensive healthcare application that can be accessed from the comfort of your home.

## Table of Contents
- [Getting Started](#getting-started)
- [Project Structure](#project-structure)
- [Running the Application](#running-the-application)
- [Development](#development)
- [Contributing](#contributing)
- [License](#license)

## Getting Started

Before you begin, ensure you have the following prerequisites installed on your system:

- Docker: [Install Docker](https://docs.docker.com/get-docker/)
- Docker Compose: [Install Docker Compose](https://docs.docker.com/compose/install/)

## Project Structure

This repository is structured as follows:

- **web**: Contains the source code for the web application.
- **database**: Contains configurations and scripts for the database.
- **directus**: Contains the Directus CMS configurations.

## Running the Application

To run the "Sanita a domicilio" application locally, follow these steps:

1. Clone this repository:

   ```bash
   git clone https://github.com/yourusername/sanita-a-domicilio.git
   cd sanita-a-domicilio
   ```

2. Build and start the application using Docker Compose in development mode:

   ```bash
   sudo docker-compose -f docker-compose.dev.yml up
   ```

   This command will create and start all the necessary containers for the application, including the web server, database, and Directus CMS.

3. Access the web application by opening your browser and navigating to [http://localhost](http://localhost).

## Development

If you are a developer and wish to make changes to the project, follow these additional steps:

1. Navigate to the `web` directory to work on the web application code.

2. For database-related changes, modify the configurations and scripts located in the `database` directory.

3. For content management using Directus, configure and customize Directus settings in the `directus` directory.

4. After making changes, rebuild and restart the application:

   ```bash
   sudo docker-compose -f docker-compose.dev.yml up --build
   ```

5. WIP.. we need to talk about the `create-service.sh`, `delete-service.sh`, `the CI/CD pipeline` and the way the PRs are opened and commented

## Deployment

WORK IN PROGRESS..
We need to finish the script to perform CI/CD and deploy preview. The app is published on a VPS running `docker compose`  so no big stuff. Outside of docker or maybe inside (we need to think about it) there is a Caddy server which acts as a reverse proxy. Whenever a PR is opened and commented whith `create dev preview` on the VPS server the repo get cloned on the interested branch. Then the `compose dev` script is created and 

## Contributing

We welcome contributions to improve "Sanita a domicilio." Whether you want to fix bugs, add features, or improve documentation, your contributions are highly appreciated. To get started, please follow these guidelines:

1. Fork the repository.

2. Create a new branch for your work:

   ```bash
   git checkout -b feature/my-feature
   ```

3. Make your changes and commit them with clear and concise commit messages.

4. Push your changes to your forked repository:

   ```bash
   git push origin feature/my-feature
   ```

5. Create a pull request (PR) to the `main` branch of this repository, describing your changes and why they are valuable.

6. Your PR will be reviewed by the maintainers, and changes may be requested before merging.

7. Once your PR is accepted and merged, your contributions will be part of "Sanita a domicilio."

## License

This project is licensed under the [MIT License](LICENSE).

## Acknowledgments

We would like to express our gratitude to the open-source community for their valuable contributions and inspiration.

## Contact

If you have any questions, suggestions, or need assistance, feel free to reach out to us at [contact@sanitaadomicilio.com](mailto:contact@sanitaadomicilio.com).

---

Thank you for choosing "Sanita a domicilio." We hope this application helps improve healthcare accessibility and convenience for everyone.

Happy coding!
