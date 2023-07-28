package react.router;

/*
* Avaliable for versions 6.0.0 and above
*/

#if (jsImport)
@:js.import('react-router-dom', 'Navigate')
#else
@:jsRequire('react-router-dom', 'Navigate')
#end
extern class Navigate extends react.ReactComponent {}