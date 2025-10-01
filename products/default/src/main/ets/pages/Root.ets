import { Home } from './Home'
import { Media } from './Media'
import { Group } from './Group'
import { Market } from './Market'
import { Profile } from './Profile'

@Entry
@Component
struct Root {
  @State currentIndex: number = 0

  private tabTitles: string[] = ['首页', '书影音', '小组', '市集', '我']

  build() {
    Column() {
      // 顶部内容区（切换页面）
      Stack() {
        if (this.currentIndex === 0) {
          Home()
        } else if (this.currentIndex === 1) {
          Media()
        } else if (this.currentIndex === 2) {
          Group()
        } else if (this.currentIndex === 3) {
          Market()
        } else if (this.currentIndex === 4) {
          Profile()
        }
      }
      .width('100%')
      .height('100%')

      // 底部 TabBar
      Row() {
        ForEach(this.tabTitles, (title: string, index: number) => {
          Column() {
            Image($r('app.media.ic_launcher')) // 这里可以换成对应 tab 的图标
              .width(24)
              .height(24)
              .margin({ bottom: 4 })
              .objectFit(ImageFit.Contain)
              .renderMode(ImageRenderMode.Original)
              .interpolation(ImageInterpolation.High)
              .colorBlend(this.currentIndex === index ? Color.Blue : Color.Gray)

            Text(title)
              .fontSize(12)
              .fontColor(this.currentIndex === index ? Color.Blue : Color.Gray)
          }
          .justifyContent(FlexAlign.Center)
          .alignItems(HorizontalAlign.Center)
          .width('20%')
          .height(56)
          .onClick(() => {
            this.currentIndex = index
          })
        }, (title: string) => title)
      }
      .width('100%')
      .height(56)
      .backgroundColor(Color.White)
      .shadow({ radius: 8, color: Color.Gray, offsetX: 0, offsetY: -2 })
    }
    .width('100%')
    .height('100%')
    .backgroundColor(Color.White)
  }
}