import { router } from '@kit.ArkUI'

@Entry
@Component
struct Root {
  build() {
    Column() {
      Text('🌌 Welcome to Root Page')
        .fontSize(24)
        .fontWeight(FontWeight.Bold)
        .margin({ bottom: 20 })

      Text('这是你的应用主页面')
        .fontSize(16)
        .fontColor(Color.Gray)

      Button('退出应用')
        .margin({ top: 40 })
        .onClick(() => {
          // 这里也可以做退出逻辑，比如 router.clear() 或调用系统退出
          router.clear()
          router.pushUrl({ url: 'pages/Index' })
        })
    }
    .justifyContent(FlexAlign.Center)
    .alignItems(HorizontalAlign.Center)
    .width('100%')
    .height('100%')
    .backgroundColor(Color.White)
  }
}
