import Debug "mo:base/Debug";
import Time "mo:base/Time";
import Float "mo:base/Float";

actor DBank {
  stable var currentValue: Float = 300;
  // currentValue := 100;
  //Debug.print("Hello");
  let id = 28578;
  // Debug.print(debug_show(currentValue));
  // Debug.print(debug_show(id));

  stable var startTime = Time.now() ;
  Debug.print(debug_show(startTime));

  //update methods - read & write - more time
  public func topUp(amount : Float) {
    currentValue += amount;
    Debug.print(debug_show (currentValue));
  };

  public func withdraw(amount : Float) {
    let tempValue: Float = currentValue - amount;
    if (tempValue -amount >= 0) {
      currentValue -= amount;
      Debug.print(debug_show (currentValue));
    }else{
      Debug.print("Amount too large , currentValue less than zero");
    }
  };

  //query methods - read only - less time
  //functions should be async in canisters
  public query func checkBalance(): async Float{
    return currentValue;
  };

public func compound(){
  let currentTime = Time.now();
  let timeElapsedNS = currentTime - startTime ; 
  let timeElapsedS = timeElapsedNS / 1000000000 ;
  currentValue := currentValue * (1.01 **Float.fromInt(timeElapsedS)) ; 
  startTime := currentTime ;
};

};
