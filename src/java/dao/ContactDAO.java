/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import db.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.Contact;

/**
 *
 * @author hieuphan
 */
public class ContactDAO {

    public Contact getContactInfo() throws Exception {
        DBContext db = null;
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "SELECT TOP 1 * FROM Contact";

        try {
            db = new DBContext();;
            con = db.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                String id = rs.getString("id");
                String address = rs.getString("address");
                String image = db.getResource() + rs.getString("image");
                String city = rs.getString("city");
                String country = rs.getString("country");
                String tel = rs.getString("tel");
                String email = rs.getString("email");
                return new Contact(Integer.parseInt(id), image, address, city, country, tel, email);
            }

        } catch (Exception ex) {
            throw ex;
        } finally {
            db.closeConnection(con, ps, rs);
        }
        return null;
    }
}
