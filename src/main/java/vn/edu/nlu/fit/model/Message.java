package vn.edu.nlu.fit.model;

public class Message {
    private int messageID;
    private String name;
    private String subject;
    private String email;
    private String message;

    public Message(int messageID, String name, String subject, String email, String message) {
        this.messageID = messageID;
        this.name = name;
        this.subject = subject;
        this.email = email;
        this.message = message;
    }

    public int getMessageID() {
        return messageID;
    }

    public String getName() {
        return name;
    }

    public String getSubject() {
        return subject;
    }

    public String getEmail() {
        return email;
    }

    public String getMessage() {
        return message;
    }
}
