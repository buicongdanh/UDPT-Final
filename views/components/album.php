<div class="container mb-5 mt-2 mx-2">
    <h2>Danh sách Album</h2>
    
    <table class="table table-striped">
        <thead>
            <tr>
                <th scope="col">Title</th>
                <th scope="col">Ngày phát hành</th>
            </tr>
        </thead>
        <tbody>
            <?php 
                if (isset($data['albums'])) {
                    foreach ($data['albums'] as $album) {
                        echo "<tr>";
                        echo "<td>" . htmlspecialchars($album['Title']) . "</td>";
                        echo "<td>" . htmlspecialchars($album['ReleaseDate']) . "</td>";
                        echo "</tr>";
                    }
                } else {
                    echo "<tr><td colspan='2'>Không có dữ liệu</td></tr>";
                }
            ?>
        </tbody>
    </table>
</div>