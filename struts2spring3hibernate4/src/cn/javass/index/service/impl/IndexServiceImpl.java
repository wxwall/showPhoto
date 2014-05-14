package cn.javass.index.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import cn.javass.common.dao.IBaseDao;
import cn.javass.common.service.impl.BaseService;
import cn.javass.index.dao.IndexDao;
import cn.javass.index.model.ProductModel;
import cn.javass.index.service.IndexService;

@Service("IndexService")
public class IndexServiceImpl extends BaseService<ProductModel, Integer> implements IndexService{

	private IndexDao indexDao;
	
	@Autowired
    @Qualifier("IndexDao")
    @Override
	public void setBaseDao(IBaseDao<ProductModel, Integer> indexDao) {
		this.baseDao = indexDao;
		this.indexDao = (IndexDao) baseDao;
	}

}
