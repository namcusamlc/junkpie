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
import java.util.ArrayList;
import model.Photographer;

/**
 *
 * @author hieuphan
 */
public class PhotographerDAO {

    public Photographer getPhotographerByID(int phID) throws Exception {
        DBContext db = null;
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "SELECT * FROM Photographer WHERE id = ?";

        Photographer photographer = null;

        try {
            db = new DBContext();
            con = db.getConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, phID);
            rs = ps.executeQuery();

            while (rs.next()) {
                String id = rs.getString("id");
                String title = rs.getString("title");
                String desc = rs.getString("desc");
                String image = db.getResource() + rs.getString("image");
                return new Photographer(Integer.parseInt(id), title, desc, image);
            }

        } catch (Exception ex) {
            throw ex;
        } finally {
            db.closeConnection(con, ps, rs);
        }
        return photographer;
    }

    public ArrayList<Photographer> getListPhotographer() throws Exception {
        DBContext db = null;
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "SELECT * FROM Photographer";

        ArrayList<Photographer> photographeres = new ArrayList<>();

        try {
            db = new DBContext();
            con = db.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                String id = rs.getString("id");
                String title = rs.getString("title");
                String desc = rs.getString("desc");
                String image = db.getResource() + rs.getString("image");
                photographeres.add(new Photographer(Integer.parseInt(id), title, desc, image));
            }

        } catch (Exception ex) {
            throw ex;
        } finally {
            db.closeConnection(con, ps, rs);
        }
        return photographeres;
    }

    public ArrayList<Photographer> getListGalleryByPhotographerID(int phId) throws Exception {
        DBContext db = null;
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "SELECT * FROM Photographer where id != ?";

        ArrayList<Photographer> gallery = new ArrayList<>();

        try {
            Photographer firstPh = this.getPhotographerByID(phId);
            if (firstPh == null) {
                return gallery;
            }
            
            gallery.add(firstPh);

            db = new DBContext();
            con = db.getConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, phId);
            rs = ps.executeQuery();

            while (rs.next()) {
                String id = rs.getString("id");
                String title = rs.getString("title");
                String desc = rs.getString("desc");
                String image = db.getResource() + rs.getString("image");
                gallery.add(new Photographer(Integer.parseInt(id), title, desc, image));
            }

        } catch (Exception ex) {
            throw ex;
        } finally {
            db.closeConnection(con, ps, rs);
        }
        return gallery;
    }
}
