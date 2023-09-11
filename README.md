# UDPT - Final
Bài thi cuối kỳ môn Ứng dụng phân tán, thực hiện vào ngày 27/8/2023

Thực hiện bởi  [Danh Bui](https://www.facebook.com/buicong.danh21/)
## Description
### Công nghệ sử dụng
- Frontend: Boostrap 5.0
- Backend: PHP
- CSDL: MySQL

### Các tính năng
Hầu hết đã hoàn thiện các tính năng trong đề bài, trừ 2 tính năng sau:
- Tìm kiếm sử dụng AJAX
- Phân trang

## Getting Started
### Configuration
Cấu hình file config.inc.php username và mật khẩu

```PHP
<?php 
$config['database'] = [
    'host'      => 'localhost',
    'user'      => 'YOUR_USER_NAME',
    'password'  => 'YOUR_USER_PASSWORD',
    'db'        => 'albumdb'
];

```

### Run app
Khởi động XAMPP. Trang mặc định sẽ là **http://localhost:8080/19127348_BuiCongDanh/**
