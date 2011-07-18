package com.csc.dashboard.busniess.service
{
	import com.csc.dashboard.busniess.service.RemoteService;
	import mx.rpc.AsyncToken;
	
	public class OpExcelService extends RemoteService
	{
		public function OpExcelService()
		{
			super("opExcelService", "opExcelService");
		}
		
		
		public function getNonBillability(account:Number,month:Number,year:Number):AsyncToken {
			return remoteObject.getNonBillability(account, month, year);
		}
		
		public function getEManageDisc(account:Number,month:Number,year:Number):AsyncToken {
			return remoteObject.getEManageDisc(account, month, year);
		}
		
		public function getDemandForecast(account:Number,month:Number,year:Number):AsyncToken {
			return remoteObject.getDemandForecast(account, month, year);
		}
		
		public function getETesAccuracy(account:Number,month:Number,year:Number):AsyncToken {
			return remoteObject.getETesAccuracy(account, month, year);
		}
		
		public function getBillingEfficieny(account:Number,month:Number,year:Number):AsyncToken {
			return remoteObject.getBillingEfficieny(account, month, year);
		}
		
		public function getGradeMix(account:Number,month:Number,year:Number):AsyncToken {
			return remoteObject.getGradeMix(account, month, year);
		}
		
		public function getUtilization(account:Number,month:Number,year:Number):AsyncToken {
			return remoteObject.getUtilization(account, month, year);
		}
		
		public function getEscalation(account:Number,month:Number,year:Number):AsyncToken {
			return remoteObject.getEscalation(account, month, year);
		}
		
		public function getMargins(account:Number,month:Number,year:Number):AsyncToken {
			return remoteObject.getMargins(account, month, year);
		}
		
	}
}