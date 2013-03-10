package behaviours.button
{
	import events.DisplayMessageEvent;

	import flash.events.MouseEvent;

	import robotlegs.bender.bundles.mvcs.Mediator;

	public class ButtonClickController extends Mediator
	{
		[Inject]
		public var view:IButtonClickable;

		override public function initialize():void
		{
			addViewListener(MouseEvent.CLICK, handleMouseClick);
		}

		private function handleMouseClick(event:MouseEvent):void
		{
			dispatch(new DisplayMessageEvent(DisplayMessageEvent.MESSAGE_DISPATCHED, "Button Clicked: " + view.name));
		}
	}
}