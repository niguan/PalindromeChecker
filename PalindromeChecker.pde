public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(Palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean Palindrome(String sWord){
  if (reverse(noSpaces(letters(noCapitals(sWord)))).equals(noSpaces(letters(noCapitals(sWord)))))
  {
    return true;
  }
  else
  {
    return false;
  }
}
public String reverse(String sWord)
{
    String word = new String();
    int sLast = sWord.length()-1;
    for(int i = sLast; i > -1; i--)
    {
      word = word + sWord.substring(i,i+1);
    }
    return word;
}
public String noSpaces(String sWord){
  String s = new String();
  for (int i = 0; i < sWord.length(); i++)
  {
    if (Character.isLetter(sWord.charAt(i)) == true)
    {
      s = s + sWord.charAt(i);
    }
  }
  return s;
}
public String letters(String sWord){
  String word = new String();
  for (int i = 0; i<sWord.length(); i++)
  {
    if (Character.isLetter(sWord.charAt(i)) == true)
    {
      word = word + sWord.charAt(i);
    }
  }
  return word;
}
public String noCapitals(String sWord){
  return sWord.toLowerCase();
}