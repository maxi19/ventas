package applycation;

public class Test {

	public static void main(String[] args) {
		String palabra = "hola {2} ";
		
		String palaString = palabra.replace(" {2} ", " mundo");
		
		System.out.println(palaString);

	}

}
