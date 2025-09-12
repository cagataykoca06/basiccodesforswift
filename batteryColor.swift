var currentColor = "green"  

func batteryInterface(percentage: Int, batteryColor: inout String) {
  if percentage < 5 {
    batteryColor = "red"
  } else if percentage < 15 {
    batteryColor = "yellow"
  } else {
    batteryColor = "green"
  }  
}


// for calling:
// batteryInterface(percentage: 12, batteryColor: &currentColor)
