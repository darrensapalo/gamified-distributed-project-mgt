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
        $this->load->model("tags_model");
    }
    
    function add(){
        $this->name = $this->input->post("name");
        $this->desc = $this->input->post("desc");
        $this->deadline = $this->input->post("deadline");
        $this->deadline = date('Y-m-d H:i:s', strtotime($this->input->post('deadline')));
        $this->board = -1;

        // tags
        $tags = $this->input->post("tags");

        $this->db->insert(self::TABLE_NAME, $this);

        // get the newly created task
        $this->db->order_by('id', 'desc');
        $data = $this->db->get(self::TABLE_NAME, 1, 0)->row();

        if ($tags && count($tags) > 0){
            $this->tags_model->updateTags($tags, $data->id);    
        }
        $this->log_model->add("added a new task '" . $this->name . "'.");
    }

    function get_all($archived = false)
    {
        $result = array();

        if ($archived == false)
            $this->db->where('board < ', 2);
        $tasks = $this->db->get('tasks')->result();
        foreach ($tasks as $task){

            // Select the tags
            $this->db->select('tags.name as tags, tags.color as color');
            $this->db->join('tags', 'tags_id = tags.id');
            $this->db->where('task_id', $task->id);
            $tags = $this->db->get('tasks_to_tags')->result_array();

            // Add to tasks
            $task->tags = $tags;
            $result[] = $task;
        }
        return $result;
    }

    function get_all_by_board($archived = false)
    {
        $result = array('todo' => array(), 'doing' => array(), 'done' => array());
        $tasks = $this->get_all($archived);


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

            $task->assigned_to = $data = $this->get_people_assigned($task->id);
            
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

    function get_all_by_person()
    {
        $result = array();
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

            $task->assigned_to = $this->get_people_assigned($task->id);
            $result[] = $task;
        }

        return $result;
    }

    function get_people_assigned($task_id)
    {
        $this -> db -> select('users.user_id');
        $this -> db -> join('users', 'users.id = tasks_to_users.user_id');
        $this -> db -> where('task_id', $task_id);
        return $this -> db -> get('tasks_to_users')->result_array();
    }

    function archive_finished()
    {
        return $this->db->query('UPDATE tasks SET `board` = 2 WHERE `board` = 1');
    }

    function unarchive()
    {
        return $this->db->query('UPDATE tasks SET `board` = 1 WHERE `board` >= 2');
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