<?PHP 
class Task_Model extends CI_Model {
    const $TABLE_NAME   = 'tasks';
    
    var $name           = '';
    var $desc           = '';
    var $deadline       = '';
    var $tags           = array();

    function __construct()
    {
        // Call the Model constructor
        parent::__construct();
    }
    
    function get_tasks_of_project($project_id)
    {
        $query = $this->db->get('entries', 10);
        return $query->result();
    }

    function insert()
    {
        $this->name     = $_POST['name']; // please read the below note
        $this->desc     = $_POST['desc'];
        $this->deadline = time();
        $this->tags     = time();

        $this->db->insert('entries', $this);
    }

    function update($type, $pk, $value)
    {
        $this->title   = $_POST['title'];
        $this->content = $_POST['content'];
        $this->date    = time();

        $this->db->update('entries', $this, array('id' => $_POST['id']));
    }

}