package react.router;

/*
* Avaliable for versions 6.0.0 and above
*/

#if (jsImport)
@:js.import('react-router-dom', 'Routes')
#else
@:jsRequire('react-router-dom', 'Routes')
#end
extern class Routes extends react.ReactComponent {}