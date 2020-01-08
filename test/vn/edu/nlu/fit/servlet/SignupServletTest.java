package vn.edu.nlu.fit.servlet;

import org.junit.Test;

import java.util.Random;

import static org.junit.Assert.assertTrue;

public class SignupServletTest {

//    @Test
//    public void checkEmail() {
//        assertTrue(new RegisterServlet().checkEmail("user@domain.com"));
//    }
@Test
public void autoCode() {
    int leftLimit = 32; // letter 'a'
    int rightLimit = 122; // letter 'z'
    int targetStringLength = 15;
    Random random = new Random();
    StringBuilder buffer = new StringBuilder(targetStringLength);
    for (int i = 0; i < targetStringLength; i++) {
        int randomLimitedInt = leftLimit + (int)
                (random.nextFloat() * (rightLimit - leftLimit + 1));
        buffer.append((char) randomLimitedInt);
    }
    String generatedString = buffer.toString();

    System.out.println(generatedString);
}

}