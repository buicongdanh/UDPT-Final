<div class="container mt-5">
    <h2 class="mb-3">Tìm kiếm</h2>
    <form id="search-form" action="<?php echo _WEB_ROOT . '/home/search'; ?>" method="GET">
        <div class="input-group mb-3">
            <input type="text" name="keyword" id="keyword-input" class="form-control" placeholder="Nhập từ khóa..." aria-label="Từ khóa"
                aria-describedby="search-button">
            <button class="btn btn-outline-secondary" id="search-button"><i
                    class="fas fa-search"></i></button>
        </div>

        <div class="form-check form-check-inline">
            <input class="form-check-input" type="checkbox" name="searchType[]" id="singer" value="singer">
            <label class="form-check-label" for="singer">Ca sĩ</label>
        </div>

        <div class="form-check form-check-inline">
            <input class="form-check-input" type="checkbox" name="searchType[]" id="album" value="album">
            <label class="form-check-label" for="album">Album</label>
        </div>

        <div class="form-check form-check-inline">
            <input class="form-check-input" type="checkbox" name="searchType[]" id="song" value="song">
            <label class="form-check-label" for="song">Bài hát</label>
        </div>

    </form>
</div>

<script>
    document.getElementById('search-button').addEventListener('click', function(e) {
        e.preventDefault();

        var keyword = document.getElementById('keyword-input').value;
        var checkboxes = document.querySelectorAll('input[name="searchType[]"]:checked');
            
        if (!keyword.trim()) {
            alert("Please input a searching keyword");
            return;
        }

        if (checkboxes.length === 0) {
            alert("Please choose at least a search type (Ca sĩ, Album, Bài hát).");
            return;
        }

        document.getElementById('search-form').submit();
    });

</script>