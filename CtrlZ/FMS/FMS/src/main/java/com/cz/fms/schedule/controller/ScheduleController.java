package com.cz.fms.schedule.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.cz.fms.schedule.domain.Schedule;
import com.cz.fms.schedule.service.ScheduleService;
import com.fasterxml.jackson.databind.util.JSONPObject;

@Controller
@RequestMapping("/schedule/*")
public class ScheduleController {
	private static final Logger logger = LoggerFactory.getLogger(ScheduleController.class);
	
	@Inject
	private ScheduleService service;
	
	/**
	 * 일정 등록 메소드로 /schedule/add로 POST요청이 들어왔을 경우 실행
	 * @author "안광호"
	 * @param schedule 등록할 객체
	 * */
	@RequestMapping(value="/add", method = RequestMethod.POST)
	public String registerPOST(Schedule schedule,  RedirectAttributes rttr) throws Exception{
		logger.info("일정등록 POST 실행 ....................");
		
		service.scheduleAdd(schedule);
		
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:/schedule/listAll";
	}
	
	/**
	 * 일정 수정
	 * @author "안광호"
	 * */
	@RequestMapping(value="/modify", method = RequestMethod.GET)
	public void modifyGET(int schedule_num, Model model) throws Exception{
		model.addAttribute(service.detailSchedule(schedule_num));
	}
	@RequestMapping(value="/modify", method = RequestMethod.POST)
	public String modifyPOST(Schedule schedule, RedirectAttributes rttr) throws Exception{
		logger.info("일정수정 post 실행.....................");
		
		service.scheduleModify(schedule);
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:/schedule/listAll";
	}
	
	/**
	 * 일정 삭제 메소드로 /schedule/remove로 POST요청이 들어왔을 경우 실행
	 * @author "안광호"
	 * @param schedule_num 수정할 일정 고유번호
	 * */
	@RequestMapping(value="/remove", method = RequestMethod.POST)
	public String remove(@RequestParam("schedule_num") int schedule_num, RedirectAttributes rttr) throws Exception{
		service.scheduleDelete(schedule_num);
		
		rttr.addFlashAttribute("msg", "SUCCES");
		
		return "redirect:/schedule/listAll";
	}
	
	/**
	 * 일정 전체보기 메소드로 /schedule/listAll로 GET요청이 들어왔을 경우 실행
	 * value : List<Schedule>
	 * @author "안광호"
	 * */
	@RequestMapping(value="/listAll", method = RequestMethod.GET)
	public String listAll(Model model) throws Exception{
		logger.info("전체보기 실행.......................");
		//model.addAttribute("list", service.scheduleListAll());
		model.addAttribute("events", service.scheduleListAll());
		return "redirect:/schedule";
	}
	
	@RequestMapping(value="/jsontest", method = RequestMethod.GET)
	public @ResponseBody List<Schedule> test(Model model) throws Exception{
		logger.info("JSONTEST 실행.......................");
//		JSONPObject object = new JSONPObject("events", service.scheduleListAll());
		//여기서 JSON형태로 담아서 보내버려야함
		
//		model.addAttribute("events", service.scheduleListAll());
//		model.addAttribute("test", "[{id:'Outsider', sex:'male'},{id:'JSon', sex:'fmale'}]");
		
		return service.scheduleListAll();
	}
	
	/**
	 * 상세 일정 보기 메소드로 /schedule/readSchedule로 GET요청이 들어왔을 경우 실행
	 * paranname : schedule
	 * value : schedule
	 * @author "안광호"
	 * */
	@RequestMapping(value="/detail_View", method = RequestMethod.GET)
	public void readSchedule(@RequestParam("schedule_num") int schedule_num, Model model) throws Exception{
		model.addAttribute(service.detailSchedule(schedule_num));
	}
	
	/**
	 * 일정 등록 메소드로 /add_View로 GET 요청이 들어 왔을 경우 실행
	 * @author "안광호"
	 * */
	@RequestMapping(value="/add_View", method = RequestMethod.GET)
	public void addViewGET(Model model) throws Exception{
		logger.info("add_View GET 실행.....................");
	}
	@RequestMapping(value="/add_View", method = RequestMethod.POST)
	public void addViewPOST(Schedule schedule, Model model) throws Exception{
		logger.info("add_View POST 실행.....................");
		
		if(schedule.getSchedule_deadline()==null){//마감을 안정했을 시
			schedule.setSchedule_deadline(schedule.getSchedule_date());//데드라인을 일정날짜와 같게 설정해준다.
		}
		schedule.setSchedule_writer("방그리");//정적인 값 테스트
		service.scheduleAdd(schedule);
		model.addAttribute("msg", "OK");
	}
	
	/**
	 * 댓글 등록
	 * @author "안광호"
	 * */
	
	/**
	 * 댓글 수정
	 * @author "안광호"
	 * */
	
	/**
	 * 댓글 삭제
	 * @author "안광호"
	 * */
	
	/**
	 * 공지사항 출력
	 * @author "안광호"
	 * */
}