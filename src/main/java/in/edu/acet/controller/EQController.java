package in.edu.acet.controller;

import in.edu.acet.bean.Question;
import in.edu.acet.bean.TestHistory;
import in.edu.acet.bean.UserDetails;
import in.edu.acet.constants.QueryConstants;
import in.edu.acet.exception.EQException;
import in.edu.acet.idao.ILoginDAO;
import in.edu.acet.idao.IQuestionDAO;
import in.edu.acet.idao.IUtilityDAO;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class EQController {
    private static final Logger LOGGER=LoggerFactory.getLogger(EQController.class);
    
    @Autowired
    private IQuestionDAO questionDAO;
        
    @Autowired
    private IUtilityDAO utilityDAO;
    
    @Autowired
    private ILoginDAO loginDAO;
    
    /**
     * This Controller method is used to load the home.jsp Page
     * @param model     
     * @return home     
     **/
    @RequestMapping(value = "/viewHome",method = RequestMethod.GET)
    public String viewHome(Model model) {
        model.addAttribute("genderList", utilityDAO.getGenderList());
        model.addAttribute("bloodGroupList", utilityDAO.getBGroupList());
        model.addAttribute("deptList", utilityDAO.getDeptList());
        model.addAttribute("userDetailsRegister", new UserDetails());
        return "home";
    }
    
    @RequestMapping(value = "/getQuestion",method=RequestMethod.GET)
    public String getQuestion(Model model) {
        List<Question> questionList=null;
        try {
           questionList=questionDAO.getQuestions();
        } catch(Exception exception) {
            LOGGER.info("Exception Occured while trying to retrieve questions"+exception.getMessage());
            model.addAttribute(QueryConstants.ERROR, "Exception Occured while trying to retrieve questions");
        }
        model.addAttribute(QueryConstants.TEST_QUESTION_LIST, questionList);
        return "question";
    }
    
    @RequestMapping(value="/addQtn",method=RequestMethod.GET) 
    public String addQtn(Model model) {
        model.addAttribute("question", new Question());
        return "addQtn";
    }
    
    @RequestMapping(value="/addQuestion",method = RequestMethod.POST)
    public String addQuestion(@ModelAttribute(value = "question") Question question, @RequestParam(value = "imageFile",required =false) MultipartFile imageFile, HttpServletRequest request,RedirectAttributes model) {
        BufferedOutputStream stream = null;
        File serverFile = null;
        byte[] bytes=null;
        File dir = null;
        try {
            if(question.isHasImage()) { 
                String fileName=imageFile.getOriginalFilename();
                question.setImageName(fileName);
                bytes = imageFile.getBytes();
                // Creating the directory to store file
                String rootPath = "C:\\";//System.getProperty("catalina.home");
                dir = new File(rootPath + File.separator + "Question_Images");
                if (!dir.exists())
                    dir.mkdirs();

                // Create the file on server
                serverFile = new File(dir.getAbsolutePath()
                                + File.separator + fileName);
                stream = new BufferedOutputStream(
                                new FileOutputStream(serverFile));
                stream.write(bytes);
                stream.close();
            }
            questionDAO.createQuestion(question);
            model.addFlashAttribute("success", "New Question Added Successfully!!!");
        } catch(IOException exception) {
            LOGGER.info("Something went wrong while trying to add Question", exception);
            model.addFlashAttribute(QueryConstants.ERROR, "Something went wrong while trying to add Question");
        } catch (EQException exception) {
            LOGGER.info("Something went wrong while trying to add Question", exception);
            model.addFlashAttribute(QueryConstants.ERROR, "Something went wrong while trying to add Question");
        }
        return "redirect:/addQtn";
    }
    
    @RequestMapping(value = "/resetPassword",method=RequestMethod.POST)
    @ResponseBody
    public boolean resetPassword(@ModelAttribute UserDetails userDetails,Model model) {
        boolean response=false;
        try {
            response=loginDAO.checkPasswordResetInfo(userDetails);
        } catch (EQException exception) {
            LOGGER.info("Something went wrong while trying to check info for Password Reset", exception);
            model.addAttribute(QueryConstants.ERROR, "Something went wrong while trying to check info for Password Reset");
        } catch (Exception exception) {
            LOGGER.info("Something went wrong while trying to check info for Password Reset", exception);
            model.addAttribute(QueryConstants.ERROR, "Something went wrong while trying to check info for Password Reset");
        } 
        return response;
    }
    @RequestMapping(value="/passwordResetEntry",method=RequestMethod.POST)
    public String passwordResetEntry(@RequestParam("username")String username, @RequestParam("password") String password, RedirectAttributes model) {
        String resultPage="redirect:/resetPwd";
        try {
            loginDAO.resetPassword(username, password);
            model.addFlashAttribute("success", "Password Changed Successfully");
            resultPage="redirect:/viewHome";
        } catch (EQException exception) {
            LOGGER.info("Something went wrong while trying to Reset Password", exception);
            model.addFlashAttribute(QueryConstants.ERROR, "Something went wrong while trying to Reset Password");
        } catch (Exception exception) {
            LOGGER.info("Something went wrong while trying to Reset Password", exception);
            model.addFlashAttribute(QueryConstants.ERROR, "Something went wrong while trying to Reset Password");
        } 
        return resultPage;
    }
    @RequestMapping(value="/viewQtns",method=RequestMethod.GET)
    public String viewQtns(Model model) {
        List<Question> questionsList=null;
        try {
            questionsList=questionDAO.getAllQuestions();
            model.addAttribute("allQuestions", questionsList);
        } catch (EQException exception) {
            LOGGER.info("Something went wrong while trying to Retrieve All the Questions", exception);
            model.addAttribute(QueryConstants.ERROR, "Something went wrong while trying to Retrieve All the Questions");
        } catch (Exception exception) {
            LOGGER.info("Something went wrong while trying to Retrieve All the Questions", exception);
            model.addAttribute(QueryConstants.ERROR, "Something went wrong while trying to Retrieve All the Questions");
        } 
        return "viewQtns";
    }
    
    @RequestMapping(value="/testHistory",method = RequestMethod.GET)
    public String testHistory(Model model) {
        List<TestHistory> testHistoryList=null;
        try {
            testHistoryList=loginDAO.getTestHistory();
            model.addAttribute("testHistoryList", testHistoryList);
        } catch (EQException exception) {
            LOGGER.info("Something went wrong while trying to Retrieve All the Questions", exception);
            model.addAttribute(QueryConstants.ERROR, "Something went wrong while trying to Retrieve All the Questions");
        } catch (Exception exception) {
            LOGGER.info("Something went wrong while trying to Retrieve All the Questions", exception);
            model.addAttribute(QueryConstants.ERROR, "Something went wrong while trying to Retrieve All the Questions");
        } 
        return "testHistory";
    }
    
    @RequestMapping(value = "/editQtn",method = RequestMethod.GET)
    public String editQtn(Model model) {
        List<Question> questionList=null;
        try{
            questionList=questionDAO.getAllQuestions();
            model.addAttribute("questionList", questionList);
            model.addAttribute("question", new Question());
        } catch (EQException exception) {
            LOGGER.info("Something went wrong while trying to Retrieve All the Questions", exception);
            model.addAttribute(QueryConstants.ERROR, "Something went wrong while trying to Retrieve All the Questions");
        } catch (Exception exception) {
            LOGGER.info("Something went wrong while trying to Retrieve All the Questions", exception);
            model.addAttribute(QueryConstants.ERROR, "Something went wrong while trying to Retrieve All the Questions");
        } 
        return "editQtn";
    }
    
    @RequestMapping(value = "/editQuestion",method = RequestMethod.POST)
    @ResponseBody
    public Question editQuestion(@RequestBody int questionNo) {
        Question question=null;
        try{
            question=questionDAO.getQuestion(questionNo);
        } catch (EQException exception) {
            LOGGER.info("Something went wrong while trying to Retrieve All the Questions", exception);
        } catch (Exception exception) {
            LOGGER.info("Something went wrong while trying to Retrieve All the Questions", exception);
        }
        return question;
    }
    
    @RequestMapping(value="/updateQtn",method=RequestMethod.POST)
    public String updateQtn(@ModelAttribute Question question, @RequestParam(value = "imageFile",required =false) MultipartFile imageFile,RedirectAttributes model) {
        BufferedOutputStream stream = null;
        File serverFile = null;
        byte[] bytes=null;
        File dir = null;        
        try {
            System.err.println("Question to be Updated ======================================>      "+question.toString());
            if(question.isHasImage()) { 
                String fileName=imageFile.getOriginalFilename();
                question.setImageName(fileName);
                bytes = imageFile.getBytes();
                // Creating the directory to store file
                String rootPath = "C:\\";//System.getProperty("catalina.home");
                dir = new File(rootPath + File.separator + "Question_Images");
                if (!dir.exists())
                    dir.mkdirs();

                // Create the file on server
                serverFile = new File(dir.getAbsolutePath()
                                + File.separator + fileName);
                stream = new BufferedOutputStream(
                                new FileOutputStream(serverFile));
                stream.write(bytes);
                stream.close();
            }else if(!question.isHasImage()) {
                question.setImageName("");
            }
            questionDAO.updateQuestion(question);
            model.addFlashAttribute("success", "Question Updated Successfully!!!");
        } catch (EQException exception) {
            LOGGER.info("Something went wrong while trying to Update the Question", exception);
            model.addFlashAttribute(QueryConstants.ERROR, "Something went wrong while trying to Update the Question");
        } catch (Exception exception) {
            LOGGER.info("Something went wrong while trying to Update the Question", exception);
            model.addFlashAttribute(QueryConstants.ERROR, "Something went wrong while trying to Update the Question");
        } 
        return "redirect:/editQtn";
    }
    
    @RequestMapping(value = "/resetTestHistory",method = RequestMethod.GET)
    public String resetTestHistory(Model model) {
        List<String> userNameList=null;
        try {
            userNameList=loginDAO.getTestHistoryForAttendedUsers();
            model.addAttribute("userNameList", userNameList);
        } catch (EQException exception) {
            LOGGER.info("Something went wrong while trying to retrieve all the Users Who have attended the Test", exception);
            model.addAttribute(QueryConstants.ERROR, "Something went wrong while trying to retrieve all the Users Who have attended the Test");
        } catch (Exception exception) {
            LOGGER.info("Something went wrong while trying to retrieve all the Users Who have attended the Test", exception);
            model.addAttribute(QueryConstants.ERROR, "Something went wrong while trying to retrieve all the Users Who have attended the Test");
        }  
        return "resetTestHistory";
    }
    
    @RequestMapping(value = "/resetHistory",method = RequestMethod.POST)
    @ResponseBody
    public boolean resetHistory(@RequestBody String userName) {
        boolean response=false;
        try {
            response=loginDAO.resetTestHistory(userName);
        } catch (EQException exception) {
            LOGGER.info("Something went wrong while trying to retrieve all the Users Who have attended the Test", exception);
        } catch (Exception exception) {
            LOGGER.info("Something went wrong while trying to retrieve all the Users Who have attended the Test", exception);
        }
        return response;
    }
    @RequestMapping(value="/viewStudentInfo",method = RequestMethod.GET)
    public String viewStudentsInfo(Model model) {
        List<UserDetails> userDetails=null;
        try {
            userDetails=loginDAO.getAllStudentInfo();
            model.addAttribute("userDetailsList", userDetails);
        } catch (EQException exception) {
            LOGGER.info("Something went wrong while trying to retrieve all the Student Details", exception);
            model.addAttribute(QueryConstants.ERROR, "Something went wrong while trying to retrieve all the Student Details");
        } catch (Exception exception) {
            LOGGER.info("Something went wrong while trying to retrieve all the Student Details", exception);
            model.addAttribute(QueryConstants.ERROR, "Something went wrong while trying to retrieve all the Student Details");
        } 
        return "viewStudentsInfo";
    }
    
    @RequestMapping(value = "/removeStudent",method = RequestMethod.POST)
    @ResponseBody
    public boolean deleteStudent(@RequestBody String username) {
        boolean response=false;
        try {
            loginDAO.deleteStudent(username);
        } catch (EQException exception) {
            LOGGER.info("Something went wrong while trying to retrieve all the Student Details", exception);
        } catch (Exception exception) {
            LOGGER.info("Something went wrong while trying to retrieve all the Student Details", exception);
        }
        return response;
    }
}
