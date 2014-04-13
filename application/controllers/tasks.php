<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Tasks extends CI_Controller {

	function __construct() {
		parent::__construct();
		$this->load->model("task_model");
		$this->load->model("log_model");
	}

	public function index()
	{
		$data['tasks'] = $this->task_model->get_all_by_board();
		$data['logs'] = $this->log_model->get_recent();
		$this->load->view('tasks', $data);
	}

	public function add()
	{
		
	}

	public function edit()
	{
		$id = $this->input->post('pk');
		$field = $this->input->post('name');
		$value = $this->input->post('value');

		$this->task_model->update($id, $field, $value);
	}

	public function delete($id)
	{
		# code...
	}

	public function undelete($id)
	{
		# code...
	}
}

/* End of file task.php */
/* Location: ./application/controllers/task.php */