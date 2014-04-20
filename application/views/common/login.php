<!-- Right Nav Section -->
<ul class="right">
	<?php if ($this->session->userdata('email') && $this->session->userdata('password')): ?>
	<li class='active'>
		<?php echo anchor('account/settings', $this->session->userdata('user_id'), array('data-dropdown' => 'logout_drop', 'data-options' => 'align:left')); ?>
		<div id="logout_drop" data-dropdown-content class="f-dropdown content">
			<h6>Account options</h6>
			<p><?php echo anchor('account/settings', 'Settings', array('class' => 'button small default')) ?>
			<?php echo anchor('account/logout', 'Log out', array('class' => 'button small red')) ?></p>
	</div>
</li>
<?php else: ?>
	<li class="active">
		<?php echo anchor('account/register', 'Register'); ?>
	</li>
	<li>
		<?php echo anchor('', 'Log in', array('data-dropdown' => 'login_drop', 'data-options' => 'align:left')); ?>
		<div id="login_drop" data-dropdown-content class="f-dropdown content">
			<h4>Welcome back!</h4>
			<?php echo form_open('account/login'); ?>
			<input type='text' name='email' placeholder='E-mail'>
			<input type='password' name='password' placeholder='Password'>
			<input type='submit' value='Log in' class='button small'>
			<?php echo anchor('account/forgot', 'Forgot password?', array('class' => 'button small default')) ?>
		</form>
	</div>
</li>
<?php endif; ?>
</ul>