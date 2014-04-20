<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Tasks extends CI_Controller {

	function __construct() {
		parent::__construct();
		$this->load->model("task_model");
		$this->load->model("tags_model");
		$this->load->helper("form");
	}

	public function index()
	{
		if ($this->session->userdata('id') == FALSE || $this->session->userdata('password') == FALSE)
			redirect('project/login', 'refresh');
		$data['tasks'] = $this->task_model->get_all_by_board();
		$data['logs'] = $this->log_model->get_recent();
		$this->load->view('tasks', $data);
	}

	public function overview(){
		$user_id = $this->session->userdata('id');
		$data['users'] = $this->account_model->get_all();
		$data['assignments'] = $this->task_model->get_all_by_person($user_id);
		$this->load->view('overview', $data);
	}

	public function add()
	{
		$this->task_model->add();
		$this->index();
	}

	public function edit()
	{
		$field = $this->input->post('name');
		$id = $this->input->post('pk');
		$value = $this->input->post('value');

		$this->task_model->update($id, $field, $value);
	}

	public function board()
	{
		$id = $this->input->post('task_id');
		$field = 'board';
		$value = $this->input->post('board_id');
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

	/* Archives the finished tasks */
	public function archive(){
		$this->task_model->archive_finished();
	}

	/* Archives the finished tasks */
	public function unarchive(){
		$this->task_model->unarchive();
	}

	public function tags(){
		if ($this->input->post("tags"))
			$this->tags_model->updateTags($this->input->post("tags"), $this->input->post("id"));
	}
}

/* End of file task.php */
/* Location: ./application/controllers/task.php */