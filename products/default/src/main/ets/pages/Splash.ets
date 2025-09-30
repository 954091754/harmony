import router from '@ohos.router';

@Entry
@Component
struct SplashPage {
  // private countdown: number = 3   // 倒计时秒数
  // private timerId: number = -1

  build() {
    Column() {
      // // 应用图标
      // Image('image/ic_launcher.png')
      //   .width(120)
      //   .height(120)
      //   .margin({ bottom: 20 })

      // 欢迎文字
      // Text('欢迎使用我的应用')
      //   .fontSize(22)
      //   .fontWeight(FontWeight.Bold)
      //   .margin({ bottom: 20 })

      // 倒计时跳过按钮
      // Button(`跳过(${this.countdown})`)
      //   .onClick(() => {
      //     this.gotoHome()
      //   })
    }
    // .justifyContent(FlexAlign.Center)
    // .alignItems(HorizontalAlign.Center)
    // .width('100%')
    // .height('100%')
    // .backgroundColor(Color.White)
  }

  // aboutToAppear() {
  //   // 每秒更新倒计时
  //   this.timerId = setInterval(() => {
  //     if (this.countdown <= 1) {
  //       this.gotoHome()
  //     } else {
  //       this.countdown--
  //     }
  //   }, 1000)
  // }
  //
  // aboutToDisappear() {
  //   // 页面退出时清除定时器
  //   if (this.timerId !== -1) {
  //     clearInterval(this.timerId)
  //   }
  // }
  //
  // private gotoHome() {
  //   if (this.timerId !== -1) {
  //     clearInterval(this.timerId)
  //   }
  //   router.replaceUrl({ url: 'pages/Index' })
  // }
}
