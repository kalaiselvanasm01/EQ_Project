package in.edu.acet.idao;

import in.edu.acet.bean.Question;
import java.util.List;
import org.springframework.stereotype.Component;

@Component
public interface IAdminDAO {

    public boolean addQuestion();

    public String convertChoices(List<String> choiceList);
    
    public boolean removeQuestion(int questionNo);
    
    public boolean removeChoice(Question updatedQuestion);
    
}
