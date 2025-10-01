import { router } from '@kit.ArkUI'

@Entry
@Component
struct Index {
  @State countdown: number = 0   // 响应式变量
  private timerId: number = -1

  build() {
    Stack() {
      // 中间内容
      Column() {
        Image($r('app.media.home'))
          .width(120)
          .height(120)
          .borderRadius(60)
          .margin({ bottom: 20 })

        Text('welcome to galaxy')
          .fontSize(18)
          .fontWeight(FontWeight.Normal)
      }
      .justifyContent(FlexAlign.Center)
      .alignItems(HorizontalAlign.Center)
      .width('100%')
      .height('100%')
      .padding({ bottom: 80 })

      // 右上角跳过标签
      Text(`${this.countdown}s`)
        .fontSize(14)
        .fontColor(Color.White)
        .backgroundColor(Color.Gray)
        .padding({ left: 8, right: 8, top: 4, bottom: 4 })
        .borderRadius(12)
        .position({ x: '80%', y: 20 })  // 右上角位置
        .width(50)
        .textAlign(TextAlign.Center)  // 水平居中
        .onClick(() => {
          this.gotoHome()
        })

      Stack({ alignContent: Alignment.Bottom }) {
        Row() {
          Image($r('app.media.ic_launcher'))
            .width(60)
            .height(60)
        }
        .justifyContent(FlexAlign.Center)   // 水平方向居中
        .width('100%')
        .margin({ bottom: 40 }) // 距离底部 40px
      }
      .width('100%')
      .height('100%')
    }
    .width('100%')
    .height('100%')
    .backgroundColor(Color.White)
  }

  aboutToAppear() {
    this.timerId = setInterval(() => {
      if (this.countdown <= 0) {
        this.gotoHome()
      } else {
        this.countdown--
      }
    }, 1000)
  }

  aboutToDisappear() {
    if (this.timerId !== -1) {
      clearInterval(this.timerId)
    }
  }

  private gotoHome() {
    if (this.timerId !== -1) {
      clearInterval(this.timerId)
    }
    router.clear()  // 清空整个页面栈
    router.pushUrl({ url: 'pages/Root' }) // Root 页面变成新的首页
  }
}
