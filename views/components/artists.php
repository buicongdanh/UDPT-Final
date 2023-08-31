<div class="container mb-5 mt-2 mx-2">
    <h2>Danh sách ca sĩ</h2>
    
    <table class="table table-striped">
        <tbody>
            <?php 
                if (isset($data['artists'])) {
                    foreach ($data['artists'] as $artist) {
                        echo "<tr>";
                        echo "<td>" . htmlspecialchars($artist['name']) . "</td>";
                        echo "</tr>";
                    }
                } else {
                    echo "<tr><td colspan='2'>Không có dữ liệu</td></tr>";
                }
            ?>
        </tbody>
    </table>
</div>