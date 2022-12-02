package utils;

import java.util.function.Predicate;

import com.ventas.entity.Producto;

public class ProductoUtils {

	  public static Predicate < Producto > filtroCategoria(String categoria) {
	        return (Producto l) ->{
	            return l.getMarca().equals(categoria);
	        };
	    }
	  
	  
}
