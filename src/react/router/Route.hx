package react.router;

#if (jsImport)
@:js.import('react-router-dom', 'Route')
#else
@:jsRequire('react-router-dom', 'Route')
#end
extern class Route extends react.ReactComponent {}