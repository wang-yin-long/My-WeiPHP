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
<style type='text/css'>
.addrimg{
	width:100px;
	position: absolute;
    right: 10px;
    top: 14px;
	width: 60px;
    height: 40px;

    background-size: 40px 40px;
    border-left: 1px solid #ccc;
}
.title{
	position: absolute;
	left:130px;
	overflow:hidden;
}
.addra{
	position: absolute;
	left:130px;
	top:30px;
}
.daohan{
	height: 46px;
    border-bottom: 1px solid rgba(119, 113, 116, 0.47);
    display: block;
    color: #333;
    position: relative;
    text-align: center;   
    color: #888;
	margin-bottom: 15px;
}
.tel{
	width: 50%;
    float: left;
    height: 100%;
    text-align: center;
    border-right: 1px solid #ccc;
    line-height: 40px;
}
</style>
<body>
	<div class="container body">
    	<div class="common_header">
        	<a class="back" href="javascript:;" onClick="history.back()"></a>
            <span>适用门店</span>
        </div>
    	<ul class="v_nav">
    	<?php if(!empty($coupon_shop)): if(is_array($coupon_shop)): $i = 0; $__LIST__ = $coupon_shop;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li class="item single_address" style="padding-bottom: 50px;border-top: 1px solid  rgba(119, 113, 116, 0.47);">
    			<span calss='addrimg'><img src="<?php echo (get_cover_url($vo["img"])); ?>" width='100px' height='80px' /></span>
                <span class="title">
                <?php echo ($vo["name"]); ?></span>
                <span class="addra">
                <?php if(!empty($vo["gps"])): ?><a href="http://apis.map.qq.com/tools/poimarker?marker=coord:<?php echo ($vo["gps"]); ?>;title:<?php echo ($vo["name"]); ?>;addr:<?php echo ($vo["address"]); ?>&referer=myapp&key=OB4BZ-D4W3U-B7VVO-4PJWW-6TKDJ-WPB77">地址：<?php echo ($vo["address"]); ?></a>
               				
                <?php else: ?>
                    <a href="http://api.map.baidu.com/geocoder?address=<?php echo ($vo["address"]); ?>&output=html&src=<?php echo ($vo["name"]); ?>|<?php echo ($vo["address"]); ?>">地址：<?php echo ($vo["address"]); ?></a><?php endif; ?>
                 </span>
                <span style="position: absolute;left:130px;top:60px;"><?php echo ($vo["juli"]); ?></span>
               
               
<!--                 <em></em> -->
            </li>
           <div  class='daohan'><div class='tel'> <a href="tel:<?php echo ($vo["phone"]); ?>"><img src="<?php echo ADDON_PUBLIC_PATH;?>/tel.png" width="30px" height="30px" style="vertical-align:middle;"/> 电话</a></div>
            <div style="line-height: 40px;"> 
            	 
            	<?php if(!empty($vo["gps"])): ?><a href="http://apis.map.qq.com/tools/poimarker?marker=coord:<?php echo ($vo["gps"]); ?>;title:<?php echo ($vo["name"]); ?>;addr:<?php echo ($vo["address"]); ?>&referer=myapp&key=OB4BZ-D4W3U-B7VVO-4PJWW-6TKDJ-WPB77"><img src="<?php echo ADDON_PUBLIC_PATH;?>/navi.png" width="30px" height="30px" style="vertical-align:middle;"/> 导航</a>
                <?php else: ?>
                    <a href="http://api.map.baidu.com/geocoder?address=<?php echo ($vo["address"]); ?>&output=html&src=<?php echo ($vo["name"]); ?>|<?php echo ($vo["address"]); ?>"><img src="<?php echo ADDON_PUBLIC_PATH;?>/navi.png" width="30px" height="30px" style="vertical-align:middle;"/> 导航</a><?php endif; ?>
            
            </div>
            </div> 
            </li><?php endforeach; endif; else: echo "" ;endif; endif; ?>
            </ul>
            
        </div>
        <p class="copyright"><?php echo ($system["copyright"]); ?></p>
    </div>
    <nav class="bottom_nav">
    <a class="icon_me_gray" href="<?php echo addons_url('Card://Wap/me');?>">我的</a>
    <a class="icon_card_gray" href="<?php echo addons_url('Card://Wap/index');?>">会员卡</a>
    <a class="icon_notice_gray" href="<?php echo addons_url('Card://notice/show');?>">最新通知
     <?php if(!empty($notice_num)): ?><span class="red_circle"><?php echo ($notice_num); ?></span><?php endif; ?>
     <em></em>
    </a>
    <a class="icon_share_gray" href="<?php echo addons_url('Card://Wap/share');?>">分享</a>
    <a class="icon_signin_gray" href="<?php echo addons_url('Card://Wap/signin');?>">签到</a>
</nav>
<div class="bottom_nav_blank"></div>	
    <script type="text/javascript">
    var is_list=<?php echo ($is_list); ?>;
    	if(is_list==0){
    	$.Dialog.loading('获取您的地理位置');
    	      wx.ready(function () {
    	    	  wx.getLocation({
    	    		  success: function (res) {
    	    			  var latitude = res.latitude; // 纬度，浮点数，范围为90 ~ -90
    	    			  var longitude = res.longitude; // 经度，浮点数，范围为180 ~ -180。
    	    			  //var speed = res.speed; // 速度，以米/每秒计
    	    			  //var accuracy = res.accuracy; // 位置精度
    	    			  $.Dialog.close();
   	     			     window.location.href="<?php echo U('storeList');?>&is_list=1&latitude="+latitude+"&longitude="+longitude;
    	    		  }
    	    	  });
    	      });
    }
   
    </script>
</body>
</html>