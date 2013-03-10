package view
{
	import flash.display.Sprite;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormat;

	public class ViewOne extends Sprite
	{
		public function ViewOne()
		{
			// create bg
			graphics.beginFill(0xff00ff);
			graphics.drawRect(0, 0, 200, 200);
			graphics.endFill();

			// create a couple buttons to click
			var tf:TextFormat = new TextFormat("Verdana",12,"#000000",null,null,null,null,null,TextFieldAutoSize.CENTER,null,null,null,null);

			var btn1:BasicButton = new BasicButton("Pushy One", 75, 20, tf);
			btn1.name = "pushy1";
			btn1.y = 30;
			btn1.x = 20;
			addChild(btn1);

			var btn2:BasicButton = new BasicButton("Pushy Two", 75, 20, tf);
			btn2.name = "pushy2";
			btn2.y = 60;
			btn2.x = 20;
			addChild(btn2);
		}

	}
}
