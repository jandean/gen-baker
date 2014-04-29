<div class="main topLevel" id="grid">

    <?php echo $side; ?>

    <div class="core" id="singleArticle">
        <div class="feature">
            <h2><?php echo $row->title; ?></h2>
            <img src="<?php echo base_url('images/uploads/' . $row->image); ?>">
            <p class="articleContent"><?php echo $row->description; ?></p>
            <div class="social">
                Share on:
                <a data-url="<?php echo current_url(); ?>" data-title="<?php echo $row->title; ?>" class="button small white fb_share"><span class="icon iconfacebook" aria-hidden="true"></span></a>
                <a data-url="<?php echo current_url(); ?>" data-title="<?php echo $row->title; ?>" class="button small white tweet"><span class="icon icontwitter" aria-hidden="true"></span></a>
            </div>
        </div>
        <article>
            <p class="articleContent"><?php echo $row->content; ?></p>
        </article>
    </div>

</div>