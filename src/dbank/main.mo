import Debug "mo:base/Debug";

actor DBank {

  //to create a variable
  var currentValue = 300;

  // instead of writing currentValue = 100 , while overwriting we should use := 
  currentValue := 100;

  //To create a constant
  let id = 284415161545151515;

  //Not Allowed
  //id := 9798415161

  //Normal text is allowed to print directly 
  //Debug.print("Hello");

  //But if you want to print a varibale value we need to use a debug_show()
  //Debug.print(debug_show(currentValue));
  //Debug.print(debug_show(id));

  func topUp(){
    currentValue += 1;
    Debug.print(debug_show(currentValue));
  }

}