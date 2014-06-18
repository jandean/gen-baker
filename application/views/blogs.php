<div class="main" id="blogs">
    <!-- <h1>ARTICLES</h1> -->

    <?php echo $side; ?>

    <div class="core" id="blogs">
        <?php
        if ($featured->num_rows() > 0) :
            $feat = $featured->row();
            ?>
            <div class="feature">
                <a href="<?php echo base_url('blogs/' . $feat->slug); ?>"><h3><?php echo $feat->title; ?></h3></a>
                <img src="<?php echo base_url($this->config->item('image_upload_path') . $feat->image); ?>">
                <p class="articleContent"><?php echo $feat->description; ?></p>
                <div class="social">
                    Share on:
                    <a data-url="<?php echo current_url(); ?>" data-title="<?php echo $feat->title; ?>" class="button small white fb_share"><span class="icon iconfacebook" aria-hidden="true"></span></a>
                    <a data-url="<?php echo current_url(); ?>" data-title="<?php echo $feat->title; ?>" class="button small white tweet"><span class="icon icontwitter" aria-hidden="true"></span></a>
                </div>
            </div>
        <?php endif; ?>

        <?php if ($recordset) :
            foreach ($recordset as $row) : ?>
                <div class="articleSummary">
                    <a href="<?php echo base_url('blogs/' . $row->slug); ?>"><img src="<?php echo base_url($this->config->item('image_upload_path') . $row->image); ?>" width="225"></a>
                    <div>
                        <a href="<?php echo base_url('blogs/' . $row->slug); ?>"><h4><?php echo $row->title; ?></h4></a>
                        <?php echo substr($row->content, 0, 200); ?>...<br><br>

                        [<a href="<?php echo base_url('blogs/' . $row->slug); ?>">Read More</a>]
                    </div>
                </div>
            <?php endforeach;
        endif; ?>        
    </div>

    <div class="pagination-centered">
        <ul class="pagination">
            <?php echo $links; ?>
        </ul>
    </div>

</div>