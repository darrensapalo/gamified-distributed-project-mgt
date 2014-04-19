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
		// temporary
		$user_id = 1;
		$gained = $this->input->post('gained');

		$current = $this->account_model->gain_experience($user_id, $gained);
		$percent = $this->account_model->experience_percentage($user_id);
		$this->load->view('experience', array('experience' => $percent, 'gained' => $gained, 'current' => $current));
	}

	public function username(){
		$user_id = 1;
		$username = $this -> account_model -> get($user_id);
		$this->load->view('common/single', array('value' => $username->user_id));
	}

	public function register(){
		$this->load->helper('form');
		$this->load->view('account/register');
	}

	public function login()
	{
		
	}
}

/* End of file account.php */
/* Location: ./application/controllers/account.php */