package in.edu.acet.controller;

import in.edu.acet.bean.Question;
import in.edu.acet.bean.TestHistory;
import in.edu.acet.bean.UserDetails;
import in.edu.acet.constants.QueryConstants;
import in.edu.acet.exception.EQException;
import in.edu.acet.idao.IGraphDAO;
import in.edu.acet.idao.ILoginDAO;
import in.edu.acet.idao.IQuestionDAO;
import in.edu.acet.idao.IUtilityDAO;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class StaticPageController {
    @Autowired
    private IQuestionDAO questionDAO;
    
    @Autowired
    private IUtilityDAO utilityDAO;
    
    @Autowired
    private IGraphDAO graphDAO;
    
    @Autowired
    private ILoginDAO loginDAO;
    
    private static final Logger LOGGER=LoggerFactory.getLogger(StaticPageController.class);
    
    @RequestMapping("/viewCseDept")
    public String viewCseDept() {
    	return "CseDept";
    }
    @RequestMapping("/viewCivilDept")
    public String viewCivilDept() {
    	return "CivilDept";
    }
    @RequestMapping("/viewEceDept")
    public String viewEceDept() {
    	return "EceDept";
    }
    @RequestMapping("/viewEEEDept")
    public String viewEEEDept() {
    	return "EEEDept";
    }
    @RequestMapping("/viewMechDept")
    public String viewMechDept() {
    	return "MechDept";
    }
    
    @RequestMapping(value="/viewContacts",method=RequestMethod.GET)
    public String viewContact() {
        return "contactUs";
    }
    
    @RequestMapping(value="/takeTest",method=RequestMethod.GET)
    public String viewTest() {
        return "takeTest";
    }
    
    @RequestMapping(value="/testPage",method = RequestMethod.GET) 
    public String testPage(Model model){
        List<Question> questionsList=null;
        int totalPages=0;
        try {
            questionsList=questionDAO.getQuestions();
            totalPages=questionsList.size();
            model.addAttribute(QueryConstants.TEST_QUESTION_LIST, questionsList);
            model.addAttribute("totalPages", totalPages);
        } catch(Exception exception) {
            LOGGER.info(QueryConstants.ERROR,"Exception Occured While trying to Retrieve Questions",exception);
        }
        return "testPage";
    }
    
    @RequestMapping(value="/timer",method = RequestMethod.GET)
    public String timer() {
        return "timer";
    }
    
    @RequestMapping(value="/aboutUs",method=RequestMethod.GET)
    public String aboutUs() {
        return "aboutUs";
    }
    
    @RequestMapping(value="/resetPwd",method=RequestMethod.GET)
    public String resetPwd(Model model) {
        model.addAttribute("genderList", utilityDAO.getGenderList());
        model.addAttribute("resetPasswordAttr", new UserDetails());
        return "resetPwd";
    }
    
    @RequestMapping(value="/deleteQtn",method=RequestMethod.GET)
    public String deleteQtn(Model model) {
        List<Question> questionList=null;
        try {
           questionList=questionDAO.getQuestions();
        } catch(EQException exception) {
            LOGGER.info("EQException Occured while trying to retrieve questions"+exception.getMessage());
            model.addAttribute(QueryConstants.ERROR, "EQException Occured while trying to retrieve questions");
        } catch(Exception exception) {
            LOGGER.info("Exception Occured while trying to retrieve questions"+exception.getMessage());
            model.addAttribute(QueryConstants.ERROR, "Exception Occured while trying to retrieve questions");
        }
        model.addAttribute(QueryConstants.TEST_QUESTION_LIST, questionList);
        return "removeQtn";
    }
    
    @RequestMapping(value="/deleteQuestion",method=RequestMethod.POST)
    public String deleteQuestion(@RequestParam("questionNo") int questionNo,RedirectAttributes model) {
        String response="redirect:/deleteQtn";
        try {
            questionDAO.deleteQuestion(questionNo);
            model.addFlashAttribute("success", "The Question ("+questionNo+") has been deleted Successfully!!!");
            response="redirect:/viewHome";
        } catch(EQException exception) {
            LOGGER.info("EQException Occured while trying to retrieve questions"+exception.getMessage());
            model.addFlashAttribute(QueryConstants.ERROR, "EQException Occured while trying to retrieve questions");
        } catch(Exception exception) {
            LOGGER.info("Exception Occured while trying to retrieve questions"+exception.getMessage());
            model.addFlashAttribute(QueryConstants.ERROR, "Exception Occured while trying to retrieve questions");
        }
        return response;
    }
    
    @RequestMapping(value = "/submitTest",method = RequestMethod.POST)
    @ResponseBody
    public boolean submitTest(@RequestBody String totalScore,HttpServletRequest request,Model model) {
        UserDetails userDetails=null;
        TestHistory testHistory=null;
        String fileName="";
        String resultDept="";
        boolean responseUser=false;
        try {
            System.out.println("Test Score========> "+totalScore);
            userDetails=(UserDetails) request.getSession(false).getAttribute("userDetails");
            fileName=userDetails.getUserName()+"_"+userDetails.getDateOfBirth()+".pdf";
            resultDept=greaterDeptScore(totalScore);
            System.err.println("Report File Name========> "+fileName);
            graphDAO.writeChartToPDF(500, 400, fileName, userDetails, totalScore);
            testHistory=new TestHistory();
            testHistory.setUserDetails(userDetails);
            testHistory.setReportFileName(fileName);
            testHistory.setAttendedDate(new Date().toString());
            testHistory.setResultDept(resultDept);
            loginDAO.createTestHistory(testHistory);
            loginDAO.updateAttended(userDetails.getUserName());
            model.addAttribute("testHistory",testHistory);
            model.addAttribute("userDetails", userDetails);
        } catch(Exception exception) {
            LOGGER.info("Exception Occured while trying to sumbiting the Score",exception);
        }
        return responseUser;
    }
    
    @RequestMapping(value={"/analyzeScore","/viewReport"},method = RequestMethod.GET)
    public String analyzePage(Model model) {
        return "analyzeScore";
    }
    
    private String greaterDeptScore(String score) {
        String[] scoreList=score.split(" "); //CIVIL, CSE, ECE, EEE, MECH
        String resultDept="";
        int civil=Integer.parseInt(scoreList[0]);
        int cse=Integer.parseInt(scoreList[1]);
        int ece=Integer.parseInt(scoreList[2]);
        int eee=Integer.parseInt(scoreList[3]);
        int mech=Integer.parseInt(scoreList[4]);
        if(civil>cse && civil >ece && civil>eee && civil>mech) {
            resultDept="CIVIL";
        } else if(cse>civil && cse>ece && cse>eee && cse>mech) {
            resultDept="CSE";
        } else if(ece>civil && ece>cse && ece>eee && ece>mech) {
            resultDept="ECE";
        } else if(eee>civil && eee>cse && eee>ece && eee>mech) {
            resultDept="EEE";
        } else if(mech>civil && mech>cse && mech>ece && mech>eee) {
            resultDept="MECH";
        } else if(cse==civil) {
            resultDept="CSE or CIVIL";
        } else if(cse==ece) {
            resultDept="CSE or ECE";
        } else if(cse==eee) {
            resultDept="CSE or EEE";
        } else if(cse==mech) {
            resultDept="CSE or MECH";
        } else if(civil==ece) {
            resultDept="CIVIL or ECE";
        } else if(civil==eee) {
            resultDept="CIVIL or EEE";
        } else if(civil==mech) {
            resultDept="CIVIL or MECH";
        } else if(ece==eee) {
            resultDept="ECE or EEE";
        } else if(ece==mech) {
            resultDept="ECE or MECH";
        } else if(mech==eee) {
            resultDept="MECH or EEE";
        }
        return resultDept;
    }
}
