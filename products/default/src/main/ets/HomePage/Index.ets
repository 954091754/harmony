import { CircleShape } from "@kit.ArkUI";

@Entry
@Component
export struct Home {
  @Provide('appPathStack') appPathStack: NavPathStack = new NavPathStack();

  build() {
    RelativeContainer() {
      ScreenShot()
    }
  }
}

@Component
export struct ScreenShot {
  private scroller: Scroller = new Scroller();

  build() {
    Scroll(this.scroller) {
      Column() {
        Module0()
        Module1()
        Module2()
        Module3()
        Module4()
        Module6()
      }

      .width('100%')
      .alignItems(HorizontalAlign.Center)
    }
    .backgroundColor($r('app.color.page_bg_color'))
    .align(Alignment.Top)
    .scrollable(ScrollDirection.Vertical)
    .scrollBar(BarState.Off)
    .width('100%')
    .height("100%")

  }
}


@Component
export struct Module0 {
  build() {
    Row() {
      Text('🔍')
        .fontSize('44.0px').textOverflow({ overflow: TextOverflow.Ellipsis }).maxLines(1)
      Text('用一部电影来形容您的2025')
        .fontSize(14)
        .fontColor('black')
        .margin(2)
        .textOverflow({ overflow: TextOverflow.Ellipsis })
        .maxLines(1)
    }
    .width('95%')
    .backgroundColor('white')
    .alignItems(VerticalAlign.Center)
    .justifyContent(FlexAlign.Start)
    .padding({
      top: '19.0px',
      bottom: '19.0px',
      left: '19.0px',
      right: '19.0px'
    })
    .borderRadius(20)
    .margin({ bottom: 10 })
    .clip(true)
  }
}


@Component
export struct Module1 {
  build() {
    Grid() {
      GridItem() {
        Column() {
          Text('电影')
            .fontSize(14)
            .fontColor('#007AFF')
            .margin(5)
            .textOverflow({ overflow: TextOverflow.Ellipsis })
            .maxLines(1)
        }
        .backgroundColor('#FFFFFF')
        .alignItems(HorizontalAlign.Center)
      }
      .padding({
        top: 5,
        left: 3,
        bottom: 5,
        right: 3
      })

      GridItem() {
        Column() {
          Text('电视')
            .fontSize(14)
            .margin(5).textOverflow({ overflow: TextOverflow.Ellipsis }).maxLines(1)
        }
        .backgroundColor('#FFFFFF')
        .alignItems(HorizontalAlign.Center)
      }
      .padding({
        top: 5,
        left: 3,
        bottom: 5,
        right: 3
      })

      GridItem() {
        Column() {
          Text('综艺')
            .fontSize(14)
            .margin(5).textOverflow({ overflow: TextOverflow.Ellipsis }).maxLines(1)
        }
        .backgroundColor('#FFFFFF')
        .alignItems(HorizontalAlign.Center)
      }
      .padding({
        top: 5,
        left: 3,
        bottom: 5,
        right: 3
      })

      GridItem() {
        Column() {
          Text('读书')
            .fontSize(14)
            .margin(5).textOverflow({ overflow: TextOverflow.Ellipsis }).maxLines(1)
        }
        .backgroundColor('#FFFFFF')
        .alignItems(HorizontalAlign.Center)
      }
      .padding({
        top: 5,
        left: 3,
        bottom: 5,
        right: 3
      })

      GridItem() {
        Column() {
          Text('音乐')
            .fontSize(14)
            .margin(5).textOverflow({ overflow: TextOverflow.Ellipsis }).maxLines(1)
        }
        .backgroundColor('#FFFFFF')
        .alignItems(HorizontalAlign.Center)
      }
      .padding({
        top: 5,
        left: 3,
        bottom: 5,
        right: 3
      })

      GridItem() {
        Column() {
          Text('同城')
            .fontSize(14)
            .margin(5).textOverflow({ overflow: TextOverflow.Ellipsis }).maxLines(1)
        }
        .backgroundColor('#FFFFFF')
        .alignItems(HorizontalAlign.Center)
      }
      .padding({
        top: 5,
        left: 3,
        bottom: 5,
        right: 3
      })
    }
    .backgroundColor('#FFFFFF')
    .width('95%')
    .borderRadius(20)
    .margin({ bottom: 10 })
    .clip(true)
    .columnsTemplate(('1fr ').repeat(6))
    .maxCount(1)
    .alignSelf(ItemAlign.Center)
  }
}


