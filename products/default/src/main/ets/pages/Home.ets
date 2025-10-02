@Entry
@Component
export  struct Home {
  // 搜索控制器
  private searchController: SearchController = new SearchController()

  build() {
    Column({ space: 12 }) {
      // 搜索框
      Search({ controller: this.searchController })
        .margin({ top: 12 }) // 顶部留点空隙
        .backgroundColor('#F5F5F5')
        .borderRadius(8)

      // 页面主要内容
      Column({ space: 12 }) {
        Text("内容区域 1")
          .fontSize(18)
        Text("内容区域 2")
          .fontSize(18)
      }
      .padding({ top: 12 })
    }
    .padding({ left: 16, right: 16 }) // 页面整体左右边距 16
    .width('100%')
    .height('100%')
    .backgroundColor('#FFFFFF')
  }
}
