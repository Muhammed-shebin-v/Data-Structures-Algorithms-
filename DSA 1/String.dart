void main(){
  String word='malayalam ariyumo moneee';
  String word1='aalmmy';
  print(reversed(word));
  print(palindrome(word));
  print(pascals(word));
  print(snakeCase(word));
  print(longestString(word));
  print(countingVowals(word));
  print(removeWhiteSpace(word));
  print(anagram(word,word1));
  print(wordreverse(word));
}
String reversed( String word){ //'shebin' => 'nibehs'
  String result='';
  for(int i=word.length-1;i>=0;i--){
    result+=word[i];
  }
  return result;
}
bool palindrome(String word){ //if 'malayalam'=='malayalam' true;
  bool flag=true;
  for(int i=0;i<word.length~/2;i++){
    if(word[i]!=word[word.length-i-1]){
      flag=false;
      break;
    }
  }
  return flag;
}

String pascals(String word){ // 'linked list' => 'LinkedList'
  String  result='';
  bool flag=false;
  result+=word[0].toUpperCase();
  for(int i=1;i<word.length;i++){
    if(word[i]==' '){
      flag=true;
    }
    else if(flag==true){
        result+=word[i].toUpperCase();
        flag=false;
    }
    else{
    result+=word[i];
    }
  }
  return result;
}

String snakeCase(String word){ // 'Snake Case' => 'snake_case'
  String  result='';
  for(int i=0;i<word.length;i++){
    word[i]==' '?result+='_':result+=word[i];
  }
  return result.toLowerCase();
}
// String pascalsToSneakCase(String word){
//   for(int i=0;i<word.length;i++){
//     if(word[i]==)
//   }
// }
String longestString(String word){
  String current='';
  String longest='';
  for(int i=0;i<word.length;i++){
    if(word[i]!=' '){
      current+=word[i];
    }
    else{
      if(current.length>longest.length){
        longest=current;
        current='';
      }
    }
  }
  if(current.length>longest.length){
    longest=current;
  }
  return longest;
}
int countingVowals(String word){
  int vowels=0;
  int consonents=0;
  for(int i=0;i<word.length;i++){
    if(word[i]=='e'||word[i]=='a'||word[i]=='i'||word[i]=='u'){
      vowels++;
    }
    else if(word[i]!=' '){
      consonents++;
    }
  }
  return vowels;
}
String removeWhiteSpace(String word){
  String result='';
  for(int i=0;i<word.length;i++){
    if(word[i]!=' '){
      result+=word[i];
    }
  }
  return result; 
}
bool anagram(String word,String word1){
  List<String> sorted=word.split('').toList();
  sorted.sort();
  String soorted = sorted.join();
  bool flag =false;
  if(soorted==word1){
    flag=true;
  }
  return flag;
}
// String frequency(String word){
//   for(int i=0;i<word.length;i++){
//     for(int j=0;j<i;j++){
//       if(word[i]==word[j]){
//       }
//     }
//   }
// }
String wordreverse(String word){
  String current='';
  String result='';
  for(int i=0;i<word.length;i++){
    if(word[i]!=' '){
      current+=word[i];
    }
    else{
      for(int j=current.length-1;j>=0;j--){
        result+=current[j];
      }
      result+=word[i];
      current='';
    }
  }
  for(int j=current.length-1;j>=0;j--){
        result+=current[j];
  }
  return result;
}
