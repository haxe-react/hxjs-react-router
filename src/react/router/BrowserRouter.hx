package react.router;

/*
* Avaliable for versions 4.0.0 and above
*/

#if (jsImport)
@:js.import('react-router-dom', 'BrowserRouter')
#else
@:jsRequire('react-router-dom', 'BrowserRouter')
#end
extern class BrowserRouter extends react.ReactComponent {}