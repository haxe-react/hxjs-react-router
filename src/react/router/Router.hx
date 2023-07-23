package react.router;

#if (jsImport)
@:js.import('react-router-dom', 'Router')
#else
@:jsRequire('react-router-dom', 'Router')
#end
extern class Router extends react.ReactComponent {}