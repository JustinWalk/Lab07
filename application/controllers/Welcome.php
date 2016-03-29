<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends Application {

	public function index()
	{
		$this->load->helper('directory');
		$this->load->library('parser');
		/*$candidates = directory_map(DATAPATH);
		sort($candidates);
		foreach ($candidates as $file) {
			if(substr_compare($file, XMLSUFFIX, strlen($file) - strlen(XMLSUFFIX), strlen(XMLSUFFIX)) === 0)
					$bookings[] = array('filename' => substr($file, 0, -4));
		}
		$this->data['orders'] = $bookings;*/
		$doc = new DOMDocument();
		$doc->load('./data/Lab07.xml');
		if ($doc->schemaValidate('./data/Lab07.xsd'))
		{
			$this->data['valid'] = 'valid';
		}
		else
		{
			$this->data['valid'] = 'invalid';
		}
		$this->data['pagebody'] = 'welcome_message';
		$this->render();
		/*$this->load->view('welcome_message');*/
	}


}
