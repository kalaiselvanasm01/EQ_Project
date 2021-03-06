package in.edu.acet.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

import in.edu.acet.bean.UserDetails;
import in.edu.acet.exception.EQException;
import in.edu.acet.idao.IPasswordDAO;

@Component(value = "passwordDAO")
public class PasswordDAO implements IPasswordDAO {

    
    @Autowired
    private PasswordEncoder passwordEncoder;
        
    public String convertPasswordToMD5(String password) throws EQException {
    	return passwordEncoder.encode(password);
    }

    public String convertPasswordToMD5(UserDetails userDetails) throws EQException {
       return passwordEncoder.encode(userDetails.getPassword());
    }
}
