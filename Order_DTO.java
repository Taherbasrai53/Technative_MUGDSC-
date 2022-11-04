package User_DTO;
public class Order_DTO 
{
    
    int bid,usid;
    String type,quantity,time;

    public Order_DTO(String time, int bid, int usid, String type, String quantity) {
        this.time = time;
        this.bid = bid;
        this.usid = usid;
        this.type = type;
        this.quantity = quantity;
    }

    public Order_DTO(String time, int usid, String type, String quantity) {
        this.time = time;
        this.usid = usid;
        this.type = type;
        this.quantity = quantity;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public int getBid() {
        return bid;
    }

    public void setBid(int bid) {
        this.bid = bid;
    }

    public int getUsid() {
        return usid;
    }

    public void setUsid(int usid) {
        this.usid = usid;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }
    
}
