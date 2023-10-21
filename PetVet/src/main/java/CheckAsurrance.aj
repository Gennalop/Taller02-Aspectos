import java.util.Scanner;
import main.*;

public aspect CheckAsurrance {
	
	pointcut verifyAssurance ():
		execution(void PetStore.makeAppointment(..));
	
	before(): verifyAssurance(){
		System.out.println("Verifying assurance ...");
		String petName = PetStore.readConsole("Name of your pet:");
		System.out.println("Welcome " + petName);
		System.out.println("You are able to use this service");
	}
	
	after(): verifyAssurance(){
		System.out.println("Request was executed successfully");
	}
}
