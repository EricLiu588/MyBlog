package com.heroliu.dao.base;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;

import com.heroliu.utils.PageBean;

public class HibernateGenericDaoImpl<T extends Serializable, ID extends Serializable>
		implements IGenericDao<T, ID> {

	private Class<T> persistentClass;
	
	@SuppressWarnings("unchecked")
	public HibernateGenericDaoImpl() {
		super();
		this.persistentClass = ((Class<T>) ((ParameterizedType) this.getClass()
				.getGenericSuperclass()).getActualTypeArguments()[0]);
	}

	@Override
	public void insert(Session session, T entity) {
		// TODO Auto-generated method stub
		try{
			session.save(entity);
		} catch(RuntimeException e){
			e.printStackTrace();
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public T selectById(Session session, ID id) {
		// TODO Auto-generated method stub		
		try{                                    
			T	entity = (T) session.get(this.persistentClass, id);	
			return entity;
		} catch(RuntimeException e){
			e.printStackTrace();
			return null;
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> selectAll(Session session) {
		// TODO Auto-generated method stub		
		try{
			Criteria criteria = session.createCriteria(this.persistentClass);
			List<T> list = criteria.list();
			return list;
		} catch(RuntimeException e){
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public void update(Session session, T entity) {
		// TODO Auto-generated method stub		
		try{			
			session.update(entity);
		} catch(RuntimeException e){
			e.printStackTrace();
		}
	}

	@Override
	public void delete(Session session, T entity) {
		// TODO Auto-generated method stub	
		try{
			session.delete(entity);
		} catch(RuntimeException e){
			e.printStackTrace();
		} 
	}

	@Override
	public PageBean selectByPage(Session session, String strHQL, int currentPage, int pageSize,
			Object... params){
		PageBean pageBean = new PageBean();
		try{
			Query query = session.createQuery(strHQL);
			for (int i = 0; i < params.length; i++) {
				query.setParameter( i , params[i]);
			}
			query.setFirstResult((currentPage - 1)*pageSize);  
			query.setMaxResults(pageSize); 
			pageBean.setData(query.list());		
				
			strHQL = "select count(*) " + strHQL.substring(strHQL.toLowerCase().indexOf("from"));
			query = session.createQuery(strHQL);
			for (int i = 0; i < params.length; i++) {
				query.setParameter( i , params[i]);
			}

			int totalRows = Integer.parseInt(query.uniqueResult().toString()); 
			pageBean.setTotalRows(totalRows);
			pageBean.setCurrentPage(currentPage);
			pageBean.setPageSize(pageSize);

			return pageBean;
			
		} catch (RuntimeException e){
			e.printStackTrace();
			return null;
		}
	}
}
