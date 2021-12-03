package mypack;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProductController 
{
	@Autowired
	private ProductDao pdao;
	@GetMapping("view_prod")
	public ModelAndView add()
	{
		List<?> mylist=pdao.getAllProducts();
		return new ModelAndView("View","mylist",mylist);
	}
	
	@GetMapping("add_prod")
	public ModelAndView before()
	{
		Product p1=new Product();
		return new ModelAndView("Add","myproduct1",p1);
	}
	
	@PostMapping("add_prod")
	public String adding(Product product)
	{
		pdao.addproduct(product);
		return "Home";
	}
}
