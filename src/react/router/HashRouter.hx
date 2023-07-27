package react.router;

/*
* Avaliable for versions 4.0.0 and above
*/

#if (jsImport)
@:js.import('react-router-dom', 'HashRouter')
#else
@:jsRequire('react-router-dom', 'HashRouter')
#end
extern class HashRouter extends react.ReactComponent {}