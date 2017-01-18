public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
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
public String noSpace(String sWord)
{
  String word = new String();
  for (int i = 0; i<sWord.length();i++)
  {
    if (Character.isLetter(sWord.charAt(i))== true)
    {
      return word = word + sWord.substring(i);
    }
  }
  return word;
}
public String numLetters(String sWord){
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
public boolean palindrome(String word)
{
  String r = new String();
  int nLast = word.length()-1;
  for (int i = nLast; i > -1; i--)
  {
    r = r + word.substring(i,i+1);
  }
  if (word.equals(r))
  {
    return true;
  }
  return false;
}