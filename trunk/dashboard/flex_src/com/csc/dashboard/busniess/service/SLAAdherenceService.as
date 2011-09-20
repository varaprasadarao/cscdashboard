package com.csc.dashboard.busniess.service
{
	import com.csc.dashboard.busniess.service.RemoteService;
	import mx.rpc.AsyncToken;
	
	public class SLAAdherenceService extends RemoteService
	{
		public function SLAAdherenceService()
		{
			super("slaAdherenceService", "slaAdherenceService");
		}
		
		
		public function getSLAAdherence(account:Number,month:Number,year:Number):AsyncToken {
			return remoteObject.getSLAAdherence(account, month, year);
		}
		
		
		
	}
}