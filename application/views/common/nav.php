<nav class="top-bar" data-topbar>
	<ul class="title-area">
		<li class="name">
			<h1><?php echo anchor('', 'Tara'); ?></h1>
		</li>
		<li class="toggle-topbar menu-icon"><a href="#">Menu</a></li>
	</ul>

	<section class="top-bar-section">
		<!-- Right Nav Section -->
		<ul class="right">
			<!-- <li class="active"><a href="#">Register</a></li>
			<li>
				<?php echo anchor('login', 'Log in'); ?>

			</li> -->
			<li class="active"><a href="#">darrensapalo</a></li>
			<li>
				<?php echo anchor('account/settings', 'Settings'); ?>
			</li>
		</ul>

		<!-- Left Nav Section -->
		<ul class="left">
			<li>
				<?php echo anchor('tasks/overview', 'Tasks'); ?>
			</li>
			<li>
				<?php echo anchor('log', 'Recent Activity'); ?>
			</li>
		</ul>
	</section>
</nav>