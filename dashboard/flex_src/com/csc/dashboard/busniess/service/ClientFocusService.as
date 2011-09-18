package com.csc.dashboard.busniess.service
{
	import com.csc.dashboard.busniess.service.RemoteService;
	import mx.rpc.AsyncToken;
	
	public class ClientFocusService extends RemoteService
	{
		public function ClientFocusService()
		{
			super("clientFocusService", "clientFocusService");
		}
		
		
		public function getClientAppreciation(account:Number,month:Number,year:Number):AsyncToken {
			return remoteObject.getClientAppreciation(account, month, year);
		}
		
		public function getCSAT(account:Number,month:Number,year:Number):AsyncToken {
			return remoteObject.getCSAT(account, month, year);
		}
		
		public function getNewOrderClosed(account:Number,month:Number,year:Number):AsyncToken {
			return remoteObject.getNewOrderClosed(account, month, year);
		}
		
		public function getInnovations(account:Number,month:Number,year:Number):AsyncToken {
			return remoteObject.getInnovations(account, month, year);
		}
		
		public function getAssessments(account:Number,month:Number,year:Number):AsyncToken {
			return remoteObject.getAssessments(account, month, year);
		}
		
		public function getImprovementInitiatives(account:Number,month:Number,year:Number):AsyncToken {
			return remoteObject.getImprovementInitiatives(account, month, year);
		}
		
		public function getKMScorecard(account:Number,month:Number,year:Number):AsyncToken {
			return remoteObject.getKMScorecard(account, month, year);
		}
		
		public function getTop10Contributors(account:Number,month:Number,year:Number):AsyncToken {
			return remoteObject.getTop10Contributors(account, month, year);
		}
		
		public function getVerticalLevelInitiatives(account:Number,month:Number,year:Number):AsyncToken {
			return remoteObject.getVerticalLevelInitiatives(account, month, year);
		}
		
	}
}