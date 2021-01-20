package beans;

public class Course {
    int CourseID, Price, CatID,LecturerID,LevelID;
    String CourseName, Short_Des, Full_Des, Url;
    String Image;
    public Course () {

    }
    public Course(int courseID, int price, int catID, int lecturerID, int levelID, String courseName, String short_Des, String full_Des, String image, String url) {
        CourseID = courseID;
        Price = price;
        CatID = catID;
        LecturerID = lecturerID;
        LevelID = levelID;
        CourseName = courseName;
        Short_Des = short_Des;
        Full_Des = full_Des;
        Image = image;
        Url = url;
    }

    public String getUrl() {
        return Url;
    }

    public void setUrl(String url) {
        Url = url;
    }

    public int getCourseID() {
        return CourseID;
    }

    public int getPrice() {
        return Price;
    }

    public int getCatID() {
        return CatID;
    }

    public int getLecturerID() {
        return LecturerID;
    }

    public int getLevelID() {
        return LevelID;
    }

    public String getCourseName() {
        return CourseName;
    }

    public String getShort_Des() {
        return Short_Des;
    }

    public String getFull_Des() {
        return Full_Des;
    }

    public String getImage() {
        return Image;
    }

    public void setCourseID(int courseID) {
        CourseID = courseID;
    }

    public void setPrice(int price) {
        Price = price;
    }

    public void setCatID(int catID) {
        CatID = catID;
    }

    public void setLecturerID(int lecturerID) {
        LecturerID = lecturerID;
    }

    public void setLevelID(int levelID) {
        LevelID = levelID;
    }

    public void setCourseName(String courseName) {
        CourseName = courseName;
    }

    public void setShort_Des(String short_Des) {
        Short_Des = short_Des;
    }

    public void setFull_Des(String full_Des) {
        Full_Des = full_Des;
    }

    public void setImage(String image) {
        Image = image;
    }
}
