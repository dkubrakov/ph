package roo.ph;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.SecurityAutoConfiguration;

/**
 * = PhApplication
 *
 * TODO Auto-generated class documentation
 *
 */
@SpringBootApplication(exclude = { SecurityAutoConfiguration.class })
public class PhApplication {

    /**
     * TODO Auto-generated method documentation
     *
     * @param args
     */
    public static void main(String[] args) {
        SpringApplication.run(PhApplication.class, args);
    }
}