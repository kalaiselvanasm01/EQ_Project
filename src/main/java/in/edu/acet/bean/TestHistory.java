package in.edu.acet.bean;

public class TestHistory {

    private UserDetails userDetails;
    private String attendedDate;
    private String resultDept;
    private String reportFileName;  //if gragh also exist then concatenate report name, separator('@@') and graph name

    public TestHistory() {
        super();
    }

    public UserDetails getUserDetails() {
        return userDetails;
    }

    public void setUserDetails(UserDetails userDetails) {
        this.userDetails = userDetails;
    }

    public String getAttendedDate() {
        return attendedDate;
    }

    public void setAttendedDate(String attendedDate) {
        this.attendedDate = attendedDate;
    }

    public String getResultDept() {
        return resultDept;
    }

    public void setResultDept(String resultDept) {
        this.resultDept = resultDept;
    }

    public String getReportFileName() {
        return reportFileName;
    }

    public void setReportFileName(String reportFileName) {
        this.reportFileName = reportFileName;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 53 * hash + (this.userDetails != null ? this.userDetails.hashCode() : 0);
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
        final TestHistory other = (TestHistory) obj;
        if (this.userDetails != other.userDetails && (this.userDetails == null || !this.userDetails.equals(other.userDetails))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "TestHistory{" + "userDetails=" + userDetails + ", attendedDate=" + attendedDate + ", resultDept=" + resultDept + ", reportFileName=" + reportFileName + '}';
    }

}
