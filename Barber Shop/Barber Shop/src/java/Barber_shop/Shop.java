package Barber_shop;

import java.util.HashMap;


public class Shop {
    String name;
    String desc;
    int rating;
    String covImgPath;
    boolean slot1;
    boolean slot2;
    boolean slot3;
    boolean slot4;
    boolean slot5;
    
    public static HashMap getShops()
    {
        HashMap<Integer,Shop> shopList = new HashMap<>();
        
        shopList.put(0, new Shop("BARBER KING" , "Barber king is a throwback in time to the barbershops of yesteryear, while adding modern services that are desired by today’s discerning gentleman. Chivalry is a place where today’s well dressed, well groomed, modern man will find an oasis of comfort in his busy world. Experience a new level of service unparalleled by any, where old-fashioned hospitality meets modern day convenience. Where the ease of scheduling your own appointments, checking yourself in and out or simply letting them know your running late, is at your fingertips." , "images/BARBER_KING.jpeg" , false , false , false , false , false) );
        shopList.put(1, new Shop("CRAIG BARBERS" , "Craig Barbers has provides award-winning men’s haircuts and hot lather shaves to discerning  clients. We take tremendous pride in our work and perpetuating the fine art of classic barbering. Our strength and differentiation is manifest in the details: how intently we listen to what you want, how well the hair is tapered, how straight the neckline is, how even the sideburns are." , "images/CRAIG'S.png" , false , false , false , false , false) );
        shopList.put(2, new Shop("FORT WORTH BARBER SHOP" , "Fort Worth Barber Shop specializes in classic cuts, beard trims, hot towel shaves and quality grooming products. Our team of professional and knowledgeable barbers work to help you achieve your best look. We’re a little bit old school with a modern touch. We thrive on great music, thoughtful conversation and fostering relationship in our community. We’ve created a laid back environment for your regular dose of self-care." , "images/FORTWORTH.png" , false , false , false , false , false) );
        shopList.put(3, new Shop("BOARDROOM" , "The Boardroom is a high-end men’s salon offering the best haircuts, shaves and spa services in town. As the Authority in Men’s Grooming™, we offer more than your typical barbershop. Boardroom combines a relaxing, sophisticated environment and a friendly, professional team to deliver the ultimate grooming experience. We guarantee exceptional client service to every client, on every visit. We complete the service by styling your hair and demonstrating how to achieve your perfect look, ensuring that you look just as great each day, as you did right after your haircut." , "images/BOARDROOM.jpeg" , false , false , false , false , false) );
        shopList.put(4, new Shop("CAPELLI’S BARBERSHOP" , "The Capelli is a high-end men’s salon offering the best haircuts, shaves and spa services in town. We respect your time, so we'll have you in the barber's chair quickly.  Our professional barbers will give you a haircut tailored specifically to your appearance. We also pay attention to the little details, like making sure your ear hair and eyebrows are trimmed. Our signature service includes a shampoo, a conditioning scalp massage, and a back-of-the-neck hot-towel shave with a straight-edge razor. We also let you know that you can come in for a free clean up to three weeks after your cut." , "images/CAPELLI'S.png" , false , false , false , false , false) );
        shopList.put(5, new Shop("BRUNO’S BARBERS" , "For men in need of pampering, Bruno’s is a full service barbershop that provides an environment where men can relax and come out feeling good about themselves .Dedicated to bringing the best out of our clients, Bruno’s Barbers stands out from the traditional barbershop experience and goes beyond its services to create the perfect ambience with well-trained barbers and therapists to cater to our clients’ needs." , "images/BRUNO.png" , false , false , false , false , false) );
        shopList.put(6, new Shop("GENTLEMAN BARBERS" , "We at GENTLEMAN take care of all your haircut needs, anywhere from your first child's haircut, to the latest trending styles, all the way to classic senior haircuts. Our Barbers are seasoned experts in a wide range of men's haircuts, hairstyles, and beard trims. We offer traditional services and do them right. Enjoy a tailored cut just for you from one of our incredible barbers." , "images/GENTLEMAN.jpeg" , false , false , false , false , false) );
        shopList.put(7, new Shop("CROWSNEST" , "Crowsnest Barbershop is a full-service barbershop that is dedicated to providing  exponential customer service to our clients alongside trendy haircuts with specified grooming. In addition to haircuts, the shop offers all the traditional barbershop services including Straight-razor shaves, Beard trims ,classic cut etc. Our shop is a client-driven relaxing atmosphere in which we want every person which walks through the door feeling euphoric upon leaving after giving them what they were looking for." , "images/CROWS_NEST.png" , false , false , false , false , false) );
        shopList.put(8, new Shop("BACK ALLEY" , "The Back Alley is an old fashioned barber shop for the twenty first century. You'll find antique soda machines, traditional shaving stations, and friends new and old. “Where tradition meets trend” describes us well. The walls house celebrity meets and a collection of comics.  Reuzel product, in-house beard oil, and more scissors than you can imagine are ready and waiting. After all, we've been crossing the world and leaving no hair unstyled." , "images/BACK ALLEY.jpeg" , false , false , false , false , false) );
        
        return shopList;
    }

    public Shop(String name, String desc, String covImgPath, boolean slot1, boolean slot2, boolean slot3, boolean slot4, boolean slot5) {
        this.name = name;
        this.desc = desc;
        this.covImgPath = covImgPath;
        this.slot1 = slot1;
        this.slot2 = slot2;
        this.slot3 = slot3;
        this.slot4 = slot4;
        this.slot5 = slot5;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public String getCovImgPath() {
        return covImgPath;
    }

    public void setCovImgPath(String covImgPath) {
        this.covImgPath = covImgPath;
    }

    public boolean isSlot1() {
        return slot1;
    }

    public void setSlot1(boolean slot1) {
        this.slot1 = slot1;
    }

    public boolean isSlot2() {
        return slot2;
    }

    public void setSlot2(boolean slot2) {
        this.slot2 = slot2;
    }

    public boolean isSlot3() {
        return slot3;
    }

    public void setSlot3(boolean slot3) {
        this.slot3 = slot3;
    }

    public boolean isSlot4() {
        return slot4;
    }

    public void setSlot4(boolean slot4) {
        this.slot4 = slot4;
    }

    public boolean isSlot5() {
        return slot5;
    }

    public void setSlot5(boolean slot5) {
        this.slot5 = slot5;
    }
    
}
