package Review.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import dbconnection.DbConnection;

public class ReviewDAO{
    
    public boolean submitReview(String review, int rating, int paperid, int reviewerid)throws SQLException{
        int rs = 0;
        String insertreview = "Update reviews set reviewContent = ? , rating = ? where paperidfk = ? and reviewer = ?;";
 try(Connection connection = DbConnection.init();
                
                PreparedStatement preparedStatement = connection.prepareStatement(insertreview);)
        {
                 preparedStatement.setString(1, review);
                 preparedStatement.setInt(2, rating);
                 preparedStatement.setInt(3, paperid);
                 preparedStatement.setInt(4, reviewerid);
                 rs = preparedStatement.executeUpdate();
        }
        return true;
    }
    
    public boolean allocatePaper(int paperID, int reviewerID) {
        String allocate_paper = "insert into reviews (`paperidfk`, `reviewer`) values (?, ?);";
        
        try(Connection connection = DbConnection.init();
                
                PreparedStatement preparedStatement = connection.prepareStatement(allocate_paper))
        {
            preparedStatement.setInt(1, paperID);
            preparedStatement.setInt(2, reviewerID);
            preparedStatement.executeUpdate();
            return true;
        }catch (SQLException e) {
            return false;
        }
        
        
    }
    
    public boolean unAllocatePaper(int paperID, int reviewerID) {
        String unallocate_paper = "delete from reviews where paperidfk = ? and reviewer = ?;";
        
        try(Connection connection = DbConnection.init();
                
                PreparedStatement preparedStatement = connection.prepareStatement(unallocate_paper))
        {
            preparedStatement.setInt(1, paperID);
            preparedStatement.setInt(2, reviewerID);
            preparedStatement.executeUpdate();
            return true;
        }catch (SQLException e) {
            return false;
        }
    }
    
    
    
    
    
    
    
}