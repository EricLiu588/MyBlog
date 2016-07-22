package com.heroliu.dao.base;

import java.io.Serializable;
import java.sql.SQLException;
import java.util.List;

import org.hibernate.Session;

import com.heroliu.utils.PageBean;

public interface IGenericDao<T extends Serializable, ID extends Serializable> {

	public abstract void insert(final Session session, final T entity)
			throws SQLException;

	public abstract T selectById(final Session session, final ID id)
			throws SQLException;

	public abstract List<T> selectAll(final Session session)
			throws SQLException;

	public abstract void update(final Session session, final T entity)
			throws SQLException;

	public abstract void delete(final Session session, final T entity)
			throws SQLException;

	public abstract PageBean selectByPage(final Session session,
			final String strHQL, final int currentPage, final int pageSize,
			final Object... params) throws SQLException;

}
