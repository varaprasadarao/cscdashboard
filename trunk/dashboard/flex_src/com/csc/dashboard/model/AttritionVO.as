package com.csc.dashboard.model
{
	[Bindable]
	[RemoteClass(alias="com.csc.dashboard.domain.Attrition")]
	
	public class AttritionVO
	{
		
		public function AttritionVO()
		{
		}
		public var id:Number;
		public var month:String = "";
		public var attrNum:Number;
		public var openingHeadCount:Number;
		public var closingHeadCount:Number;
		public var cumulativeExits:Number;
		public var avgHeadCount:Number;
		public var cumulativeAnnAttr:Number;
	}
}