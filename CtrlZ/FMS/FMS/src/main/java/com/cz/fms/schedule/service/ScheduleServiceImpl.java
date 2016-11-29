package com.cz.fms.schedule.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.cz.fms.schedule.dao.ScheduleDao;
import com.cz.fms.schedule.domain.Schedule;

@Service
public class ScheduleServiceImpl implements ScheduleService{

	@Inject
	private ScheduleDao scheduleDao;
	
	@Override
	public void scheduleAdd(Schedule schedule) throws RuntimeException {
		scheduleDao.create(schedule);
	}

	@Override
	public void scheduleModify(Schedule schedule) throws RuntimeException {
		scheduleDao.update(schedule);
	}

	@Override
	public void scheduleDelete(int schedule_num) throws RuntimeException {
		scheduleDao.remove(schedule_num);
	}

	@Override
	public List<Schedule> scheduleListAll() throws RuntimeException {
		return scheduleDao.listAll();
	}

	@Override
	public Schedule detailSchedule(int schedule_num) throws RuntimeException {
		return scheduleDao.detailSchedule(schedule_num);
	}

	@Override
	public void joinSchedule(int schedule_num, int member_num) throws RuntimeException {
		Schedule schedule = scheduleDao.detailSchedule(schedule_num);//일정 상세정보를 가져와서 참여인원을 가져온다.
		
		String joinName = schedule.getSchedule_joinname();//일정에 참여하는 회원들을 저장하는 임시 변수
		
		if(joinName.isEmpty() == true){//만약 처음으로 참여하는 회원이면
			schedule.setSchedule_joinname(member_num+"");//최초등록
		}else{//이미 다른회원도 등록되어 있는 경우
			if(joinName.matches(".*"+member_num+".*")==true){//이미 참여한 회원일 경우
				if(joinName.indexOf(member_num)==0){//가장 처음으로 등록된 경우
					if(joinName.length()==(member_num+"").length()){//하나만 있는 경우
						schedule.setSchedule_joinname(null);//현재 회원제거
					}else{//여러명이 등록되어 있는 경우
						schedule.setSchedule_joinname(joinName.replace(member_num+",", ""));
					}
				}else if(joinName.indexOf(member_num)+(member_num+"").length()==joinName.length()){//가장 마지막으로 등록된 경우
					schedule.setSchedule_joinname(joinName.replace(","+member_num, ""));
				}else{//중간에 등록된 경우
					schedule.setSchedule_joinname(joinName.replace(","+member_num, ""));
				}
			}else{//등록 안된 경우
				joinName+=","+member_num;//참여인원에 추가한다
			}
		}
		
		scheduleDao.update(schedule);
	}

	@Override
	public void replyAdd() throws RuntimeException {
		
	}

	@Override
	public void replyModify() throws RuntimeException {
		
	}

	@Override
	public void replyDelete(int reply_num) throws RuntimeException {
		
	}

	@Override
	public List<Object> replyListAll(int schedule_num) throws RuntimeException {
		return null;
	}

	@Override
	public List<Object> noticeListAll() throws RuntimeException {
		return null;
	}

}