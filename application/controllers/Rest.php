<?php defined('BASEPATH') OR exit('No direct script access allowed');
require(APPPATH.'libraries/REST_Controller.php');

class Rest extends REST_Controller
{
	function __construct()
    {
        // Construct our parent class
        parent::__construct();

    }

	// get all recipes if no parameter supplied
	public function index_get()
	{
		if($this->session->userdata('logged_in'))
		{
		$this->load->model('rest_model');
		if(! $this->get('id'))
		{
			// get all record
			$users = $this->rest_model->users_list_all();
		} else {
			// get a record based on ID
			$users = null;
		}

		if($users)
		{
			$this->response($users, 200); // 200 being the HTTP response code
		} else {
			$this->response([], 404);
		}
	}

else
{
	//If no session, redirect to login page
	redirect('login', 'refresh');
}
}

public function user_get()
	{
		 if($this->session->userdata('logged_in'))
		 {
        $id = $this->uri->segment(3);

		$this->load->model('rest_model');

		if(isset($id))
		{
			// get a record based on ID
			$user = $this->rest_model->users_list($id);
		} else {
			$user = null;
		}

		if($user)
		{
			$this->response($user, 200); // 200 being the HTTP response code
		} else {
			$this->response([], 404);
		}
		}
		else
			{
					//If no session, redirect to login page
						redirect('login', 'refresh');
			}
	}
	public function all_users_get(){
	 if($this->session->userdata('logged_in'))
	  {
	    $this->load->model('user');
	    $data['list'] = $this->user->teste();
			$this->load->view('sample_navbar_view');
	    $this->load->view('list_users_view', $data);
	  }
		else
			{
					//If no session, redirect to login page
						redirect('login', 'refresh');
			}
	}

	  public function users_get()
	  {
			if($this->session->userdata('logged_in'))
			 {
	      // Users from a data store e.g. database
	      $this->load->model('rest_model');
	      $users = $this->rest_model->users_list_all();
	      $id = $this->get('id');

	      // If the id parameter doesn't exist return all the users

	      if ($id === NULL)
	      {
	          // Check if the users data store contains users (in case the database result returns NULL)
	          if ($users)
	          {
	              // Set the response and exit
	              $this->response($users, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
	          }
	          else
	          {
	              // Set the response and exit
	              $this->response([
	                  'status' => FALSE,
	                  'message' => 'No users were found'
	              ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
	          }
	      }

	      // Find and return a single record for a particular user.

	      $id = (int) $id;

	      // Validate the id.
	      if ($id <= 0)
	      {
	          // Invalid id, set the response and exit.
	          $this->response(NULL, REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
	      }

	      // Get the user from the array, using the id as key for retreival.
	      // Usually a model is to be used for this.

	      $user = NULL;

	      if (!empty($users))
	      {
	          foreach ($users as $key => $value)
	          {
	              if (isset($value['id']) && $value['id'] === $id)
	              {
	                  $user = $value;
	              }
	          }
	      }

	      if (!empty($user))
	      {
	          $this->set_response($user, REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
	      }
	      else
	      {
	          $this->set_response([
	              'status' => FALSE,
	              'message' => 'User could not be found'
	          ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
	      }
	  }

		else {
			     redirect('login', 'refresh');
		}	}

// RESTAURANT

public function all_restaurants_get()
{

 if($this->session->userdata('logged_in'))

			{
			$this->load->model('rest_model');
			if(! $this->get('id'))
			{
				// get all record
				$data = $this->rest_model->get_all_restaurants();
			} else {
				// get a record based on ID
				$data = null;
			}

			if($data)
			{
				$this->response($data, 200); // 200 being the HTTP response code
			} else {$this->response([], 404);	}
			}
			else
			{
			//If no session, redirect to login page
			redirect('login', 'refresh');
			}


}
public function menu_info_get()
{
$id = $this->uri->segment(3);

	$this->load->model('rest_model');
$data =	$this->rest_model->get_menu_by_id($id);
if ($data)
{
	if($data)
	{
		$this->response($data, 200); // 200 being the HTTP response code
	} else {$this->response([], 404);	}
}
}
public function varray_get()
{

 if($this->session->userdata('logged_in'))

			{
			$this->load->model('rest_model');
			if(! $this->get('id'))
			{
				// get all record
				$data = $this->rest_model->varray();
			} else {
				// get a record based on ID
				$data = null;
			}

			if($data)
			{
				$this->response($data, 200); // 200 being the HTTP response code
			} else {$this->response([], 404);	}
			}
			else
			{
			//If no session, redirect to login page
			redirect('login', 'refresh');
			}


		}

		public function dishes_get()
		{
		$this->load->model('rest_model');
		$data= $this->rest_model->dishes();

					if($data)
					{
						$this->response($data, 200); // 200 being the HTTP response code
					}
					else {
						$this->response([], 404);
					}

		}

		public function testxml_get()
		{
			$this->load->model('rest_model');
			$data = $this->rest_model->testxml();
			if($data)
			{
				$this->response($data, 200); // 200 being the HTTP response code
			}
			else {
				$this->response([], 404);
			}
		}
}
