<div class="container mt-5">
    <h2 class="mb-3">Kết quả tìm kiếm</h2>

    <!-- Hiển thị kết quả Bài hát -->
    <?php if (!empty($data['results']['song'])): ?>
        <h3 class="m-3">Bài hát</h4>
            <?php foreach ($data['results']['song'] as $song): ?>
                    <div class="row m-4">
                        <div class="col-md-8">
                        <?php echo $song['title']; ?> -
                        <?php echo $song['name']; ?>
                        </div>
                        <div class="col-md-2 text-end">
                            <button class="btn btn-outline-primary btn-sm">
                                <i class="fas fa-play"></i> Play
                            </button>
                        </div>
                    </div>
            <?php endforeach; ?>
    <?php endif; ?>

    <?php if (!empty($data['results']['album'])): ?>
        <h3 class="m-3">Bài hát</h4>
            <?php foreach ($data['results']['album'] as $album): ?>
                    <div class="row m-4">
                        <div class="col-md-8">
                        <?php echo $album['Title']; ?>
                        </div>
                        <div class="col-md-2 text-end">
                            <button class="btn btn-outline-info btn-sm">
                                Cover
                            </button>
                        </div>
                    </div>
            <?php endforeach; ?>
    <?php endif; ?>

    <?php if (!empty($data['results']['singer'])): ?>
        <h3 class="m-3">Bài hát</h4>
            <?php foreach ($data['results']['singer'] as $singer): ?>
                    <div class="row m-4">
                        <div class="col-md-8">
                        <?php echo $singer['Name']; ?>
                        </div>
                        <div class="col-md-2 text-end">
                            <?php
                            $imagePath = (isset($singer['ImagePath']) && file_exists($singer['ImagePath'])) ? $singer['ImagePath'] : DEFAULT_ARTIST_IMAGE;
                            ?>
                            <img src="<?php echo $imagePath; ?>" alt="Hình ảnh ca sĩ" width="50" height="50">
                        </div>
                    </div>
            <?php endforeach; ?>
    <?php endif; ?>
</div>

