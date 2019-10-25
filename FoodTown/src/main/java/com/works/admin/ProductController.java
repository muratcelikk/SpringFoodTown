package com.works.admin;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.works.model.Categories;
import com.works.model.Product;
import com.works.model.ProductTable;

import util.DB;
import util.HibernateUtil;
import util.Util;

@Controller
@RequestMapping("/admin")
public class ProductController {

	SessionFactory sf = HibernateUtil.getSessionFactory();
	int editID = 0;
	DB db = new DB();

	@RequestMapping(value = "/newProduct", method = RequestMethod.GET)
	public String newProduct(Model model, HttpServletRequest req) {

		Session session = sf.openSession();
		List<Categories> cls = session.createQuery("from Categories").list();
		model.addAttribute("catpro", cls);

		return Util.control(req, "newProduct");
	}

	@RequestMapping(value = "/productList", method = RequestMethod.GET)
	public String productList(Model model, HttpServletRequest req) {

		model.addAttribute("proTable", productTable());

		return Util.control(req, "productList");
	}

	@RequestMapping(value = "/productInsert", method = RequestMethod.POST)
	public String productInsert(Product product, HttpServletRequest req) {
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();

		session.save(product);
		tr.commit();

		return Util.control(req, "redirect:/admin/productList");
	}

	@RequestMapping(value = "/deleteProduct/{pid}", method = RequestMethod.GET)
	public String productDelete(@PathVariable int pid, HttpServletRequest req) {
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();

		Product product = session.load(Product.class, pid);
		session.delete(product);
		tr.commit();
		return Util.control(req, "redirect:/admin/productList");
	}

	@RequestMapping(value = "/editProduct/{pid}", method = RequestMethod.GET)
	public String productEdit(@PathVariable int pid, Model model, HttpServletRequest req) {
		editID = pid;
		Session session = sf.openSession();

		Product product = session.load(Product.class, pid);
		model.addAttribute("productEditData", product);
		List<Categories> cls = session.createQuery("from Categories").list();
		model.addAttribute("catpro", cls);
		return Util.control(req, "productEdit");
	}

	@RequestMapping(value = "/productEdit", method = RequestMethod.POST)
	public String prodctEdit(Product product, HttpServletRequest req) {
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();

		product.setPid(editID);
		session.update(product);
		tr.commit();

		return Util.control(req, "redirect:/admin/productList");
	}

	public List<ProductTable> productTable() {
		List<ProductTable> tpd = new ArrayList<ProductTable>();
		try {
			String query = "SELECT * FROM product p INNER JOIN categories as c ON p.cid = c.cid";
			PreparedStatement prs = db.connect(query);
			ResultSet rs = prs.executeQuery();
			while (rs.next()) {
				ProductTable product = new ProductTable();
				product.setPid(rs.getInt("pid"));
				product.setPname(rs.getString("pname"));
				product.setPimg(rs.getString("pimg"));
				product.setPprize(rs.getString("Pprize"));
				product.setCname(rs.getString("cname"));
				tpd.add(product);

			}
		} catch (Exception e) {
			System.err.println("productTable error : " + e);
		}
		return tpd;
	}
}
