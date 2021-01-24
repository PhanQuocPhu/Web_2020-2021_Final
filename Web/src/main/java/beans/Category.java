package beans;

public class Category {
    int CatID;
    String CatName;
    int id_type;

    public Category(int catID, String catName, int id_type) {
        CatID = catID;
        CatName = catName;
        this.id_type = id_type;
    }

    public int getCatID() {
        return CatID;
    }

    public void setCatID(int catID) {
        CatID = catID;
    }

    public String getCatName() {
        return CatName;
    }

    public void setCatName(String catName) {
        CatName = catName;
    }

    public int getId_type() {
        return id_type;
    }

    public void setId_type(int id_type) {
        this.id_type = id_type;
    }

    @Override
    public String toString() {
        return "Category{" +
                "CatID=" + CatID +
                ", CatName='" + CatName + '\'' +
                ", id_type=" + id_type +
                '}';
    }
}
