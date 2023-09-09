<?php
    $relativePath = "/19127348_BuiCongDanh/public/" . $_SESSION['user']['AvatarPath'];
    $absolutePath = $_SERVER['DOCUMENT_ROOT'] . $relativePath;

    if (!file_exists($absolutePath) || empty($_SESSION['user']['AvatarPath'])) {
        $userImagePath = DEFAULT_USER_IMAGE;
    } else {
        $userImagePath = "http://localhost:8080" . $relativePath;
}
?>
<div class="container mt-5">
    <div class="card p-4">
        <div class="d-flex align-items-center mb-3">
            <img src="<?php echo $userImagePath; ?>" alt="User Avatar" class="rounded-circle me-3" width="100" height="100">
            <h5 class="mb-0">Welcome, <?php echo $_SESSION['user']['UserName']; ?></h5>
        </div>
        <div class="text-center mb-3">
            <form action="/19127348_BuiCongDanh/auth/logout" method="post">
                <button type="submit" class="btn btn-danger">Logout</button>
            </form>
        </div>
    </div>
</div>


