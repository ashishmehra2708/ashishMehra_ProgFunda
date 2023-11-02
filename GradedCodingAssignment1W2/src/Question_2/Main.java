package Question_2;
import java.util.Scanner;

public class Main {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.print("Enter the base number: ");
		int num1 = scanner.nextInt();
		System.out.print("Enter the power N = ");
		int num2 = scanner.nextInt();
		scanner.close(); 
		PowerOfNumber obj = new PowerOfNumber();
		System.out.println("X power N is: "+obj.power(num1, num2));
		scanner.close();
	}
}
