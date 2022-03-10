<?php

    $title = 'Streaming Availibility';

    include './vue/common/header_admin.php';

?>

    <form action="" method="POST" class="text-center mt-5">

        <input type="submit" name="update_media" value="Update Media Database" class="btn btn-dark w-25 fs-2 pt-4 pb-4 rounded" />

    </form>

    <?php 

        if(isset($message)) {
            ?>

                <p class="streaming_availibility_message"> <?= $message ?></p>

        <?php

        }

    ?>
