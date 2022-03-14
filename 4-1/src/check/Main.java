package check;

import constants.Constants;

public class Main {
	private final static String firstName = "Tamura";
	private final static String lastName = "Hiroto";
	
	private static String printName(String firstName,String lastName) {
		return firstName + lastName;
	}

	public static void main(String[] args) {
		System.out.println("printNameメソッド　→" + Main.printName(Main.firstName,Main.lastName));	
		
		Pet pet = new Pet(Constants.CHECK_CLASS_JAVA,Constants.CHECK_CLASS_HOGE);
		pet.introduce();
		
		RobotPet robotpet = new RobotPet(Constants.CHECK_CLASS_R2D2,Constants.CHECK_CLASS_LUKE);
		robotpet.introduce();		
	}

}
