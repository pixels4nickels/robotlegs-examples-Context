package
{
	import config.ApplicationConfiguration;

	import flash.display.Sprite;

	import robotlegs.bender.bundles.mvcs.MVCSBundle;
	import robotlegs.bender.extensions.contextView.ContextView;
	import robotlegs.bender.framework.api.IContext;
	import robotlegs.bender.framework.impl.Context;

	import view.ViewOne;
	import view.ViewTwo;

	public class Main extends Sprite
	{
		private var _context:IContext;
		private var _viewOne:ViewOne;
		private var _viewTwo:ViewTwo;

		public function Main()
		{
			_context = new Context();
			_context.afterInitializing(init);
			_context.install(MVCSBundle);
			_context.configure(ApplicationConfiguration, this);
			_context.configure(new ContextView(this));
		}

		private function init():void
		{
			_viewOne = new ViewOne();
			_viewOne.x = 0;
			_viewOne.y = 0;
			addChild(_viewOne);

			_viewTwo = new ViewTwo();
			_viewTwo.x = 200;
			_viewTwo.y = 0;
			addChild(_viewTwo);
		}
	}
}
