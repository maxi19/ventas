package applycation;

import org.apache.log4j.ConsoleAppender;
import org.apache.log4j.Logger;
import org.apache.log4j.PatternLayout;

public class Log02UsandoLog {

	public static void main(String[] args) {
		
		PatternLayout patron= new PatternLayout("%m %n");
		ConsoleAppender consola= new ConsoleAppender(patron);
		Logger log= Logger.getLogger("milog");
		log.addAppender(consola);
		log.info("realizando un log sencillo");
		log.fatal("realizando un log sencillo nivel FATAL");
		log.error("realizando un log sencillo nivel ERROR");
		log.warn("realizando un log sencillo nivel WARN");
		log.info("realizando un log sencillo nivel INFO");
		log.debug("realizando un log sencillo nivel DEBUG");
		
	}

}
