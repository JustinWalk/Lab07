<?php

class Timetable extends CI_Model {

    protected $xml = null;
    protected $course = array();
    protected $timeslot = array();
    protected $day = array();
    protected $instructor = array();
    protected $activity = array();
    protected $room = array();

    function __construct($filename = null) {
        parent::__construct();
		if($filename == null) return;
		
        $this->xml = simplexml_load_file(DATAPATH . $filename . XMLSUFFIX);

        //Organized by day
        foreach ($this->xml->Days->DayBookings as $dayBookings)
        {
            foreach ($dayBookings->DayBooking as $dayBooking)
            {
                $record = new stdClass();
                $record->Course = (string) $dayBooking['Course'];
                $record->Timeslot = (string) $dayBooking['Timslot'];
                $record->Day = (string) $dayBookings['Day'];
                $record->Instructor = (string) $dayBooking['Instructor'];
                $record->Activity = (string) $dayBooking['Activity'];
                $record->Room = (string) $dayBooking['Room'];
                $this->dayBookings[] = $record;
            }
        }

        //Organized by timeslot
        foreach ($this->xml->Timeslots->TimeBookings as $timeBookings)
        {
            foreach ($timeBookings->TimeBooking as $timeBooking)
            {
                $record = new stdClass();
                $record->Course = (string) $timeBooking['Course'];
                $record->Timeslot = (string) $timeBookings['Timslot'];
                $record->Day = (string) $timeBooking['Day'];
                $record->Instructor = (string) $timeBooking['Instructor'];
                $record->Activity = (string) $timeBooking['Activity'];
                $record->Room = (string) $timeBooking['Room'];
                $this->timeBookings[] = $record;
            }
        }

        //Organized by course
        foreach ($this->xml->Courses->CourseBookings as $courseBookings)
        {
            foreach ($courseBookings->CourseBooking as $courseBooking)
            {
                $record = new stdClass();
                $record->Course = (string) $courseBookings['Course'];
                $record->Timeslot = (string) $courseBooking['Timslot'];
                $record->Day = (string) $courseBooking['Day'];
                $record->Instructor = (string) $courseBooking['Instructor'];
                $record->Activity = (string) $courseBooking['Activity'];
                $record->Room = (string) $courseBooking['Room'];
                $this->courseBookings[] = $record;
            }
        }
    }
	
	function getDayBookings(){
		return $this->dayBookings;
	}
	
	
}
