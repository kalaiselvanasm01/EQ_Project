package in.edu.acet.dao;

import in.edu.acet.bean.UserDetails;
import in.edu.acet.exception.EQException;
import in.edu.acet.idao.IPasswordDAO;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Component(value = "passwordDAO")
public class PasswordDAO implements IPasswordDAO {

    private MessageDigest messageDigest;
        
    private static final Logger LOGGER = LoggerFactory.getLogger(PasswordDAO.class);

    public String convertPasswordToMD5(String password) throws EQException {
        StringBuilder sb= new StringBuilder();
        byte byteData[];
        try {
            messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(password.getBytes());
            byteData = messageDigest.digest();
            for (int i = 0; i < byteData.length; i++) {
                sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
            }
        } catch (NoSuchAlgorithmException exception) {
            LOGGER.info("NoSuchAlgorithmException occured while trying to convert Password to MD5",exception);
            throw new EQException("NoSuchAlgorithmException occured while trying to convert Password to MD5", exception);
        }

        return sb.toString();
    }

    public String convertPasswordToMD5(UserDetails userDetails) throws EQException {
        byte byteData[];
        StringBuilder sb = new StringBuilder();
        try {
            messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(userDetails.getPassword().getBytes());
            byteData = messageDigest.digest();
            for (int i = 0; i < byteData.length; i++) {
                sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
            }
        } catch (NoSuchAlgorithmException exception) {
            LOGGER.info("NoSuchAlgorithmException occured while trying to convert Password to MD5",exception);
            throw new EQException("NoSuchAlgorithmException occured while trying to convert Password to MD5", exception);
        }
        return sb.toString();
    }
}
