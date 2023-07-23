package react.router;

#if (jsImport)
@:js.import('react-router-dom', 'IndexRoute')
#else
@:jsRequire('react-router-dom', 'IndexRoute')
#end
extern class IndexRoute extends react.ReactComponent {}