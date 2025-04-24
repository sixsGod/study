public class Java01DataType {
    public static void main(String[] args) {
        // Primitive Data Types
        byte byteValue = 127;          // 1 byte
        short shortValue = 32000;      // 2 bytes
        int intValue = 100000;         // 4 bytes
        long longValue = 10000000000L; // 8 bytes

        float floatValue = 3.14f;      // 4 bytes
        double doubleValue = 3.14159;  // 8 bytes

        char charValue = 'A';          // 2 bytes
        boolean booleanValue = true;   // 1 bit

        // Print values
        System.out.println("byteValue: " + byteValue);
        System.out.println("shortValue: " + shortValue);
        System.out.println("intValue: " + intValue);
        System.out.println("longValue: " + longValue);
        System.out.println("floatValue: " + floatValue);
        System.out.println("doubleValue: " + doubleValue);
        System.out.println("charValue: " + charValue);
        System.out.println("booleanValue: " + booleanValue);
    }
}