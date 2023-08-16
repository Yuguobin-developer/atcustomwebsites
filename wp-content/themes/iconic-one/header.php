<!DOCTYPE html>
<!--[if IE 7]>
<html class="ie ie7" <?php language_attributes(); ?>>
<![endif]-->
<!--[if IE 8]>
<html class="ie ie8" <?php language_attributes(); ?>>
<![endif]-->
<!--[if !(IE 7) | !(IE 8)  ]><!-->
<html <?php language_attributes(); ?>>
<!--<![endif]-->
<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width" />
<title><?php wp_title( '|', true, 'right' ); ?></title>
<link rel="profile" href="http://gmpg.org/xfn/11" />
<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>" />
<link rel="shortcut icon" type="image/png" href="/wp-content/uploads/favicon.png">
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|PlayfairDisplay:400,500,600,700,800,900">
<?php // Loads HTML5 JavaScript file to add support for HTML5 elements in older IE versions. ?>
<!--[if lt IE 9]>
<script src="<?php echo get_template_directory_uri(); ?>/js/html5.js" type="text/javascript"></script>
<![endif]-->
<?php wp_head(); ?>
</head>
<body <?php body_class(); ?>>

<div id="banner" class="<?php if(is_page('Home')): ?>b-home<?php else: ?>b-inner<?php endif ?>">

<div id="header">
    <div id="h-top"><div class="limit">
        <div class="hrs">
            <div class="h-ico"><img src="/wp-content/uploads/ico-clock.png" alt="Clock icon"></div>
            <div class="h-txt">Tuesdays & Thursdays</div>
            <div class="t-txt">4:00pm - 8:00pm</div>
        </div></div>
    </div>
    <div id="site-nav"><div class="limit">
        <div id="logo"><a href="/" title="Willow Spring Vineyards"><img src="/wp-content/uploads/willow-spring-vineyards-logo.png" alt="Willow Spring Vineyards"></a></div>
        <nav id="site-navigation" class="themonic-nav">
          <?php wp_nav_menu( array( 'theme_location' => 'primary', 'menu_id' => 'menu-top', 'menu_class' => 'nav-menu' ) ); ?>
        </nav>
        <?php echo do_shortcode("[responsive_menu]"); ?>
    </div></div>
</div>

<?php if(is_page('Home')): ?>
    <div class="b-over">
        <p class="b-head1 animated fadeInUp delay1 duration2 eds-on-scroll">Community<br>&<br>Quality</p>
    </div>
    <?php
        $shortcode = '[nk_awb awb_type="image" awb_image="109" awb_image_size="full" awb_image_background_size="cover" awb_image_background_position="50% 50%" awb_parallax="scroll" awb_parallax_speed="0.5" awb_parallax_mobile="true"][/nk_awb]';
        echo do_shortcode($shortcode);
    ?>
    <div class="b-barn"></div>

<?php else: ?>

    <div class="b-over banner-title">
        <p class="b-head1 animated fadeInUp delay1 duration2 eds-on-scroll"><?php the_title(); ?></p>
    </div>
    <?php
        $shortcode = '[nk_awb awb_type="image" awb_image="209" awb_image_size="full" awb_image_background_size="cover" awb_image_background_position="50% 50%" awb_parallax="scroll" awb_parallax_speed="0.5" awb_parallax_mobile="true"][/nk_awb]';
        echo do_shortcode($shortcode);
    ?>

<?php endif ?>

</div><!-- #banner -->

<?php if(is_page('Home')): ?>
    <?php get_template_part('part-home'); ?>
<?php endif ?>

<style type="text/css">.b-inner {background-image:url('<?php the_field( 'banner_image', 'options' ); ?>');}</style>

<div id="page-wrap">
<div id="page" class="hfeed site">
	<div id="main" class="wrapper">