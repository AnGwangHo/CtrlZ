package com.cz.fms.schedule.dao;

import java.util.List;

import com.cz.fms.schedule.domain.Schedule;

public interface ScheduleDao {
	/**
	 * 일정을 DB에 등록한다.
	 * @author "안광호"
	 * @param schedule 일정 정보가 담긴 객체
	 * */
	public void create(Schedule schedule) throws RuntimeException;
	
	/**
	 * 일정을 DB에서 수정한다.
	 * @author "안광호"
	 * @param schedule 수정할 일정 정보가 담긴 객체
	 * */
	public void update(Schedule schedule) throws RuntimeException;
	
	/**
	 * 일정을 DB에서 삭제한다.
	 * @author "안광호"
	 * @param schedule_num 삭제할 일정 고유번호
	 * */
	public void remove(int schedule_num) throws RuntimeException;
	
	/**
	 * 일정 전체 출력
	 * @author "안광호"
	 * @return 일정 정보가 담긴 객체들의 리스트
	 * */
	public List<Schedule> listAll() throws RuntimeException;
	
	/**
	 * 일정 상세출력
	 * @author "안광호"
	 * @param 자세한 내용을 볼 일정 고유번호
	 * @return 일정 정보가 담긴 객체
	 * */
	public Schedule detailSchedule(int schedule_num) throws RuntimeException;
}