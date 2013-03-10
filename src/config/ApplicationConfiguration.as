package config
{
	import behaviours.button.ButtonClickController;
	import behaviours.button.IButtonClickable;
	import behaviours.message.IMessageDisplayable;
	import behaviours.message.DisplayableMessageMediator;
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
			mediatorMap.map( IButtonClickable ).toMediator( ButtonClickController );
			mediatorMap.map( IMessageDisplayable ).toMediator( DisplayableMessageMediator );
		}
	}
}
