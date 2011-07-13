package com.csc.dashboard.busniess.service
{
	import com.csc.dashboard.busniess.service.RemoteService;
	import mx.rpc.AsyncToken;
	
	public class TeamDevelopmentService extends RemoteService
	{
		public function TeamDevelopmentService()
		{
			super("teamDevService", "teamDevService");
		}
		
		public function getAttrition(account:Number,startMonth:Number,startYear:Number):AsyncToken {
			return remoteObject.getAttrition(account, startMonth, startYear);
		}
		
		public function getBackfillInfo(account:Number,month:Number,year:Number):AsyncToken {
			return remoteObject.getBackfillInfo(account, month, year);
		}
		
		public function getRepresentation(account:Number,month:Number,year:Number):AsyncToken {
			return remoteObject.getRepresentation(account, month, year);
		}
		
		public function getTeamBuildingAct(account:Number,month:Number,year:Number):AsyncToken {
			return remoteObject.getTeamBuildingAct(account, month, year);
		}
		
		public function getResourceRotation(account:Number,month:Number,year:Number):AsyncToken {
			return remoteObject.getResourceRotation(account, month, year);
		}
		
				
		
	}
}