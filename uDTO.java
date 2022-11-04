package User_DTO;
public class uDTO 
{
    int uid;
    String uname,upassword,uphone,uaddress,upincode;

    public uDTO() {
    }

    public uDTO(int uid, String uname, String upassword, String uphone, String uaddress, String upincode) {
        this.uid = uid;
        this.uname = uname;
        this.upassword = upassword;
        this.uphone = uphone;
        this.uaddress = uaddress;
        this.upincode = upincode;
    }

    public uDTO(String uname, String upassword, String uphone, String uaddress, String upincode) {
        this.uname = uname;
        this.upassword = upassword;
        this.uphone = uphone;
        this.uaddress = uaddress;
        this.upincode = upincode;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUpassword() {
        return upassword;
    }

    public void setUpassword(String upassword) {
        this.upassword = upassword;
    }

    public String getUphone() {
        return uphone;
    }

    public void setUphone(String uphone) {
        this.uphone = uphone;
    }

    public String getUaddress() {
        return uaddress;
    }

    public void setUaddress(String uaddress) {
        this.uaddress = uaddress;
    }

    public String getUpincode() {
        return upincode;
    }

    public void setUpincode(String upincode) {
        this.upincode = upincode;
    }

    @Override
    public String toString() {
        return "uDTO{" + "uname=" + uname + '}';
    }

}

