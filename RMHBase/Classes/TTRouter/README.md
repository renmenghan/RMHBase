 **之前为私有库为了展示临时没有Demo下面会有项目中实际使用截图，以及各组件之间联系，以及通讯设计架构截图** 

![组件之间联系](https://images.gitee.com/uploads/images/2020/0323/174315_603d9620_1648075.png "WX20181024-163023.png")

![组件通讯路由](https://images.gitee.com/uploads/images/2020/0323/174429_a4d729a1_1648075.png "WX20181024-170703.png")

* 模块入口基类 TTModuleEntrance
    * 应用内管理跳转的服务。主要负责模块 URL 注册、分发 TTNavigationService
        * 模块入口内使用TTNavigationService 进行注册以及分发配置



#项目中应用
项目的各个大的组件入口  （可以理解为 单独拿出来任何一个就是一个app 类似下图就是mall 一元夺宝 分销少的组件 这些组件中还会细分组件如：mall中的订单 商铺 购物车等等等）
![输入图片说明](https://images.gitee.com/uploads/images/2020/0323/174938_bdccd61f_1648075.png "rotuter1.png")

继承于模块入口基类
![继承于模块入口基类](https://images.gitee.com/uploads/images/2020/0323/175251_42ed8f07_1648075.jpeg "router2.jpg")

注册模块
![输入图片说明](https://images.gitee.com/uploads/images/2020/0323/175407_53ef8f22_1648075.jpeg "router3.jpg")

分发模块
![输入图片说明](https://images.gitee.com/uploads/images/2020/0323/175431_5f7149e5_1648075.png "router4.png")


使用link跳转
![输入图片说明](https://images.gitee.com/uploads/images/2020/0323/175457_9242c822_1648075.png "router5.png")
