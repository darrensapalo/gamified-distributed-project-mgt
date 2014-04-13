<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Log extends CI_Controller {

    function __construct()
    {
        parent::__construct();
        $this->load->model('account_model');
        $this->load->model('log_model');
    }

	public function index()
	{
		$this->load->view('project');
	}

	public function add()
	{
		$data['result'] = $this->log_model->add();
	}
}

/* End of file account.php */
/* Location: ./application/controllers/account.php */