package in.edu.acet.dao;

import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.Image;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.BaseFont;
import com.itextpdf.text.pdf.DefaultFontMapper;
import com.itextpdf.text.pdf.PdfContentByte;
import com.itextpdf.text.pdf.PdfTemplate;
import com.itextpdf.text.pdf.PdfWriter;
import in.edu.acet.bean.UserDetails;
import in.edu.acet.constants.QueryConstants;
import in.edu.acet.exception.EQException;
import in.edu.acet.idao.IGraphDAO;
import java.awt.Graphics2D;
import java.awt.geom.Rectangle2D;
import java.io.FileOutputStream;
import java.util.Date;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.DefaultCategoryDataset;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Component(value = "graphDAO")
public class GraphDAO implements IGraphDAO{

    private static final Logger LOGGER = LoggerFactory.getLogger(GraphDAO.class);
    
    private JFreeChart generateBarChart(String score) {
        String[] scoreList=score.split(" "); //CIVIL, CSE, ECE, EEE, MECH
        
        DefaultCategoryDataset dataSet = new DefaultCategoryDataset();
        dataSet.setValue(Integer.parseInt(scoreList[0]), "Mark", "CIVIL");
        dataSet.setValue(Integer.parseInt(scoreList[1]), "Mark", "CSE");
        dataSet.setValue(Integer.parseInt(scoreList[2]), "Mark", "ECE");
        dataSet.setValue(Integer.parseInt(scoreList[3]), "Mark", "EEE");
        dataSet.setValue(Integer.parseInt(scoreList[4]), "Mark", "MECH");

        JFreeChart chart = ChartFactory.createBarChart(
                        "Department Analysis", "Department", "Score",
                        dataSet, PlotOrientation.VERTICAL, false, true, false);

        return chart;
    }

