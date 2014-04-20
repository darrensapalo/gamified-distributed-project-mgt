<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Project extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->model("task_model");
	}
	public function index($data = array())
	{
		$user_id = $this->session->userdata('id');
		$data['users'] = $this->account_model->get_all(array('column' => 'level', 'direction' => 'DESC'));
		$data['assignments'] = $this->task_model->get_all_by_person($user_id);

		$this->load->view('project', $data);
	}
	public function login(){
		$data['error'] = 'Please log in before you start working.';
		$this->index($data);
	}

	public function loginfail()
	{
		$data['error'] = 'Log in failed! The email and the password did not match.';
		$this->index($data);
	}

	public function levelupfail()
	{
		$data['error'] = 'Sorry, your experience points are not enough for you to level up!';
		$this->index($data);
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */