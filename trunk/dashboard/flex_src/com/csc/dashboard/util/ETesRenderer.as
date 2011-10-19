package com.csc.dashboard.util
{
	import flash.display.Graphics;
	
	import mx.controls.DataGrid;
	import mx.controls.Label;
	import mx.controls.Text;
	import mx.controls.TextArea;
	import mx.controls.dataGridClasses.*;
	import mx.styles.StyleManager;
	
	[Style(name="backgroundColor", type="uint", format="Color", inherit="no")]
	
	public class ETesRenderer extends Label {
		
		override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number):void
		{
			super.updateDisplayList(unscaledWidth, unscaledHeight);
			var g:Graphics = graphics;
			g.clear();
			var grid1:DataGrid = DataGrid(DataGridListData(listData).owner);
			//			if (grid1.isItemSelected(data) || grid1.isItemHighlighted(data))
			//				return;
			if (data[DataGridListData(listData).dataField] == '100') 
			{
				g.beginFill(0x54C571);
				g.drawRect(0, 0, unscaledWidth, unscaledHeight);
				g.endFill();
			}else{
				g.beginFill(0xF87431);
				g.drawRect(0, 0, unscaledWidth, unscaledHeight);
				g.endFill();
			}
			
		}
		
	}
}
