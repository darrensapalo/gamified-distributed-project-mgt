<?PHP 
class Tags_Model extends CI_Model {
	const TABLE_NAME   = 'tasks_to_tags';

	var $task_id           = '';
	var $tags_id           = '';

	function __construct()
	{
		// Call the Model constructor
		parent::__construct();
	}
	
	function updateTags($tags, $task_id){
		// remove all
		$this->db->delete(self::TABLE_NAME, array('task_id' => $task_id)); 

		// update

		foreach ($tags as $key => $value) {
			// if the checkbox is enabled
			
			if ($value == "true"){
				$tag_id = $key + 1;
				$this->db->insert(self::TABLE_NAME, array('task_id' => $task_id, 'tags_id' => $tag_id));	
			}
			
		}
		
	}
}