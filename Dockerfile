FROM httpd:latest

COPY ./book/_build/html /usr/local/apache2/htdocs