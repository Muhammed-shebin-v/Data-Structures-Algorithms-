void main(List<String> args) {
  List<int> array = [6,7,8,9,10];
  int target = 9;
  // print(binaryIter(array, target));
  // print(binaryRecHelper(array, target2,0,array.length-1));
  five(array, target);
  bubbleSorting();
  secL();
}
  void bubbleSorting(){
    List<int> number=[10,2,3,5,6,4,3,4,5,3,2,54,3];
  for(int i=0;i<number.length;i++){
    for(int j=0;j<i;j++){
      if(number[i]<number[j]){
        int temp=number[j];
        number[j]=number[i];
        number[i]=temp;
      }
    }
  }
  print(number);
  }
  void secL(){
    List<int> number=[10,2,3,5,6,4,3,4,5,3,2,54];
    int max1=999;
    int max2=999;
    for(int i in number){
      if(i<max1){
        max2=max1;
        max1=i;
      }
      else if(i<max2 && i>max1){
        max2=i;
      }
    }
    print('largest = $max1 and second latrgest $max2');
  }
  


List<int>? finding(List<int> arr, int target) {
  Set<int> seenNumbers = {};
  for (int num in arr) {
    int match = target - num;
    if (seenNumbers.contains(match)) {
      return [num, match];
    } else {
      seenNumbers.add(num);
    }
  }
  return null;
}

void five(List<int> array,int target){
  print('hi');
  for(int i=0;i<array.length;i++){
    for(int j=i+1;j<array.length;j++){
      if(array[i]+array[j]==target){
        print('${array[i]} + ${array[j]} = $target');
      }
    }
  }
}

List<int> moveTargetToEnd(List<int> array,int target){
  int i=0, j=array.length-1;
  while(i<j){
    while (i<j && array[j]==target){
      j--;
    }
    if(array [i]==target){
      int temp= array[j];
      array[j]=array[i];
      array[i]=temp;
    }
    i++;
  }
  return array;
}



