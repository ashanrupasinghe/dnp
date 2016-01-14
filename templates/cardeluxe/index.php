<?php defined('_JEXEC') or die('Restricted access'); $advert_count = ($this->countModules('advert1')>0) + ($this->countModules('advert2')>0) + ($this->countModules('advert3')>0) + ($this->countModules('advert4')>0) + ($this->countModules('advert5')>0); $advert_width = $advert_count > 0 ? 'advert' . floor(99 / $advert_count) : ''; $user_count = ($this->countModules('user1')>0) + ($this->countModules('user2')>0) + ($this->countModules('user3')>0); $user_width = $user_count > 0 ? 'user' . floor(99 / $user_count) : ''; $user2_count = ($this->countModules('user4')>0) + ($this->countModules('user5')>0) + ($this->countModules('user6')>0); $user2_width = $user2_count > 0 ? 'user' . floor(99 / $user2_count) : ''; $user3_count = ($this->countModules('user7')>0) + ($this->countModules('user8')>0) + ($this->countModules('user9')>0); $user3_width = $user3_count > 0 ? 'user' . floor(99 / $user3_count) : ''; $footer_count = ($this->countModules('footer1')>0) + ($this->countModules('footer2')>0) + ($this->countModules('footer3')>0) + ($this->countModules('footer4')>0) + ($this->countModules('footer5')>0); $footer_width = $footer_count > 0 ? 'footer' . floor(99 / $footer_count) : ''; function powered_by(){} powered_by(); function getColumns ($left, $right){ if($left && !$right) { $selectcolumns = "-left-col"; } if($right && !$left) { $selectcolumns = "-right-col"; } if($left && $right) { $selectcolumns = "-left-right"; } if(!$left && !$right) { $selectcolumns = "-no-col"; } return $selectcolumns; } $selectcolumns = getColumns($this->countModules( 'left' ),$this->countModules( 'right' )); $app = JFactory::getApplication(); $doc = JFactory::getDocument(); $selectlogo = $this->params->get('selectlogo'); $sitename = $app->getCfg('sitename'); $doc->addStyleSheet(JUri::base() . 'templates/system/css/system.css', $type = 'text/css'); $doc->addStyleSheet(JUri::base() . 'templates/' . $this->template . '/css/template.css', $type = 'text/css'); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>" >
<head>
<jdoc:include type="head" />
</head>

<body class="<?php echo $this->params->get('selectfont'); ?>">
<?php
include dirname(__FILE__).DIRECTORY_SEPARATOR.'views/header.php';
include dirname(__FILE__).DIRECTORY_SEPARATOR.'views/advert.php';
include dirname(__FILE__).DIRECTORY_SEPARATOR.'views/content.php';
include dirname(__FILE__).DIRECTORY_SEPARATOR.'views/footer.php';
include dirname(__FILE__).DIRECTORY_SEPARATOR.'views/copyright.php';
?>
</body>
</html>