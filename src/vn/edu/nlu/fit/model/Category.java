package vn.edu.nlu.fit.model;

public class Category {
    private int categoryID;
    private String name;
    private int quantity;
    private int active;

    public Category() {
    }

    public Category(int categoryID, String name, int quantity, int active) {
        this.categoryID = categoryID;
        this.name = name;
        this.quantity = quantity;
        this.active = active;
    }

    public int getCategoryID() {
        return categoryID;
    }

    public String getName() {
        return name;
    }

    public int getQuantity() {
        return quantity;
    }

    public int getActive() {
        return active;
    }
}
