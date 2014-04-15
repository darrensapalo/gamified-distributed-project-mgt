<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Project extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->model("user_model");
		$this->load->model("task_model");
	}
	public function index()
	{
		$user_id = 1;

		$data['users'] = $this->user_model->get_all();
		$data['recent_activity'] = $this->log_model->get_recent(20);
		$data['assignments'] = $this->task_model->get_all_by_person($user_id);

		$this->load->view('project', $data);
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */