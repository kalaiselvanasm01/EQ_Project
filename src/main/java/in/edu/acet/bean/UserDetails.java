package in.edu.acet.bean;

import in.edu.acet.enums.BloodGroup;
import in.edu.acet.enums.Dept;
import in.edu.acet.enums.Gender;
import java.text.ParseException;

public class UserDetails {
    
    private String userName;
    private String password;
    private String dateOfBirth;
    private String firstName;
    private String lastName;
    private Gender gender;
    private String fatherName;
    private String address;
    private String nationality;
    private String religion;
    private String hscGroup;
    private int expObtHSCMark;
    private BloodGroup bloodGroup;
    private String email;
    private String phNumber;
    private Dept expectedDept;
    private boolean isAdmin = false;
    private boolean isattended;
    private boolean ultimateAdmin=false;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }
    
    public void setDateOfBirth(String dateOfBirth) throws ParseException {
        this.dateOfBirth=dateOfBirth;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public boolean isUltimateAdmin() {
        return ultimateAdmin;
    }

    public void setUltimateAdmin(boolean ultimateAdmin) {
        this.ultimateAdmin = ultimateAdmin;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public Gender getGender() {
        return gender;
    }

    public void setGender(Gender gender) {
        this.gender = gender;
    }

    public String getFatherName() {
        return fatherName;
    }

    public void setFatherName(String fatherName) {
        this.fatherName = fatherName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getNationality() {
        return nationality;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }

    public String getReligion() {
        return religion;
    }

    public void setReligion(String religion) {
        this.religion = religion;
    }

    public String getHscGroup() {
        return hscGroup;
    }

    public void setHscGroup(String hscGroup) {
        this.hscGroup = hscGroup;
    }

    public int getExpObtHSCMark() {
        return expObtHSCMark;
    }

    public void setExpObtHSCMark(int expObtHSCMark) {
        this.expObtHSCMark = expObtHSCMark;
    }

    public BloodGroup getBloodGroup() {
        return bloodGroup;
    }

    public void setBloodGroup(BloodGroup bloodGroup) {
        this.bloodGroup = bloodGroup;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhNumber() {
        return phNumber;
    }

    public void setPhNumber(String phNumber) {
        this.phNumber = phNumber;
    }

    public Dept getExpectedDept() {
        return expectedDept;
    }

    public void setExpectedDept(Dept expectedDept) {
        this.expectedDept = expectedDept;
    }

    public boolean isIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(boolean isAdmin) {
        this.isAdmin = isAdmin;
    }

    public boolean isIsattended() {
        return isattended;
    }

    public void setIsattended(boolean isattended) {
        this.isattended = isattended;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 41 * hash + (this.userName != null ? this.userName.hashCode() : 0);
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
        final UserDetails other = (UserDetails) obj;
        if ((this.userName == null) ? (other.userName != null) : !this.userName.equals(other.userName)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "UserDetails{" + "userName=" + userName + ", password=" + password + ", dateOfBirth=" + dateOfBirth + ", firstName=" + firstName + ", lastName=" + lastName + ", gender=" + gender + ", fatherName=" + fatherName + ", address=" + address + ", nationality=" + nationality + ", religion=" + religion + ", hscGroup=" + hscGroup + ", expObtHSCMark=" + expObtHSCMark + ", bloodGroup=" + bloodGroup + ", email=" + email + ", phNumber=" + phNumber + ", expectedDept=" + expectedDept + ", isAdmin=" + isAdmin + ", isattended=" + isattended + ", ultimateAdmin=" + ultimateAdmin + '}';
    }
}
