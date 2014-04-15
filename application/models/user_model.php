<?PHP 
class User_Model extends CI_Model {
    const TABLE_NAME   = 'users';

    var $id           = '';
    var $user_id           = '';
    var $email       = '';
    var $password       = '';
    var $experience       = '';
    var $level       = '';
    var $label       = '';

    function __construct()
    {
        // Call the Model constructor
        parent::__construct();
        $this->load->model("tags_model");
    }
    
    function add(){
        // code
    }

    function get($id)
    {
        return $this->db->get(self::TABLE_NAME, array('id' => $id))->row();
    }

    function get_all()
    {
        return $this->db->get(self::TABLE_NAME)->result();
    }

    /**
     * Updates the database given a field and the new value
     */
    function update($id, $field, $value) {
        $this -> db -> where('id', $id);
        $data = array( $field => $value );

        $this -> db -> update(Task_Model::TABLE_NAME, $data);
    }
}