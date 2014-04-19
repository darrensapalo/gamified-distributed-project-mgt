<!doctype html>
<html lang="en">
<head>
	<?PHP $this->load->view('common/header');  ?>
	<script src="<?PHP echo base_url(); ?>js/jquery-ui-timepicker-addon.js"></script>
	<script src="<?PHP echo base_url(); ?>js/tara/common.js"></script>
	<script src="<?PHP echo base_url(); ?>js/tara/tasks.js"></script>
	<script src="<?PHP echo base_url(); ?>js/tara/logs.js"></script>
	<style type="text/css">
	body,html{
		height:100%;
		width:100%;
	}

	.off-canvas-wrap,.inner-wrap{
		height:100%;   
	}
	</style>
</head>
<body>
	<?PHP $this->load->view('common/nav'); ?>
	<div class="large-10 large-offset-1 columns">
		<div class="panel">
			<div class="space"></div>
			<h1>Project management <small>redesigned</small></h1>
			<!-- Options -->
			<p>
				
			</p>
		</div>

		
		<div class="large-4 large-offset-4 columns">
			<h3>Account registration</h3>
			<?PHP echo form_open('account/register/new'); 
			?>
			<div class="row">
				<p class='form-description'>By registering for an account, you will be able to collaborate with your groupmates, track your project's activities, achieve goals and badges set by your project, and level up!</p>
				<hr>
				<div class="small-12">
					<div class="row">
						<div class="small-3 columns">
							<label for="email" class="right inline">E-mail</label>
						</div>
						<div class="small-9 columns">
							<input type="text" id="email" name="email" placeholder="E-mail address">
							<p class='form-description'>The e-mail address will be used for authentication purposes and will not be revealed to other users.</p>
						</div>
					</div>
					<div class="row">
						<div class="small-3 columns">
							<label for="password" class="right inline">Password</label>
						</div>
						<div class="small-9 columns">
							<input type="password" id="password"  name="password" placeholder="Password">
						</div>
					</div>
					<div class="row">
						<div class="small-3 columns">
							<label for="confirm_password" class="right inline">Confirm password</label>
						</div>
						<div class="small-9 columns">
							<input type="password" id="confirm_password"  name="confirm_password" placeholder="Password">
						</div>
					</div>
					<hr>
					<div class="row">
						<div class="small-3 columns">
							<label for="user_id" class="right inline">User ID</label>
						</div>
						<div class="small-9 columns">
							<input type="text" id="user_id" name="user_id" placeholder="User ID">
							<p class='form-description'>This User ID will be used by friends and groupmates to identify you, instead of your e-mail address.</p>
						</div>
					</div>
					<hr>
					<div class="small-9 small-offset-3 columns">
						<input type='submit' value='Register' class='button'>
						<?PHP echo anchor('', 'Cancel', array('class' => 'button default')); ?>
					</div>
				</div>
			</div>
			
		</form>
	</div>
</div>
<script>
$(document).foundation();
</script>
</body>
</html>
