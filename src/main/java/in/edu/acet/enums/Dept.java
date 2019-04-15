package in.edu.acet.enums;

public enum Dept {
    CSE("CSE"),
    EEE("EEE"),
    MECH("MECH"),
    ECE("ECE"),
    CIVIL("CIVIL");
    private final String description;

    Dept(String description) {
        this.description = description;
    }

    public String getDescription() {
        return this.description;
    }
    
    

}
