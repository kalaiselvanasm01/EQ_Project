package in.edu.acet.idao;

import in.edu.acet.bean.Question;
import in.edu.acet.exception.EQException;
import java.util.List;
import org.springframework.stereotype.Component;

@Component
public interface IQuestionDAO {

    public List<Question> getQuestions() throws EQException;
    
    public Question getChoices(String appendedChoice,Question question);
    
    public int updateQuestion(Question question) throws EQException;
    
    public boolean createQuestion(final Question question) throws EQException;
    
    public boolean deleteQuestion(final int questionNo) throws EQException;
    
    public List<Question> getAllQuestions() throws EQException;
    
    public Question getQuestion(int questionNo) throws EQException;
}
