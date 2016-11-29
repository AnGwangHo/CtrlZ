package com.cz.fms.schedule.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.cz.fms.schedule.domain.Schedule;

@Repository
public class ScheduleDaoImpl implements ScheduleDao{

	@Inject
	private SqlSession session;
	
	private static String namespace = "com.cz.fms.schedule";
	
	@Override
	public void create(Schedule schedule) throws RuntimeException {
		session.insert(namespace+".create", schedule);
	}

	@Override
	public void update(Schedule schedule) throws RuntimeException {
		session.update(namespace+".update", schedule);
	}

	@Override
	public void remove(int schedule_num) throws RuntimeException {
		session.delete(namespace+".remove", schedule_num);
	}

	@Override
	public List<Schedule> listAll() throws RuntimeException {
		return session.selectList(namespace+".listAll");
	}

	@Override
	public Schedule detailSchedule(int schedule_num) throws RuntimeException {
		return session.selectOne(namespace+".detailSchedule", schedule_num);
	}

}