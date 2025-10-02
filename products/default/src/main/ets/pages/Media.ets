
@Entry
@Component
export  struct Media {
  private searchController: SearchController = new SearchController()
  @State currentIndex: number = 0

  // tab 配置
  private tabTitles: string[] = ['电影', '电视', '综艺', '读书', '音乐', '同城']

  build() {
    Column() {
      // 整个页面可滑动
      Scroll() {
        Column() {
          // 🔍 顶部搜索栏
          Search({ controller: this.searchController })
            .margin({ top: 12, bottom: 12 })
            .backgroundColor('#F5F5F5')
            .borderRadius(8)

          // 📌 菜单 Tabs
          Tabs({
            barPosition: BarPosition.Start
          }) {
            ForEach(this.tabTitles, (title: string, index: number) => {
              TabContent() {
                // 这里是每个 tab 对应的内容
                Column({ space: 12 }) {
                  Text('title')
                    .fontSize(16)
                    .padding(8)
                    .backgroundColor('#F0F0F0')
                    .borderRadius(6)
                }
                .padding({ top: 12 })
              }
              .tabBar(title)
            })
          }
          .animationDuration(300)
          .padding({ left: 0 })
          .barMode(BarMode.Fixed) // 菜单可以左右滑动
          .vertical(false)             // 水平 tabs
          .tabIndex(this.currentIndex) // 当前选中的 tab
        }
      }
      .scrollable(ScrollDirection.Vertical) // 整个页面上下滑动
      .padding({ left: 16, right: 16 })     // 页面左右 padding = 16
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#FFFFFF')
  }
}
