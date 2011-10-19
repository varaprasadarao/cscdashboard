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
	
	public class BackgroundRenderer extends Label {
		
		override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number):void
		{
			super.updateDisplayList(unscaledWidth, unscaledHeight);
			var g:Graphics = graphics;
			g.clear();
			var grid1:DataGrid = DataGrid(DataGridListData(listData).owner);
//			if (grid1.isItemSelected(data) || grid1.isItemHighlighted(data))
//				return;
			if (data[DataGridListData(listData).dataField] == 'High' || data[DataGridListData(listData).dataField] == 'Good' || data[DataGridListData(listData).dataField] == '4' || data[DataGridListData(listData).dataField] == '5') 
			{
				g.beginFill(0x54C571);
				g.drawRect(0, 0, unscaledWidth, unscaledHeight);
				g.endFill();
			}else if(data[DataGridListData(listData).dataField] == 'Medium' || data[DataGridListData(listData).dataField] == '3' || data[DataGridListData(listData).dataField] == '2' || data[DataGridListData(listData).dataField] == '1'){
				g.beginFill(0xEAC117);
				g.drawRect(0, 0, unscaledWidth, unscaledHeight);
				g.endFill();
			}
				
		}
		
	}
}
