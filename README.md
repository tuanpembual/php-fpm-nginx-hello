# Readme

Repo ini merupakan contoh implementasi docker untuk menjalankan stack NGINX, PHP, dan PHP-FPM dalam satu container.

## Cara Kerja
Menggunakan base php:7.2-fpm (Debain Buster) kemudian ditambahkan paket NGINX melalu apt. Agar bisa menjalankan NGINX dan PHP bersamaan, saya menambahkan entrypoint.sh sebagai sekrip bawaan.

## Spec
```
Workdir = WORKDIR /var/www/html
PHP Port = 9000
```

## Lisensi
MIT
