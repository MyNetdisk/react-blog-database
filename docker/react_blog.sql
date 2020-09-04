# Host: localhost  (Version: 5.7.26)
# Date: 2020-08-19 20:39:26
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

# 创建数据库
create database `react_blog` default character set utf8 collate utf8_general_ci;

use react_blog;

#
# Structure for table "admin_user"
#

DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE `admin_user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) DEFAULT NULL,
  `passWord` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "admin_user"
#

/*!40000 ALTER TABLE `admin_user` DISABLE KEYS */;
INSERT INTO `admin_user` VALUES (1,'jspang','123456');
/*!40000 ALTER TABLE `admin_user` ENABLE KEYS */;

#
# Structure for table "posts"
#

DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `article_content` text CHARACTER SET utf8mb4 NOT NULL,
  `introduce` text,
  `addTime` int(11) DEFAULT NULL,
  `view_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

#
# Data for table "posts"
#

/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,3,'采用 Github Action 自动化部署博客','作为一名高校计算机专业教师，经常有人向我询问：\n\n我是非计算机专业的，想找一份程序员的工作，是不是应该报一个培训班去学？\n\n我自己除了在入门阶段上过两个电脑培训班（全部都在上个世纪九十年代）之外，后来就再没参加过，我觉得根本就没这必要，自学足矣。\n\n并且我对现在以赚钱为最高目的的、鱼龙混杂、弄虚作假成风的 IT 就业培训行业印象并不好，所以我总趋向于不推荐学生参加培训。特别是计算机专业的学生，如果我听到计算机专业的学生在毕业之前还需要参加一个软件培训班才能找到工作，那我一定会深深地叹息……\n\n但是随着问类似问题的人越来越多，我也开始日益认真地思索“通过参加培训班来学习软件技术”这件事情，是不是真的不应该推荐？\n\n本文就是我对这个问题思索的一点结果。\n\n在这里，我不讨论 IT 培训机构存在的必要性，这都是一个产业了，它存在的必要性还用废话吗？\n\n我关注的是从学习者角度而言，“自学”与“参加培训”这两种方式的对比和选择策略。\n\n首先明确一点，我认为，对于计算机专业的学生，如果还需要参加培训班才能找到工作，那么我可以肯定这个学生的四年时光是被浪费了，不应该这样的。不要把责任全推到外部环境上，哪怕学校再差，周围人再怎么不爱学习，只要真的认真学了，断不至于惨到不参加培训班就找不到工作的境地。\n\n那么，对于非计算机专业的学生，应不应该参加培训呢？要知道，以就业为目的的 IT 培训，学费通常高达数万，可一点也不便宜啊。\n\n我的回答是：是不是需要参加培训，这是要看人的。\n\n有些人不必花这个钱，通过自学完全可以找到工作，而有些人，参加相应培训是合适的。','博客的部署往往只需要一行命令，但却需要花费我几分钟在本地的构建时间，完成博客内容后本应该放松放松心情，这几分钟的等待显得尤为惹人生厌\r\n\r\n那么如何解决这个问题呐？当然是自动化部署啦，这样我们每次只需要将写完的博客 Push 到 Github 上，就可以触发相应的 CI 以完成博客的自动部署咯，所以这里就介绍如何使用 Github Action 来自动化部署博',0,0),(2,3,'自学编程 vs 参加培训','作为一名高校计算机专业教师，经常有人向我询问：\n\n我是非计算机专业的，想找一份程序员的工作，是不是应该报一个培训班去学？\n\n我自己除了在入门阶段上过两个电脑培训班（全部都在上个世纪九十年代）之外，后来就再没参加过，我觉得根本就没这必要，自学足矣。\n\n并且我对现在以赚钱为最高目的的、鱼龙混杂、弄虚作假成风的 IT 就业培训行业印象并不好，所以我总趋向于不推荐学生参加培训。特别是计算机专业的学生，如果我听到计算机专业的学生在毕业之前还需要参加一个软件培训班才能找到工作，那我一定会深深地叹息……\n\n但是随着问类似问题的人越来越多，我也开始日益认真地思索“通过参加培训班来学习软件技术”这件事情，是不是真的不应该推荐？\n\n本文就是我对这个问题思索的一点结果。\n\n在这里，我不讨论 IT 培训机构存在的必要性，这都是一个产业了，它存在的必要性还用废话吗？\n\n我关注的是从学习者角度而言，“自学”与“参加培训”这两种方式的对比和选择策略。\n\n首先明确一点，我认为，对于计算机专业的学生，如果还需要参加培训班才能找到工作，那么我可以肯定这个学生的四年时光是被浪费了，不应该这样的。不要把责任全推到外部环境上，哪怕学校再差，周围人再怎么不爱学习，只要真的认真学了，断不至于惨到不参加培训班就找不到工作的境地。\n\n那么，对于非计算机专业的学生，应不应该参加培训呢？要知道，以就业为目的的 IT 培训，学费通常高达数万，可一点也不便宜啊。\n\n我的回答是：是不是需要参加培训，这是要看人的。\n\n有些人不必花这个钱，通过自学完全可以找到工作，而有些人，参加相应培训是合适的。','自学编程 vs 参加培训',NULL,0),(3,3,'采用 Github Action 自动化部署博客','## Github Action 的使用\n\n关于自动化部署，起初我接触的是 Travis CI，配置很简单，使用起来非常简单\n\n后来 Github Action 完全开放，我就完全转 Github Action 这个自定义更加方便的 CI 系统了，起初我的自动化部署脚本也是自己写的 Shell 脚本，因为那时候相关的部署 Action 尚不完善，不支持直接 Push 到根地址，不过前段时间支持了之后我就放弃自己写的脚本咯\n\n那么如何使用 Github Action 呢？只需要在项目根目录新建 `.github/workflows/` 文件夹，再在其中新建相应的 YAML 配置文件即可，比如 `hello-github-action.yml`，名字随意啦，只是为了区分\n\n文件内写入相应的内容\n\n```yaml\n# action 名字\nname: Hello Github Action\n\non:\n  # 触发条件，比如 push pull_request 等\n  push:\n    branches:\n      - master\n\njobs:\n  build-and-deploy:\n    # 运行环境\n    runs-on: ubuntu-latest\n    steps:\n      # 各步的任务\n      - name: Hello Github Action\n        run: echo \'Hello Github Action\'\n```\n\n这样我们就完成了一个简单的 Github Action，它会在我们每次 push 到 master 分支时触发，之后就会打印 `Hello Github Action`，虽然看不见……\n\n## 自动化部署到 Github Pages\n\n我们对上面的配置稍作修改，目标就是在源仓库 Push 时触发，此时将博客源码构建成静态文件，并将它们 Push 到 Github Pages 仓库即可\n\n```yaml\nname: Vuepress Deploy\n\non:\n  push:\n    branches:\n      - master\n\njobs:\n  build-and-deploy:\n    runs-on: ubuntu-latest\n    steps:\n      # 使用某个 Repo\n      - name: Checkout 🛎️\n        uses: actions/checkout@v2\n\n      # 构建静态文件\n      - name: Install and Build 🔧\n        run: |\n          npm install yarn\n          yarn\n          yarn docs:build\n\n      # 部署到 Github Pages\n      - name: Deploy 🚀\n        uses: peaceiris/actions-gh-pages@v3\n        with:\n          personal_token: ${{ secrets.PERSONAL_TOKEN }}\n          publish_dir: docs/.vuepress/dist\n          external_repository: SigureMo/SigureMo.github.io\n          publish_branch: master\n          cname: sigure.xyz\n          user_name: \"github-actions[bot]\"\n          user_email: \"github-actions[bot]@users.noreply.github.com\"\n```\n\n这里第一步是使用你的源代码 repo，其中 uses 是指使用了某个现成的 Action，比如这个 `actions/checkout` 就是 [`github.com/actions/checkout`](https://github.com/actions/checkout) 的 `v2` 版本，如果需要 submodule 或者 lfs 可以通过 `with` 选项来修改参数\n\n第二步是将博客源码构建成静态文件，不同的框架的构建方法自然不同，我这里是以 Vuepress 作为示例\n\n第三步就是将构建好的静态文件 Push 到目标的 Github Pages 对应的 Repo 了，这里使用的是 [`peaceiris/actions-gh-pages`](https://github.com/peaceiris/actions-gh-pages)，如果你只需要部署到当前 Repo 的 `gh-pages` 分支上的话，你只需要配置以下内容即可\n\n```yaml\n- name: Deploy 🚀\n  uses: peaceiris/actions-gh-pages@v3\n  with:\n    github_token: ${{ secrets.GITHUB_TOKEN }}\n    publish_dir: docs/.vuepress/dist\n```\n\n这里的 `secrets.GITHUB_TOKEN` 不需要配置，Github 会自动提供\n\n但是如果你和我一样想部署到 `<username>.github.io` 的话，就需要稍微改动一下啦，该 Action 提供了非常丰富的参数以供配置\n\n由于目标 Repo 和目标分支都变了，就需要分别设置下 `external_repository` 和 `publish_branch` 这两个参数咯\n\n另外，由于 Push 到外部 Repo 的话 `GITHUB_TOKEN` 的权限不足，因此需要提供其它的验证方式，比如 `personal_token` 和 `deploy_key`，这里提一下 `personal_token` 的生成与配置方式，该方法相比于后者也更方便一些\n\n依次进入`个人 Settings -> Developer settings -> Personal access tokens` 点击 `Generate new token`，随便填写个名字，然后下面勾选 `repo`（权限） 后确认 `Generate token`\n\n由于生成的 token 只能看一次，请确定复制后再关闭页面\n\n之后依次进入 `源 repo -> Settings -> Secrets`，点击 `New secret`，Name 字段填写 `PERSONAL_TOKEN`，Value 字段粘贴刚刚生成的 token 即可\n\n这样，该 action 在 `secrets.PERSONAL_TOKEN` 处就可以获得刚刚生成的拥有读写 repo 权限的 token，然后传入该 action 的 ACCESS_TOKEN 参数，进而完成整个部署过程\n\n这样就完成了权限的配置啦，该 Action 还提供了很多比较实用的参数，比如 `cname`，更多详情去看它的文档吧\n\n完成这些，就可以重新 push 一下源代码 repo 试一下啦，还可以在源 repo 的 Actions 中可以看到相关进度\n\n## 同步到 Coding Pages\n\n虽然 Github Pages 非常方便，但是国内访问实在是太慢，加载太久的话就木有人愿意继续访问的说，虽然想尝试下 CDN，但貌似 CDN 有着更新不及时的缺点，强迫症表示无法接受\n\nCoding 是国内的软件开发平台，国内访问速度还不错，因此利用 Coding 作为国内的访问镜像也许是个不错的选择，只需要将国内域名解析到 Coding Pages，国外解析到 Github Pages 就可以啦\n\n我们首先在 Coding 新建一个项目，选择项目模板时记得选择 `DevOps 项目`\n\n进入项目，在`持续部署 -> 静态网站` 中开启该功能，记得勾选自动部署功能，之后就可以获得访问地址啦，而且还可以配置自己的域名\n\n为了能够自动将 Github Pages 的静态文件同步过来，我们需要配置一个 Action\n\n```yaml\n- name: Sync to Coding 🔀\n  uses: wearerequired/git-mirror-action@v1\n  env:\n    SSH_PRIVATE_KEY: ${{ secrets.SSH_PRIVATE_KEY }}\n  with:\n    source-repo: \"git@github.com:SigureMo/SigureMo.github.io.git\"\n    destination-repo: \"git@e.coding.net:sigure/notev/notev.git\"\n```\n\n`source-repo` 和 `destination-repo` 自然分别对应 Github Pages Repo 和 Coding Pages Repo 的 ssh 地址，后者在 `代码仓库 -> 设置 -> 仓库设置` 下的 `仓库设置` 即可获得\n\n当然，我们需要拥有 Github Pages Repo 的读权限和 Coding Pages Repo 的写权限，该 Action 才能进行，这里需要配置下 ssh 公钥与私钥，公钥配置在 Github Pages Repo 和 Coding Pages Repo，而负责执行 Action 的源代码 Repo 则存储私钥\n\n为了安全起见，不要使用现有的 ssh 密钥，创建一个临时的 ssh 密钥对即可\n\n私钥直接保存在 Github 源代码 Repo 的 `Settings -> secrets` 中，而公钥则要保存在两个目标 repo 中\n\n对于 Github，直接在该目标 repo 中的 `Settings -> Deploy keys` 中添加该公钥即可\n\n对于 Coding，也是在 `代码仓库 -> 设置 -> 仓库设置` 的 `部署公钥` 配置即可，记得勾选写入权限\n\n此时再次触发 Action 就可以同步到 Coding Pages 啦\n\n## 同步到 Gitee Pages\n\n那么，为什么之前没有选择 Gitee 呢？因为 Gitee 的自动部署以及自定义域名都是 Gitee Pages Pro 的服务，前者可以通过 Github Action 来完成，但后者就没有办法了，如果你没有绑定域名的需求的话，Gitee 会是更好的选择\n\n我们在 Gitee 创建一个 Github 目标 repo 对应的 repo，在创建时的 `Import` 选项中填写 Github 目标 repo 的地址\n\n之后在新的 Gitee repo 下中的 `Services -> Gitee Pages` 开启该服务，emmm，此时就可以注意到该服务的更新需要手动更新，并不能像 Github Pages 那样自动更新\n\n为了完成 Github 目标 repo 到 Gitee 目标 repo 的同步，以及 Gitee Pages 的自动更新，我们还需要配置新的 Action\n\n```yaml\n# 同步到 Gitee repo\n- name: Sync to Gitee 🔀\n  uses: wearerequired/git-mirror-action@v1\n  env:\n    SSH_PRIVATE_KEY: ${{ secrets.SSH_PRIVATE_KEY }}\n  with:\n    source-repo: \"git@github.com:SigureMo/SigureMo.github.io.git\"\n    destination-repo: \"git@gitee.com:siguremo/SigureMo.git\"\n\n# 更新 Gitee Pages\n- name: Build Gitee Pages 👷\n  uses: yanglbme/gitee-pages-action@master\n  with:\n    gitee-username: SigureMo\n    gitee-password: ${{ secrets.GITEE_PASSWORD }}\n    gitee-repo: SigureMo/SigureMo\n```\n\n首先我们需要将 Github 的静态文件存储 repo 的代码同步到 Gitee，它需要配置下 `SSH_PRIVATE_KEY`，也就是能够同时访问两个 repo 的私钥，这个和前面 Coding 的配置方法都一样啦，私钥放 Github 源 Repo，公钥放两个目标 Repo，值得注意的是，Gitee 的公钥不能直接在该 Repo 下的 `Settings -> Deploy keys` 进行配置，因为在这里配置的公钥并不能拥有对该 repo 的写权限，所以我们需要在个人 `Settings -> SSH keys` 中添加该公钥\n\n第二步就是更新 Gitee Pages 了，这一步很简单，将 Gitee 的密码配置到 `Settings -> secrets` 即可\n\n现在再重新 Push，你会发现 Gitee Pages 也会立刻重新构建，不过 Gitee 可能会弹出在非常用地登陆的消息，因为更新过程使用你的密码进行了登陆\n\n报错：不能同时同步到 coding & gitee 中\n\n```\nGithub Actions: [remote rejected] master -> master (shallow update not allowed), error: failed to push some refs\n```\n\n解决方案：\n\n```yaml\n- uses: actions/checkout@v2\n  with:\n    fetch-depth: 0\n```\n\n# References\n\n1. [actions-gh-pages](https://github.com/peaceiris/actions-gh-pages)\n2. [gitee-pages-action](https://github.com/yanglbme/gitee-pages-action)\n3. [利用 Github 和 Coding 为 Hexo 博客开启 Https](https://zhuanlan.zhihu.com/p/111786790)','博客的部署往往只需要一行命令，但却需要花费我几分钟在本地的构建时间，完成博客内容后本应该放松放松心情，这几分钟的等待显得尤为惹人生厌\n\n那么如何解决这个问题呐？当然是自动化部署啦，这样我们每次只需要将写完的博客 Push 到 Github 上，就可以触发相应的 CI 以完成博客的自动部署咯，所以这里就介绍如何使用 Github Action 来自动化部署博客',NULL,0),(4,1,'闹翻发顺丰','fa\'s\'f阿凡地方发啊发的啊沙发沙发啊给','发生飞洒发 发生多少好好读书',NULL,0),(5,2,'赫迪拉法律的','发顺丰发生据了解 哦积分','发生发生  范德萨',NULL,0);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

#
# Structure for table "types"
#

DROP TABLE IF EXISTS `types`;
CREATE TABLE `types` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(255) NOT NULL DEFAULT '',
  `orderNum` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Data for table "types"
#

/*!40000 ALTER TABLE `types` DISABLE KEYS */;
INSERT INTO `types` VALUES (1,'fontEnd',1),(2,'backEnd',2),(3,'essay',3);
/*!40000 ALTER TABLE `types` ENABLE KEYS */;
