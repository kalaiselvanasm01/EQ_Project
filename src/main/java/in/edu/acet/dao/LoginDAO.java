package in.edu.acet.dao;

import in.edu.acet.bean.TestHistory;
import in.edu.acet.bean.UserDetails;
import in.edu.acet.constants.QueryConstants;
import in.edu.acet.enums.Gender;
import in.edu.acet.exception.EQException;
import in.edu.acet.extractor.UserDataResultSetExtractor;
import in.edu.acet.idao.ILoginDAO;
import in.edu.acet.idao.IPasswordDAO;
import in.edu.acet.idao.IUtilityDAO;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCallback;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

@Component(value = "loginDAO")
public class LoginDAO implements ILoginDAO {

    private static final Logger LOGGER = LoggerFactory.getLogger(LoginDAO.class);

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Autowired
    private IPasswordDAO passwordDAO;

    @Autowired
    private UserDataResultSetExtractor userDataResultSetExtractor;
    
    @Autowired
    private IUtilityDAO utilityDAO;
    
    public UserDetails isValidUser(UserDetails userDetails) throws EQException {
        UserDetails responseUserDetails = null;
        try {
            responseUserDetails = jdbcTemplate.query(QueryConstants.LOGIN_QUERY, new Object[]{userDetails.getUserName(), passwordDAO.convertPasswordToMD5(userDetails.getPassword())}, userDataResultSetExtractor);
        } catch (EQException exception) {
            LOGGER.info("Exception occured while trying to check Login Details", exception);
            throw new EQException("Exception occured while trying to check Login Details");
        } catch (DataAccessException exception) {
            LOGGER.info("Exception occured while trying to check Login Details", exception);
            throw new EQException("Exception occured while trying to check Login Details");
        }
        return responseUserDetails;
    }

    public boolean isAdmin(UserDetails userDetails) throws EQException {
        return userDetails.isIsAdmin();
    }

    public boolean createUser(final UserDetails userDetails) throws EQException {
        boolean response = false;
        try {
            response = jdbcTemplate.execute(QueryConstants.REGISTER_QUERY, new PreparedStatementCallback<Boolean>() {
                public Boolean doInPreparedStatement(PreparedStatement ps) throws SQLException, DataAccessException {
                    try {
                        ps.setString(1, userDetails.getUserName());
                        ps.setString(2, passwordDAO.convertPasswordToMD5(userDetails.getPassword()));
                        ps.setString(3, userDetails.getDateOfBirth());
                        ps.setString(4, userDetails.getFirstName());
                        ps.setString(5, userDetails.getLastName());
                        ps.setString(6, userDetails.getGender().getDescription());
                        ps.setString(7, userDetails.getFatherName());
                        ps.setString(8, userDetails.getAddress());
                        ps.setString(9, userDetails.getNationality());
                        ps.setString(10, userDetails.getReligion());
                        ps.setString(11, userDetails.getHscGroup());
                        ps.setInt(12, userDetails.getExpObtHSCMark());
                        ps.setString(13, userDetails.getBloodGroup().getDescription());
                        ps.setString(14, userDetails.getEmail());
                        ps.setString(15, userDetails.getPhNumber());
                        ps.setString(16, userDetails.getExpectedDept().getDescription());
                        ps.setBoolean(17, userDetails.isIsAdmin());
                        ps.setBoolean(18, userDetails.isUltimateAdmin());
                    } catch (EQException eqException) {
                        LOGGER.info("EQException occured while trying to retrieve password from UserDetails Bean", eqException);
                    }
                    return ps.execute();
                }
            });
        } catch (Exception exception) {
            LOGGER.info("Exception occured while trying to insert UserDetails into DB", exception);
            throw new EQException("Exception occured while trying to insert UserDetails into DB");
        }
        return response;
    }

    public UserDetails getUser(UserDetails userDetails) throws EQException {
        UserDetails responseUserDetails = null;
        try {
            responseUserDetails = jdbcTemplate.query(QueryConstants.LOGIN_QUERY, new Object[]{userDetails.getUserName(), userDetails.getPassword()}, userDataResultSetExtractor);
        } catch (Exception exception) {
            LOGGER.info("Exception occured while trying to get UserDetails - getUser", exception);
            throw new EQException("Exception occured while trying to get UserDetails - getUser", exception);
        }
        return responseUserDetails;
    }

    public UserDetails getUser(String userName, String password) throws EQException {
        UserDetails userDetails = null;
        try {
            userDetails = jdbcTemplate.query(QueryConstants.LOGIN_QUERY, new Object[]{userName, password}, userDataResultSetExtractor);
        } catch (Exception exception) {
            LOGGER.info("Exception occured while trying to check Login Details - getUser", exception);
            throw new EQException("Exception occured while trying to check Login Details - getUser", exception);
        }
        return userDetails;
    }

    public UserDetails isUserAvailable(String username) throws EQException {
        UserDetails userDetails = null;
        try {
            userDetails = jdbcTemplate.query(QueryConstants.CHECK_USER_QUERY, new Object[]{username}, userDataResultSetExtractor);
        } catch (Exception exception) {
            LOGGER.info("Exception occured while trying to check the availability of User - isUserAvailable");
            throw new EQException("Exception occured while trying to check the availability of User - isUserAvailable", exception);
        }
        return userDetails;
    }

