import { TabBarItem } from './TabBarItem';

export class TabsViewModel {
  getTabData(): TabBarItem[] {
    return [
      {
        id: 0,
        name: $r('app.string.tab_home'),
        icon: $r('sys.media.ohos_ic_public_camera'), // 系统首页图标
        selectIcon: $r('sys.media.ohos_ic_public_camera') // 系统首页填充图标
      },
      {
        id: 1,
        name: $r('app.string.tab_media'),
        icon: $r('sys.media.ohos_ic_public_camera'), // 系统电影图标
        selectIcon: $r('sys.media.ohos_ic_public_camera')
      },
      {
        id: 2,
        name: $r('app.string.tab_group'),
        icon: $r('sys.media.ohos_ic_public_camera'), // 系统人群图标
        selectIcon: $r('sys.media.ohos_ic_public_camera')
      },
      {
        id: 3,
        name: $r('app.string.tab_market'),
        icon: $r('sys.media.ohos_ic_public_camera'), // 系统购物车图标
        selectIcon: $r('sys.media.ohos_ic_public_camera')
      },
      {
        id: 4,
        name: $r('app.string.tab_profile'),
        icon: $r('sys.media.ohos_ic_public_camera'), // 系统个人图标
        selectIcon: $r('sys.media.ohos_ic_public_camera')
      }
    ];
  }
}

const tabsViewModel = new TabsViewModel();
export default tabsViewModel;