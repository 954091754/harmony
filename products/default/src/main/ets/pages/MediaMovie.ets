interface GeneratedObjectLiteralInterface {
  icon: Resource;
  title: string;
}

@Entry
@Component
export struct MediaMovie {
  private menuItem1: GeneratedObjectLiteralInterface = { icon: $r('sys.media.ohos_ic_public_scan'), title: '找电影' }
  private menuItem2: GeneratedObjectLiteralInterface = { icon: $r('sys.media.ohos_ic_public_scan'), title: '豆瓣榜单' }
  private menuItem3: GeneratedObjectLiteralInterface = { icon: $r('sys.media.ohos_ic_public_scan'), title: '豆瓣猜' }
  private menuItem4: GeneratedObjectLiteralInterface = { icon: $r('sys.media.ohos_ic_public_scan'), title: '豆瓣票单' }

  private menuItems = [this.menuItem1, this.menuItem2, this.menuItem3, this.menuItem4]

  // 轮播图资源
  private bannerList: Resource[] = [
    $r('app.media.banner_blsj'),
    $r('app.media.banner_pfzy'),
    $r('app.media.banner_qz')
  ]

  @State currentIndex: number = 0  // 轮播图当前索引
  private timerId: number = -1
  @State selectedTabIndex: number = 0    // 互斥 Label 索引

  build() {
    Column() {
      // 菜单栏
      Row() {
        ForEach(this.menuItems, (item: GeneratedObjectLiteralInterface) => {
          Column({ space: 8 }) {
            Image(item.icon)
              .width(38)
              .height(38)
            Text(item.title)
              .fontSize(14)
          }
          .alignItems(HorizontalAlign.Center)
          .justifyContent(FlexAlign.Center)
          .flexGrow(1)
        })
      }
      .width('100%')
      .backgroundColor('#FFFFFF')

      // 轮播图区域
      Column() {
        Stack() {
          ForEach(this.bannerList, (banner: Resource, idx: number) => {
            Image(banner)
              .width('100%')
              .height(180)
              .borderRadius(8)
              .opacity(this.currentIndex === idx ? 1 : 0)
              .animation({ duration: 500 })
          })
        }
        .alignContent(Alignment.Center)
        .width('100%')
        .height(180)
        .margin({ top: 16 })

        // 指示器 Row
        Row({ space: 8}) {
          ForEach(this.bannerList, (_: Resource, idx: number) => {
            Shape()
              .width(8)
              .height(8)
              .backgroundColor(this.currentIndex === idx ? '#007DFF' : '#CCCCCC')
              .borderRadius(4)
          })
        }
        .margin({ top: 8 })

        Row() {
          // Label 单选
          Row({ space: 8 }) {
            Text('影院热映')
              .fontSize(18)
              .fontWeight(FontWeight.Bold)
              .foregroundColor(this.selectedTabIndex === 0 ? '#007DFF' : '#333333')
              .onClick(() => { this.selectedTabIndex = 0 })

            Text('即将上映')
              .fontSize(18)
              .fontWeight(FontWeight.Bold)
              .foregroundColor(this.selectedTabIndex === 1 ? '#007DFF' : '#333333')
              .onClick(() => { this.selectedTabIndex = 1 })
          }

          // 全部 >
          Text('全部 >')
            .fontSize(14)
            .foregroundColor('#000000')
            .onClick(() => {
              // 跳转全部逻辑
            })
        }
        .justifyContent(FlexAlign.SpaceBetween)
        .alignItems(VerticalAlign.Center)
        .padding({ top: 12 })
        .width('100%')
      }
    }
    .onAppear(() => {
      this.timerId = setInterval(() => {
        this.currentIndex = (this.currentIndex + 1) % this.bannerList.length
      }, 3000)
    })
    .onDisAppear(() => {
      if (this.timerId !== -1) clearInterval(this.timerId)
    })
  }
}
