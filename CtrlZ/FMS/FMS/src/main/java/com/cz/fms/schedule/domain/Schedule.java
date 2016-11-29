package com.cz.fms.schedule.domain;

import java.sql.Date;

public class Schedule {
	private int schedule_num;//고유번호
	private String schedule_title;//제목
	private String schedule_content;//내용
	private String schedule_writer;//작성자
	private Date schedule_date;//일정 시작날짜
	private String schedule_location;//모임장소
	private Date schedule_deadline;//일정 마감날짜
	private String schedule_joinname;//참여인원(1,3,5...)
	
	public Schedule() {}
	public Schedule(int schedule_num, String schedule_title, String schedule_content, String schedule_writer,
			Date schedule_date, String schedule_location, Date schedule_deadline, String schedule_joinname) {
		this.schedule_num = schedule_num;
		this.schedule_title = schedule_title;
		this.schedule_content = schedule_content;
		this.schedule_writer = schedule_writer;
		this.schedule_date = schedule_date;
		this.schedule_location = schedule_location;
		this.schedule_deadline = schedule_deadline;
		this.schedule_joinname = schedule_joinname;
	}

	public String getSchedule_writer() {
		return schedule_writer;
	}
	public void setSchedule_writer(String schedule_writer) {
		this.schedule_writer = schedule_writer;
	}
	public int getSchedule_num() {
		return schedule_num;
	}
	public void setSchedule_num(int schedule_num) {
		this.schedule_num = schedule_num;
	}
	public String getSchedule_title() {
		return schedule_title;
	}
	public void setSchedule_title(String schedule_title) {
		this.schedule_title = schedule_title;
	}
	public String getSchedule_content() {
		return schedule_content;
	}
	public void setSchedule_content(String schedule_content) {
		this.schedule_content = schedule_content;
	}
	public Date getSchedule_date() {
		return schedule_date;
	}
	public void setSchedule_date(Date schedule_date) {
		this.schedule_date = schedule_date;
	}
	public String getSchedule_location() {
		return schedule_location;
	}
	public void setSchedule_location(String schedule_location) {
		this.schedule_location = schedule_location;
	}
	public Date getSchedule_deadline() {
		return schedule_deadline;
	}
	public void setSchedule_deadline(Date schedule_deadline) {
		this.schedule_deadline = schedule_deadline;
	}
	public String getSchedule_joinname() {
		return schedule_joinname;
	}
	public void setSchedule_joinname(String schedule_joinname) {
		this.schedule_joinname = schedule_joinname;
	}
	@Override
	public String toString() {
		return "Schedule [schedule_num=" + schedule_num + ", schedule_title=" + schedule_title + ", schedule_content="
				+ schedule_content + ", schedule_writer=" + schedule_writer + ", schedule_date=" + schedule_date
				+ ", schedule_location=" + schedule_location + ", schedule_deadline=" + schedule_deadline
				+ ", schedule_joinname=" + schedule_joinname + "]";
	}
}