package behaviours.message
{
import events.DisplayMessageEvent;

import robotlegs.bender.bundles.mvcs.Mediator;

	public class MessageMediator extends Mediator
	{
		[Inject]
		public var view:IMessageDisplayable;

		override public function initialize():void
		{
			addContextListener(DisplayMessageEvent.MESSAGE_DISPATCHED, handleMessage)
		}

		private function handleMessage(event:DisplayMessageEvent):void
		{
			view.message = event.message;
		}
	}
}
