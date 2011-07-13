package com.csc.dashboard.model
{
	[Bindable]
	[RemoteClass(alias="com.csc.dashboard.domain.User")]
	
	public class User
	{
		
		public function User()
		{
		}
		public var id:Number;
		
		public var name:String = "";
	}
}