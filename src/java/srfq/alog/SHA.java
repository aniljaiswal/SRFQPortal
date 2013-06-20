/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package srfq.alog;

/**
 *
 * @author hp
 */
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;


public class SHA {

    String password = null, pass = null;
    String algorithm = "SHA";

    public String encrypt(String pass) throws NoSuchAlgorithmException {

        password = pass;

        byte[] plainText = password.getBytes();

        MessageDigest md = MessageDigest.getInstance(algorithm);

        md.reset();
        md.update(plainText);
        byte[] encodedPassword = md.digest();

        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < encodedPassword.length; i++) {
            if ((encodedPassword[i] & 0xff) < 0x10) {
                sb.append("0");
            }
            sb.append(Long.toString(encodedPassword[i] & 0xff, 16));
        }
        String ecp=sb.toString();
        System.out.println("Plain    : " + password);
        System.out.println("Encypted  :" + ecp);
       // System.out.println(ecp==new SHA().encrypt(pass));
        return sb.toString();
    }
}
