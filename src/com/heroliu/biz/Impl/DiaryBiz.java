package com.heroliu.biz.Impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.heroliu.biz.IDiaryBiz;
import com.heroliu.dao.IDiaryDao;
import com.heroliu.pojo.Diary;

public class DiaryBiz implements IDiaryBiz {

	private SessionFactory sessionFactory;
	private IDiaryDao diaryDao;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	public void setDiaryDao(IDiaryDao diaryDao) {
		this.diaryDao = diaryDao;
	}
	
	@Override
	public List<Diary> findAll() {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		try {
			return this.diaryDao.selectAll(session);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

}
