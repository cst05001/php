#!/bin/bash
/opt/f8n/php/sbin/php-fpm --allow-to-run-as-root
/opt/f8n/nginx/sbin/nginx -g 'daemon off;'
