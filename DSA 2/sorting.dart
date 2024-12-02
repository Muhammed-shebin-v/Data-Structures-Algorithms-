void main() {
  List l1 = [9, 3, 1, 89, 12, 67];
  print('List: $l1');
  // bubble(l1);
  print(quick(l1));
}


void bubble(List l1){
int n = l1.length;
bool swap = false;
for(int i =0;i < n;i++){
  swap=false;
  for(int j=0;j<n-i-1;j++){
    if(l1[j]>l1[j+1]){
      int temp = l1[j];
      l1[j]=l1[j+1];
      l1[j+1]=temp;
      swap =true;
    }
    if(swap==false){
      break;
    }
  }
 }
 print('sorted : $l1');
}


 quick(List a){
  if(a.length<=1)return a;
  List left=[];
  List right=[];
  List middle=[];
  int pivot=a[a.length-1];

  for(var val in a){
    if(val<pivot){
      left.add(val);
    }
    else if(val> pivot){
      right.add(val);
    }
    else{
      middle.add(val);
    }
  }
  return quick(left) + middle + quick(right);
}


//   int n = l1.length;
//   for (int i = 0; i < n; i++) {
//     int key = l1[i];
//     int j = i - 1;
//     while (j >= 0 && l1[j] > key) {
//       l1[j + 1] = l1[j];
//       j--;
//     }
//     l1[j + 1] = key;
//   }
//   print('sorted list:$l1');