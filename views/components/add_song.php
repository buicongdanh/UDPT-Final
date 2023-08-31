<div class="container mt-5">
    <h2>Thêm Mới Bài Hát</h2>
    <form method="POST" enctype="multipart/form-data" action="<?php echo _WEB_ROOT . '/home/addSong'; ?>">
        <div class="mb-3">
            <label for="titleName" class="form-label">Tên Bài Hát</label>
            <input type="text" class="form-control" id="titleName" name="titleName" required>
        </div>
        <div class="mb-3">
            <label for="releaseDate" class="form-label">Ngày Phát Hành</label>
            <input type="date" class="form-control" id="releaseDate" name="releaseDate" required>
        </div>
        <div class="mb-3">
            <label for="artistName" class="form-label">Tên Nghệ Sĩ</label>
            <input type="text" class="form-control" id="artistName" name="artistName" required>
        </div>
        <div class="mb-3">
            <label for="length" class="form-label">Thời Lượng</label>
            <input type="text" class="form-control" id="length" name="length" required>
        </div>
        <div class="mb-3">
            <label for="videoUpload" class="form-label">Tải Lên file mp3</label>
            <input type="file" class="form-control" id="audioUpload" name="audioUpload" accept=".mp3,.mp4" required>
        </div>
        <button type="submit" class="btn btn-primary">Thêm Mới</button>
    </form>
</div>