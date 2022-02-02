set -e

source "$(dirname "$0")/laravel.sh"

echo "Deploying application..."

php artisan down --refresh=15

git pull origin master

php artisan up

echo "Application deployed."