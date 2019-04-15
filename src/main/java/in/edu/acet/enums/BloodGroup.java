package in.edu.acet.enums;

public enum BloodGroup {
    A_POSITIVE("A +VE"),
    A_NEGATIVE("A -VE"),
    AB_POSITIVE("AB +VE"),
    AB_NEGATIVE("AB -VE"),
    B_POSITIVE("B +VE"),
    B_NEGATIVE("B -VE"),
    O_POSITIVE("O +VE"),
    O_NEGATIVE("O -VE");
    private final String description;

    BloodGroup(String description) {
        this.description = description;
    }

    public String getDescription() {
        return this.description;
    }
    
}
