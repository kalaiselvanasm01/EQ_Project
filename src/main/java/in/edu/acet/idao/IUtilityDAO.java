package in.edu.acet.idao;

import in.edu.acet.enums.BloodGroup;
import in.edu.acet.enums.Dept;
import in.edu.acet.enums.Gender;
import java.util.List;
import org.springframework.stereotype.Component;

@Component
public interface IUtilityDAO {
    public BloodGroup getBloodGroup(String bloodGroup);
    public Gender getGender(String gender);
    public Dept getDept(String dept);
    public List<BloodGroup> getBGroupList();
    public List<Dept> getDeptList();
    public List<Gender> getGenderList();
}
