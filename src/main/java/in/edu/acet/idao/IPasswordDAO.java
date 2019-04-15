package in.edu.acet.idao;

import in.edu.acet.bean.UserDetails;
import in.edu.acet.exception.EQException;
import org.springframework.stereotype.Component;

@Component
public interface IPasswordDAO {

    public String convertPasswordToMD5(String password) throws EQException;

    public String convertPasswordToMD5(UserDetails userDetails) throws EQException;
}
