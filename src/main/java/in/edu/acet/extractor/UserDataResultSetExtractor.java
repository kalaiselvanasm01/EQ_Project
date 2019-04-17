package in.edu.acet.extractor;

import in.edu.acet.bean.UserDetails;
import in.edu.acet.dao.LoginDAO;
import in.edu.acet.idao.IUtilityDAO;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.stereotype.Component;

@Component(value="userDataResultSetExtractor")
@Scope(value = "prototype")
public class UserDataResultSetExtractor implements ResultSetExtractor<UserDetails> {
    
    @Autowired
    private IUtilityDAO utilityDAO;

    public UserDetails extractData(ResultSet rs) throws SQLException, DataAccessException {
        if (rs.next()) {
            UserDetails userDetails = new UserDetails();
            userDetails.setUserName(rs.getString("username"));
            try {
                userDetails.setDateOfBirth(rs.getString("dateofbirth"));
            } catch (ParseException ex) {
                Logger.getLogger(LoginDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
            userDetails.setFirstName(rs.getString("firstname"));
            userDetails.setLastName(rs.getString("lastname"));
            userDetails.setGender(utilityDAO.getGender(rs.getString("gender")));
            userDetails.setFatherName(rs.getString("fathername"));
            userDetails.setAddress(rs.getString("address"));
            userDetails.setNationality(rs.getString("nationality"));
            userDetails.setReligion(rs.getString("religion"));
            userDetails.setHscGroup(rs.getString("hscgroup"));
            userDetails.setExpObtHSCMark(rs.getInt("expobthscmark"));
            userDetails.setBloodGroup(utilityDAO.getBloodGroup(rs.getString("bloodgroup")));
            userDetails.setEmail(rs.getString("email"));
            userDetails.setPhNumber(rs.getString("phnumber"));
            userDetails.setExpectedDept(utilityDAO.getDept(rs.getString("expecteddept")));
            userDetails.setIsattended(rs.getBoolean("isattended"));
            userDetails.setRole(rs.getString("role"));
            return userDetails;
        }
        return null;
    }

}
