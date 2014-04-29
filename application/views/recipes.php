<div class="main topLevel" id="grid">

    <?php echo $side; ?>

    <div class="core" id="recipes">
        <?php
        if ($featured->num_rows() > 0) :
            $feat = $featured->row();
            ?>
            <div class="feature">
                <a href="<?php echo base_url('index.php/recipes/' . $feat->slug); ?>"><h3><?php echo $feat->title; ?></h3></a>
                <img src="<?php echo base_url($this->config->item('image_upload_path') . $feat->image); ?>">
                <p class="articleContent"><?php echo $feat->description; ?></p>
                <div class="social">
                    Share on:
                    <a href="https://www.facebook.com/sharer.php?t=<?php echo $feat->title; ?>&u=<?php echo current_url(); ?>"  class="button small white"><span class="icon iconfacebook" aria-hidden="true"></span></a>
                    <a href="http://twitter.com/intent/tweet?text=<?php echo $feat->title; ?>+<?php echo current_url(); ?>" class="button small white"><span class="icon icontwitter" aria-hidden="true"></span></a>
                </div>
            </div>
        <?php endif; ?>
        <!-- <h6>November 2013</h6> -->
        
        <?php if ($recordset) : ?>
            <?php foreach ($recordset as $row) : ?>
            <div class="card">
                <img src="<?php echo base_url($this->config->item('image_upload_path') . $row->image); ?>" width="100%">
                <div>
                    <a href="<?php echo base_url('index.php/recipes/' . $row->slug); ?>"><h4><?php echo $row->title; ?></h4></a>
                </div>
            </div>
            <?php endforeach; ?>
        <?php endif; ?>
    </div>

    <div class="pagination-centered">
        <ul class="pagination">
            <?php echo $links; ?>
        </ul>
    </div>

</div>