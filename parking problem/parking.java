import java.util.*;

class Vehicle {
    private String type;
    private String registrationNumber;

    public Vehicle(String type, String registrationNumber) {
        this.type = type.toLowerCase();
        this.registrationNumber = registrationNumber;
    }

    public String getType() {
        return type;
    }

    public String getRegistrationNumber() {
        return registrationNumber;
    }
}

class Slot {
    protected int floor;
    protected int slotNumber;
    protected boolean isAvailable = true;

    public Slot(int floor, int slotNumber) {
        this.floor = floor;
        this.slotNumber = slotNumber;
    }

    public boolean isAvailable() {
        return isAvailable;
    }

    public int getFloor() {
        return floor;
    }

    public int getSlotNumber() {
        return slotNumber;
    }
}

class ParkingSlot extends Slot {
    private String type;
    private Vehicle vehicle;
    public ParkingSlot(int floor, int slotNumber, String type) {
        super(floor, slotNumber);
        this.type = type.toLowerCase();
    }
    public String getType() {
        return type;
    }
    public void park(Vehicle vehicle) {
        this.vehicle = vehicle;
        this.isAvailable = false;
        System.out.println("Vehicle parked: " + vehicle.getRegistrationNumber());
    }

    public void unpark() {
        System.out.println("Vehicle unparked: " + vehicle.getRegistrationNumber() );
        this.vehicle = null;
        this.isAvailable = true;
    }
}

class ParkingLot {
    private List<ParkingSlot> slots = new ArrayList<>();
    public ParkingLot(int floors, int slotsPerFloor) {
        for (int i = 0; i < floors; i++) {
            for (int j = 0; j < slotsPerFloor; j++) {
                String type = getSlotType(j);
                slots.add(new ParkingSlot(i + 1, j + 1, type));
            }
        }
    }

    private String getSlotType(int slotnumber) {
        if (slotnumber == 0) return "truck";
        else if (slotnumber <= 2) return "bike";
        return "car";
    }

    public String park(Vehicle vehicle) {
        for (ParkingSlot slot : slots) {
            if (slot.isAvailable() && slot.getType().equals(vehicle.getType())) {
                slot.park(vehicle);
                return "ABC123" + "_" + slot.getFloor() + "_" + slot.getSlotNumber();
            }
        }
        return "No available slots";
    }

    public void unpark(String ticket) {
        if(!(ticket.contains("ABC")))
        {
            System.out.print("Invalid Ticket");
            
        }
        else{
        String[] parts = ticket.split("_");
        int floor = Integer.parseInt(parts[1]);
        int slotNumber = Integer.parseInt(parts[2]);
        for (ParkingSlot slot : slots) {
            if (slot.getFloor() == floor && slot.getSlotNumber() == slotNumber) {
                slot.unpark();  
            }
        }  
    }}
    public void displayAvailability() {
        int available = 0;
        for (ParkingSlot slot : slots) {
            if (slot.isAvailable()) available++;
        }
        System.out.println("Available slots: " + available);
    }
}

public class Main {
    public static void main(String[] args) {
         Scanner scanner = new Scanner(System.in);

        System.out.println("Enter number of floors: ");
        int floors = scanner.nextInt();

        System.out.println("Enter number of slots per floor: ");
        int slotsPerFloor = scanner.nextInt();

        ParkingLot parkingLot = new ParkingLot(floors, slotsPerFloor);

        while (true) {
            System.out.println("\n1. Park Vehicle");
            System.out.println("2. Unpark Vehicle");
            System.out.println("3. Display Availability");
            System.out.println("4. Exit");
            System.out.print("Enter your choice: ");
            int choice = scanner.nextInt();
            scanner.nextLine(); 

            switch (choice) {
                case 1:
                    System.out.print("Enter vehicle type : ");
                    String type = scanner.nextLine();
                    System.out.print("Enter registration number: ");
                    String regNo = scanner.nextLine();
                    Vehicle vehicle = new Vehicle(type, regNo);
                    String ticket = parkingLot.park(vehicle);
                    System.out.println("Ticket issued: " + ticket);
                    break;
                case 2:
                    System.out.print("Enter ticket number to unpark: ");
                    String ticketNumber = scanner.nextLine();
                    parkingLot.unpark(ticketNumber);
                    break;
                case 3:
                    parkingLot.displayAvailability();
                    break;
                case 4:
                    
                    return;
                default:
                    System.out.println("Invalid choice!");
            }
        }
    }
}
