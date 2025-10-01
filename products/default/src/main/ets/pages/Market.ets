@Component
export struct Market {
  build() {
    Column() {
      Text('这里是 首页')
        .fontSize(20)
        .fontWeight(FontWeight.Bold)
    }
    .justifyContent(FlexAlign.Center)
    .alignItems(HorizontalAlign.Center)
    .width('100%')
    .height('100%')
    .backgroundColor(Color.White)
  }
}
