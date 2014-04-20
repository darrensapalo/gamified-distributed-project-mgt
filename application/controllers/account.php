<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Account extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('account_model');
	}


	public function index()
	{
		$this->load->view('project');
	}

	public function settings(){
		$this->load->view('account/settings');
	}

	public function experience()
	{
		$user_id = $this->session->userdata('id');
		$gained = $this->input->post('gained');

		$current = $this->account_model->gain_experience($user_id, $gained);
		$percent = $this->account_model->experience_percentage($user_id);
		$this->load->view('experience', array('experience' => $percent, 'gained' => $gained, 'current' => $current));
	}

	public function username(){
		$user_id = $this->session->userdata('id');
		$username = $this -> account_model -> get($user_id);
		$this->load->view('common/single', array('value' => $username->user_id));
	}

	public function register($action = "fill"){
		if ($action == "new"){
			$this->account_model->insert();
			redirect('', 'refresh');
		}else{
			$this->load->helper('form');
			$this->load->view('account/register');	
		}
	}

	public function login()
	{
		$email = $this->input->post('email', TRUE);
		$password = $this->input->post('password', TRUE);
		if ($email && $password){
			if ($account = $this->account_model->login($email, $password)){

				// Set session
				$newdata = array(
					'id'		=> $account->id,
					'user_id'   => $account->user_id,
					'email'     => $email,
					'password'  => $password,
					'logged_in' => TRUE
					);
				$this->session->set_userdata($newdata);
				redirect('project', 'refresh');
			}
		}else{
			redirect('project/loginfail', 'refresh');
		}
	}

	public function logout()
	{
		$this->session->sess_destroy();
		redirect('', 'refresh');
	}

	public function forgot()
	{
		$this->load->view('account/forgot');
	}

	public function levelup()
	{
		if ($id = $this->session->userdata('id'))
		{
			if ($this->account_model->increase_level($id)){
				$this->load->view('account/levelup');
			}
			else{
				redirect('project/levelupfail', 'redirect');
			}
		}
	}
}

/* End of file account.php */
/* Location: ./application/controllers/account.php */