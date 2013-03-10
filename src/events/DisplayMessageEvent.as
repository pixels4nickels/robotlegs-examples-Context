package events
{
	import flash.events.Event;

	public class DisplayMessageEvent extends Event
	{
		public static const MESSAGE_DISPATCHED:String = "messageDispatched";

		private var _message:String;

		public function get message():String
		{
			return _message;
		}

		public function DisplayMessageEvent(type:String, message:String, bubbles:Boolean = false, cancelable:Boolean = false)
		{
			super(type, bubbles, cancelable);
			_message = message;
		}

		override public function clone():Event
		{
			return new DisplayMessageEvent(type, message, bubbles, cancelable)
		}
	}
}