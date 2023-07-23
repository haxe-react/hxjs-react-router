package react.router;

#if (jsImport)
@:js.import('react-router-dom', 'IndexRedirect')
#else
@:jsRequire('react-router-dom', 'IndexRedirect')
#end
extern class IndexRedirect extends react.ReactComponent {}