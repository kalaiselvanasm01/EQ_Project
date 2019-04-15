package in.edu.acet.exception;

public class EQException extends Exception{
    private String message;

    public EQException() {
    }

    public EQException(String message) {
        super(message);
    }

    public EQException(String message, Throwable cause) {
        super(message, cause);
    }

    public EQException(Throwable cause) {
        super(cause);
    }

    @Override
    public String getMessage() {
        return message;
    }
 
}
