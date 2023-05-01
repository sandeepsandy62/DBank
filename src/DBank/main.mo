import Debug "mo:base/Debug";

actor DBank {
  var currentValue = 300;
  currentValue := 100;
  //Debug.print("Hello");
  let id = 28578;
  // Debug.print(debug_show(currentValue));
  // Debug.print(debug_show(id));

  public func topUp(amount : Nat) {
    currentValue += amount;
    Debug.print(debug_show (currentValue));
  };

  public func withdrawl(amount : Nat) {
    let tempValue: Int = currentValue - amount;
    if (tempValue -amount >= 0) {
      currentValue -= amount;
      Debug.print(debug_show (currentValue));
    }else{
      Debug.print("Amount too large , currentValue less than zero");
    }
  };

};
