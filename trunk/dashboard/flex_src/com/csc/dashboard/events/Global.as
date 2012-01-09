package com.csc.dashboard.events
{
	import org.as3commons.eventbus.impl.EventBus;

	public class Global
	{
		public function Global()
		{
		}
		
		public static var eventBus:EventBus = new EventBus();
		
		public static var verticalId:String;
		
		public static var verticalName:String;
		
		public static var accountId:String;
		
		public static var accountName:String;
		
		public static var currentMonth:String;
		
		public static var currentYear:String;
		
		public static function accountLabel():String{
			if(accountId != "0"){
				return accountName + " Account"; 
			}else if(verticalId != "0"){
				return verticalName + " Vertical";
			}else{
				return "All Verticals";
			}
			
		}
		
		
	}
}