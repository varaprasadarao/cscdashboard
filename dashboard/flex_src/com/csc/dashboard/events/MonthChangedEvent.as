package com.csc.dashboard.events {
	import flash.events.Event;
	public class MonthChangedEvent extends Event{
		public static var MONTHCHANGED:String = "monthChanged";
		
		public var message:String;
		public var monthId:int;
		public var yearId:int;
		
		public function MonthChangedEvent(eventType:String, monthId:int, yearId:int) {
			super(eventType, false, false);
			this.monthId = monthId;
			this.yearId = yearId;
		}
	}
}
