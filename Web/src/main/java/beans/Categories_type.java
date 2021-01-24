package beans;

public class Categories_type {
    int id_type;
    String cat_type_name;

    public Categories_type(int id_type, String cat_type_name) {
        this.id_type = id_type;
        this.cat_type_name = cat_type_name;
    }
    public  Categories_type() {

    }
    public int getId_type() {
        return id_type;
    }

    public void setId_type(int id_type) {
        this.id_type = id_type;
    }

    public String getCat_type_name() {
        return cat_type_name;
    }

    public void setCat_type_name(String cat_type_name) {
        this.cat_type_name = cat_type_name;
    }

    @Override
    public String toString() {
        return "Categories_type{" +
                "id_type=" + id_type +
                ", cat_type_name='" + cat_type_name + '\'' +
                '}';
    }
}
