<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Pages extends CI_Controller {

    public function __construct()
    {
        parent::__construct();

        if (!$this->ion_auth->logged_in()) :
            //redirect them to the login page
            redirect('auth/login', 'refresh');
        endif;

        $this->load->model('pagesModel', 'pages_model');
    }

    public function contact()
    {
        $this->form_validation->set_rules('page_type', 'Page Type', 'trim');
        $this->form_validation->set_rules('content', 'Content', 'trim|required');

        $this->data['title']        = "Contact Us";
        $this->data['type']         = "contact";
        $this->data['result']       = $this->pages_model->get_entries();
        $this->data['sidemenu']     = $this->load->view('admin/sidemenu', array('page' => 'pages', 'active' => 'contact'), true);
        $this->data['page']         = "admin/pages-form";

        if ($this->form_validation->run() == true) :
            $this->pages_model->update_entry();
            redirect('pages/contact', 'refresh');
        else :
            //set the flash data error message if there is one
            $this->data['message'] = (validation_errors()) ? validation_errors() : $this->session->flashdata('message');
            $this->load->view('admin/template', $this->data);
        endif;
    }

    public function qa()
    {
        $this->form_validation->set_rules('page_type', 'Page Type', 'trim');
        $this->form_validation->set_rules('content', 'Content', 'trim|required');

        $this->data['title']        = "Q&A";
        $this->data['type']         = "qa";
        $this->data['result']       = $this->pages_model->get_entries(PAGE_QA);
        $this->data['sidemenu']     = $this->load->view('admin/sidemenu', array('page' => 'pages', 'active' => 'qa'), true);
        $this->data['page']         = "admin/pages-form";

        if ($this->form_validation->run() == true) :
            $this->pages_model->update_entry(PAGE_QA);
            redirect('pages/qa', 'refresh');
        else :
            //set the flash data error message if there is one
            $this->data['message'] = (validation_errors()) ? validation_errors() : $this->session->flashdata('message');
            $this->load->view('admin/template', $this->data);
        endif;
    }
}