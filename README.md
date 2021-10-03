## 青龙一键配置海尔破仓库任务[点此查看](https://github.com/JunzhouLiu/BILIBILI-HELPER-PRE)
```
docker exec -it qinglong bash -c "$(curl -fsSL https://ghproxy.com/https://raw.githubusercontent.com/Tiziyi/bili/main/bilibili.sh)"
```
* 注意把上面qinglong改为您的容器名.

* 默认配置保存位置为/ql/config/bilibili.json,您也可以自行修改该路径位置为您想要的位置并更改/ql/scripts/raw_main_bili.sh内/ql/config/bilibili.json为您的文件绝对路径.

* 修改了默认配置文件位置请一起修改自动更新配置文件/ql/scripts/raw_main_bili_update.sh内30·32行/ql/config/bilibili.json,否则你的/ql/config文件夹内将会在每次自动更新的时候更新一份最新模板.

* jar包默认保存位置为/ql/scripts/bilibili/,如果您想更改这个路径,请更改/ql/scripts/raw_main_bili_update.sh内第9·10·12行/ql/scripts/bilibili/为您想保存位置的绝对路径.

* 修改了jay包围着请一起修改/ql/scripts/raw_main_bili.sh内/ql/scripts/bilibili/为您保存位置的绝对路径.

* 请勿将项目的任何内容用于商业或非法目的，否则后果自负.

* 如果任何单位或个人认为该项目的脚本可能涉嫌侵犯其权利，则应及时通知并提供身份证明，所有权证明，我们将在收到认证文件后删除相关脚本.

* 任何以任何方式查看此项目的人或直接或间接使用该bili项目的任何脚本的使用者都应仔细阅读此声明。本仓库拥有者保留随时更改或补充此免责声明的权利。一旦使用并复制了任何相关脚本或bili项目的规则，则视为您已接受此免责声明.

 **您必须在下载后的24小时内从计算机或手机中完全删除以上内容.**  </br>
 ***您使用或者复制了本仓库且本人制作的任何脚本，则视为`已接受`此声明，请仔细阅读*** 
