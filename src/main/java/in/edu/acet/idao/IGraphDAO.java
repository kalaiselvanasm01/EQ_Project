package in.edu.acet.idao;

import in.edu.acet.bean.UserDetails;
import in.edu.acet.exception.EQException;
import org.springframework.stereotype.Component;

@Component
public interface IGraphDAO {
    public void writeChartToPDF(int width, int height, String fileName, UserDetails userDetails,String score)throws EQException;
}
