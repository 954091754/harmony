import { MediaMovie } from './MediaMovie'

@Entry
@Component
export struct Media {
  private searchController: SearchController = new SearchController()
  @State currentIndex: number = 0

  private tabTitles: string[] = ['电影', '电视', '综艺', '读书', '音乐', '同城']

  build() {
    Column() {
      Scroll() {
        Column() {
          Search({ controller: this.searchController })
            .margin({ top: 12, bottom: 12 })
            .backgroundColor('#F5F5F5')
            .borderRadius(8)

          Tabs({
            barPosition: BarPosition.Start
          }) {
            ForEach(this.tabTitles, (title: string, index: number) => {
              TabContent() {
                // 根据 tab index 渲染不同组件
                if (index === 0) {
                  MediaMovie()
                } else {
                  Column({ space: 12 }) {
                    Text(title + ' 页面')
                      .fontSize(16)
                      .padding(8)
                      .backgroundColor('#F0F0F0')
                      .borderRadius(6)
                  }
                  .padding({ top: 12 })
                }
              }
              .tabBar(title)
            })
          }
          .animationDuration(300)
          .barMode(BarMode.Fixed)
          .vertical(false)
          .tabIndex(this.currentIndex)
        }
      }
      .scrollable(ScrollDirection.Vertical)
      .padding({ left: 16, right: 16 })
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#FFFFFF')
  }
}
