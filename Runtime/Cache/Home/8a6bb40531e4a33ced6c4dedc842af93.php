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
	<div id="container" class="container body">
    	<div class="common_header">
        	<a class="back" href="javascript:;" onClick="history.back()"></a>
            <span>我的特权</span>
        </div>
        <ul class="toggle_list" style="margin-top:10px">
        <?php if(is_array($lists)): $i = 0; $__LIST__ = $lists;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li class="single_item m_15 p_10 toggle_list_open">
            	<div class="title icon_arrow_right">
                	<img width="30" class="fl mr_10" src="<?php echo ADDON_PUBLIC_PATH;?>/privilege.png"/>
                	<p class="t_color"><strong><?php echo ($vo["title"]); ?></strong></p>
                </div>
                <div class="content" style="margin-top:0">
                	<p><?php echo ($vo["intro"]); ?></p>
                	<p class=" colorless">有效期：<?php echo (day_format($vo["start_time"])); ?> - <?php echo (day_format($vo["end_time"])); ?></p>
                    <p>状态: <?php if($vo['enable'] == true): ?><img style="vertical-align:-6px" src="/Public/Home/images/yes.png" height="20"/>可用<?php else: ?><img style="vertical-align:-6px" src="/Public/Home/images/error.png" height="20"/>不可用<?php endif; ?></p>
                </div>
            </li><?php endforeach; endif; else: echo "" ;endif; ?>
        </ul>   	
        <?php if(empty($lists)): ?><div class="empty_default">
            	<br/><br/>
            	<p><img src="/Public/Home/images/empty_content.png"/><br/>没有任何特权~</p>
            </div><?php endif; ?>
        <p class="copyright"><?php echo ($system_copy_right); ?></p>
          
    </div>
</body>
<script type="text/javascript">
</script>
</html>