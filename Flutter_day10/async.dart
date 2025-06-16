void main()
{
  print(fetch().then((value){
    print("$value");
  }));
  print("completed");
}
Future fetch() async
{
  await Future.delayed(Duration(seconds: 4));
  return("From future");
}