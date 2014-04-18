<!-- Right Nav Section -->
<ul class="right">
	<?php if ($this->session->userdata('user_id') && $this->session->userdata('password')): ?>
	<li class="active"><a href="#">darrensapalo</a></li>
	<li>
		<?php echo anchor('account/settings', 'Settings'); ?>
	</li>
	<?php else: ?>
	<li class="active">
		<?php echo anchor('account/register', 'Register'); ?>
	</li>
	<li>
		<?php echo anchor('account/login', 'Log in'); ?>
	</li>
	<?php endif; ?>
</ul>