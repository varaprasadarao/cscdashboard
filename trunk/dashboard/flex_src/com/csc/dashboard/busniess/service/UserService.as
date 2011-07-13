package com.csc.dashboard.busniess.service
{
	import com.csc.dashboard.busniess.service.RemoteService;
	import mx.rpc.AsyncToken;
	import com.csc.dashboard.model.User;
	
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
	}
}