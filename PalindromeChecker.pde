public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String theWorld = reverse(word);
  String theHand = clearFormatting(word);
  if (theWorld.equals(theHand))
    return true;
  return false;
}
public String reverse(String str)
{
    String DIO = new String();
    for (int i = str.length()-1; i >= 0; i--)
    {
      if (str.charAt(i) != ' ' && Character.isLetter(str.charAt(i)) == true)
        DIO = DIO + str.substring(i,i+1);
    }
    return DIO.toLowerCase();
}
public String clearFormatting(String str)
{
  String Okuyasu = new String();
  for (int i = 0; i < str.length(); i++)
  {
    if (str.charAt(i) != ' ' && Character.isLetter(str.charAt(i)) == true)
      Okuyasu = Okuyasu + str.substring(i,i+1);
  }
  return Okuyasu.toLowerCase();
}
