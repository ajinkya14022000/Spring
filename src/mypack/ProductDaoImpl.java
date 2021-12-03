package mypack;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

@Component
@Transactional
public class ProductDaoImpl implements ProductDao {
	@Autowired
	private HibernateTemplate template;

	@Override
	public void addproduct(Product ref) 
	{
		template.save(ref);
	}

	@Override
	public List<?> getAllProducts() 
	{
		return template.find("from Product");
	}
}
