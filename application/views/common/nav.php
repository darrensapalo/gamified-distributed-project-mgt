<nav class="top-bar" data-topbar>
	<ul class="title-area">
		<li class="name">
			<h1><?php echo anchor('', 'Tara'); ?></h1>
		</li>
		<li class="toggle-topbar menu-icon"><a href="#">Menu</a></li>
	</ul>

	<section class="top-bar-section">
		<!-- Right Nav Section -->
		<?php $this->load->view('common/login'); ?>

		<!-- Left Nav Section -->
		<ul class="left">
			<li>
				<?php echo anchor('tasks/overview', 'Monitor finished tasks'); ?>
			</li>
			<li>
				<?php echo anchor('log', 'Recent Activity'); ?>
			</li>
		</ul>
	</section>
</nav>