package in.edu.acet.idao;

import in.edu.acet.bean.TestHistory;
import in.edu.acet.bean.UserDetails;
import in.edu.acet.exception.EQException;
import java.util.List;
import org.springframework.stereotype.Component;

@Component
public interface ILoginDAO {

    public UserDetails isValidUser(String userName) throws EQException;

    public boolean isAdmin(UserDetails userDetails) throws EQException;

    public boolean createUser(final UserDetails userDetails) throws EQException;
    
    public UserDetails getUser(UserDetails userDetails) throws EQException;
    
    public UserDetails getUser(String userName,String password) throws EQException;
    
    public UserDetails isUserAvailable(String username) throws EQException;
    
    public boolean checkPasswordResetInfo(UserDetails userDetails) throws EQException;
    
    public boolean resetPassword(final String username, final String password) throws EQException;
    
    public boolean updateAttended(final String username) throws EQException;
    
    public boolean createTestHistory(final TestHistory testHistory) throws EQException;
    
    public TestHistory getTestHistory(final String username, final UserDetails userDetails) throws EQException;
    
    public List<TestHistory> getTestHistory() throws EQException;
    
    public List<String> getTestHistoryForAttendedUsers() throws EQException;
    
    public boolean resetTestHistory(final String username) throws EQException;
    
    public List<UserDetails> getAllStudentInfo() throws EQException;
    
    public int deleteStudent(String userName) throws EQException;
}
