package vo;

import java.sql.Date;


public class AttendanceVO {
	private int lecture_code, member_code, attendance_code; 
	private String state, ok, no, hf, start, end, week;
	private Date attendance_time;
	public int getLecture_code() {
		return lecture_code;
	}
	public void setLecture_code(int lecture_code) {
		this.lecture_code = lecture_code;
	}
	public int getMember_code() {
		return member_code;
	}
	public void setMember_code(int member_code) {
		this.member_code = member_code;
	}
	public int getAttendance_code() {
		return attendance_code;
	}
	public void setAttendance_code(int attendance_code) {
		this.attendance_code = attendance_code;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getOk() {
		return ok;
	}
	public void setOk(String ok) {
		this.ok = ok;
	}
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getHf() {
		return hf;
	}
	public void setHf(String hf) {
		this.hf = hf;
	}
	public String getStart() {
		return start;
	}
	public void setStart(String start) {
		this.start = start;
	}
	public String getEnd() {
		return end;
	}
	public void setEnd(String end) {
		this.end = end;
	}
	public String getWeek() {
		return week;
	}
	public void setWeek(String week) {
		this.week = week;
	}
	public Date getAttendance_time() {
		return attendance_time;
	}
	public void setAttendance_time(Date attendance_time) {
		this.attendance_time = attendance_time;
	}
	
	

}
