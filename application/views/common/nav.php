<nav class="top-bar" data-topbar>
	<ul class="title-area">
		<li class="name">
			<h1><a href="#">Tara</a></h1>
		</li>
		<li class="toggle-topbar menu-icon"><a href="#">Menu</a></li>
	</ul>

	<section class="top-bar-section">
		<!-- Right Nav Section -->
		<ul class="right">
			<li class="active"><a href="#">Register</a></li>
			<li>
				<?php echo anchor('login', 'Log in'); ?>

			</li>
			
		</ul>

		<!-- Left Nav Section -->
		<ul class="left">
			<li class="has-dropdown">
				<a href="#">Projects</a>
				<ul class="dropdown">
					<li>
						<?php echo anchor('project', 'CSC755M'); ?>

					</li>
				</ul>
			</li>
			<li>
				<?php echo anchor('people', 'People'); ?>

			</li>
			<li>
				<?php echo anchor('tasks', 'My tasks'); ?>
				
			</li>
		</ul>
	</section>
</nav>