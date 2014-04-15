<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Monitor extends CI_Controller {

    function __construct()
    {
        parent::__construct();
        $this->load->model('monitor_model');
    }


	public function index()
	{
		$this->load->view('project');
	}


	public function report($activity_id)
	{
		$user_id = 1;
		$this->monitor_model->report($activity_id, $user_id);
	}

	public function confirm($activity_id)
	{
		$user_id = 1;
		$this->monitor_model->confirm($activity_id, $user_id);
	}
}

/* End of file monitor.php */
/* Location: ./application/controllers/monitor.php */