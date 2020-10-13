## Setup laravel
```bash
php artisan migrate
php artisan db:seed
```
atau 
```bash
php artisan migrate:fresh --seed
```

```bash
php artisan storage:link
php artisan key:generate
```

## Set laravel permission
```bash
sudo chown -R barokah:www-data .
sudo find . -type f -exec chmod 644 {} \;  
sudo find . -type d -exec chmod 775 {} \;
sudo chmod -R ug+rwx storage bootstrap/cache
sudo chgrp -R www-data storage bootstrap/cache
```

Ref : https://stackoverflow.com/questions/30639174/how-to-set-up-file-permissions-for-laravel

## Playing with laravel
make controller 
```bash
php artisan make:controller IndexController
```

make model + migration
```bash
php artisan make:model Test -m
```

make controller resource + model
```bash
php artisan make:controller ProductController --resource --model=Product
```
