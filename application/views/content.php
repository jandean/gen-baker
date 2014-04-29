<div class="main topLevel" id="grid">

    <?php echo $side; ?>

    <div class="core" id="singleArticle">
        <div class="feature">
            <h2><?php echo $row->title; ?></h2>
            <img src="<?php echo base_url('images/uploads/' . $row->image); ?>">
            <p class="articleContent"><?php echo $row->description; ?></p>
            <div class="social">
                Share on:
                <a href="https://www.facebook.com/sharer.php?t=<?php echo $row->title; ?>&u=<?php echo current_url(); ?>"  class="button small white"><span class="icon iconfacebook" aria-hidden="true"></span></a>
                <a href="http://twitter.com/intent/tweet?text=<?php echo $row->title; ?>+<?php echo current_url(); ?>" class="button small white"><span class="icon icontwitter" aria-hidden="true"></span></a>
            </div>
        </div>
        <article>
            <p class="articleContent"><?php echo $row->content; ?></p>
        </article>
    </div>

</div>