import java.util.*;

// --- Base Vehicle Class (for extensibility) ---
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

// --- Base Slot Class ---
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

// --- ParkingSlot Class (extends Slot) ---
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
        System.out.println("Vehicle unparked: " +
                (vehicle != null ? vehicle.getRegistrationNumber() : ""));
        this.vehicle = null;
        this.isAvailable = true;
    }
}

// --- TicketManager (Single Responsibility) ---
class TicketManager {
    

    public static String generateTicket(int floor, int slotNumber) {
        return "ABC124" + "_" + floor + "_" + slotNumber;
    }

    public static int[] parseTicket(String ticket) {
        String[] parts = ticket.split("_");
        return new int[] {
            Integer.parseInt(parts[1]),
            Integer.parseInt(parts[2])
        };
    }
}

// --- ParkingLot (Core logic controller) ---
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

    private String getSlotType(int index) {
        if (index == 0) return "truck";
        if (index <= 2) return "bike";
        return "car";
    }

    public String park(Vehicle vehicle) {
        for (ParkingSlot slot : slots) {
            if (slot.isAvailable() && slot.getType().equals(vehicle.getType())) {
                slot.park(vehicle);
                return TicketManager.generateTicket(slot.getFloor(), slot.getSlotNumber());
            }
        }
        return "No available slots";
    }

    public void unpark(String ticket) {
        int[] info = TicketManager.parseTicket(ticket);
        int floor = info[0];
        int slotNumber = info[1];

        for (ParkingSlot slot : slots) {
            if (slot.getFloor() == floor && slot.getSlotNumber() == slotNumber) {
                slot.unpark();
                return;
            }
        }
        System.out.println("Invalid ticket.");
    }

    public void displayAvailability() {
        int available = 0;
        for (ParkingSlot slot : slots) {
            if (slot.isAvailable()) available++;
        }
        System.out.println("Available slots: " + available);
    }
}

// --- Main Class ---
public class Main {
    public static void main(String[] args) {
        ParkingLot parkingLot = new ParkingLot(2, 5);

        Vehicle car = new Vehicle("car", "KA01AB1234");
        String ticket = parkingLot.park(car);
        System.out.println("Ticket issued: " + ticket);

        parkingLot.displayAvailability();

        parkingLot.unpark(ticket);
        parkingLot.displayAvailability();
    }
}
