# ABZ wordpress

This is wordpress docker project for Devops position.

This image extends official wordpress image with:

1. PHP redis extension
2. Integrated wordpress cli

## Running locally

Quickstart:

```shell
# Start wordpress and dependent services
docker compose up -d

# Install wordpress
docker compose exec --user www-data wordpress wp core install \
--url=localhost \
--title=Wordpress \
--admin_user=admin \
--admin_password=admin \
--admin_email=wp-admin@example.com \
--skip-email
```