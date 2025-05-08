# Cloud-Based Bus Pass System

A modern, containerized bus pass management system built with PHP, MySQL, and Docker.

## Features

- Online bus pass registration and renewal
- Secure user authentication
- Pass management interface
- Admin dashboard
- Integrated payment system
- Responsive design

## Technologies Used

- PHP 8.0
- MySQL 8.0
- Apache Web Server
- Docker & Docker Compose
- HTML5, CSS3, JavaScript
- Bootstrap Framework

## Prerequisites

- Docker
- Docker Compose

## Quick Start

1. Clone the repository:
```bash
git clone https://github.com/preempareva/Cloud-Based-Bus-Pass-System.git
cd Cloud-Based-Bus-Pass-System
```

2. Start the containers:
```bash
docker-compose up -d
```

3. Access the application:
- Web Application: http://localhost:8080
- phpMyAdmin: http://localhost:8081

## Environment Variables

Configure these environment variables in docker-compose.yml:

```yaml
DB_HOST: db
DB_USER: buspass_user
DB_PASSWORD: buspass_password
DB_NAME: travel
```

## Docker Images

- Main Application: `docker.io/preempareva/ccl-project:latest`
- Database: `mysql:8.0`
- phpMyAdmin: `phpmyadmin/phpmyadmin`

## Ports

- Web Application: 8080
- Database: 3306
- phpMyAdmin: 8081

## Development

1. Build the Docker image:
```bash
docker build -t ccl-project .
```

2. Run the development environment:
```bash
docker-compose up -d
```

## Contributing

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details.
