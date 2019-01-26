<meta http-equiv="refresh" content="30">
<?php

$files = glob( './*.{jpg,JPG,jpeg,JPEG,gif,GIF,png,PNG}', GLOB_BRACE );
$wallpapers = Array();
$i = 0;
foreach ( $files as $file )
{
    //echo '<a href="' . $file . '">', basename( $file ), '</a><br />';
	$wallpapers[$i] = $file;
	$i++;
}  
$selected = rand(0, $i);
echo '
<style>body, head, img { margin: 0!important; padding:0!important; overflow:hidden!important; background-color:#000; width:100%;height:100%;}</style>
<img src="'.$wallpapers[$selected].'" style="min-height:100%;min-width:100%;"/>';
?>