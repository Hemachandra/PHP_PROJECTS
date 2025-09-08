<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class visitors_model extends MY_Model {

    public function __construct() {
        parent::__construct();
        $this->current_session = $this->setting_model->getCurrentSession();
        $this->current_session_name = $this->setting_model->getCurrentSessionName();
        $this->start_month = $this->setting_model->getStartMonth();
    }

    function add($data) {
        $this->db->trans_start(); # Starting Transaction
        $this->db->trans_strict(false); # See Note 01. If you wish can remove as well
        //=======================Code Start===========================
        $this->db->insert('visitors_book', $data);
        $query = $this->db->insert_id();
        $message = INSERT_RECORD_CONSTANT . " On  visitors  id " . $query;
        $action = "Insert";
        $record_id = $query;
        $this->log($message, $record_id, $action);
        
        //======================Code End==============================

        $this->db->trans_complete(); # Completing transaction
        /* Optional */

        if ($this->db->trans_status() === false) {
            # Something went wrong.
            $this->db->trans_rollback();
            return false;
        } else {


            return $record_id;
        }
    }

    public function getPurpose() {
        $this->db->select('*');
        $this->db->from('visitors_purpose');
        $query = $this->db->get();
        return $query->result_array();
    }

    public function get_total_visitors_count($search_value='') {
        if (!empty($search_value)) {
            $this->db->group_start(); // Start of group for OR conditions
            $this->db->like('name', $search_value);
            $this->db->or_like('purpose', $search_value);
            $this->db->or_like('note', $search_value);
            $this->db->group_end(); // End of group
            // Add more search conditions as needed
        }
        return $this->db->count_all('visitors_book');
    }
    public function paginated_visitors_list($offset = 1, $limit = 10,$search_value='') {
        // $this->load->library('pagination');
    
        // Pagination configuration
        // $config['base_url'] = site_url('admin/visitors/index');
        // $config['total_rows'] = $this->db->count_all('visitors_book');
        // $config['per_page'] = $limit;
        // $config['uri_segment'] = 4; // URI segment containing the page number
        // $config['use_page_numbers'] = TRUE;
    
        // // Initialize pagination
        // $this->pagination->initialize($config);
    
        // Calculate offset
        // $offset = ($offset - 1) * $limit;
    
        // Fetch data based on pagination parameters
        if (!empty($search_value)) {
            $this->db->group_start(); // Start of group for OR conditions
            $this->db->like('visitors_book.name', $search_value);
            $this->db->or_like('purpose', $search_value);
            $this->db->or_like('visitors_book.note', $search_value);
            $this->db->group_end(); // End of group
            // Add more search conditions as needed
        }
        $this->db->select("visitors_book.*,staff.name as staff_name,staff.surname staff_surname,(SELECT GROUP_CONCAT(CONCAT(`students`.`firstname`, ' ', `students`.`lastname`)) FROM `students` WHERE `students`.`guardian_phone` = `visitors_book`.`guardian_phone`) as `student_fullnames`,students.admission_no,students.firstname,students.lastname,classes.class,sections.section,students.guardian_name,students.guardian_phone")
                 ->from('visitors_book')
                 ->join("students", "students.admission_no = visitors_book.admission_no", "left")
                 ->join('student_session', 'student_session.student_id = students.id', "left")
                 ->join('classes', 'student_session.class_id = classes.id', "left")
                 ->join('staff', 'visitors_book.added_by = staff.id', "left")
                 ->join('sections', 'sections.id = student_session.section_id', "left")
                 ->order_by('visitors_book.id', 'desc')
                 ->limit($limit, $offset);
               
    
        $query = $this->db->get();
    
        return $query->result_array();
    }

    
    public function visitors_list($id = null) {
        if ($id != null) {
            $this->db->select("visitors_book.*,staff.name as staff_name,staff.surname staff_surname,(SELECT GROUP_CONCAT(CONCAT(`students`.`firstname`, ' ', `students`.`lastname`)) FROM `students` WHERE `students`.`guardian_phone` = `visitors_book`.`guardian_phone`) as `student_fullnames`,students.admission_no,students.firstname,students.lastname,classes.class,sections.section,students.guardian_name,students.guardian_phone")->from('visitors_book');
            $this->db->join("students","students.admission_no = visitors_book.admission_no","left");
            $this->db->join('student_session', 'student_session.student_id = students.id',"left");
            $this->db->join('classes', 'student_session.class_id = classes.id',"left");
            $this->db->join('staff', 'visitors_book.added_by = staff.id',"left");
            $this->db->join('sections', 'sections.id = student_session.section_id',"left");
            $this->db->where('visitors_book.id', $id);
        } else {
            $this->db->select()->from('visitors_book');
            $this->db->order_by('visitors_book.id', 'desc');
        }
        $query = $this->db->get();
        if ($id != null) {
            return $query->row_array();
        } else {
            return $query->result_array();
        }
    }

    public function delete($id) {
        $this->db->trans_start(); # Starting Transaction
        $this->db->trans_strict(false); # See Note 01. If you wish can remove as well
        //=======================Code Start===========================
        $this->db->where('id', $id);
        $this->db->delete('visitors_book');
        $message = DELETE_RECORD_CONSTANT . " On  visitors  id " . $id;
        $action = "Delete";
        $record_id = $id;
        $this->log($message, $record_id, $action);
        //======================Code End==============================
        $this->db->trans_complete(); # Completing transaction
        /* Optional */
        if ($this->db->trans_status() === false) {
            # Something went wrong.
            $this->db->trans_rollback();
            return false;
        } else {
            //return $return_value;
        }
        $this->session->set_flashdata('msg', '<div class="alert alert-success">' . $this->lang->line('delete_message') . '</div>');
        redirect('admin/visitors');
    }

    public function update($id, $data) {
        $this->db->trans_start(); # Starting Transaction
        $this->db->trans_strict(false); # See Note 01. If you wish can remove as well
        //=======================Code Start===========================
        $this->db->where('id', $id);
        $this->db->update('visitors_book', $data);

        $message = UPDATE_RECORD_CONSTANT . " On  visitors id " . $id;
        $action = "Update";
        $record_id = $id;
        $this->log($message, $record_id, $action);
        //======================Code End==============================
        $this->db->trans_complete(); # Completing transaction
        /* Optional */
        if ($this->db->trans_status() === false) {
            # Something went wrong.
            $this->db->trans_rollback();
            return false;
        } else {
            //return $return_value;
        }
        $this->session->set_flashdata('msg', '<div class="alert alert-success">' . $this->lang->line('update_message') . '</div>');
        redirect('admin/visitors');
    }
    public function simple_update($id, $data) {
        $this->db->trans_start(); # Starting Transaction
        $this->db->trans_strict(false); # See Note 01. If you wish can remove as well
        //=======================Code Start===========================
        $this->db->where('id', $id);
        $this->db->update('visitors_book', $data);

        $message = UPDATE_RECORD_CONSTANT . " On  visitors id " . $id;
        $action = "Update";
        $record_id = $id;
        $this->log($message, $record_id, $action);
        //======================Code End==============================
        $this->db->trans_complete(); # Completing transaction
        /* Optional */
        if ($this->db->trans_status() === false) {
            # Something went wrong.
            $this->db->trans_rollback();
            return false;
        } else {
            //return $return_value;
        }
      
    }

    public function image_add($visitor_id, $image) {
        $array = array('id' => $visitor_id);
        $this->db->set('image', $image);
        $this->db->where($array);
        $this->db->update('visitors_book');
        $this->session->set_flashdata('msg', '<div class="alert alert-success">' . $this->lang->line('success_message') . '</div>');
    }

    public function image_update($visitor_id, $image) {
        $array = array('id' => $visitor_id);
        $this->db->set('image', $image);
        $this->db->where($array);
        $this->db->update('visitors_book');
        $this->session->set_flashdata('msg', '<div class="alert alert-success">' . $this->lang->line('success_message') . '</div>');
    }

    public function image_delete($id, $img_name) {
        $file = "./uploads/front_office/visitors/" . $img_name;
        unlink($file);
        $this->db->where('id', $id);
        $this->db->delete('visitors_book');
        $controller_name = $this->uri->segment(2);
        $this->session->set_flashdata('msg', '<div class="alert alert-success"> ' . ucfirst($controller_name) . '' . $this->lang->line('success_message') . '</div>');
        redirect('admin/' . $controller_name);
    }

}
