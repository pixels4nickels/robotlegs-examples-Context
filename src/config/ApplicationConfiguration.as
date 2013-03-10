package config
{
	import behaviours.button.ButtonMediator;
	import behaviours.button.IButtonClickable;
	import behaviours.message.IMessageDisplayable;
	import behaviours.message.MessageMediator;
	import org.swiftsuspenders.Injector;

	import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;

	public class ApplicationConfiguration
	{

		[Inject]
		public var mediatorMap:IMediatorMap;

		[Inject]
		public var injector:Injector;

		[PostConstruct]
		public function configure():void
		{
			mediatorMap.map( IButtonClickable ).toMediator( ButtonMediator );
			mediatorMap.map( IMessageDisplayable ).toMediator( MessageMediator );
		}
	}
}
