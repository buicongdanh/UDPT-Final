<div class="container mb-5 mt-2 mx-2">
    <h2>Danh sách dòng nhạc</h2>
    
    <table class="table table-striped">
        <tbody>
            <?php 
                if (isset($data['genres'])) {
                    foreach ($data['genres'] as $genre) {
                        echo "<tr>";
                        echo "<td>" . htmlspecialchars($genre['GenreName']) . "</td>";
                        echo "</tr>";
                    }
                } else {
                    echo "<tr><td colspan='2'>Không có dữ liệu</td></tr>";
                }
            ?>
        </tbody>
    </table>
</div>