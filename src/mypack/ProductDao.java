package mypack;

import java.util.List;

public interface ProductDao 
{
	public void addproduct(Product ref);
	public List<?> getAllProducts();
}
