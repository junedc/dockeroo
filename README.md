
# Updated Docker Workspace (Safe Ports)

## Host ports
- Laravel API: http://localhost:8000
- MySQL: 127.0.0.1:3307
- Redis: 127.0.0.1:6380
- Meilisearch: http://localhost:7701
- MailHog SMTP: 127.0.0.1:1026
- MailHog UI: http://localhost:8026
- phpMyAdmin: http://localhost:8082
- admin-ui: http://localhost:5173
- ordering-portal-develop: http://localhost:5174
- ordering-portal-master: http://localhost:5175

## Laravel internal container service hosts (do not change)
DB_HOST=mysql, DB_PORT=3306
REDIS_HOST=redis, REDIS_PORT=6379
MEILISEARCH_HOST=http://meilisearch:7700
MAIL_HOST=mailhog, MAIL_PORT=1025




docker compose exec starline-api-app composer require predis/predis


docker compose exec starline-api-app php artisan migrate:status