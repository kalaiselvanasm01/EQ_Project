package in.edu.acet.bean;

import java.util.List;

public class Question {

    private int questionNo;
    private String question;
    private String choices; //Append all the choices with the Separator '@@' Eg. Option1##Dept1@@Option2##Dept2@@Option3##Dept3@@Option4##Dept4
    private boolean attended; //Set true if the question is attended by the User else false
    private boolean hasImage;
    private String imageName;
    private List<String> choiceList;
    private List<String> deptList;

    public List<String> getDeptList() {
        return deptList;
    }

    public void setDeptList(List<String> deptList) {
        this.deptList = deptList;
    }

    public List<String> getChoiceList() {
        return choiceList;
    }

    public void setChoiceList(List<String> choiceList) {
        this.choiceList = choiceList;
    }

    public boolean isHasImage() {
        return hasImage;
    }

    public void setHasImage(boolean hasImage) {
        this.hasImage = hasImage;
    }

    public String getImageName() {
        return imageName;
    }

    public void setImageName(String imageName) {
        this.imageName = imageName;
    }

    public Question() {
        super();
    }

    public int getQuestionNo() {
        return questionNo;
    }

    public void setQuestionNo(int questionNo) {
        this.questionNo = questionNo;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public String getChoices() {
        return choices;
    }

    public void setChoices(String choices) {
        this.choices = choices;
    }

    public boolean isAttended() {
        return attended;
    }

    public void setAttended(boolean attended) {
        this.attended = attended;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 89 * hash + this.questionNo;
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Question other = (Question) obj;
        if (this.questionNo != other.questionNo) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Question{" + "questionNo=" + questionNo + ", question=" + question + ", choices=" + choices + ", attended=" + attended + ", hasImage=" + hasImage + ", imageName=" + imageName + '}';
    }
}
