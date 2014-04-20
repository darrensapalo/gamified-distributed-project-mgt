<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Project extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->model("task_model");
	}
	public function index($data = array())
	{
		$user_id = 1;
		$data['users'] = $this->account_model->get_all();
		$data['assignments'] = $this->task_model->get_all_by_person($user_id);

		$this->load->view('project', $data);
	}

	public function loginfail()
	{
		$data['error'] = 'Log in failed! The email and the password did not match.';
		$this->index($data);
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */