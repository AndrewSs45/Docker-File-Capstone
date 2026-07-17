# Capstone Database

MySQL 8.0 database setup for the Capstone project.

## Usage

### Development
```bash
docker-compose up -d
```

### Production
```bash
docker-compose -f docker-compose.yml -f docker-compose.prod.yml up -d
```

## Connection Details

- **Host:** localhost
- **Port:** 3307 (mapped from 3306)
- **Database:** capstone_db
- **User:** administrator
- **Password:** (set in .env)

## Environment Variables

See `.env.example` for required configuration.

## Tables

- `usuarios` — User accounts