@Component
export struct Module2 {
  build() {
    Grid() {
      GridItem() {
        Column() {
          Text('🔍')
            .fontSize('76.0px')
            .width('116.0px')
            .height('114.0px')
            .backgroundColor('lightblue')
            .clipShape(new CircleShape({ width: "116.0px", height: "114.0px" }))
            .textAlign(TextAlign.Center)
            .margin(2)
            .textOverflow({ overflow: TextOverflow.Ellipsis })
            .maxLines(1)
          Text('找电影')
            .fontSize(14)
            .margin(2).textOverflow({ overflow: TextOverflow.Ellipsis }).maxLines(1)
        }
        .backgroundColor('#ffffff')
        .alignItems(HorizontalAlign.Center)
        .padding({
          top: '19.0px',
          bottom: '19.0px',
          left: '19.0px',
          right: '19.0px'
        })
      }
      .padding({
        top: 5,
        left: 3,
        bottom: 5,
        right: 3
      })

      GridItem() {
        Column() {
          Text('📈')
            .fontSize('114.0px').textOverflow({ overflow: TextOverflow.Ellipsis }).maxLines(1)
          Text('豆瓣榜单')
            .fontSize(14)
            .margin(2).textOverflow({ overflow: TextOverflow.Ellipsis }).maxLines(1)
        }
        .backgroundColor('#ffffff')
        .alignItems(HorizontalAlign.Center)
        .padding({
          top: '19.0px',
          bottom: '19.0px',
          left: '19.0px',
          right: '19.0px'
        })
      }
      .padding({
        top: 5,
        left: 3,
        bottom: 5,
        right: 3
      })

      GridItem() {
        Column() {
          Text('❓')
            .fontSize('76.0px')
            .width('133.0px')
            .height('114.0px')
            .backgroundColor('lightblue')
            .clipShape(new CircleShape({ width: "133.0px", height: "114.0px" }))
            .textAlign(TextAlign.Center)
            .margin(2)
            .textOverflow({ overflow: TextOverflow.Ellipsis })
            .maxLines(1)
          Text('豆瓣猜')
            .fontSize(14)
            .margin(2).textOverflow({ overflow: TextOverflow.Ellipsis }).maxLines(1)
        }
        .backgroundColor('#ffffff')
        .alignItems(HorizontalAlign.Center)
        .padding({
          top: '19.0px',
          bottom: '19.0px',
          left: '19.0px',
          right: '19.0px'
        })
      }
      .padding({
        top: 5,
        left: 3,
        bottom: 5,
        right: 3
      })

      GridItem() {
        Column() {
          Text('🎟')
            .fontSize('76.0px')
            .width('133.0px')
            .height('114.0px')
            .backgroundColor('lightblue')
            .borderRadius('20%')
            .textAlign(TextAlign.Center)
            .margin(2)
            .textOverflow({ overflow: TextOverflow.Ellipsis })
            .maxLines(1)
          Text('豆瓣票单')
            .fontSize(14)
            .margin(2).textOverflow({ overflow: TextOverflow.Ellipsis }).maxLines(1)
        }
        .backgroundColor('#ffffff')
        .alignItems(HorizontalAlign.Center)
        .padding({
          top: '19.0px',
          bottom: '19.0px',
          left: '19.0px',
          right: '19.0px'
        })
      }
      .padding({
        top: 5,
        left: 3,
        bottom: 5,
        right: 3
      })
    }
    .backgroundColor('#ffffff')
    .width('95%')
    .borderRadius(20)
    .margin({ bottom: 10 })
    .clip(true)
    .columnsTemplate(('1fr ').repeat(4))
    .maxCount(1)
    .alignSelf(ItemAlign.Center)
  }
}


@Component
export struct Module3 {
  build() {
    Image($r('app.media.crop_image_1')).height('21.5%').width('100%').margin({ 'bottom': 10 })
  }
}