    public boolean checkPasswordResetInfo(UserDetails userDetails) throws EQException {
        int result;
        boolean response = false;
        try {
            result = jdbcTemplate.queryForObject(QueryConstants.CHECK_PASSWORD_RESET_QUERY, new Object[]{userDetails.getUserName(), userDetails.getDateOfBirth(), userDetails.getGender().toString(), userDetails.getEmail(), userDetails.getPhNumber()}, Integer.class);
            if (result == 1) {
                response = true;
            } else {
                response = false;
            }
        } catch (Exception exception) {
            LOGGER.info("Exception occured while trying to Check the info for Reseting Password", exception);
            throw new EQException("Exception occured while trying to Check the info for Reseting Password", exception);
        }
        return response;
    }

    public boolean resetPassword(final String username, final String password) throws EQException {
        boolean response = false;
        int result;
        try {
            result = jdbcTemplate.update(QueryConstants.UPDATE_PASSWORD, new PreparedStatementSetter() {
                public void setValues(PreparedStatement ps) throws SQLException {
                    try {
                        ps.setString(1, passwordDAO.convertPasswordToMD5(password));
                        ps.setString(2, username);
                    } catch (EQException exception) {
                        LOGGER.info("Exception occured while trying to Reseting Password", exception);
                    }
                }
            });
            if (result == 1) {
                response = true;
            }
        } catch (Exception exception) {
            LOGGER.info("Exception occured while trying to Reseting Password", exception);
            throw new EQException("Exception occured while trying to Reseting Password", exception);
        }
        return response;
    }

    public boolean updateAttended(final String username) throws EQException {
        boolean response=false;
        try{
            response=jdbcTemplate.execute(QueryConstants.UPDATE_USER_TEST_ATTENDED, new PreparedStatementCallback<Boolean>() {
                public Boolean doInPreparedStatement(PreparedStatement ps) throws SQLException, DataAccessException {
                    ps.setBoolean(1, true);
                    ps.setString(2, username);
                    return ps.execute();
                }
            });
        } catch (Exception exception) {
            LOGGER.info("Exception occured while Updating UserDetails", exception);
            throw new EQException("Exception occured while Updating UserDetails", exception);
        }
        
        return response;
    }

    public boolean createTestHistory(final TestHistory testHistory) throws EQException {
        boolean response=false;
        try {
            response=jdbcTemplate.execute(QueryConstants.CREATE_TEST_HISTORY_QUERY,new PreparedStatementCallback<Boolean>() {
                public Boolean doInPreparedStatement(PreparedStatement ps) throws SQLException, DataAccessException {
                    ps.setString(1, testHistory.getUserDetails().getUserName());
                    ps.setString(2, testHistory.getAttendedDate());
                    ps.setString(3, testHistory.getResultDept());
                    ps.setString(4, testHistory.getReportFileName());
                    return ps.execute();
                }
            });
        } catch(Exception exception) {
            LOGGER.info("Exception occured while inserting Test History", exception);
            throw new EQException("Exception occured while inserting Test History", exception);
        }
        return response;
    }

    public TestHistory getTestHistory(final String username,final UserDetails userDetails) throws EQException {
        TestHistory result=null;
        try{
            result=jdbcTemplate.queryForObject(QueryConstants.GET_TEST_HISTORY_QUERY_USER, new Object[] {username}, new RowMapper<TestHistory>(){
                public TestHistory mapRow(ResultSet rs, int i) throws SQLException {
                    TestHistory testHistory=null;
                        testHistory=new TestHistory();
                        testHistory.setUserDetails(userDetails);
                        testHistory.setAttendedDate(rs.getString("attendeddate"));
                        testHistory.setReportFileName(rs.getString("reportfilename"));
                        testHistory.setResultDept(rs.getString("resultdept"));
                    return testHistory;
                }
            });
        } catch(Exception exception) {
            LOGGER.info("Exception occured while getting Test History for User=>"+username, exception);
            throw new EQException("Exception occured while getting Test History for User=>"+username, exception);
        }
        return result;
    }

