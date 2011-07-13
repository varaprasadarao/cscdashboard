package com.csc.dashboard.events {
    import flash.events.Event;
    public class AuthenticationEvent extends Event{
        public static var AUTHENTICATION:String = "authentication";
        
        public static var NEEDS_AUTHENTICATION:String = "needs_authentication";

        public var message:String;

        public function AuthenticationEvent(eventType:String, message:String) {
            super(eventType, false, false);
            this.message = message;
        }
    }
}
