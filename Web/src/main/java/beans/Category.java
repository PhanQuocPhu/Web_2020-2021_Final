package beans;

public class Category {
    int CatID;
    String CatName;

    public Category(int catID, String catName) {
        CatID = catID;
        CatName = catName;
    }

    public Category() {
    }

    public int getCatID() {
        return CatID;
    }

    public String getCatName() {
        return CatName;
    }

    public void setCatID(int catID) {
        CatID = catID;
    }

    public void setCatName(String catName) {
        CatName = catName;
    }

    @Override
    public String toString() {
        return "Category{" +
                "CatID=" + CatID +
                ", CatName='" + CatName + '\'' +
                '}';
    }
}
