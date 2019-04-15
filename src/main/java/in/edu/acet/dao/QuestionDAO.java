package in.edu.acet.dao;

import in.edu.acet.bean.Question;
import in.edu.acet.constants.QueryConstants;
import in.edu.acet.exception.EQException;
import in.edu.acet.idao.IQuestionDAO;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCallback;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

@Component(value = "questionDAO")
public class QuestionDAO implements IQuestionDAO {

    @Autowired
    private JdbcTemplate jdbcTemplate;
    
    private static final Logger LOGGER=LoggerFactory.getLogger(QuestionDAO.class);

    public List<Question> getQuestions() throws EQException {
        List<Question> questionsList=null;
        List<Question> responseQuestionsList=null;
        try {
            responseQuestionsList=new ArrayList<Question>();
            questionsList=jdbcTemplate.query(QueryConstants.GET_QUESTION_QUERY, new RowMapper<Question>() {
                public Question mapRow(ResultSet rs, int i) throws SQLException {
                    Question question = new Question();
                    question.setQuestionNo(rs.getInt(1));
                    question.setQuestion(rs.getString(2).trim());
                    question.setChoices(rs.getString(3).trim());
                    question.setHasImage(rs.getBoolean(4));
                    if(rs.getBoolean(4)) {
                        question.setImageName(rs.getString(5).trim());
                    }
                    return question;
                }
            });
            for (Question qtn :questionsList) {
                Question question=new Question();
                question.setQuestionNo(qtn.getQuestionNo());
                question.setQuestion(qtn.getQuestion().trim());
                question=getChoices(qtn.getChoices().trim(),question);
                question.setHasImage(qtn.isHasImage());
                if(qtn.isHasImage()) {
                    question.setImageName(qtn.getImageName().trim());
                }
                responseQuestionsList.add(question);
            }
        } catch (Exception exception) {
            LOGGER.info("Exception occured while trying to retrieve Questions", exception);
            throw new EQException("Exception occured while trying to retrieve Questions", exception);
        }
        return responseQuestionsList;
    }

    public Question getChoices(String appendedChoice,Question question) {
        List<String> choiceList = new ArrayList<String>();
        List<String> deptList = new ArrayList<String>();
        String[] chList = appendedChoice.split("@@");
        for (String string : chList) {
            String[] chDept=string.split("##");
            choiceList.add(chDept[0].trim());
            deptList.add(chDept[1].trim());
        }
        question.setChoiceList(choiceList);
        question.setDeptList(deptList);
        return question;
    }

    public int updateQuestion(Question question) throws EQException {
        int response=0;
        try {
            response=jdbcTemplate.update(QueryConstants.UPDATE_QUESTION_QUERY, new Object[]{question.getChoices(), question.getQuestion(), question.isHasImage(),question.getImageName(),question.getQuestionNo()});
        } catch (Exception exception) {
            LOGGER.info("Exception occured while trying to Update to Question",exception);
            throw new EQException("Exception occured while trying to Update to Question", exception);
        }
        return response;
    }

    public boolean createQuestion(final Question question) throws EQException {
        boolean response=false;
        try {
            response=jdbcTemplate.execute(QueryConstants.CREATE_QUESTION_QUERY, new PreparedStatementCallback<Boolean>() {
                public Boolean doInPreparedStatement(PreparedStatement ps) throws SQLException, DataAccessException {
                    ps.setString(1, question.getChoices());
                    ps.setString(2, question.getQuestion());
                    ps.setBoolean(3, question.isHasImage());
                    ps.setString(4, question.getImageName());
                    return ps.execute();
                }
            });
        } catch (Exception exception) {
            LOGGER.info("Exception occured while trying to Create to Question",exception);
            throw new EQException("Exception occured while trying to Create to Question", exception);
        }
        return response;
    }

    public boolean deleteQuestion(final int questionNo) throws EQException {
        boolean response=false;
        try {
            response=jdbcTemplate.execute(QueryConstants.DELETE_QUESTION_QUERY, new PreparedStatementCallback<Boolean>() {
                public Boolean doInPreparedStatement(PreparedStatement ps) throws SQLException, DataAccessException {
                    ps.setInt(1, questionNo);
                    return ps.execute();
                }
            });
        } catch(Exception exception) {
            LOGGER.info("Exception occured while trying to Delete to Question",exception);
            throw new EQException("Exception occured while trying to Delete to Question", exception);
        }
        return response;
    }

    public List<Question> getAllQuestions() throws EQException {
        List<Question> questionsList=null;
        List<Question> responseQuestionsList=null;
        try {
            responseQuestionsList=new ArrayList<Question>();
            questionsList=jdbcTemplate.query(QueryConstants.GET_ALL_QUESTION_QUERY, new RowMapper<Question>() {
                public Question mapRow(ResultSet rs, int i) throws SQLException {
                    Question question = new Question();
                    question.setQuestionNo(rs.getInt(1));
                    question.setQuestion(rs.getString(2).trim());
                    question.setChoices(rs.getString(3).trim());
                    question.setHasImage(rs.getBoolean(4));
                    if(rs.getBoolean(4)) {
                        question.setImageName(rs.getString(5).trim());
                    }
                    return question;
                }
            });
            for (Question qtn :questionsList) {
                Question question=new Question();
                question.setQuestionNo(qtn.getQuestionNo());
                question.setQuestion(qtn.getQuestion().trim());
                question=getChoices(qtn.getChoices().trim(),question);
                question.setHasImage(qtn.isHasImage());
                if(qtn.isHasImage()) {
                    question.setImageName(qtn.getImageName().trim());
                }
                responseQuestionsList.add(question);
            }
        } catch (Exception exception) {
            LOGGER.info("Exception occured while trying to retrieve Questions", exception);
            throw new EQException("Exception occured while trying to retrieve Questions", exception);
        }
        return responseQuestionsList;
    }

    public Question getQuestion(int questionNo) throws EQException {
        Question question=null;
        try {
            question=jdbcTemplate.queryForObject(QueryConstants.GET_PARTICULAR_QUESTION_QUERY,new Object[] {questionNo}, new RowMapper<Question>() {
                public Question mapRow(ResultSet rs, int i) throws SQLException {
                    Question qtn = new Question();
                    qtn.setQuestionNo(rs.getInt(1));
                    qtn.setQuestion(rs.getString(2).trim());
                    qtn.setChoices(rs.getString(3).trim());
                    qtn.setHasImage(rs.getBoolean(4));
                    if(rs.getBoolean(4)) {
                        qtn.setImageName(rs.getString(5).trim());
                    }
                    Question question=new Question();
                    question.setQuestionNo(qtn.getQuestionNo());
                    question.setQuestion(qtn.getQuestion().trim());
                    question=getChoices(qtn.getChoices().trim(),question);
                    question.setHasImage(qtn.isHasImage());
                    if(qtn.isHasImage()) {
                        question.setImageName(qtn.getImageName().trim());
                    }
                    return question;
                }
            });
        } catch (Exception exception) {
            LOGGER.info("Exception occured while trying to retrieve Questions for "+questionNo, exception);
            throw new EQException("Exception occured while trying to retrieve Questions for "+questionNo, exception);
        }
        return question;
    }
}
