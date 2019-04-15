package in.edu.acet.enums;

public enum Gender {
    MALE("MALE"),
    FEMALE("FEMALE"),
    OTHERS("OTHERS");
    private final String description;

    Gender(String description) {
        this.description = description;
    }

    public String getDescription() {
        return this.description;
    }

}
