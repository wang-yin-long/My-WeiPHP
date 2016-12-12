<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <title><?php echo empty($page_title) ? C('WEB_SITE_TITLE') : $page_title; ?></title>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
	<meta content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
    <meta content="application/xhtml+xml;charset=UTF-8" http-equiv="Content-Type">
    <meta content="no-cache,must-revalidate" http-equiv="Cache-Control">
    <meta content="no-cache" http-equiv="pragma">
    <meta content="0" http-equiv="expires">
    <meta content="telephone=no, address=no" name="format-detection">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
    <link rel="stylesheet" type="text/css" href="/Public/Home/css/mobile_module.css?v=<?php echo SITE_VERSION;?>" media="all">
    <script type="text/javascript">
		//静态变量
		var SITE_URL = "<?php echo SITE_URL;?>";
		var IMG_PATH = "/Public/Home/images";
		var STATIC_PATH = "/Public/static";
		var WX_APPID = "<?php echo ($jsapiParams["appId"]); ?>";
		var	WXJS_TIMESTAMP='<?php echo ($jsapiParams["timestamp"]); ?>'; 
		var NONCESTR= '<?php echo ($jsapiParams["nonceStr"]); ?>'; 
		var SIGNATURE= '<?php echo ($jsapiParams["signature"]); ?>';
	</script>
    <script type="text/javascript" src="/Public/static/jquery-2.0.3.min.js"></script>
	<script type="text/javascript" src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
	<script type="text/javascript" src="minify.php?f=/Public/Home/js/prefixfree.min.js,/Public/Home/js/m/dialog.js,/Public/Home/js/m/flipsnap.min.js,/Public/Home/js/m/mobile_module.js&v=<?php echo SITE_VERSION;?>"></script>
</head>	
<link href="<?php echo ADDON_PUBLIC_PATH;?>/card.css?v=<?php echo SITE_VERSION;?>" rel="stylesheet" type="text/css">
<body>
	<div class="container body">
    	<div class="card">
        	<img class="card_bg" src="<?php echo ($config["background_url"]); ?>"/>
            <div class="card_container">
                <p class="logo"><?php if(($config["show_logo"]) == "1"): ?><img src="<?php echo (get_cover_url($config["logo"])); ?>"/><?php endif; ?></p>
                <p class="card_name" style="color:<?php echo ($config["title_color"]); ?>"><?php echo ($config["title"]); ?></p>
            </div>
            <?php if($has_subscribe == 1): ?><a class="get_btn" href="<?php echo addons_url('Card://Wap/get_success');?>&status=2">点击领取体验卡</a>
            <?php else: ?>
            	<a class="get_btn" href="javascript:;" onClick="$.WeiPHP.showSubscribeTips({'title':'{$public_info.public_name}','qrcode': '<?php echo ($qrcode); ?>'});">点击领取体验卡</a><?php endif; ?>
        </div>
        <div class="h_item_container">
        	 <a class="h_item" href="<?php echo U('privilege');?>"><img width="24" src="<?php echo ADDON_PUBLIC_PATH;?>/vip.png"/> 会员卡特权<em></em></a>
            <div class="h_item_line"></div>
            <a class="h_item" href="<?php echo addons_url('Card://Wap/introduction');?>" ><img style="vertical-align: -5px;" width="22" src="<?php echo ADDON_PUBLIC_PATH;?>/intro.png"/> 会员卡使用说明<em></em></a>
            <div class="h_item_line"></div>
            <div class="h_item_line"></div>
            
            <a class="h_item" href="<?php echo addons_url($_REQUEST ['_addons'].'://'.$_REQUEST ['_controller'].'/storeList');?>" target="_blank"><img style="vertical-align: -5px;" width="24" src="<?php echo ADDON_PUBLIC_PATH;?>/map.png"/> 适用门店<em></em></a>
        </div>
        
        <p class="copyright"><?php echo ($system_copy_right); ?></p>
    </div>
    
</body>
<script type="text/javascript">
		if($('#select_background').val()==11){
			var cardBgUrl = $("#hidden_background_custom").val();
		}else{
			var cardBgUrl = '<?php echo ADDON_PUBLIC_PATH;?>/card_bg_'+$('#select_background').val()+".png";

		}	
		$('#cardBg').attr("href",cardBgUrl);
</script>
</html>