package utils;

import java.security.SecureRandom;

public class RamdomUtils {

    private static final String CHARACTERS = "ABCDEFGH123456";
    
    private static final SecureRandom secureRandom = new SecureRandom();
    
    private static final int tamanio = 10;
	
    public static String generarCodigo() {
        StringBuilder result = new StringBuilder(tamanio);
        for (int i = 0; i < tamanio; i++) {
            int index = secureRandom.nextInt(CHARACTERS.length());
            result.append(CHARACTERS.charAt(index));
        }
        return result.toString();
    }
	
}
