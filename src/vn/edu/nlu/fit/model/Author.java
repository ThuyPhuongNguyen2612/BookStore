package vn.edu.nlu.fit.model;

public class Author {
    private int authorID;
    private String name;

    public Author(int authorID, String name) {
        this.authorID = authorID;
        this.name = name;
    }

    public int getAuthorID() {
        return authorID;
    }

    public String getName() {
        return name;
    }
}
