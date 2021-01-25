#!/bin/sh -e

cd $(dirname $(echo $0))

python manage.py collectstatic --no-input
python manage.py migrate --no-input
python manage.py update_index
