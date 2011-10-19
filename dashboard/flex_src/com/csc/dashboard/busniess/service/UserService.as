package com.csc.dashboard.busniess.service
{
	import com.csc.dashboard.busniess.service.RemoteService;
	import com.csc.dashboard.model.User;
	
	import mx.rpc.AsyncToken;
	
	public class UserService extends RemoteService
	{
		
		private var user:User = new User();

		
		public function UserService()
		{
			super("userInfo", "userInfo");
		}
		
		public function getData():AsyncToken {
			return remoteObject.getData();
		}
		
		public function getUserName():AsyncToken{
			return remoteObject.getUserName();	
		}
	}
}