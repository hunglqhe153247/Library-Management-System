/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author Pham_Thai_Ha <>
 */
public class FeedbackDAO {
    public static int addFeedback(String userId, String title, String content) throws SQLException{
        try (Connection conn = DBcontext.getConnection()){
        PreparedStatement prepstatement = conn.prepareStatement("insert into Feedback values (?,?,?)");
            prepstatement.setString(1, userId);
            prepstatement.setString(2, title);
            prepstatement.setString(3, content);
            return prepstatement.executeUpdate();
        }
    }
}
