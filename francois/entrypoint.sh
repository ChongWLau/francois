#!/bin/bash

# python create_db_if_not_exists.py

# python manage.py migrate

python manage.py collectstatic --no-input

if [ "$DJANGO_ENV" = "development" ]
then
    # python manage.py loaddata dummy_data.json
    uwsgi --ini uwsgi.ini:development
else
    uwsgi --ini uwsgi.ini:production
fi
