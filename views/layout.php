<!DOCTYPE html>
<html lang="VN">

<head>
    <title>Home</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>

<body>
    <div class="banner" style="height: 15vh; overflow: hidden; position: relative;">
        <img src="<?php echo(_WEB_ROOT); ?>/public/images/banner.jpg" alt="Banner Description" style="width: 100%; max-height: 15vh; object-fit: cover; display: block;">
    </div>


    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="<?php echo(_WEB_ROOT);?>"><i class="fas fa-home"></i></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="nav nav-pills ms-auto mb-2 mb-lg-0 px-2 mx-2">
                    <li class="nav-item px-2">
                        <a class="nav-link active" href="<?php echo(_WEB_ROOT);?>">Tìm kiếm</a>
                    </li>
                    <li class="nav-item px-2">
                        <a class="nav-link active" href="<?php echo(_WEB_ROOT.'/home/addnewsong');?>">Thêm bài hát mới</a>
                    </li>
                    <li class="nav-item px-2">
                        <a class="nav-link active" href="<?php echo(_WEB_ROOT.'/home/themAlbumMoi');?>">Thêm album</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="row" style="margin-top: 20px;">
        <div class='col-md-3'>
            <div class="row"><?php include ROOT_PATH.'/views/components/genres.php'; ?></div>
            <div class="row"><?php include ROOT_PATH.'/views/components/artists.php'; ?></div>
        </div>
        <div class='col-md-6'>
        <?php
            if (isset($data['addSong']) && $data['addSong']) {
                echo '<div class="row">';
                include ROOT_PATH . '/views/components/add_song.php';
                echo '</div>';
            } else {
                if (isset($data['results'])) {
                    echo '<div class="row">';
                    include ROOT_PATH . '/views/components/search_result.php';
                    echo '</div>';
                } else {
                    echo '<div class="row">';
                    include ROOT_PATH . '/views/components/search.php';
                    echo '</div>';
                }
            }
        ?>
        </div>
        <div class='col-md-3'>
        <?php
            if (isset($_SESSION["user"])) {
                echo '<div class="row">';
                include ROOT_PATH . '/views/components/profile.php';
                echo '</div>';
            } else {
                echo '<div class="row">';
                include ROOT_PATH . '/views/components/login.php';
                echo '</div>';
            }
        ?>
            <div class="row"><?php include ROOT_PATH.'/views/components/album.php'; ?></div>
        </div>
    </div>
    

    <footer class="bg-light text-center text-lg-start"
        style="bottom: 0; left:0; right:0; position: fixed; text-align: center; margin-top: 20px;">
        <div class="text-center p-3">
            19127348 - Bùi Công Danh
        </div>
    </footer>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
    <script src="https://unpkg.com/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/5.0.0-beta3/js/bootstrap.bundle.min.js"></script>
</body>

</html>