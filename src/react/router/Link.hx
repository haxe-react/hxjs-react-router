package react.router;

#if (jsImport)
@:js.import('react-router-dom', 'Link')
#else
@:jsRequire('react-router-dom', 'Link')
#end
extern class Link extends react.ReactComponent {}