    public void writeChartToPDF(int width, int height, String fileName, UserDetails userDetails,String score)throws EQException {
        PdfWriter writer = null;
        Document document = new Document();
        JFreeChart chart=null; 
        Image acetLogo=null;
        BaseFont baseFont=null;
        Font font22Bold = null;
        Font font20Bold = null;
        Font font8Bold = null;
        Font font12Bold = null;
        Font font16Normal = null;
        Font font12Normal = null;
        Font font11Normal = null;
        Font font16Underlined = null;
        try {
            baseFont=BaseFont.createFont(this.getClass().getResource("/Aladin-Regular.ttf").getPath(), BaseFont.WINANSI, BaseFont.EMBEDDED);
            font22Bold = new Font(baseFont, 22, Font.BOLD);
            font20Bold = new Font(baseFont, 20, Font.BOLD);
            font8Bold = new Font(baseFont, 8, Font.BOLD);
            font12Bold = new Font(baseFont, 12, Font.BOLD);
            font16Normal = new Font(baseFont, 16, Font.NORMAL);
            font12Normal = new Font(baseFont, 12, Font.NORMAL);
            font11Normal = new Font(baseFont, 11, Font.NORMAL);
            font16Underlined = new Font(baseFont, 16, Font.UNDERLINE);
            writer = PdfWriter.getInstance(document, new FileOutputStream(QueryConstants.REPORT_PDF_DIRECTORY+fileName));
            document.open();
            document.newPage();
            PdfContentByte contentByte = writer.getDirectContent();
            acetLogo=Image.getInstance(this.getClass().getResource("/JPEG_Achariya_logo.PNG").getPath());
            acetLogo.setAbsolutePosition(60, 200);
            document.add(acetLogo);
            Paragraph title=new Paragraph("ACHARIYA COLLEGE OF ENGINEERING TECHNOLOGY",font22Bold);
            title.setAlignment(Element.ALIGN_CENTER);
            document.add(title);
            Paragraph area=new Paragraph("Achariyapuram, Villianur, Pondicherry",font16Normal);
            area.setAlignment(Element.ALIGN_CENTER);
            document.add(area);
            document.add(new Paragraph("  ",font16Normal));
            Paragraph eq=new Paragraph("Engineering Quotient(EQ)",font20Bold);
            eq.setAlignment(Element.ALIGN_CENTER);
            document.add(eq);
            Paragraph quotes=new Paragraph("Your Course... Your Choice...                ",font12Normal);
            quotes.setAlignment(Element.ALIGN_RIGHT);
            document.add(quotes);
            Paragraph report=new Paragraph("Report",font16Underlined);
            report.setAlignment(Element.ALIGN_CENTER);
            document.add(report);
            Paragraph name=new Paragraph("Name: "+userDetails.getFirstName(),font11Normal);
            name.setAlignment(Element.ALIGN_LEFT);
            document.add(name);
            Paragraph username=new Paragraph("User Name: "+userDetails.getUserName(),font11Normal);
            username.setAlignment(Element.ALIGN_LEFT);
            document.add(username);
            Paragraph testAttended=new Paragraph("Test Attended: "+new Date(),font11Normal);
            testAttended.setAlignment(Element.ALIGN_LEFT);
            document.add(testAttended);
            document.add(new Paragraph(" ",font16Normal));
            Paragraph quotesBottom=new Paragraph("           Congrats for Your Future. Successfully Completed Your Test. Your Performance on the Test and also your Expertise Department is also Analyzed.",font11Normal);
            quotesBottom.setAlignment(Element.ALIGN_JUSTIFIED);
            document.add(quotesBottom);
            chart=generateBarChart(score);
            PdfTemplate template = contentByte.createTemplate(width, height);
            DefaultFontMapper fontMapper=new DefaultFontMapper();
            DefaultFontMapper.BaseFontParameters parameter=new DefaultFontMapper.BaseFontParameters(this.getClass().getResource("/Aladin-Regular.ttf").getPath());
            parameter.encoding=BaseFont.WINANSI;
            fontMapper.putName("Aladin Regular", parameter);
            Graphics2D graphics2d = template.createGraphics(width, height,fontMapper);
            Rectangle2D rectangle2d = new Rectangle2D.Double(0, 0, width,height);
            chart.draw(graphics2d, rectangle2d);
            graphics2d.dispose();
            Image graph=Image.getInstance(template);
            graph.setAlignment(Element.ALIGN_CENTER);
            graph.scaleToFit(300.0F, 500.0F);
            document.add(graph);
            String dept=greaterDeptScore(score);
            Paragraph deptAnno=new Paragraph("           From the analysis made from this test shows that for your bright future if you choose "+dept+" Department you can succeed in your Life as an Engineer",font11Normal);
            deptAnno.setAlignment(Element.ALIGN_JUSTIFIED);
            document.add(deptAnno);
            document.add(new Paragraph(" ",font22Bold));
            document.add(new Paragraph(" ",font22Bold));
            Paragraph signature=new Paragraph("Student's Signature" + "                              " + "                              " + "                              " + "Invigilator's Signature",font12Bold);
            signature.setAlignment(Element.ALIGN_CENTER);
            document.add(signature);
            document.add(new Paragraph(" ",font22Bold));
            Paragraph allTheBest=new Paragraph("Thank You!!! All The Best for Your Future!!!",font8Bold);
            allTheBest.setAlignment(Element.ALIGN_CENTER);
            document.add(allTheBest);
        } catch (Exception exception) {
            LOGGER.info("Exception Occured while trying to generate Graph and PDF",exception);
            throw new EQException("Exception Occured while trying to generate Graph and PDF");
        }
        document.close();
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
            resultDept="COMPUTER SCIENCE";
        } else if(ece>civil && ece>cse && ece>eee && ece>mech) {
            resultDept="ELECTRONICS AND COMMUNICATION";
        } else if(eee>civil && eee>cse && eee>ece && eee>mech) {
            resultDept="ELECTRICAL AND ELECTRONICS";
        } else if(mech>civil && mech>cse && mech>ece && mech>eee) {
            resultDept="MECHANICAL";
        } else if(cse==civil) {
            resultDept="COMPUTER SCIENCE or CIVIL";
        } else if(cse==ece) {
            resultDept="COMPUTER SCIENCE or ELECTRONICS AND COMMUNICATION";
        } else if(cse==eee) {
            resultDept="COMPUTER SCIENCE or ELECTRICAL AND ELECTRONICS";
        } else if(cse==mech) {
            resultDept="COMPUTER SCIENCE or MECHANICAL";
        } else if(civil==ece) {
            resultDept="CIVIL or ELECTRONICS AND COMMUNICATION";
        } else if(civil==eee) {
            resultDept="CIVIL or ELECTRICAL AND ELECTRONICS";
        } else if(civil==mech) {
            resultDept="CIVIL or MECHANICAL";
        } else if(ece==eee) {
            resultDept="ELECTRONICS AND COMMUNICATION or EEE";
        } else if(ece==mech) {
            resultDept="ELECTRONICS AND COMMUNICATION or MECH";
        } else if(mech==eee) {
            resultDept="MECHANICAL or ELECTRICAL AND ELECTRONICS";
        }
        return resultDept;
    }
}
