# UDPT - Final
Bài thi cuối kỳ môn Ứng dụng phân tán, thực hiện vào ngày 27/8/2023

Thực hiện bởi [buicongdanh](https://www.facebook.com/buicong.danh21/)

Điểm: 8.5
## Description
### Công nghệ sử dụng
- Frontend: Boostrap 5.0
- Backend: PHP
- CSDL: MySQL

### Các tính năng
#### Hoàn thành
- Xây dựng giao diện trang web theo yêu cầu đề bài 
- Đăng nhập/Đăng xuất
- Tìm kiếm theo từ khóa, hiển thị kết quả theo yêu cầu
- Thêm một bài hát mới

#### Chưa hoàn thành
- Chức năng tìm kiếm được cài đặt dùng AJAX
- Phân trang kết quả tìm kiếm

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
