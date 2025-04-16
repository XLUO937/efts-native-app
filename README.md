
# 📦 Snowflake Native App Template (template_example)

👇 以下内容为完整操作手册

## ✅ 本地模板文件说明

| 文件路径 | 功能 | 要做的事情 |
|----------|------|-------------|
| `build.ps1` | Windows 一键构建运行脚本 | 运行即可，无需修改 |
| `.snowflake/config.toml` | 登录配置文件 | 手动填写 account/role 等 |
| `scripts/setup_autogen.py` | 自动生成 setup.sql 脚本 | 默认运行即可 |
| `snowflake.yml` | CLI 项目结构说明 | 修改 package 和 stage 名 |
| `app/manifest.yml` | App 权限与参数定义 | 添加 privileges 和参数 |
| `app/setup/setup.sql` | 注册脚本入口 | 自动生成，无需修改 |
| `app/procedures/*.sql` | SQL 逻辑 | 添加你的业务逻辑 |
| `python/*.py` | Python 逻辑 | 可选 |
| `test/*.sql` | 测试脚本 | 可选 |
| `SUPPORT.md` | 联系人文档 | 可选 |
| `README.md` | 使用手册 | 自动生成 |

## ✅ Snowsight 上操作

```sql
CREATE APPLICATION PACKAGE TEMPLATE_EXAMPLE_PACKAGE;
CREATE STAGE TEMPLATE_EXAMPLE_PACKAGE.PUBLIC.TEMPLATE_EXAMPLE_STAGE;
```

## ✅ 本地构建运行步骤

```powershell
cd template_example_native_app
notepad .snowflake\config.toml
python scripts\setup_autogen.py
./build.ps1
```

## ✅ SUPPORT.md 示例

```markdown
# Support

If you need help with this application, please contact:

- Data Platform Team <data-platform@example.com>
- Maintainer: Jane Doe (@janedoe)
```

## ✅ manifest.yml 示例

```yaml
manifest_version: 1

artifacts:
  setup_script: setup/setup.sql
  readme: README.md

parameters:
  - name: app_mode
    type: string
    default: "dev"
    description: "dev or prod"

privileges:
  - REFERENCE DATA_CATALOG.MY_SCHEMA.MY_TABLE

read_only: true
```

## ✅ 参数参考

| 参数名 | 类型 | 默认值 | 说明 |
|--------|------|--------|------|
| app_mode | string | "dev" | 环境模式 |
| limit_rows | number | 1000 | 限制行数 |
| use_cache | boolean | false | 是否启用缓存 |
