<?php
$imagePath = "public/" . $_SESSION['user']['AvatarPath'];
?>
<div class=mb-5 mt-2 mx-2">
    <div>
        Welcome,
        <?php echo $_SESSION['user']['UserName']; ?>
    </div>
    <div>
        <img src="<?php echo(_WEB_ROOT); ?>/public/<?php echo $_SESSION['user']['AvatarPath']; ?>" alt="User Avatar" width="100" height="100">
    </div>

    <form action="/19127348_BuiCongDanh/auth/logout" method="post">
        <div>
            <button type="submit">Logout</button>
        </div>
    </form>
</div>