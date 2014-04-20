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
		$data['assign_user_list'] = $this->account_model->get_user_list();
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

	/* Archives the finished tasks */
	public function archive($id = FALSE){
		$task_id = $this->input->post('task_id');
		if ($task_id)
			$this->task_model->archive($task_id);
		if (gettype($id) == "integer")
			$this->task_model->archive($id);
		else if ($id == "all")
			$this->task_model->archive_finished();
		redirect('tasks', 'redirect');
	}

	/* Archives the finished tasks */
	public function unarchive($id = FALSE){
		$task_id = $this->input->post('task_id');
		if ($task_id)
			$this->task_model->unarchive($task_id);
		else if (gettype($id) == "integer")
			$this->task_model->unarchive($id);
		else if ($id == "all")
			$this->task_model->unarchive_finished();
		redirect('tasks', 'redirect');
	}

	public function tags(){
		if ($this->input->post("tags"))
			$this->tags_model->updateTags($this->input->post("tags"), $this->input->post("id"));
	}

	public function assign()
	{
		$this->task_model->assign();
		redirect('tasks', 'redirect');
	}

	public function unassign($user_id, $task_id)
	{
		$this->task_model->unassign($user_id, $task_id);
		redirect('tasks', 'redirect');
	}

	public function deadline()
	{
		if ($this->task_model->update_deadline()){
			redirect('tasks', 'redirect');
		}else{
			redirect('tasks', 'redirect');
		}
	}

}

/* End of file task.php */
/* Location: ./application/controllers/task.php */