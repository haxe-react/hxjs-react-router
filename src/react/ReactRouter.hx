package react;

@:jsRequire('react-router')
extern class ReactRouter {
	static public var hashHistory:Dynamic;
	static public var browserHistory:Dynamic;
	static public var withRouter:Dynamic->Dynamic;
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