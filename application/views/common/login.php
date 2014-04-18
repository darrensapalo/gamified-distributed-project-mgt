<!-- Right Nav Section -->
<ul class="right">
	<?php if (false && $this->session->userdata('user_id') && $this->session->userdata('password')): ?>
	<li class="active"><a href="#">Register</a></li>
	<li>
		<?php echo anchor('login', 'Log in'); ?>
	</li>
	<?php else: ?>
	<li class="active"><a href="#">darrensapalo</a></li>
	<li>
		<?php echo anchor('account/settings', 'Settings'); ?>
	</li>
	<?php endif; ?>
</ul>