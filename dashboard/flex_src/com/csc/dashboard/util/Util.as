package com.csc.dashboard.util
{
	import mx.collections.ArrayCollection;

	public class Util
	{
		public function Util()
		{
		}
		
		public static const monthArr:ArrayCollection = new ArrayCollection(["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"]);
		
		public static function getFormatedMonth(num:Number) : String{
			var month:Number = num%12;
			var year:int = num/12;
			return monthArr[month] + " " + year; 
			
		}
	}
}