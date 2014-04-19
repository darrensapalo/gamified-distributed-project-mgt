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
		$data['recent_activity'] = $this->log_model->get_recent(50);
		$this->load->view('common/log/recent_activity', $data);
	}

	public function add()
	{
		$data['result'] = $this->log_model->add();
	}
}

/* End of file account.php */
/* Location: ./application/controllers/account.php */