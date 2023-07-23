package react.router;

#if (jsImport)
@:js.import('react-router-dom', 'RouterContext')
#else
@:jsRequire('react-router-dom', 'RouterContext')
#end
extern class RouterContext extends react.ReactComponent {}