<?PHP 
class Monitor_Model extends CI_Model {
	const TABLE_NAME   = 'users';

	var $id             = "";
	var $email          = "";
	var $password       = "";
	var $experience     = "";
	var $level          = "";
	var $label          = "";

	function __construct()
	{
		// Call the Model constructor
		parent::__construct();
	}
	
	function get($id)
	{
		return $this->db->get_where(self::TABLE_NAME, array('id' => $id))->row();
	}

	function report($activity_id, $user_id)
	{
		# code...
	}

	function verify($activity_id, $user_id)
	{
		# code...
	}

}