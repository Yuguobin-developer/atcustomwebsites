</div><!-- #main .wrapper -->
</div><!-- #page -->
</div><!-- #page-wrap -->


<div id="visit" class="section center"><div class="limit">
    <h2 class="head1">Visit Us</h2>
    <div class="flex f1 fbreak1">
        <div>
            <p class="v-ico"><img src="/wp-content/uploads/ico-loc.svg"></p>
            <p class="v-head1">Find Us</p>
            <p>840 West Lowell Ave <br>Haverhill, MA 01832</p>
        </div>
        <div>
            <p class="v-ico"><img src="/wp-content/uploads/ico-email.svg"></p>
            <p class="v-head1">Reach Us</p>
            <p>Via <a href="/contact/">contact form</a> or directly at <br><a href="mailto:contact@willowspringvineyards.com">contact@willowspringvineyards.com</a></p>
        </div>
    </div>
</div></div>

<div id="map" class="section">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d12127.0713305748!2d-71.14287952943019!3d42.77788884745723!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89e3010309f122c7%3A0x5e34106cc472ce97!2sWillow%20Spring%20Vineyards!5e0!3m2!1sen!2sus!4v1672721744518!5m2!1sen!2sus" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
</div>

<div id="winery-store" class="section" style="background-image: url('<?php echo get_template_directory_uri()?>/img/wood.png');">
    <div class="sub-title">WHAT IS GOING ON?</div>
    <div class="title">Winery store is now open! April - December</div>
    <div class="btn-area">

        <p><a class="btn" href="/about/">Read more</a></p>
    </div>
    
</div>

<div id="footer">

    <nav id="site-navigation" class="themonic-nav limit">
      <?php wp_nav_menu( array( 'theme_location' => 'primary', 'menu_id' => 'menu-top', 'menu_class' => 'nav-menu' ) ); ?>
    </nav>
    <?php echo do_shortcode("[responsive_menu]"); ?>
    <img class="rope" src="<?php echo get_template_directory_uri()?>/img/rope.png">
    <div class="limit">
		<div class="flex f1 fbreak1 contacts">
			<div class="d-flex">
				<img src="<?php echo get_template_directory_uri()?>/img/send.png">
				<a href="mailto:webmaster@example.com" style="color: #333;">
					<div  style="color: #333; text-decoration: none;">Contact@WillowSpringVineyards.com</div>
				</a>
			</div>
			<div class="d-flex right-area desk contacts">
				<div>840 West Lowell Ave Havehill, MA01832</div>
				<img src="<?php echo get_template_directory_uri()?>/img/location.png">
			</div>
		</div>
		<div class="flex f1 fbreak1 sec contacts">
			<div class="d-flex" style="position: relative; z-index: 100;">
				<img src="<?php echo get_template_directory_uri()?>/img/phone.png">
				<div><a href="tel:978-374-1473" style="color: #333">978-374-1473</a><br>Wine Shop & General Mailbox, ext 221<br>Events & Sales, ext 222</div>
			</div>
			<div class="d-flex right-area desk contacts">
				<div>Winery Hours (April-December) <br> Tuesday & Thursdays <br> 4:00pm - 8:00pm</div>
				<img src="<?php echo get_template_directory_uri()?>/img/clock.png">
			</div>
		</div>
		<img class="footer_logo" src="<?php echo get_template_directory_uri()?>/img/footer_logo.png">		
		<div id="bottom" class="flex f1 middle">
			<div class="willow">
				&copy; <?php echo date("Y"); ?> Willow Spring Vineyards
			</div>
			<div class="soc flex center">
				<div><a href="https://www.facebook.com/WillowSpringVineyards/" title="Facebook"><i class="fab fa-facebook-f"></i></a></div>
				<div><a href="https://twitter.com/WillowSpringVin" title="Twitter"><i class="fab fa-twitter"></i></a></div>
				<div><a href="https://www.instagram.com/willowspringvin" title="Instagram"><i class="fab fa-instagram"></i></a></div>
				<div><a href="https://www.pinterest.com/WillowSpringVineyards/" title="Pinterest"><i class="fab fa-pinterest-p"></i></a></div>
			</div>
			<div class="d-flex">
				<div class="website">
					Website by <a rel="nofollow" title="Web Design & Development" href="https://goauroratech.com/">Aurora Tech</a>
				</div>
			</div>
		</div>
	</div>
</div>
<?php wp_footer(); ?>

</body>
</html>

<script>
   $ = jQuery;
   $(".entry-content img:not(.reg)").wrap("<span class='img-box animated fadeInUp duration2 eds-on-scroll'></span>");
   $(".entry-content .block1, .entry-content .block2, .entry-content .block3, .btn, .btn2, .btn3, .btn4").addClass("animated fadeInUp duration2 eds-on-scroll");
</script>