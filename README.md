QtsRouter使用说明：

1.在页面使用路由注解 列如：@ARoute(url: 'myapp://pagetwo')

2.生命需接受参数的构造函数。

		final ARouteOption option;
     	PageTwo(this.option) : super();

3.在Terminal控制台输入并执行 bash build.sh 生成相对应的映射文件

4.跳转使用：

            MaterialButton(onPressed: () {
            //传递到下页面的参数：如没有可不实例化。
              final Map<String, String> innerRouterMap = <String, String>{
                'thinker': 'abcbbbbb'
              };
              //实例化ARouterOption，传入路由url和所需参数。没有可赋值为null。
              var url = new ARouteOption("myapp://pagetwo", innerRouterMap);

              QtsRouter.of(context).build(url).then((value){
                  print("flutterpop"+value.toString());  //接受上个界面关闭返回值，如不需要则不需要then里面的实现。
              });
            })
