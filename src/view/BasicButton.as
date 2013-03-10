package view
{
	import behaviours.button.IButtonClickable;

	import flash.display.SimpleButton;
	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.text.TextFormat;

	public class BasicButton extends Sprite implements IButtonClickable
	{
		private var _upColor:uint = 0xFFCC00;
		private var _overColor:uint = 0xCCFF00;
		private var _downColor:uint = 0x00CCFF;
		private var _label:TextField;
		private var _button:SimpleButton;

		public function BasicButton(label:String, w:uint, h:uint, tf:TextFormat = null)
		{
			_label = new TextField();
			with(_label)
			{
				text = label;
				selectable = false;
				//embedFonts = true;
				x = y = 0;
				width = w;
				height = h;
				selectable = false;
				mouseEnabled = false;
				if (tf)
				{
					setTextFormat(tf);
				}
			}
			_button = new SimpleButton();
			with(_button)
			{
				downState = new ButtonDisplayState(_downColor, w, h);
				overState = new ButtonDisplayState(_overColor, w, h);
				upState = new ButtonDisplayState(_upColor, w, h);
				hitTestState = new ButtonDisplayState(_upColor, w, h);
				useHandCursor = true;
			}
			mouseChildren = true;
			addChild(_button);
			addChild(_label);
		}

		public function set upColor(value:uint):void
		{
			_upColor = value;
			_button.upState = new ButtonDisplayState(_upColor, width, height);
		}

		public function set overColor(value:uint):void
		{
			_overColor = value;
			_button.overState = new ButtonDisplayState(_overColor, width, height);
		}

		public function set downColor(value:uint):void
		{
			_downColor = value;
			_button.downState = new ButtonDisplayState(_downColor, width, height);
		}
	}
}

import flash.display.Sprite;

class ButtonDisplayState extends Sprite
{
	public function ButtonDisplayState(bgColor:uint, w:uint, h:uint)
	{
		graphics.beginFill(bgColor);
		graphics.drawRect(0, 0, w, h);
		graphics.endFill();
	}
}