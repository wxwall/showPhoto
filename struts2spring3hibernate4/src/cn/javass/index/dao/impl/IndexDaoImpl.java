package cn.javass.index.dao.impl;

import org.springframework.stereotype.Repository;

import cn.javass.common.dao.hibernate4.BaseHibernateDao;
import cn.javass.index.dao.IndexDao;
import cn.javass.index.model.ProductModel;

@Repository("IndexDao")
public class IndexDaoImpl extends BaseHibernateDao<ProductModel, Integer> implements IndexDao  {
	
}
