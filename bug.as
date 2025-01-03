```actionscript
// Unexpected behavior when using the Timer class with a very short interval.

import flash.utils.Timer;
import flash.events.TimerEvent;

var myTimer:Timer = new Timer(1, 1000);
myTimer.addEventListener(TimerEvent.TIMER, timerHandler);
myTimer.start();

function timerHandler(event:TimerEvent):void {
  trace("Timer event fired!");
}
```