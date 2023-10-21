package main;
import java.util.Scanner;
public aspect CheckAsurrance {
	pointcut verifyAssurance():execution(void PetStore.makeAppointment(..));

	before() : verifyAssurance(){
		System.out.println("Veridicar mascota ");
		System.out.println("Ingrese el nombre de su mascota: ");
		Scanner mascota=new Scanner(System.in);
		System.out.println("Bienvenida "+ mascota.nextLine());
		System.out.println("Desea el servicio");
		 }
  
	after() : verifyAssurance(){
		System.out.println("La solicitud se ejecutó exitosamente.");
	 }
	
	
}








