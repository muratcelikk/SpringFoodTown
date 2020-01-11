package com.work.security;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.work.props.ProductTable;

@RestController
@RequestMapping(value = "/user")
public class UserRestController {
	
	@Autowired DriverManagerDataSource dataSource;
	@RequestMapping(value = "/product", method = RequestMethod.GET)
	public HashMap<String, Object> userProduct(){
		HashMap<String, Object> hm = new HashMap<>();
		List<ProductTable> ls = new ArrayList<ProductTable>();
		try {
			String query = "SELECT * FROM product p INNER JOIN categories as c ON p.cid = c.cid";
			PreparedStatement pre = dataSource.getConnection().prepareStatement(query);
			ResultSet rs = pre.executeQuery();
			while (rs.next()) {
				ProductTable product = new ProductTable();
				product.setPname(rs.getString("pname"));
				product.setPimg(rs.getString("pimg"));
				product.setCname(rs.getString("cname"));
				ls.add(product);
			}
			
			hm.put("userList", ls);
		} catch (Exception e) {
			System.err.println("WARNN : " + e);
		}
		return hm;
	}
}
