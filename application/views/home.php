<div class="main" id="home">
    <div class="topTier">
        <div class="social">
            <h3>Connect with us!</h3>
            <div>
                <a href="https://www.facebook.com/newgenbaker" target="_blank"><span class="icon iconfacebook" aria-hidden="true"></span></a>
                <a href="https://twitter.com/newgenbaker" target="_blank"><span class="icon icontwitter" aria-hidden="true"></span></a>
                <a href="http://instagram.com/themayakitchen" target="_blank"><span class="icon iconinstagram" aria-hidden="true"></span></a>
            </div>
        </div>
        <?php
        if ($featured->num_rows() > 0) :
            $feat = $featured->row();
            ?>
            <div class="hero">
                <img src="<?php echo base_url($this->config->item('image_upload_path') . $feat->image); ?>">
                <div class="caption">
                    <span><?php echo $feat->title; ?></span>
                    <a href="<?php echo base_url('blogs/' . $feat->slug); ?>" class="button small teal">Read More</a>
                </div>
            </div>
        <?php endif; ?>

        
    </div>

    <?php echo $side; ?>

    <div class="core">
        <div class="latestRecipes">
            <?php if ($recipes) : ?>
                <h6>Latest Recipes</h6>
                <?php foreach ($recipes as $row) : ?>
                <div class="card">
                    <img src="<?php echo base_url($this->config->item('image_upload_path') . $row->image); ?>" width="100%">
                    <div>
                        <a href="<?php echo base_url('recipes/' . $row->slug); ?>"><h4><?php echo $row->title; ?></h4></a>
                    </div>
                </div>
                <?php endforeach; ?>
            <?php endif; ?>
        </div>
        <div class="latestBlogs">
            <?php if ($blogs) : ?>
                <h6>Latest BakeBlogs</h6>
                <?php foreach ($blogs as $row) : ?>
                <a href="<?php echo base_url('blogs/' . $row->slug); ?>">
                    <div class="card text">
                        <h3><?php echo $row->title; ?></h3>
                    </div>
                </a>
                <?php endforeach; ?>
            <?php endif; ?>
        </div>
    </div>

</div>