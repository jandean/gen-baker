<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Main extends CI_Controller {

    var $order_by;
    var $common_side;

    public function __construct()
    {
        parent::__construct();
        $this->load->model(array('recipe_model','article_model','pages_model'));
        $this->order_by = 'date_created DESC';
        $this->common_side = $this->load->view('side', null, true);
    }

    public function index()
    {
        $limit = 4; 
        $offset = 0;
        $this->data['home_side']    = $this->load->view('homepage_side', array(), true);
        $this->data['side']         = $this->load->view('side', $this->data, true);
        $this->data['recipes']      = $this->recipe_model->get_entries(null, $limit, $offset, $this->order_by)->result();
        $this->data['featured']     = $this->article_model->get_featured();
        $this->data['blogs']        = $this->article_model->get_entries(CONTENT_BLOG, null, $limit, $offset, $this->order_by)->result();
        $this->data['page']         = "home";
        $this->load->view('template', $this->data);
    }

    public function recipe($slug)
    {
        if ($slug) :
            $this->data['row']      = $this->recipe_model->get($slug);
            $this->data['contents'] = $this->recipe_model->get_contents($this->data['row']->id);
            $this->data['crumb']    = "recipes";
            $this->data['side']     = $this->common_side;
            $this->data['page']     = "recipe_content";
            $this->load->view('template', $this->data);
        else :
            redirect('home', 'refresh');
        endif;
    }

    public function recipes()
    {
        $limit  = $this->config->item('per_page');
        $offset = $this->uri->segment(3);

        $config['base_url']     = base_url("index.php/main/recipes/");
        $config['total_rows']   = $this->recipe_model->get_count();
        $config['per_page']     = $this->config->item('per_page');
        $this->pagination->initialize($config);

        $this->data['links']        = $this->pagination->create_links();
        $this->data['side']         = $this->common_side;
        $this->data['featured']     = $this->recipe_model->get_featured();
        $this->data['recordset']    = $this->recipe_model->get_entries(null, $limit, $offset, $this->order_by, 1, 0)->result();
        $this->data['page']         = "recipes";
        $this->load->view('template', $this->data);
    }

    public function blogs()
    {
        $limit  = $this->config->item('per_page');
        $offset = $this->uri->segment(3);

        $config['base_url']     = base_url("index.php/main/blogs/");
        $config['total_rows']   = $this->article_model->get_count();
        $config['per_page']     = $this->config->item('per_page');
        $this->pagination->initialize($config);

        $this->data['links']        = $this->pagination->create_links();
        $this->data['side']         = $this->common_side;
        $this->data['featured']     = $this->article_model->get_featured();
        $this->data['recordset']    = $this->article_model->get_entries(CONTENT_BLOG, null, $limit, $offset, $this->order_by, 1, 0)->result();
        $this->data['page']         = "blogs";
        $this->load->view('template', $this->data);
    }

    public function content($type, $slug)
    {
        if ($slug) :
            $this->data['row']  = $this->article_model->get($slug);
            $this->data['side'] = $this->common_side;
            $this->data['crumb'] = $type;
            $this->data['page'] = "content";
            $this->load->view('template', $this->data);
        else :
            redirect('home', 'refresh');
        endif;
    }

    public function contact_us()
    {
        $this->data['title']    = 'Contact Us';
        $this->data['side']     = $this->common_side;
        $this->data['result']   = $this->pages_model->get_entries();
        $this->data['page']     = "static_page";
        $this->load->view('template', $this->data);
    }

    public function qa()
    {
        $this->data['title']    = 'Q&A coming soon!';
        $this->data['side']     = $this->common_side;
        $this->data['result']   = $this->pages_model->get_entries(PAGE_QA);
        $this->data['page']     = "static_page";
        $this->load->view('template', $this->data);
    }
}