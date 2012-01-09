package com.csc.dashboard.busniess.service
{
	
	import com.csc.dashboard.events.AuthenticationFailureEvent;
	import com.csc.dashboard.events.RemoteExceptionEvent;
	
	import mx.rpc.events.FaultEvent;
	import mx.rpc.remoting.RemoteObject;
	import mx.core.FlexGlobals;
	import mx.controls.Alert;
	
	/**
	 * Super class for all remote services that contains some generic methods.
	 */
	public class RemoteService {
		private static var BAD_CREDENTIALS:String =
			"org.springframework.security.BadCredentialsException : Bad credentials";
		
		protected var remoteObject:RemoteObject;
		
		/**
		 * Constructor accepting an id and destination for the actual RemoteObject to create. An event listener
		 * is added for exceptions.
		 * @param id String representing the id of the new RemoteObject to create
		 * @param destination String representing the destination of the RemoteObject to create
		 */
		public function RemoteService(id:String, destination:String) {
			this.remoteObject = new RemoteObject(id);
			this.remoteObject.destination = destination;
			this.remoteObject.addEventListener(FaultEvent.FAULT,onRemoteException);
		}
		
		/**
		 * generic fault event handler for all remote object actions. based on the received message an action
		 * is taken, mostly throwing a new event.
		 * @param event FaultEvent received for handling
		 */
		public function onRemoteException(event:FaultEvent):void {
			Alert.show('code : ' + event.fault.faultCode +
				', message : ' + event.fault.faultString +
				',detail : ' + event.toString());
			
			if (event.fault.faultString == BAD_CREDENTIALS) {
				FlexGlobals.topLevelApplication.dispatchEvent(
					new AuthenticationFailureEvent(AuthenticationFailureEvent.AUTHENTICATION_FAILURE,
						"Invalid ID or password."))
			} else {
				FlexGlobals.topLevelApplication.dispatchEvent(
					new RemoteExceptionEvent(RemoteExceptionEvent.REMOTE_EXCEPTION,
						"unknown problem occurred during a remote call : " + event.fault.message));
			}
		}
	}
}