class phone
 {
    public void call()
    {
        System.out.println("Phone called");
    }
 }
 
 class sonyphone extends phone
  {
    // @Override
    // public void call()
    // {
    //     System.out.println("sony Phone called");
    // }
    public void otherfacility()
        {
            System.out.println("Gps Enabled");
        }
  }
 
  class upcasting
  {
    public static void main(String[] args) {
        sonyphone s=new sonyphone();
        phone p=(phone)s;
        p.call();
		
       
    }
  }
 
 