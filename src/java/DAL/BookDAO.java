/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAL;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Book;

/**
 *
 * @author Hung
 */
public class BookDAO extends BaseDAO {

    public ArrayList<Book> getAll() {
        ArrayList<Book> bookList = new ArrayList<>();
        try {
            String sql = "SELECT * FROM books";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Book s = new Book();
                s.setId(rs.getInt("id"));
                s.setName(rs.getString("name"));
                s.setAuthor(rs.getString("author"));
                s.setPublisher(rs.getString("publisher"));
                bookList.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BookDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return bookList;
    }

    public static Book getBookById(String id) {
        try {
            String sql = "SELECT [id]\n"
                    + "      ,[name]\n"
                    + "      ,[author]\n"
                    + "      ,[publisher]\n"
                    + "  FROM [books]\n"
                    + "  where id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, id);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                Book s = new Book();
                s.setId(rs.getInt("id"));
                s.setName(rs.getString("name"));
                s.setAuthor(rs.getString("author"));
                s.setPublisher(rs.getString("publisher"));
                return s;
            }

        } catch (SQLException ex) {
            Logger.getLogger(BookDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
