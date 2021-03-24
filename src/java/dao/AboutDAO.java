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
import model.About;

/**
 *
 * @author hieuphan
 */
public class AboutDAO {

    public About getAboutInfo() throws Exception {
        DBContext db = null;
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "SELECT TOP 1 * FROM [About] order by id desc";

        try {
            db = new DBContext();;
            con = db.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                String id = rs.getString("id");
                String content = rs.getString("content");
                return new About(Integer.parseInt(id), content);
            }

        } catch (Exception ex) {
            throw ex;
        } finally {
            db.closeConnection(con, ps, rs);
        }
        return null;
    }
}
