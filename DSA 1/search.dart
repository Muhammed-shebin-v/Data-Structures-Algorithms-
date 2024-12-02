void main(){
  List<int> array=[1,2,3,4,5,6,7,8,9];
  int target=7;
  print(binaryIter(array, target));
  linear(array, target);
}
int binaryIter(List<int> array,int target){
    int startidx=0;
    int endidx = array.length-1;
    while(startidx <= endidx){
      int middle=startidx+(endidx-startidx)~/2;
      if(array[middle]==target){
        return middle;
      }
      else if(array[middle]>target){
        endidx=middle-1;
      }
      else{
        startidx=middle+1;
      }
    }
    return -1;
  }

 linear(List<int> array,int target){
  for(int i=0;i<array.length;i++){
    if(array[i]==target){
      print(i);
      break;
    }
  }


}