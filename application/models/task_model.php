<?PHP 
class Task_Model extends CI_Model {
    const TABLE_NAME   = 'tasks';

    var $name           = '';
    var $desc           = '';
    var $deadline       = '';

    function __construct()
    {
        // Call the Model constructor
        parent::__construct();
    }
    
    function add(){
        $this->name = $this->input->post("name");
        $this->desc = $this->input->post("desc");
        $this->deadline = $this->input->post("deadline");
        $this->deadline = date('Y-m-d H:i:s', strtotime($this->input->post('deadline')));
        $this->board = -1;

        $tags = array();
        $tags[] = $this->input->post("label-0");
        $tags[] = $this->input->post("label-1");
        $tags[] = $this->input->post("label-2");
        $tags[] = $this->input->post("label-3");
        $tags[] = $this->input->post("label-4");

        $this->db->insert(self::TABLE_NAME, $this);
    }

    function get_all()
    {
        $result = array();

        $tasks = $this->db->get('tasks')->result();
        foreach ($tasks as $task){

            // Select the tags
            $this->db->select('tags.name as tags, tags.color as color');
            $this->db->join('tags', 'tags_id = tags.id');
            $tags = $this->db->get_where('tasks_to_tags', array('task_id' => $task->id))->result_array();

            // Add to tasks
            $task->tags = $tags;
            $result[] = $task;
        }
        return $result;
    }

    function get_all_by_board()
    {
        $result = array('todo' => array(), 'doing' => array(), 'done' => array());
        $tasks = $this->get_all();


        foreach($tasks as $task){
            
            // Checks remaining time left
            $daysLeft = date('d', strtotime($task->deadline)) - date('d');
            if ($daysLeft < 0){
                $task->deadline_from_now = 'Overdue';
            }else if ($daysLeft == 0){
                $task->deadline_from_now = 'Due today';
            }else{
                $task->deadline_from_now = $daysLeft . " day" . (($daysLeft > 1) ? 's':'') . " left";
            }

            // Classify
            if ($task -> board < 0)
                $result['todo'][] = $task;
            else if ($task -> board == 0)
                $result['doing'][] = $task;
            else
                $result['done'][] = $task;
        }
        return $result;
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