    public List<TestHistory> getTestHistory() throws EQException {
        List<TestHistory> testHistoryList=null;
        try{
            testHistoryList=jdbcTemplate.query(QueryConstants.GET_TEST_HISTORY_QUERY, new ResultSetExtractor<List<TestHistory>>() {
                List<TestHistory> testHistorys=new ArrayList<TestHistory>();
                public List<TestHistory> extractData(ResultSet rs) throws SQLException, DataAccessException {
                    while (rs.next()) {
                        UserDetails userDetails=null;
                        TestHistory testHistory=null;
                        try {
                            userDetails=new UserDetails();
                            userDetails.setUserName(rs.getString("username"));
                            userDetails.setAddress(rs.getString("address"));
                            userDetails.setBloodGroup(utilityDAO.getBloodGroup(rs.getString("bloodgroup")));
                            userDetails.setDateOfBirth(rs.getString("dateofbirth"));
                            userDetails.setEmail(rs.getString("email"));
                            userDetails.setExpObtHSCMark(rs.getInt("expobthscmark"));
                            userDetails.setExpectedDept(utilityDAO.getDept(rs.getString("expecteddept")));
                            userDetails.setFatherName(rs.getString("fathername"));
                            userDetails.setFirstName(rs.getString("firstname"));
                            userDetails.setGender(Gender.valueOf(rs.getString("gender")));
                            userDetails.setHscGroup(rs.getString("hscgroup"));
                            userDetails.setIsAdmin(rs.getBoolean("isadmin"));
                            userDetails.setIsattended(rs.getBoolean("isattended"));
                            userDetails.setLastName(rs.getString("lastname"));
                            userDetails.setNationality(rs.getString("nationality"));
                            userDetails.setPhNumber(rs.getString("phnumber"));
                            userDetails.setReligion(rs.getString("religion"));
                            userDetails.setUltimateAdmin(rs.getBoolean("ultimateadmin"));
                            testHistory=new TestHistory();
                            testHistory.setUserDetails(userDetails);
                            testHistory.setAttendedDate(rs.getString("attendeddate"));
                            testHistory.setReportFileName(rs.getString("reportfilename"));
                            testHistory.setResultDept(rs.getString("resultdept"));
                        } catch (ParseException exception) {
                            LOGGER.info("Exception occured while Parsing the data All the Test History", exception);
                        }
                        testHistorys.add(testHistory);
                    }
                    return testHistorys;
                }
            });
        } catch(Exception exception) {
            LOGGER.info("Exception occured while retrieving All the Test History", exception);
            throw new EQException("Exception occured while retrieving All the Test History", exception);
        } 
        return testHistoryList;
    }

    public List<String> getTestHistoryForAttendedUsers() throws EQException {
        List<String> userList=null;
        try {
            userList=jdbcTemplate.query(QueryConstants.GET_TEST_HISTORY_FOR_ATTENDED, new ResultSetExtractor<List<String>>() {
                public List<String> extractData(ResultSet rs) throws SQLException, DataAccessException {
                    List<String> list=new ArrayList<String>();
                    while(rs.next()) {
                        list.add(rs.getString("username"));
                    }
                    return list;
                }
            });
        } catch(Exception exception) {
            LOGGER.info("Exception occured while retrieving All the Users Who have Attended Test", exception);
            throw new EQException("Exception occured while retrieving All the Users Who have Attended Test", exception);
        } 
        return userList;
    }

    public boolean resetTestHistory(final String username) throws EQException {
        boolean response=false;
        try {
            response=jdbcTemplate.execute(QueryConstants.UPDATE_USER_TEST_ATTENDED, new PreparedStatementCallback<Boolean>() {
                public Boolean doInPreparedStatement(PreparedStatement ps) throws SQLException, DataAccessException {
                    ps.setBoolean(1, false);
                    ps.setString(2, username);
                    return ps.execute();
                }
            });
            jdbcTemplate.update(QueryConstants.DELETE_TEST_HISTORY, new Object[] {username});
        } catch(Exception exception) {
            LOGGER.info("Exception occured while Reveating User Test History", exception);
            throw new EQException("Exception occured while Reveating User Test History", exception);
        }
        return response;
    }

    public List<UserDetails> getAllStudentInfo() throws EQException {
        List<UserDetails> userDetails=null;
        try {
            userDetails=jdbcTemplate.query(QueryConstants.GET_ALL_STUDENT, new ResultSetExtractor<List<UserDetails>>() {
                public List<UserDetails> extractData(ResultSet rs) throws SQLException, DataAccessException {
                    List<UserDetails> userDetailsList=new ArrayList<UserDetails>();
                    while(rs.next()) {
                        UserDetails userDetails=new UserDetails();
                        userDetails.setUserName(rs.getString("username"));
                        try {
                            userDetails.setDateOfBirth(rs.getString("dateofbirth"));
                        } catch (ParseException ex) {
                            java.util.logging.Logger.getLogger(LoginDAO.class.getName()).log(Level.SEVERE, null, ex);
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
                        userDetails.setIsAdmin(rs.getBoolean("isadmin"));
                        userDetails.setIsattended(rs.getBoolean("isattended"));
                        userDetails.setUltimateAdmin(rs.getBoolean("ultimateadmin"));
                        userDetailsList.add(userDetails);
                    }
                    return userDetailsList;
                }
            });
        } catch (Exception exception) {
            LOGGER.info("Something went wrong while trying to retrieve all the Users Who have attended the Test", exception);
        }
        return userDetails;
    }

    public int deleteStudent(String userName) throws EQException {
        int response=0;
        try {
            response=jdbcTemplate.update(QueryConstants.DELETE_USER_DETAILS, new Object[] {userName});
        } catch (Exception exception) {
            LOGGER.info("Something went wrong while trying to retrieve all the Users Who have attended the Test", exception);
        }
        return response;
    }
}
