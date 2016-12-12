package react.router;

import haxe.extern.EitherType;
import haxe.Constraints;
import react.ReactComponent;

#if (haxe_ver <= 3.3)
typedef Any = Dynamic;
#end

typedef HashHistory = Router<Any, Any>;
typedef BrowserHistory = Router<Any, Any>;
typedef RouteProps = RoutePropsOf<Any, Any>;
typedef RoutePropsOfParams<P> = RoutePropsOf<P, Any>; 
typedef RoutePropsOfQuery<Q> = RoutePropsOf<Any, Q>; 

typedef RoutePropsOf<P, Q> = {
	route:Route<P, Q>,
	router:Router<P, Q>,
	params:Params<P>,
	location:Location<Q>,
}

private typedef Object = Any;
@:enum
private abstract Action(String) {
	var Push = 'PUSH';
	var Replace = 'REPLACE';
	var Pop = 'POP';
}
private typedef Component = EitherType<Class<ReactComponent>, String>;
private typedef EnterHook<P, Q> = RouterState<P, Q>->RedirectFunction<Q>->?Function->Any;
private typedef Hash = String;
private typedef LeaveHook<P, Q> = RouterState<P, Q>->Any;
private typedef Location<Q> = {
	pathname:Pathname,
	search:QueryString,
	query:Query<Q>,
	state:LocationState,
	action:Action,
	key:LocationKey,
};
private typedef LocationDescriptorObject<Q> = {
	pathname:Pathname,
	search:QueryString,
	query:Query<Q>,
	state:LocationState,
};
private typedef LocationDescriptor<Q> = EitherType<LocationDescriptorObject<Q>, Path>;
private typedef LocationKey = String;
private typedef LocationState = Object;
private typedef Params<T> = T;
private typedef Path = String; // Pathname + QueryString + Hash;
private typedef Pathname = String;
private typedef Query<T> = T;
private typedef QueryString = String;
private typedef RedirectFunction<Q> = ?LocationState->EitherType<Pathname, Path>->?Query<Q>->Void;

private typedef Route<P, Q> = {
	component:RouteComponent,
	?path:RoutePattern,
	?onEnter:EnterHook<P, Q>,
	?onLeave:LeaveHook<P, Q>,
}

private typedef RouteComponent = Component;
private typedef RouteConfig<P, Q> = Array<Route<P, Q>>;
private typedef RouteHook<Q> = ?Location<Q>->Any;
private typedef RoutePattern = String;
private typedef Router<P, Q> = {
	push:LocationDescriptor<Q>->Void,
	replace:LocationDescriptor<Q>->Void,
	go:Int->Void,
	goBack:Void->Void,
	goForward:Void->Void,
	setRouteLeaveHook:Route<P, Q>->RouteHook<Q>->Function,
	isActive:LocationDescriptor<Q>->Bool->Void,
}
private typedef RouterState<P, Q> = {
	location:Location<Q>,
	routes:Array<Route<P, Q>>,
	params:Params<P>,
	components:Array<Component>,
}