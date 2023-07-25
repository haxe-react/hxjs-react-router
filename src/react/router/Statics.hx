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

	static public function useLocation<Q>():Location<Q>; // Avaliable for versions 4.0.0 and above
    static public function useHistory():HashHistory; // Avaliable for versions 4.0.0 and above
}
