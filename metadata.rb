name             "phppgadmin"
maintainer       "BNOTIONS"
maintainer_email "jonathon@bnotions.com"
license          "Apache 2.0"
description      "Contains a recipe for installing PhpPgAdmin"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.0"

recipe "phppgadmin", "Install phppgadmin and configure a virtual host for it."

depends          "php-fpm"
