
package com.company;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        String sentence = getSentence();
        StringBuilder result = new StringBuilder(sentence.length());
        boolean capitalize = true;
        for(int i = 0; i < sentence.length(); i++)
        {
            char c = sentence.charAt(i);
            if(c == '.' || c == '?' || c == '!')
            {
                capitalize = true;
            }
            else if(capitalize && Character.isAlphabetic(c))
            {
                c = Character.toUpperCase(c);
                capitalize = false;
            }
            result.append(c);
        }
        System.out.println(result);



    }
    public static String getSentence()
    {
        Scanner hold = new Scanner(System.in);
        String sent;
        System.out.println("Enter a sentence: ");
        sent = hold.nextLine();
        return sent;
    }
}
