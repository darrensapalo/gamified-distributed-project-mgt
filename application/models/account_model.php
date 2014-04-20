<?PHP 
class Account_Model extends CI_Model {
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

	function get_all()
	{
		$result = array();
		$users = $this->db->get(self::TABLE_NAME)->result();
		foreach ($users as $user) {
			$user->experience_to_next_level = $this->experience_to_next_level($user->id);
			$result[] = $user;
		}
		return $result;
	}

	function experience($id)
	{
		$this->db->select('experience');
		return $this->db->get_where(self::TABLE_NAME, array('id' => $id))->row()->experience;
	}

	function level($id)
	{
		$this->db->select('level');
		return $this->db->get_where(self::TABLE_NAME, array('id' => $id))->row()->level;
	}

	function login($email, $password, $hash = false){
		$this->db->where('email', $email);
		$this->db->where('password', $password);
		$result = $this->db->get(self::TABLE_NAME);
		if ($result)
			return $result->row();
		else
			return false;
	}

	function gain_experience($id, $value){
		$currentEXP = $this->experience($id);
		$newEXP = $currentEXP + $value;

		

		$data = array('experience' => $newEXP);
		$this->db->where('id', $id);
		$this->db->update(self::TABLE_NAME, $data); 

		return $this->experience($id);
	}

	function increase_level($id){
		$currentEXP = $this->experience($id);
		$EXPtoNextLevel = $this->experience_to_next_level($id);

		// Fail if the experience is not enough
		if ($currentEXP < $EXPtoNextLevel)
			return false;

		// Reduce experience
		$this->gain_experience($id, - $EXPtoNextLevel);
		
		// Increase level
		$currentLVL = $this->level($id);
		$newLVL = $currentLVL + 1;

		// Update database
		$data = array('level' => $newLVL);
		$this->db->where('id', $id);
		$this->db->update(self::TABLE_NAME, $data); 

		$this->log_model->add("increased to <span class='label'>level {$newLVL}</span>");

		return $this->level($id);
	}

	function experience_percentage($id){
		$value = ($this->experience($id) / $this->experience_to_next_level($id)) * 100;
		if ($value > 100)
			$value = 100;
		return $value . "%";
	}

	function experience_to_next_level($id){
		$lvl = $this->level($id);
		return $lvl * $lvl * 5;
	}


	function insert(){
		$this->email = $this->input->post('email');
		$this->user_id = $this->input->post('user_id');
		$this->level = 1;
		$this->label = "Newbie";
		$pw = $this->input->post('password');
		$cpw = $this->input->post('confirm_password');

		if ($pw == $cpw){
			$this->password = $pw;
		}
		else{
			return false;
		}
		return $this->db->insert(self::TABLE_NAME, $this);
	}

	/**
	 * Updates the database given a field and the new value
	 */
	function update($id, $field, $value) {
		$this -> db -> where('id', $id);
		$data = array( $field => $value);

		$this -> db -> update(Task_Model::TABLE_NAME, $data);
	}

}