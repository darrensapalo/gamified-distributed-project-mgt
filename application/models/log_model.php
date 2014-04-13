<?PHP 
class Log_Model extends CI_Model {
	const TABLE_NAME   = 'logs';

	var $user_id        = "";
	var $description    = "";

	function __construct()
	{
		// Call the Model constructor
		parent::__construct();
	}
	
	function get($id)
	{
		return $this->db->get_where(self::TABLE_NAME, array('id' => $id))->row();
	}

	function get_recent()
	{
		$this->db->join("users", "users.id = logs.user_id");
		$this->db->order_by('timestamp', 'desc');
		return $this->db->get(self::TABLE_NAME, 5, 0)->result();
	}

	function add()
	{
		$this->load->model('account_model');

		$this->user_id = 1;
		$user = $this->account_model->get($this->user_id);
		$this->description = $user->user_id . " " . $this->input->post("description");
		return $this->db->insert(self::TABLE_NAME, $this); 
	}
}