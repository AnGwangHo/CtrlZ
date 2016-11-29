package com.cz.fms.schedule.service;

import java.util.List;

import com.cz.fms.schedule.domain.Schedule;

public interface ScheduleService {
	/**
	 * 감독이 일정 등록 메소드
	 * @author "안광호"
	 * @param schedule 등록할 일정 객체
	 * */
	public void scheduleAdd(Schedule schedule) throws RuntimeException;
	
	/**
	 * 감독이 일정 수정 메소드
	 * @author "안광호"
	 * @param 수정할 일정 객체
	 * */
	public void scheduleModify(Schedule schedule) throws RuntimeException;
	
	/**
	 * 감독이 일정 삭제 메소드
	 * @author "안광호"
	 * @param schedule_num 삭제할 일정의 고유번호
	 * */
	public void scheduleDelete(int schedule_num) throws RuntimeException;
	
	/**
	 * 감독, 회원이 일정 전체 보기 메소드
	 * @author "안광호"
	 * @return 일정객체가 담긴 list 반환
	 * */
	public List<Schedule> scheduleListAll() throws RuntimeException;
	
	/**
	 * 감독, 회원 일정 상세보기 메소드
	 * @author "안광호"
	 * @param schedule_num 자세히 볼 일정의 고유번호
	 * @return 일정객체 반환
	 * */
	public Schedule detailSchedule(int schedule_num) throws RuntimeException;
	
	/**
	 * 회원 일정 참여 메소드
	 * @author "안광호"
	 * @param schedule_num 참가할 일정의 고유번호
	 * @param member_num 참가할 회원의 고유번호
	 * */
	public void joinSchedule(int schedule_num, int member_num) throws RuntimeException;
	
	/**
	 * 감독, 회원 댓글 등록 메소드
	 * @author "안광호"
	 * */
	public void replyAdd() throws RuntimeException;
	
	/**
	 * 감독, 회원 댓글 수정 메소드
	 * @author "안광호"
	 * */
	public void replyModify() throws RuntimeException;
	
	/**
	 * 감독, 회원 댓글 삭제 메소드
	 * @author "안광호"
	 * @param reply_num 삭제할 댓글의 고유번호
	 * */
	public void replyDelete(int reply_num) throws RuntimeException;
	
	/**
	 * 감독, 회원 댓글 전체 보기 메소드
	 * @author "안광호"
	 * @param schedule_num 댓글 조회할 게시글의 고유번호
	 * @return 해당 게시글에 등록된 전체댓글의 리스트
	 * */
	public List<Object> replyListAll(int schedule_num) throws RuntimeException;
	
	/**
	 * 공지사항 전체출력
	 * @author "안광호"
	 * @return 공지사항 객체가 담긴 리스트 반환
	 * */
	public List<Object> noticeListAll() throws RuntimeException;
}