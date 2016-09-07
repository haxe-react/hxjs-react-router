package react;

@:jsRequire('react-router')
extern class ReactRouter {
	static public var hashHistory:Dynamic;
	static public var browserHistory:BrowserHistory;
	static public var withRouter:Dynamic->Dynamic;
}

extern class BrowserHistory {
	public function push(path:String):Void;
}

@:jsRequire('react-router','Link')
extern class Link {}

@:jsRequire('react-router','Redirect')
extern class Redirect {}

@:jsRequire('react-router','Route')
extern class Route {}

@:jsRequire('react-router','Router')
extern class Router {}

@:jsRequire('react-router','IndexRoute')
extern class IndexRoute {}

@:jsRequire('react-router','IndexRedirect')
extern class IndexRedirect {}

typedef RoutePropsOfParams<P> = RoutePropsOf<P, Dynamic>; 
typedef RoutePropsOfQuery<Q> = RoutePropsOf<Dynamic, Q>; 

typedef RoutePropsOf<P, Q> = {
	params:P,
	location:{
		query:Q,
	}
}