@Component
export struct Module4 {
  build() {
    Column() {
      Row() {
        Text('影院热映')
          .margin(2).textOverflow({ overflow: TextOverflow.Ellipsis }).maxLines(1)
        Text('即将上映')
          .fontSize(14)
          .margin(2).textOverflow({ overflow: TextOverflow.Ellipsis }).maxLines(1)
        Blank()
        Text('全部 >')
          .fontSize(14)
          .margin(2).textOverflow({ overflow: TextOverflow.Ellipsis }).maxLines(1)
      }
      .justifyContent(FlexAlign.SpaceBetween)
      .padding({
        top: '19.0px',
        bottom: '19.0px',
        left: '19.0px',
        right: '19.0px'
      })
      .width('100%')

      Grid() {
        GridItem() {
          Column() {
            Text('🎬')
              .fontSize('202.66666666666666px')
              .width('304.0px')
              .height('447.0px')
              .backgroundColor('purple')
              .borderRadius('20%')
              .textAlign(TextAlign.Center)
              .margin(2)
              .textOverflow({ overflow: TextOverflow.Ellipsis })
              .maxLines(1)
            Text('电影 1')
              .fontSize(14)
              .margin(2).textOverflow({ overflow: TextOverflow.Ellipsis }).maxLines(1)
            Text('★★★★☆ 7.2')
              .fontSize(12)
              .margin(2).textOverflow({ overflow: TextOverflow.Ellipsis }).maxLines(1)
          }
          .padding({
            top: '9.5px',
            bottom: '9.5px',
            left: '9.5px',
            right: '9.5px'
          })
        }
        .padding({
          top: 5,
          left: 3,
          bottom: 5,
          right: 3
        })

        GridItem() {
          Column() {
            Text('👮')
              .fontSize('202.66666666666666px')
              .width('304.0px')
              .height('447.0px')
              .backgroundColor('gray')
              .borderRadius('20%')
              .textAlign(TextAlign.Center)
              .margin(2)
              .textOverflow({ overflow: TextOverflow.Ellipsis })
              .maxLines(1)
            Text('电影 2')
              .fontSize(14)
              .margin(2).textOverflow({ overflow: TextOverflow.Ellipsis }).maxLines(1)
            Text('★★★★☆ 6.8')
              .fontSize(12)
              .margin(2).textOverflow({ overflow: TextOverflow.Ellipsis }).maxLines(1)
          }
          .padding({
            top: '9.5px',
            bottom: '9.5px',
            left: '9.5px',
            right: '9.5px'
          })
        }
        .padding({
          top: 5,
          left: 3,
          bottom: 5,
          right: 3
        })

        GridItem() {
          Column() {
            Text('🪖')
              .fontSize('202.66666666666666px')
              .width('304.0px')
              .height('447.0px')
              .backgroundColor('olive')
              .borderRadius('20%')
              .textAlign(TextAlign.Center)
              .margin(2)
              .textOverflow({ overflow: TextOverflow.Ellipsis })
              .maxLines(1)
            Text('电影 3')
              .fontSize(14)
              .margin(2).textOverflow({ overflow: TextOverflow.Ellipsis }).maxLines(1)
            Text('★★★★☆ 8.1')
              .fontSize(12)
              .margin(2).textOverflow({ overflow: TextOverflow.Ellipsis }).maxLines(1)
          }
          .padding({
            top: '9.5px',
            bottom: '9.5px',
            left: '9.5px',
            right: '9.5px'
          })
        }
        .padding({
          top: 5,
          left: 3,
          bottom: 5,
          right: 3
        })
      }
      .backgroundColor('#FFFFFF')
      .width('95%')
      .borderRadius(20)
      .margin({ bottom: 10 })
      .clip(true)
      .columnsTemplate(('1fr ').repeat(3))
      .maxCount(1)
      .alignSelf(ItemAlign.Center)
    }
    .width('95%')
    .backgroundColor('#FFFFFF')
    .alignItems(HorizontalAlign.Start)
    .borderRadius(20)
    .margin({ bottom: 10 })
    .clip(true)
  }
}


@Component
export struct Module6 {
  build() {
    Column() {
      Text('It is 2025/10/02 02:20:51 Thursday now.')
        .fontSize(14)
        .fontColor('black')
        .margin(2)
        .textOverflow({ overflow: TextOverflow.Ellipsis })
        .maxLines(1)
    }
    .width('95%')
    .backgroundColor('white')
    .alignItems(HorizontalAlign.Start)
    .padding({
      top: '9.5px',
      bottom: '9.5px',
      left: '9.5px',
      right: '9.5px'
    })
    .borderRadius(20)
    .margin({ bottom: 10 })
    .clip(true)
  }
}

