package beans;

public class Product {
    int ProID;
    String ProName, TinyDes, FullDes;
    int Price, Quantity, CatID;

    public Product() {
    }

    public Product(int proID, String proName, String tinyDes, String fullDes, int price, int quantity, int catID) {
        ProID = proID;
        ProName = proName;
        TinyDes = tinyDes;
        FullDes = fullDes;
        Price = price;
        Quantity = quantity;
        CatID = catID;
    }


    public int getProID() {
        return ProID;
    }

    public String getProName() {
        return ProName;
    }

    public String getTinyDes() {
        return TinyDes;
    }

    public String getFullDes() {
        return FullDes;
    }

    public int getPrice() {
        return Price;
    }

    public int getQuantity() {
        return Quantity;
    }

    public void setProID(int proID) {
        ProID = proID;
    }

    public void setProName(String proName) {
        ProName = proName;
    }

    public void setTinyDes(String tinyDes) {
        TinyDes = tinyDes;
    }

    public void setFullDes(String fullDes) {
        FullDes = fullDes;
    }

    public void setPrice(int price) {
        Price = price;
    }

    public void setQuantity(int quantity) {
        Quantity = quantity;
    }

    public int getCatID() {
        return CatID;
    }

    public void setCatID(int catID) {
        CatID = catID;
    }
}
