package view
{
	import behaviours.message.IMessageDisplayable;

	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormat;

	import flashx.textLayout.formats.TextAlign;

	public class ViewTwo extends Sprite implements IMessageDisplayable
	{
		private var textField:TextField;

		public function ViewTwo()
		{
			//create bg
			graphics.beginFill(0xffddff);
			graphics.drawRect(0, 0, 200, 200);
			graphics.endFill();

			// create our message field
			var tf:TextFormat = new TextFormat("Verdana",12,"#000000",null,null,null,null,null,TextAlign.LEFT,null,null,null,null);
			textField = new TextField();
			textField.x = 20;
			textField.y = 30;
			textField.selectable = false;
			textField.background = true;
			textField.backgroundColor = 0xc0c0c0;
			textField.autoSize = TextFieldAutoSize.RIGHT;
			textField.setTextFormat(tf);
			addChild(textField);
			message = "What button did I click?";
		}

		public function set message(value:String):void
		{
			textField.text = value;
		}
	}
}