package com.heroliu.action;

import java.util.List;

import com.heroliu.biz.IDiaryBiz;
import com.heroliu.pojo.Diary;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;

public class DiaryAction extends BaseAction implements ModelDriven<Diary>{

	private Diary diary;
	private IDiaryBiz diaryBiz;
	@Override
	public Diary getModel() {
		// TODO Auto-generated method stub
		return this.diary;
	}
	
	public void setDiaryBiz(IDiaryBiz diaryBiz) {
		this.diaryBiz = diaryBiz;
	}
	
	public void setDiary(Diary diary) {
		this.diary = diary;
	}
	
	public String findAllDiary() throws Exception{
		List<Diary> lists = this.diaryBiz.findAll();
		System.out.println(lists.size()+"");
		this.getRequest().setAttribute("listsDiary", lists);
		return Action.SUCCESS;
	}

}
