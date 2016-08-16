# GuideViewDemo
引导页的镂空提示效果
##目的
>新手引导页经常需要标示新功能的位置，告诉用户新增了什么功能或者修改了什么功能，常规做法都是UI切一张图贴上去，或者找到需要标示的组建，给它截图，然后贴在遮罩上,demo的做法是使用mask属性，建立镂空图层来实现。
##要点
>'appendPath:方法'，可以返回将2个path形成的共同区域镂空，返回剩下区域的path。<br>
>'mask属性'：mask是calayer，官方的解释：An optional layer whose alpha channel is used to mask the layer’s content. The layer’s alpha channel determines how much of the layer’s content and background shows through. Fully or partially opaque pixels allow the underlying content to show through but fully transparent pixels block that content.<br>
它的透明通透度决定了背后的内容的显示程度，默认为nil，则看不到后面内容。简单的说可以这样理解，mask就是一个遮罩，面具，layer的属性mask这个layer
所覆盖的地方，是不通透的，即可以看见该layer的内容，mask这个layer没有覆盖的地方则是完全通透的，即可以看到该区域下面层级的视图。
