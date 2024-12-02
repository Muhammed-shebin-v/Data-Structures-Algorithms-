int fib(int n) {
  if (n == 0) {
    return 0;
  } else if (n == 1) {
    return 1;
  }
  int f = fib(n - 1) + fib(n - 2);
  return f;
}

int fact(int n) {
  if (n == 1) {
    return 1;
  }
  int f = n * fact(n - 1);
  return f;
}
int Sumofodd(List l, [int index = 0]) {
  if (index >= l.length) {
    return 0;
  }
  if (l[index] % 2 != 0) {
    return l[index] + Sumofodd(l, index + 1);
  } else {
    return Sumofodd(l, index + 1);
  }
}

  int binaryRec(List<int> array,int target,int start,int end){
    if(start>end){
      return -1;
    }
    int middle=start+(end-start)~/2;
    if(array[middle]==target){
      return middle;
    }
    else if(array[middle]>target){
      return binaryRec(array, target, start, middle-1);
    }
    else{
      return binaryRec(array, target, middle+1, end);
    }
  }

void main() {
  int f = fact(3);
  print('fact of 5 is $f');
  print('\n');
  int f2 = fib(4);
  print('fib number $f2');
  print('\n');
  print(Sumofodd([1, 2, 3, 4, 5, 6]));
  print('\n');
}

