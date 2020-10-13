# Decision Support System

This is a Decision Support System (DSS) web application using Simple Additive Weighting (SAW) algorithm.

Features :

- Simple Additive Weighting algorithm

- Customizable criteria

- Result table

Screenshot :
[![menu](https://raw.githubusercontent.com/ilham-openbeta/laravel-dss/main/screenshot/alternative_menu.png "Alternative Menu")](https://raw.githubusercontent.com/ilham-openbeta/laravel-dss/main/screenshot/alternative_menu.png)

Some library used in this project :

- Laravel 8.0

- AdminLTE 3.1.0

- Bootstrap 4.5.2 (+ Popper.js)

- DataTables 1.10.21

- jQuery 3.5.1

Tested on :

- Apache Web Server 2.4.43

- PHP 7.4.11

- MariaDB 10.3.22

## How to Install

1. Check [laravel documentation](https://laravel.com/docs/8.x) to see the requirement.

2. Clone this repository to your web server directory.

3. Install dependencies.
   
   ```bash
   composer install
   ```

4. Create .env file based on .env.example file and set it up.

5. Migrate the empty database table or import the database example.sql for example.
   
   ```bash
   php artisan migrate
   ```

## TODO

- Add authentication
- Add alternative group
- Add another algorithm
- Use jetstream
- Use AJAX

## License

MIT. See the LICENSE file.
