```actionscript
// Workaround using setInterval and clearInterval for more precise timing control.

import flash.utils.getTimer;

var startTime:int = getTimer();
var interval:int = 1;
var timerId:int;

timerId = setInterval(timerHandler, interval);

function timerHandler():void {
  var elapsedTime:int = getTimer() - startTime;
  if (elapsedTime >= interval) {
    trace("Timer event fired!");
    startTime = getTimer();
  }
}

//To stop the timer:
// clearInterval(timerId);
```