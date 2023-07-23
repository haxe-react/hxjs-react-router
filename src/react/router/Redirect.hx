package react.router;

#if (jsImport)
@:js.import('react-router-dom', 'Redirect')
#else
@:jsRequire('react-router-dom', 'Redirect')
#end
extern class Redirect extends react.ReactComponent {}