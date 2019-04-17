package in.edu.acet.constants;

public class QueryConstants {

	public static final String LOGIN_QUERY = new StringBuilder("SELECT username, password, enabled")
			.append(" FROM userdetails WHERE username=?").toString();
	
	public static final String LOGIN_QUERY_SELECT = new StringBuilder("SELECT username, dateofbirth, firstname, lastname, gender, fathername, address, nationality, religion, hscgroup, expobthscmark, bloodgroup, email, phnumber, expecteddept, role, enabled, isattended")
			.append(" FROM userdetails WHERE username=? AND password=? AND enabled=TRUE;").toString();

	public static final String ROLE_QUERY = new StringBuilder("SELECT username, role")
			.append(" FROM userdetails WHERE username=?").toString();

	public static final String REGISTER_QUERY = new StringBuilder(
			"INSERT INTO userdetails(username, password, dateofbirth, firstname, lastname, gender, fathername, address, nationality, religion, hscgroup, expobthscmark, bloodgroup, email, phnumber, expecteddept, role, enabled, isattended) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);")
					.toString();

	public static final String GET_ALL_STUDENT = new StringBuilder(
			"SELECT username, dateofbirth, firstname, lastname, gender, fathername, address, nationality, religion, hscgroup, expobthscmark, bloodgroup, email, phnumber, expecteddept, role, enabled, isattended")
					.append(" FROM userdetails WHERE role='STUDENT'").toString();

	public static final String GET_QUESTION_QUERY = "SELECT questionno, question, choices, hasimage, imagename FROM question ORDER BY RANDOM() LIMIT 50;";

	public static final String GET_PARTICULAR_QUESTION_QUERY = "SELECT questionno, question, choices, hasimage, imagename FROM question WHERE questionno=?;";

	public static final String GET_ALL_QUESTION_QUERY = "SELECT questionno, question, choices, hasimage, imagename FROM question;";

	public static final String CREATE_QUESTION_QUERY = "INSERT INTO question(questionno, choices, question, hasimage, imagename) VALUES (nextVal('question_questionno_seq'), ?, ?, ?, ?);";

	public static final String UPDATE_QUESTION_QUERY = "UPDATE question SET choices=?, question=?, hasimage=?, imagename=? WHERE questionno=?;";

	public static final String DELETE_QUESTION_QUERY = "DELETE FROM question WHERE questionno=?;";

	public static final String CREATE_TEST_HISTORY_QUERY = "INSERT INTO user_test_history(username, attendeddate, resultdept, reportfilename) VALUES (?, ?, ?, ?);";

	public static final String GET_TEST_HISTORY_QUERY = new StringBuilder(
			"SELECT t1.username, t1.dateofbirth, t1.firstname, t1.lastname, t1.gender, ")
					.append("t1.fathername, t1.address, t1.nationality, t1.religion, t1.hscgroup, t1.expobthscmark, ")
					.append("t1.bloodgroup, t1.email, t1.phnumber, t1.expecteddept, t1.isadmin,t1.ultimateadmin, t1.isattended, t2.attendeddate, t2.resultdept, t2.reportfilename ")
					.append("FROM userdetails t1 INNER JOIN user_test_history t2 ")
					.append("ON t1.username=t2.username WHERE t1.isattended=TRUE;").toString();
	public static final String GET_TEST_HISTORY_QUERY_USER = new StringBuilder(
			"SELECT username, attendeddate, resultdept, reportfilename ").append("FROM user_test_history ")
					.append("WHERE username=?;").toString();

	public static final String RETRIEVE_REPORTFILE_QUERY = "SELECT username, attendeddate, resultdept, reportfilename FROM user_test_history WHERE username=?;";

	public static final String CHECK_USER_QUERY = new StringBuilder(
			"SELECT username, dateofbirth, firstname, lastname, gender, ")
					.append("fathername, address, nationality, religion, hscgroup, expobthscmark, ")
					.append("bloodgroup, email, phnumber, expecteddept, isadmin,isattended, ultimateadmin")
					.append(" FROM userdetails WHERE username=?;").toString();
	public static final String CHECK_PASSWORD_RESET_QUERY = "SELECT COUNT(username) FROM userDetails WHERE username=? "
			+ "AND dateofbirth=? " + "AND gender=? " + "AND email=? AND phnumber=?";
	public static final String UPDATE_PASSWORD = "UPDATE userdetails SET password=? WHERE username=?;";
	public static final String DELETE_TEST_HISTORY = "DELETE FROM user_test_history WHERE username=?;";
	public static final String DELETE_USER_DETAILS = "DELETE FROM userdetails WHERE username=?;";
	public static final String ERROR = "error";
	public static final String TEST_QUESTION_LIST = "testQuestionList";
	public static final String UPDATE_USER_TEST_ATTENDED = "UPDATE userdetails SET isattended=? WHERE username=?;";
	public static final String GET_TEST_HISTORY_FOR_ATTENDED = "SELECT username FROM userdetails WHERE isattended=true;";
	public static final String REPORT_PDF_DIRECTORY = "C:/ReportFiles/";
}
