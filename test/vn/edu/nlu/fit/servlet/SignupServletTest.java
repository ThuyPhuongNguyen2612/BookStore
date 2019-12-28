package vn.edu.nlu.fit.servlet;

import org.junit.Test;

import static org.junit.Assert.assertTrue;

public class SignupServletTest {

    @Test
    public void checkEmail() {
        assertTrue(new SignupServlet().checkEmail("user@domain.com"));
    }


}