package com.csc.dashboard.events {
	import flash.events.Event;
	public class AccountChangedEvent extends Event{
		public static var ACCOUNTCHANGED:String = "accountChanged";
		
		public var message:String;
		public var accountId:String;
		public var verticalId:String;
		
		public function AccountChangedEvent(eventType:String, accountId:String, verticalId:String) {
			super(eventType, false, false);
			this.accountId = accountId;
			this.verticalId = verticalId;
		}
	}
}
