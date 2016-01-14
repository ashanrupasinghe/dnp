<?php if($this->countModules('head1') or $this->countModules('head2')) : ?>
<div id="head" class="clr">
<div id="head-bg">
<div id="head-structure">
<?php if($this->countModules('head1')) : ?>
<div id="head1">
<jdoc:include type="modules" name="head1" style="none" />
</div>
<?php endif; ?>
<?php if($this->countModules('head2')) : ?>
<div id="head2">
<jdoc:include type="modules" name="head2" style="none" />
</div>
<?php endif; ?>
</div>
</div>
</div>
<?php endif; ?>
<div id="header-line" class="clr">
<div id="header-structure">
<div id="logo">
<img class="logo" src="<?php echo $this->baseurl ?>/<?php echo "$selectlogo"; ?>" />
</div>
<?php if($this->countModules('header')) : ?>
<div id="header">
<jdoc:include type="modules" name="header" style="none" />
</div>
<?php endif; ?>
</div>
</div>
<?php if($this->countModules('menu') or $this->countModules('search')) : ?>
<div id="menu-line" class="clr">
<div id="menu-structure">
<div id="menu-bg">
<?php if($this->countModules('menu')) : ?>
<div id="menu">
<jdoc:include type="modules" name="menu" style="none" />
</div>
<?php endif; ?>
<?php if($this->countModules('search')) : ?>
<div id="search">
<jdoc:include type="modules" name="search" style="none" />
</div>
<?php endif; ?>
</div>
</div>
</div>
<div id="spacer-line" class="clr">
<div id="spacer-structure">
<div id="spacer-bg">
&nbsp;
</div>
</div>
</div>
<?php endif; ?>
<?php if($this->countModules('banner')) : ?>
<div id="banner-line" class="clr">
<div id="banner-structure">
<div id="banner-bg">
<jdoc:include type="modules" name="banner" style="none" />
</div>
</div>
</div>
<?php endif; ?>