import * as CommonConstants from '../constants/CommonConstants';
import { TabBarItem } from '../viewmodel/TabBarItem';
import TabsViewModel from '../viewmodel/TabsViewModel';
import { Home } from './Home';
import { Market } from './Market';
import { Group } from './Group';
import { Profile } from './Profile';
import { Media } from './Media';

@Entry
@Component
export struct Root {
  build() {
    Column() {
      TabIndex()
    }
  }
}

@Component
export struct TabIndex {
  @State currentIndex: number = 0;
  @State tabs: TabBarItem[] = TabsViewModel.getTabData();

  @Builder tabBarBuilder(tabBar: TabBarItem, index?: number) {
    Flex({
      direction: FlexDirection.Column,
      justifyContent: FlexAlign.Center,
      alignItems: ItemAlign.Center
    }) {
      // 使用系统图标
      Image(this.currentIndex === index ? tabBar.selectIcon : tabBar.icon)
        .width($r('app.float.tab_img_width'))
        .height($r('app.float.tab_img_height'))
        .objectFit(ImageFit.Contain)

      Text(tabBar.name)
        .fontSize($r('app.float.tab_text_font_size'))
        .fontColor(this.currentIndex === index ?
        $r('sys.color.ohos_id_color_text_primary_activated') :
        $r('sys.color.ohos_id_color_text_secondary'))
        .margin({
          top: $r('app.float.tab_text_sm_top'),
          left: $r('app.float.tab_text_sm_left')
        })
    }
    .width(CommonConstants.FLEX_TAB_BAR_WIDTH)
    .height(CommonConstants.FLEX_TAB_BAR_HEIGHT)
  }

  build() {
    Column() {
      Tabs({ barPosition: BarPosition.End }) {
        ForEach(this.tabs, (item: TabBarItem, index?: number) => {
          TabContent() {
            // 根据索引加载对应页面
            if (index === 0) {
              Home()
            } else if (index === 1) {
              Media()
            } else if (index === 2) {
              Group()
            } else if (index === 3) {
              Market()
            } else if (index === 4) {
              Profile()
            }
          }
          .tabBar(this.tabBarBuilder(item, index))
        }, (item: TabBarItem, _index: number) => item.id.toString())
      }
      .vertical(CommonConstants.TAB_SM_VERTICAL)
      .barWidth(CommonConstants.TAB_SM_BAR_WIDTH)
      .barHeight(CommonConstants.TAB_SM_BAR_HEIGHT)
      .onChange((index: number) => {
        this.currentIndex = index;
      })
    }
    .backgroundColor($r('sys.color.white'))
  }
}