package react.router;

#if (jsImport)
@:js.import('react-router-dom', 'IndexLink')
#else
@:jsRequire('react-router-dom', 'IndexLink')
#end
extern class IndexLink extends react.ReactComponent {}