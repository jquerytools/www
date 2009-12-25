
/* 
	List of the tools + meta information. Used on
		- right side navigation
		- download page
*/
{
	key: 'jquery',
	title: 'jQuery library',
	description: 'All tools except flashembed are dependent on this library. Can alternatively be included from googleapis (see below)',
	file: '/js/jquery',
	www: 'http://jquery.com'
},

//{{{ UI
{ 
	cat: 'UI tools',
	description: 'The missing collection of UI widgets'
},

/* tabs */
{
	key: 'tabs',
	title: 'Tabs',
	description: 'The most important UI element for the Web',
	file: 'tabs/tabs',
	www: 'tabs/index.html'
},

	{
		key: 'slideshow',
		title: 'Slideshow plugin',
		plugin: true,
		description: 'Transforms tabs into a working slideshow',
		file: 'tabs/tabs.slideshow',
		www: 'tabs/slideshow.html',
		requires: 'Tabs'                      
	},


/* tooltip */	
{
	key: 'tooltip',
	title: 'Tooltip',
	description: 'The second most important UI widget on the web.',
	file: 'tooltip/tooltip',
	www: 'tooltip/index.html'
},

	{
		key: 'tooltip.slide',
		title: 'Slide effect',
		plugin: true,
		description: 'A sliding tooltip effect with customized sliding directions, dimensions and speeds',
		file: 'tooltip/tooltip.slide',
		www: 'tooltip/slide.html'
	},
	
	{
		key: 'tooltip.dynamic',
		title: 'Dynamic plugin',
		plugin: true,
		description: 'Dynamic positioning of the tooltip so that it always stays in the viewport',
		file: 'tooltip/tooltip.dynamic',
		www: 'tooltip/dynamic.html'
	},


//{{{ scrollable 
{
	key: 'scrollable',
	title: 'Scrollable',
	description: 'A generic HTML scrolling widget',
	file: 'scrollable/scrollable',
	www: 'scrollable/index.html'
},


	{
		key: 'scrollable.circular',
		title: 'Circular plugin',
		plugin: true,
		description: 'Makes an infinite loop from the scrollable items so that there is no beginning or end',
		file: 'scrollable/scrollable.circular',
		www: 'scrollable/circular.html'
	},

	{
		key: 'scrollable.autoscroll',
		title: 'Autoscroll plugin',
		plugin: true,
		description: 'Makes the scrolling behaviour automatic. highly configurable',
		file: 'scrollable/scrollable.autoscroll',
		www: 'scrollable/autoscroll.html'
	},

	{
		key: 'scrollable.navigator',
		title: 'Navigator plugin',
		plugin: true,
		description: 'Provides navigation buttons for switching between pages in scrollable',
		file: 'scrollable/scrollable.navigator',
		www: 'scrollable/navigator.html'
	},

//}}}


/* overlay */
{
	key: 'overlay',
	title: 'Overlay',
	description: 'A generic HTML overlaying widget',
	file: 'overlay/overlay',
	www: 'overlay/index.html'
},


	{
		key: 'overlay.apple',
		title: 'Apple effect',
		plugin: true,
		description: 'An overlay effect that you have seen on apple.com',
		file: 'overlay/overlay.apple',
		www: 'overlay/apple.html'
	},

//}}}
	

//{{{ FORM
{ 
	cat: 'Form tools',
	description: '20 year wait is over. HTML5 is here'
},


{
	key: 'validator',
	title: 'Validator',
	description: '20 year wait is over. HTML5 is here',
	file: 'form/form.validator',
	www: 'form/validator.html'
},

{
	key: 'styleable',
	title: 'Styleable',
	description: 'Style your form widgets with CSS',
	file: 'form/form.styleable',
	www: 'form/styleable.html'
},

{
	key: 'datepicker',
	title: 'Datepicker',
	description: 'Small, compact and styleable datepicker',
	file: 'form/form.datepicker',
	www: 'form/datepicker.html'
},

{
	key: 'slider',
	title: 'Slider',
	description: 'HTML5 slider component',
	file: 'form/form.slider',
	www: 'form/slider.html',
	requires: 'drag'
},
//}}}



//{{{ Toolbox
{ 
	cat: 'Toolbox', 
	description: 'Important tools for your everyday scripting'
},

{
	key: 'drag',
	title: 'Drag',
	description: 'A generic drag support for jQuery',
	file: 'toolbox/toolbox.drag',
	www: 'toolbox/drag.html'
},

{
	key: 'flashembed',
	title: 'Flashembed',
	description: 'The future of Flash embedding. Works as a standalone tool and jQuery is not required.',
	file: 'toolbox/toolbox.flashembed',
	www: 'toolbox/flashembed.html'
},

{
	key: 'history',
	title: 'History',
	description: 'Back button for AJAX apps',
	file: 'toolbox/toolbox.history',
	www: 'toolbox/history.html'
},

{
	key: 'lazyload',
	title: 'Lazyload',
	description: 'Load things only when needed.',
	file: 'toolbox/toolbox.lazyload',
	www: 'toolbox/lazyload.html'
},

{
	key: 'mask',
	title: 'Mask',
	description: 'Makes your HTML stand out from its surroundings',
	file: 'toolbox/toolbox.mask',
	www: 'toolbox/mask.html'
},


{
	key: 'mousewheel',
	title: 'Mousewheel',
	description: 'A generic mousewheel support for jQuery',
	file: 'toolbox/toolbox.mousewheel',
	www: 'toolbox/mousewheel.html'
}


//}}}

