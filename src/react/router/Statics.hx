package react.router;

import react.router.Types;

@:jsRequire('react-router')
extern class Statics {
	static public var hashHistory:HashHistory;
	static public var browserHistory:BrowserHistory;
	static public var withRouter:Dynamic->Dynamic;
}
