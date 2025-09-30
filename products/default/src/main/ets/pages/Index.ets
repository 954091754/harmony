import { router } from '@kit.ArkUI'

@Entry
@Component
struct Index {
  @State countdown: number = 3   // 响应式变量
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

      Image($r('app.media.ic_launcher'))
        .width(60)
        .height(60)
        .position({
          x: '50%', // 水平中点向左补偿半宽
          y: '90%'  // 垂直中点向上补偿半高
        })
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
    // if (this.timerId !== -1) {
    //   clearInterval(this.timerId)
    // }
    // router.replaceUrl({ url: 'pages/Index' })
  }
}
