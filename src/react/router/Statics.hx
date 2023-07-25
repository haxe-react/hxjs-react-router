package react.router;

import react.router.Types;

#if (jsImport)
@:js.import(@default 'react-router-dom')
#else
@:jsRequire('react-router-dom')
#end
extern class Statics {
	static public var hashHistory:HashHistory;
	static public var browserHistory:BrowserHistory;
	static public var withRouter:Dynamic->Dynamic;
}
