package react.router;

import haxe.extern.EitherType;
import haxe.Constraints;
import react.ReactComponent;

typedef HashHistory = Router;
typedef BrowserHistory = Router;
typedef RoutePropsOfParams<P> = RoutePropsOf<P, Dynamic>; 
typedef RoutePropsOfQuery<Q> = RoutePropsOf<Dynamic, Q>; 

typedef RoutePropsOf<P, Q> = {
	params:P,
	location:{
		query:Q,
	}
}

private typedef Object = Dynamic;
@:enum
private abstract Action(String) {
	var Push = 'PUSH';
	var Replace = 'REPLACE';
	var Pop = 'POP';
}
private typedef Component = EitherType<Class<ReactComponent>, String>;
private typedef EnterHook = RouterState->RedirectFunction->?Function->Any;
private typedef Hash = String;
private typedef LeaveHook = RouterState->Any;
private typedef Location = {
	pathname:Pathname,
	search:QueryString,
	query:Query,
	state:LocationState,
	action:Action,
	key:LocationKey,
};
private typedef LocationDescriptorObject = {
	pathname:Pathname,
	search:QueryString,
	query:Query,
	state:LocationState,
};
private typedef LocationDescriptor = EitherType<LocationDescriptorObject, Path>;
private typedef LocationKey = String;
private typedef LocationState = Object;
private typedef Params = Object;
private typedef Path = String; // Pathname + QueryString + Hash;
private typedef Pathname = String;
private typedef Query = Object;
private typedef QueryString = String;
private typedef RedirectFunction = ?LocationState->EitherType<Pathname, Path>->?Query->Void;

private typedef Route = {
	component:RouteComponent,
	?path:RoutePattern,
	?onEnter:EnterHook,
	?onLeave:LeaveHook,
}

private typedef RouteComponent = Component;
private typedef RouteConfig = Array<Route>;
private typedef RouteHook = ?Location->Any;
private typedef RoutePattern = String;
private typedef Router = {
	push:LocationDescriptor->Void,
	replace:LocationDescriptor->Void,
	go:Int->Void,
	goBack:Void->Void,
	goForward:Void->Void,
	setRouteLeaveHook:Route->RouteHook->Function,
	isActive:LocationDescriptor->Bool->Void,
}
private typedef RouterState = {
	location:Location,
	routes:Array<Route>,
	params:Params,
	components:Array<Component>,
}