package in.edu.acet.dao;

import in.edu.acet.enums.BloodGroup;
import in.edu.acet.enums.Dept;
import in.edu.acet.enums.Gender;
import in.edu.acet.idao.IUtilityDAO;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.List;
import org.springframework.stereotype.Component;

@Component("utilityDAO")
public class UtilityDAO implements IUtilityDAO {

    public BloodGroup getBloodGroup(String bloodGroup) {
        if (bloodGroup.equalsIgnoreCase("A +ve")) {
            return BloodGroup.A_POSITIVE;
        } else if (bloodGroup.equalsIgnoreCase("A -VE")) {
            return BloodGroup.A_NEGATIVE;
        } else if (bloodGroup.equalsIgnoreCase("B +VE")) {
            return BloodGroup.B_POSITIVE;
        } else if (bloodGroup.equalsIgnoreCase("B -VE")) {
            return BloodGroup.B_NEGATIVE;
        } else if (bloodGroup.equalsIgnoreCase("O +VE")) {
            return BloodGroup.O_POSITIVE;
        } else if (bloodGroup.equalsIgnoreCase("O -VE")) {
            return BloodGroup.O_POSITIVE;
        } else if (bloodGroup.equalsIgnoreCase("AB +VE")) {
            return BloodGroup.AB_POSITIVE;
        } else if (bloodGroup.equalsIgnoreCase("AB -VE")) {
            return BloodGroup.AB_NEGATIVE;
        }
        return null;
    }

    public Gender getGender(String gender) {
        if (gender.equalsIgnoreCase("male")) {
            return Gender.MALE;
        } else if (gender.equalsIgnoreCase("female")) {
            return Gender.FEMALE;
        } else {
            return Gender.OTHERS;
        }
    }

    public Dept getDept(String dept) {
        if (dept.equalsIgnoreCase("cse")) {
            return Dept.CSE;
        } else if (dept.equalsIgnoreCase("civil")) {
            return Dept.CIVIL;
        } else if (dept.equalsIgnoreCase("eee")) {
            return Dept.EEE;
        } else if (dept.equalsIgnoreCase("mech")) {
            return Dept.MECH;
        } else if (dept.equalsIgnoreCase("ece")) {
            return Dept.ECE;
        }
        return null;
    }

    public List<BloodGroup> getBGroupList() {
        List<BloodGroup> bloodGroupList=new ArrayList<BloodGroup>(EnumSet.allOf(BloodGroup.class));
        return bloodGroupList;
    }

    public List<Dept> getDeptList() {
        List<Dept> deptList=new ArrayList<Dept>(EnumSet.allOf(Dept.class));
        return deptList;
    }

    public List<Gender> getGenderList() {
        List<Gender> genderList=new ArrayList<Gender>(EnumSet.allOf(Gender.class));
        return genderList;
    }
}
