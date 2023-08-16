!function(e){var l={};function a(t){if(l[t])return l[t].exports;var n=l[t]={i:t,l:!1,exports:{}};return e[t].call(n.exports,n,n.exports,a),n.l=!0,n.exports}a.m=e,a.c=l,a.d=function(e,l,t){a.o(e,l)||Object.defineProperty(e,l,{enumerable:!0,get:t})},a.r=function(e){"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(e,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(e,"__esModule",{value:!0})},a.t=function(e,l){if(1&l&&(e=a(e)),8&l)return e;if(4&l&&"object"==typeof e&&e&&e.__esModule)return e;var t=Object.create(null);if(a.r(t),Object.defineProperty(t,"default",{enumerable:!0,value:e}),2&l&&"string"!=typeof e)for(var n in e)a.d(t,n,function(l){return e[l]}.bind(null,n));return t},a.n=function(e){var l=e&&e.__esModule?function(){return e.default}:function(){return e};return a.d(l,"a",l),l},a.o=function(e,l){return Object.prototype.hasOwnProperty.call(e,l)},a.p="",a(a.s=10)}([function(e,l){!function(){e.exports=this.wp.element}()},function(e,l){!function(){e.exports=this.wp.i18n}()},function(e,l){!function(){e.exports=this.wp.components}()},function(e,l){!function(){e.exports=this.wp.blockEditor}()},function(e,l){function a(l){return e.exports=a=Object.setPrototypeOf?Object.getPrototypeOf:function(e){return e.__proto__||Object.getPrototypeOf(e)},a(l)}e.exports=a},function(e,l){e.exports=function(e,l){if(!(e instanceof l))throw new TypeError("Cannot call a class as a function")}},function(e,l){function a(e,l){for(var a=0;a<l.length;a++){var t=l[a];t.enumerable=t.enumerable||!1,t.configurable=!0,"value"in t&&(t.writable=!0),Object.defineProperty(e,t.key,t)}}e.exports=function(e,l,t){return l&&a(e.prototype,l),t&&a(e,t),e}},function(e,l,a){var t=a(11);e.exports=function(e,l){if("function"!=typeof l&&null!==l)throw new TypeError("Super expression must either be null or a function");e.prototype=Object.create(l&&l.prototype,{constructor:{value:e,writable:!0,configurable:!0}}),l&&t(e,l)}},function(e,l,a){var t=a(12),n=a(13);e.exports=function(e,l){return!l||"object"!==t(l)&&"function"!=typeof l?n(e):l}},function(e,l){!function(){e.exports=this.wp.blocks}()},function(e,l,a){"use strict";a.r(l);var t=a(5),n=a.n(t),u=a(6),i=a.n(u),o=a(7),b=a.n(o),r=a(8),s=a.n(r),c=a(4),v=a.n(c),d=a(0),p=a(1),f=a(9),m=a(3),O=a(2);function _(e){var l=function(){if("undefined"==typeof Reflect||!Reflect.construct)return!1;if(Reflect.construct.sham)return!1;if("function"==typeof Proxy)return!0;try{return Date.prototype.toString.call(Reflect.construct(Date,[],(function(){}))),!0}catch(e){return!1}}();return function(){var a,t=v()(e);if(l){var n=v()(this).constructor;a=Reflect.construct(t,arguments,n)}else a=t.apply(this,arguments);return s()(this,a)}}var g=wp.element.Component;Object(f.registerBlockType)("eds/animate-it-block",{title:Object(p.__)("Animate It!","eds-animate"),icon:Object(d.createElement)("svg",{version:"1.1",id:"Layer_1",xmlns:"http://www.w3.org/2000/svg",x:"0px",y:"0px",viewBox:"0 0 150 150"},Object(d.createElement)("circle",{fill:"#EF3824",cx:"75.3",cy:"74.7",r:"60"}),Object(d.createElement)("g",null,Object(d.createElement)("path",{fill:"#FFFFFF",d:"M54.8,87.3c0-0.5,0.2-0.8,0.5-1.1l32.3-32.3c0.3-0.3,0.7-0.5,1.1-0.5s0.8,0.2,1.1,0.5l5,5 c0.3,0.3,0.5,0.7,0.5,1.1s-0.2,0.8-0.5,1.1L62.5,93.4c-0.3,0.3-0.7,0.5-1.1,0.5c-0.5,0-0.8-0.2-1.1-0.5l-5-5 C55,88.1,54.8,87.7,54.8,87.3z M57.4,55.9l2.5-0.8l0.8-2.5l0.8,2.5l2.5,0.8l-2.5,0.8l-0.8,2.5l-0.8-2.5L57.4,55.9z M62.2,60.7 l4.9-1.5l1.5-4.9l1.5,4.9l4.9,1.5l-4.9,1.5l-1.5,4.9l-1.5-4.9L62.2,60.7z M73.4,55.9l2.5-0.8l0.8-2.5l0.8,2.5l2.5,0.8l-2.5,0.8 l-0.8,2.5l-0.8-2.5L73.4,55.9z M81.3,64.6l2.7,2.7l7.4-7.4l-2.7-2.7L81.3,64.6z M89.5,72l2.5-0.8l0.8-2.5l0.8,2.5l2.5,0.8l-2.5,0.8 l-0.8,2.5L92,72.7L89.5,72z"}))),category:"layout",attributes:{entry_animation_type:{type:"string",default:"fadeIn"},entry_delay:{type:"string",default:"0"},setAttributes:{type:"string"},entry_duration:{type:"string",default:"0.5"},custom_entry_duration:{type:"string"},entry_timing:{type:"string",default:"linear"},exit_animation_type:{type:"string",default:""},exit_delay:{type:"string",default:"0"},custom_exit_delay:{type:"string"},exit_duration:{type:"string",default:"0.5"},custom_exit_duration:{type:"string"},exit_timing:{type:"string",default:"linear"},animation_repeat:{type:"string",default:"1"},custom_animation_repeat:{type:"string"},keep:{type:"string",default:"yes"},animate_on:{type:"string",default:"load"},scroll_offset:{type:"string"},custom_css_class:{type:"string"}},edit:function(e){b()(a,e);var l=_(a);function a(e){var t;return n()(this,a),(t=l.apply(this,arguments)).props=e,t}return i()(a,[{key:"render",value:function(){var e=this,l=this.props.attributes,a=(l=void 0===l?{}:l).entry_animation_type,t=void 0===a?"":a,n=l.entry_delay,u=void 0===n?"":n,i=l.custom_entry_delay,o=void 0===i?"":i,b=l.entry_duration,r=void 0===b?"":b,s=l.custom_entry_duration,c=void 0===s?"":s,v=l.entry_timing,f=void 0===v?"":v,_=l.exit_animation_type,g=void 0===_?"":_,w=l.exit_delay,I=void 0===w?"":w,y=l.custom_exit_delay,h=void 0===y?"":y,E=l.exit_duration,z=void 0===E?"":E,j=l.custom_exit_duration,x=void 0===j?"":j,k=l.exit_timing,C=void 0===k?"":k,B=l.animation_repeat,R=void 0===B?"":B,S=l.custom_animation_repeat,L=void 0===S?"":S,D=l.keep,F=void 0===D?"":D,T=l.animate_on,U=void 0===T?"":T,A=l.scroll_offset,Q=void 0===A?"":A,M=l.custom_css_class,P=void 0===M?"":M,N=[{value:"",label:Object(p.__)("None","eds-animate")},{value:null,label:"Bouncing Exits",disabled:!0},{value:"bounceOut",label:"BounceOut"},{value:"bounceOutDown",label:"BounceOutDown"},{value:"bounceOutLeft",label:"BounceOutLeft"},{value:"bounceOutRight",label:"BounceOutRight"},{value:"bounceOutUp",label:"BounceOutUp"},{value:null,label:"Fading Exits",disabled:!0},{value:"fadeOut",label:"FadeOut"},{value:"fadeOutDown",label:"FadeOutDown"},{value:"fadeOutDownBig",label:"FadeOutDownBig"},{value:"fadeOutLeft",label:"FadeOutLeft"},{value:"fadeOutLeftBig",label:"FadeOutLeftBig"},{value:"fadeOutRight",label:"FadeOutRight"},{value:"fadeOutRightBig",label:"FadeOutRightBig"},{value:"fadeOutUp",label:"FadeOutUp"},{value:"fadeOutUpBig",label:"FadeOutUpBig"},{value:null,label:"Rotating Exits",disabled:!0},{value:"rotateOut",label:"rotateOut"},{value:"rotateOutDownLeft",label:"rotateOutDownLeft"},{value:"rotateOutDownRight",label:"rotateOutDownRight"},{value:"rotateOutUpLeft",label:"rotateOutUpLeft"},{value:"rotateOutUpRight",label:"rotateOutUpRight"},{value:null,label:"Sliding Exits",disabled:!0},{value:"slideOutUp",label:"slideOutUp"},{value:"slideOutDown",label:"slideOutDown"},{value:"slideOutLeft",label:"slideOutLeft"},{value:"slideOutRight",label:"slideOutRight"},{value:null,label:"Zoom Exits",disabled:!0},{value:"zoomOut",label:"zoomOut"},{value:"zoomOutDown",label:"zoomOutDown"},{value:"zoomOutLeft",label:"zoomOutLeft"},{value:"zoomOutRight",label:"zoomOutRight"},{value:"zoomOutUp",label:"zoomOutUp"},{value:null,label:"Attention Seekers",disabled:!0},{value:"spinner",label:"Spin"},{value:"bounce",label:"bounce"},{value:"flash",label:"flash"},{value:"rubberBand",label:"rubberBand"},{value:"shake",label:"shake"},{value:"swing",label:"swing"},{value:"tada",label:"tada"},{value:"wobble",label:"wobble"},{value:"jello",label:"jello"},{value:"wiggle",label:"wiggle"},{value:"fade",label:"fade"},{value:"appear",label:"appear"},{value:"grow",label:"grow"},{value:"shrink",label:"shrink"},{value:"push",label:"push"},{value:"pop",label:"pop"},{value:"float",label:"float"},{value:"sink",label:"sink"},{value:"forward",label:"forward"},{value:"backward",label:"backward"},{value:null,label:"Pulse ",disabled:!0},{value:"pulse",label:"pulse"},{value:"pulseGrow",label:"pulseGrow"},{value:"pulseShrink",label:"pulseShrink"},{value:null,label:"Rotate ",disabled:!0},{value:"rotate",label:"rotate"},{value:"growRotate",label:"growRotate"},{value:null,label:"Skew ",disabled:!0},{value:"skew",label:"skew"},{value:"skewForward",label:"skewForward"},{value:"skewBackward",label:"skewBackward"},{value:null,label:"Wobble ",disabled:!0},{value:"wobbleHorizontal",label:"wobbleHorizontal"},{value:"wobbleVertical",label:"wobbleVertical"},{value:"wobbleToBottomRight",label:"wobbleToBottomRight"},{value:"wobbleToTopRight",label:"wobbleToTopRight"},{value:"wobbleTop",label:"wobbleTop"},{value:"wobbleBottom",label:"wobbleBottom"},{value:"wobbleSkew",label:"wobbleSkew"},{value:null,label:"Buzz ",disabled:!0},{value:"buzz",label:"buzz"},{value:"buzzOut",label:"buzzOut"},{value:null,label:"Flippers ",disabled:!0},{value:"flip",label:"flip"},{value:"flipOutX",label:"flipOutX"},{value:"flipOutY",label:"flipOutY"},{value:null,label:"Lightspeed ",disabled:!0},{value:"lightSpeedOut",label:"lightSpeedOut"},{value:null,label:"Twirl ",disabled:!0},{value:"twirlOut",label:"twirlOut"},{value:null,label:"Specials ",disabled:!0},{value:"hinge",label:"hinge"},{value:"rollOut",label:"rollOut"}].filter((function(e){return e.value!==t}));return Object(d.createElement)(d.Fragment,null,Object(d.createElement)(m.InspectorControls,null,Object(d.createElement)(O.TabPanel,{className:"tab-one",activeClass:"eds-active-tab",tabs:[{name:"tab1",title:Object(p.__)("Entry","eds-animate"),className:"tab-one"},{name:"tab2",title:Object(p.__)("Exit","eds-animate"),className:"tab-two"},{name:"tab3",title:Object(p.__)("Options","eds-animate"),className:"tab-three"}]},(function(l){return Object(d.createElement)("div",null,"tab1"===l.name?Object(d.createElement)(d.Fragment,null,Object(d.createElement)(O.SelectControl,{label:Object(p.__)("Animation","eds-animate"),value:t,options:[{value:null,label:"Bouncing Entrances",disabled:!0},{value:"bounceIn",label:"BounceIn"},{value:"bounceInDown",label:"BounceInDown"},{value:"bounceInLeft",label:"BounceInLeft"},{value:"bounceInRight",label:"BounceInRight"},{value:"bounceInUp",label:"BounceInUp"},{value:null,label:"Fading Entrances",disabled:!0},{value:"fadeIn",label:"FadeIn"},{value:"fadeInDown",label:"fadeInDown"},{value:"fadeInDownBig",label:"fadeInDownBig"},{value:"fadeInLeft",label:"fadeInLeft"},{value:"fadeInLeftBig",label:"fadeInLeftBig"},{value:"fadeInRight",label:"fadeInRight"},{value:"fadeInRightBig",label:"fadeInRightBig"},{value:"fadeInUp",label:"fadeInUp"},{value:"fadeInUpBig",label:"fadeInUpBig"},{value:null,label:"Rotating Entrances",disabled:!0},{value:"rotateIn",label:"rotateIn"},{value:"rotateInDownLeft",label:"rotateInDownLeft"},{value:"rotateInDownRight",label:"rotateInDownRight"},{value:"rotateInUpLeft",label:"rotateInUpLeft"},{value:"rotateInUpRight",label:"rotateInUpRight"},{value:null,label:"Sliding Entrances",disabled:!0},{value:"slideInUp",label:"slideInUp"},{value:"slideInDown",label:"slideInDown"},{value:"slideInLeft",label:"slideInLeft"},{value:"slideInRight",label:"slideInRight"},{value:null,label:"Zoom Entrances",disabled:!0},{value:"zoomIn",label:"zoomIn"},{value:"zoomInDown",label:"zoomInDown"},{value:"zoomInLeft",label:"zoomInLeft"},{value:"zoomInRight",label:"zoomInRight"},{value:"zoomInUp",label:"zoomInUp"},{value:null,label:"Attention Seekers",disabled:!0},{value:"spinner",label:"Spin"},{value:"bounce",label:"bounce"},{value:"flash",label:"flash"},{value:"rubberBand",label:"rubberBand"},{value:"shake",label:"shake"},{value:"swing",label:"swing"},{value:"tada",label:"tada"},{value:"wobble",label:"wobble"},{value:"jello",label:"jello"},{value:"wiggle",label:"wiggle"},{value:"fade",label:"fade"},{value:"appear",label:"appear"},{value:"grow",label:"grow"},{value:"shrink",label:"shrink"},{value:"push",label:"push"},{value:"pop",label:"pop"},{value:"float",label:"float"},{value:"sink",label:"sink"},{value:"forward",label:"forward"},{value:"backward",label:"backward"},{value:null,label:"Pulse",disabled:!0},{value:"pulse",label:"pulse"},{value:"pulseGrow",label:"pulseGrow"},{value:"pulseShrink",label:"pulseShrink"},{value:null,label:"Rotate",disabled:!0},{value:"rotate",label:"rotate"},{value:"growRotate",label:"growRotate"},{value:null,label:"Skew",disabled:!0},{value:"skew",label:"skew"},{value:"skewForward",label:"skewForward"},{value:"skewBackward",label:"skewBackward"},{value:null,label:"Wobble",disabled:!0},{value:"wobbleHorizontal",label:"wobbleHorizontal"},{value:"wobbleVertical",label:"wobbleVertical"},{value:"wobbleToBottomRight",label:"wobbleToBottomRight"},{value:"wobbleToTopRight",label:"wobbleToTopRight"},{value:"wobbleTop",label:"wobbleTop"},{value:"wobbleBottom",label:"wobbleBottom"},{value:"wobbleSkew",label:"wobbleSkew"},{value:null,label:"Buzz",disabled:!0},{value:"buzz",label:"buzz"},{value:"buzzOut",label:"buzzOut"},{value:null,label:"Flippers",disabled:!0},{value:"flip",label:"flip"},{value:"flipInX",label:"flipInX"},{value:"flipInY",label:"flipInY"},{value:null,label:"Light Speed",disabled:!0},{value:"lightSpeedIn",label:"lightSpeedIn"},{value:null,label:"Twril",disabled:!0},{value:"twirlIn",label:"twirlIn"},{value:null,label:"Specials",disabled:!0},{value:"hinge",label:"hinge"},{value:"rollIn",label:"rollIn"}],onChange:function(l){return e.props.setAttributes({entry_animation_type:l})}}),Object(d.createElement)("div",null,Object(d.createElement)(O.SelectControl,{label:Object(p.__)("Delay (in seconds)","eds-animate"),value:u,options:[{value:"0",label:Object(p.__)("None","eds-animate")},{value:"0.5",label:"0.5"},{value:"1",label:"1.0"},{value:"1.5",label:"1.5"},{value:"2",label:"2.0"},{value:"2.5",label:"2.5"},{value:"3",label:"3.0"},{value:"3.5",label:"3.5"},{value:"4",label:"4.0"},{value:"4.5",label:"4.5"},{value:"5",label:"5.0"},{value:"5.5",label:"5.5"},{value:"6",label:"6.0"},{value:"custom",label:Object(p.__)("Custom","eds-animate")}],onChange:function(l){e.props.setAttributes({entry_delay:l})}}),"custom"===u?Object(d.createElement)(O.TextControl,{placeholder:"Custom Delay Seconds Eg. '2.7'",value:o,onChange:function(l){e.props.setAttributes({custom_entry_delay:l})}}):""),Object(d.createElement)(O.SelectControl,{label:Object(p.__)("Duration (in seconds)","eds-animate"),value:r,options:[{value:"0.5",label:"0.5"},{value:"1",label:"1.0"},{value:"1.5",label:"1.5"},{value:"2",label:"2.0"},{value:"2.5",label:"2.5"},{value:"3",label:"3.0"},{value:"3.5",label:"3.5"},{value:"4",label:"4.0"},{value:"4.5",label:"4.5"},{value:"5",label:"5.0"},{value:"5.5",label:"5.5"},{value:"6",label:"6.0"},{value:"custom",label:Object(p.__)("Custom","eds-animate")}],onChange:function(l){e.props.setAttributes({entry_duration:l})}}),"custom"===r?Object(d.createElement)(O.TextControl,{placeholder:"Custom Duration Seconds Eg. '2.7'",value:c,onChange:function(l){e.props.setAttributes({custom_entry_duration:l})}}):"",Object(d.createElement)(O.SelectControl,{label:Object(p.__)("Timing","eds-animate"),value:f,options:[{value:"linear",label:"Linear"},{value:"ease",label:"Ease"},{value:"ease-in",label:"EaseIn"},{value:"ease-out",label:"EaseOut"},{value:"ease-in-out",label:"EaseInOut"},{value:"cubic-bezier(0.47, 0, 0.745, 0.715)",label:"EaseInSine"},{value:"cubic-bezier(0.39, 0.575, 0.565, 1)",label:"EaseOutSine"},{value:"cubic-bezier(0.445, 0.05, 0.55, 0.95)",label:"EaseInOutSine"},{value:"cubic-bezier(0.55, 0.085, 0.68, 0.53)",label:"EaseInQuad"},{value:"cubic-bezier(0.25, 0.46, 0.45, 0.94)",label:"EaseOutQuad"},{value:"cubic-bezier(0.455, 0.03, 0.515, 0.955)",label:"EaseInOutQuad"},{value:"cubic-bezier(0.55, 0.055, 0.675, 0.19)",label:"EaseInCubic"},{value:"cubic-bezier(0.215, 0.61, 0.355, 1)",label:"EaseOutCubic"},{value:"cubic-bezier(0.645, 0.045, 0.355, 1)",label:"EaseInOutCubic"},{value:"cubic-bezier(0.895, 0.03, 0.685, 0.22)",label:"EaseInQuart"},{value:"cubic-bezier(0.165, 0.84, 0.44, 1)",label:"EaseOutQuart"},{value:"cubic-bezier(0.77, 0, 0.175, 1)",label:"EaseInOutQuart"},{value:"cubic-bezier(0.755, 0.05, 0.855, 0.06)",label:"EaseInQuint"},{value:"cubic-bezier(0.23, 1, 0.32, 1)",label:"EaseOutQuint"},{value:"cubic-bezier(0.86, 0, 0.07, 1)",label:"EaseInOutQuint"},{value:"cubic-bezier(0.95, 0.05, 0.795, 0.035)",label:"EaseInExpo"},{value:"cubic-bezier(0.19, 1, 0.22, 1)",label:"EaseOutExpo"},{value:"cubic-bezier(1, 0, 0, 1)",label:"EaseInOutExpo"},{value:"cubic-bezier(0.6, 0.04, 0.98, 0.335)",label:"EaseInCirc"},{value:"cubic-bezier(0.075, 0.82, 0.165, 1)",label:"EaseOutCirc"},{value:"cubic-bezier(0.785, 0.135, 0.15, 0.86)",label:"EaseInOutCirc"},{value:"cubic-bezier(0.6, -0.28, 0.735, 0.045)",label:"EaseInBack"},{value:"cubic-bezier(0.175, 0.885, 0.32, 1.275)",label:"EaseOutBack"},{value:"cubic-bezier(0.68, -0.55, 0.265, 1.55)",label:"EaseInOutBack"}],onChange:function(l){e.props.setAttributes({entry_timing:l})}})):"","tab2"===l.name?Object(d.createElement)(d.Fragment,null,Object(d.createElement)(O.SelectControl,{label:Object(p.__)("Animation","eds-animate"),value:g,options:N,onChange:function(l){e.props.setAttributes({exit_animation_type:l})}}),Object(d.createElement)(O.SelectControl,{label:Object(p.__)("Delay (in seconds)","eds-animate"),value:I,options:[{value:"0",label:Object(p.__)("None","eds-animate")},{value:"0.5",label:"0.5"},{value:"1",label:"1.0"},{value:"1.5",label:"1.5"},{value:"2",label:"2.0"},{value:"2.5",label:"2.5"},{value:"3",label:"3.0"},{value:"3.5",label:"3.5"},{value:"4",label:"4.0"},{value:"4.5",label:"4.5"},{value:"5",label:"5.0"},{value:"5.5",label:"5.5"},{value:"6",label:"6.0"},{value:"custom",label:Object(p.__)("Custom","eds-animate")}],onChange:function(l){e.props.setAttributes({exit_delay:l})}}),"custom"===I?Object(d.createElement)(O.TextControl,{placeholder:"Custom Delay Seconds Eg. '1.5'",value:h,onChange:function(l){e.props.setAttributes({custom_exit_delay:l})}}):"",Object(d.createElement)(O.SelectControl,{label:Object(p.__)("Duration (in seconds)","eds-animate"),value:z,options:[{value:"0.5",label:"0.5"},{value:"1",label:"1.0"},{value:"1.5",label:"1.5"},{value:"2",label:"2.0"},{value:"2.5",label:"2.5"},{value:"3",label:"3.0"},{value:"3.5",label:"3.5"},{value:"4",label:"4.0"},{value:"4.5",label:"4.5"},{value:"5",label:"5.0"},{value:"5.5",label:"5.5"},{value:"6",label:"6.0"},{value:"custom",label:Object(p.__)("Custom","eds-animate")}],onChange:function(l){e.props.setAttributes({exit_duration:l})}}),"custom"===z?Object(d.createElement)(O.TextControl,{placeholder:"Custom Duration Seconds Eg. '1.5'",value:x,onChange:function(l){e.props.setAttributes({custom_exit_duration:l})}}):"",Object(d.createElement)(O.SelectControl,{label:Object(p.__)("Timing","eds-animate"),value:C,options:[{value:"linear",label:"Linear"},{value:"ease",label:"Ease"},{value:"ease-in",label:"EaseIn"},{value:"ease-out",label:"EaseOut"},{value:"ease-in-out",label:"EaseInOut"},{value:"cubic-bezier(0.47, 0, 0.745, 0.715)",label:"EaseInSine"},{value:"cubic-bezier(0.39, 0.575, 0.565, 1)",label:"EaseOutSine"},{value:"cubic-bezier(0.445, 0.05, 0.55, 0.95)",label:"EaseInOutSine"},{value:"cubic-bezier(0.55, 0.085, 0.68, 0.53)",label:"EaseInQuad"},{value:"cubic-bezier(0.25, 0.46, 0.45, 0.94)",label:"EaseOutQuad"},{value:"cubic-bezier(0.455, 0.03, 0.515, 0.955)",label:"EaseInOutQuad"},{value:"cubic-bezier(0.55, 0.055, 0.675, 0.19)",label:"EaseInCubic"},{value:"cubic-bezier(0.215, 0.61, 0.355, 1)",label:"EaseOutCubic"},{value:"cubic-bezier(0.645, 0.045, 0.355, 1)",label:"EaseInOutCubic"},{value:"cubic-bezier(0.895, 0.03, 0.685, 0.22)",label:"EaseInQuart"},{value:"cubic-bezier(0.165, 0.84, 0.44, 1)",label:"EaseOutQuart"},{value:"cubic-bezier(0.77, 0, 0.175, 1)",label:"EaseInOutQuart"},{value:"cubic-bezier(0.755, 0.05, 0.855, 0.06)",label:"EaseInQuint"},{value:"cubic-bezier(0.23, 1, 0.32, 1)",label:"EaseOutQuint"},{value:"cubic-bezier(0.86, 0, 0.07, 1)",label:"EaseInOutQuint"},{value:"cubic-bezier(0.95, 0.05, 0.795, 0.035)",label:"EaseInExpo"},{value:"cubic-bezier(0.19, 1, 0.22, 1)",label:"EaseOutExpo"},{value:"cubic-bezier(1, 0, 0, 1)",label:"EaseInOutExpo"},{value:"cubic-bezier(0.6, 0.04, 0.98, 0.335)",label:"EaseInCirc"},{value:"cubic-bezier(0.075, 0.82, 0.165, 1)",label:"EaseOutCirc"},{value:"cubic-bezier(0.785, 0.135, 0.15, 0.86)",label:"EaseInOutCirc"},{value:"cubic-bezier(0.6, -0.28, 0.735, 0.045)",label:"EaseInBack"},{value:"cubic-bezier(0.175, 0.885, 0.32, 1.275)",label:"EaseOutBack"},{value:"cubic-bezier(0.68, -0.55, 0.265, 1.55)",label:"EaseInOutBack"}],onChange:function(l){e.props.setAttributes({exit_timing:l})}})):"","tab3"===l.name?Object(d.createElement)(d.Fragment,null,Object(d.createElement)(O.SelectControl,{label:Object(p.__)("Animation Repeat","eds-animate"),value:R,options:[{value:"1",label:Object(p.__)("Once","eds-animate")},{value:"2",label:Object(p.__)("Twice","eds-animate")},{value:"3",label:Object(p.__)("Thrice","eds-animate")},{value:"infinite",label:Object(p.__)("Infinite","eds-animate")},{value:"custom",label:Object(p.__)("Custom","eds-animate")}],onChange:function(l){e.props.setAttributes({animation_repeat:l})}}),"custom"===R?Object(d.createElement)(O.TextControl,{placeholder:"Animation Repeat Eg. '1'",value:L,onChange:function(l){e.props.setAttributes({custom_animation_repeat:l})}}):"",Object(d.createElement)(O.RadioControl,{label:Object(p.__)("Keep Element Final State","eds-animate"),selected:F,options:[{label:Object(p.__)("Yes","eds-animate"),value:"yes"},{label:Object(p.__)("No","eds-animate"),value:"no"}],onChange:function(l){e.props.setAttributes({keep:l})}}),Object(d.createElement)(O.TextControl,{label:Object(p.__)("Custom CSS Class","eds-animate"),value:P,onChange:function(l){e.props.setAttributes({custom_css_class:l})}}),Object(d.createElement)(O.RadioControl,{label:Object(p.__)("Animate On","eds-animate"),selected:U,options:[{label:Object(p.__)("Load","eds-animate"),value:"load"},{label:Object(p.__)("Click","eds-animate"),value:"click"},{label:Object(p.__)("Hover","eds-animate"),value:"hover"},{label:Object(p.__)("Scroll","eds-animate"),value:"scroll"}],onChange:function(l){e.props.setAttributes({animate_on:l})}}),"scroll"===U?Object(d.createElement)(O.TextControl,{label:Object(p.__)("Scroll Offset (in %)","eds-animate"),placeholder:"Custom Offset % e.g. 20.7",value:Q,onChange:function(l){e.props.setAttributes({scroll_offset:l})}}):""):"")}))),Object(d.createElement)("div",{className:"eds-animate-block-edit",title:"Animate It!"},Object(d.createElement)("svg",{version:"1.1",id:"eds-animate-icon",xmlns:"http://www.w3.org/2000/svg",x:"0px",y:"0px",viewBox:"0 0 150 150"},Object(d.createElement)("circle",{fill:"#EF3824",cx:"75.3",cy:"74.7",r:"60"}),Object(d.createElement)("g",null,Object(d.createElement)("path",{fill:"#FFFFFF",d:"M54.8,87.3c0-0.5,0.2-0.8,0.5-1.1l32.3-32.3c0.3-0.3,0.7-0.5,1.1-0.5s0.8,0.2,1.1,0.5l5,5 c0.3,0.3,0.5,0.7,0.5,1.1s-0.2,0.8-0.5,1.1L62.5,93.4c-0.3,0.3-0.7,0.5-1.1,0.5c-0.5,0-0.8-0.2-1.1-0.5l-5-5 C55,88.1,54.8,87.7,54.8,87.3z M57.4,55.9l2.5-0.8l0.8-2.5l0.8,2.5l2.5,0.8l-2.5,0.8l-0.8,2.5l-0.8-2.5L57.4,55.9z M62.2,60.7 l4.9-1.5l1.5-4.9l1.5,4.9l4.9,1.5l-4.9,1.5l-1.5,4.9l-1.5-4.9L62.2,60.7z M73.4,55.9l2.5-0.8l0.8-2.5l0.8,2.5l2.5,0.8l-2.5,0.8 l-0.8,2.5l-0.8-2.5L73.4,55.9z M81.3,64.6l2.7,2.7l7.4-7.4l-2.7-2.7L81.3,64.6z M89.5,72l2.5-0.8l0.8-2.5l0.8,2.5l2.5,0.8l-2.5,0.8 l-0.8,2.5L92,72.7L89.5,72z"}))),Object(d.createElement)(m.InnerBlocks,{allowedBlocks:!0,orientation:"horizontal",renderAppender:function(){return Object(d.createElement)(m.InnerBlocks.ButtonBlockAppender,null)}})))}}]),a}(g),save:function(e){var l=e.attributes.entry_animation_type,a=e.attributes.entry_delay,t=e.attributes.custom_entry_delay,n=e.attributes.entry_duration,u=e.attributes.custom_entry_duration,i=e.attributes.entry_timing,o=e.attributes.exit_animation_type,b=e.attributes.exit_delay,r=e.attributes.custom_exit_delay,s=e.attributes.exit_duration,c=e.attributes.custom_exit_duration,v=e.attributes.exit_timing,p=e.attributes.animation_repeat,f=e.attributes.custom_animation_repeat,O=e.attributes.keep,_=e.attributes.animate_on,g=e.attributes.scroll_offset,w=e.attributes.custom_css_class||"",I="custom"==a?t:a,y="custom"==n?u:n,h="custom"==b?r:b,E="custom"==s?c:s,z="custom"==p?f:p,j="scroll"==_?g:"",x="";return"scroll"!=_&&"load"!=_||(x=["bounceIn","bounceInDown","bounceInLeft","bounceInRight","bounceInUp","fadeIn","fadeInDown","fadeInDownBig","fadeInLeft","fadeInLeftBig","fadeInRight","fadeInRightBig","fadeInUp","fadeInUpBig","rotateIn","rotateInDownLeft","rotateInDownRight","rotateInUpLeft","rotateInUpRight","slideInUp","slideInDown","slideInLeft","slideInRight","zoomIn","zoomInDown","zoomInLeft","zoomInRight","zoomInUp","flipInX","flipInY","lightSpeedIn","rollIn","twirlIn"].indexOf(l)>-1?"edsanimate-sis-hidden":""),Object(d.createElement)("div",{className:"eds-animate-block-save"},Object(d.createElement)("div",{class:"eds-animate animated ".concat(x,"  ").concat(w),"data-eds-entry-animation":l,"data-eds-entry-delay":I,"data-eds-entry-duration":y,"data-eds-entry-timing":i,"data-eds-exit-animation":o,"data-eds-exit-delay":h,"data-eds-exit-duration":E,"data-eds-exit-timing":v,"data-eds-repeat-count":z,"data-eds-keep":O,"data-eds-animate-on":_,"data-eds-scroll-offset":j},Object(d.createElement)(m.InnerBlocks.Content,null)))}})},function(e,l){function a(l,t){return e.exports=a=Object.setPrototypeOf||function(e,l){return e.__proto__=l,e},a(l,t)}e.exports=a},function(e,l){function a(l){return"function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?e.exports=a=function(e){return typeof e}:e.exports=a=function(e){return e&&"function"==typeof Symbol&&e.constructor===Symbol&&e!==Symbol.prototype?"symbol":typeof e},a(l)}e.exports=a},function(e,l){e.exports=function(e){if(void 0===e)throw new ReferenceError("this hasn't been initialised - super() hasn't been called");return e}}]);