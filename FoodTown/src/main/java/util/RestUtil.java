package util;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class RestUtil {
	

	
	public static boolean apiControl(String apikey, DB db) {
		boolean statu = false;
		if (apikey.equals("")) {
			return false;
		}
		try {
			String query = "Select * from api where apikey = ?";
			PreparedStatement prs = db.connect(query);
			prs.setString(1, apikey);
			ResultSet rs = prs.executeQuery();
			if (rs.next()) {
				statu = true;
				int aid = rs.getInt("aid");
				
				
				String q = "Update admin set count = ? where aid = ?";
				PreparedStatement pr = db.connect(q);
				pr.setInt(2, aid);
				pr.executeUpdate();
			}
		} catch (Exception e) {
			System.err.println("API KEY error : " + e);
		}
		return statu;
	}
}
