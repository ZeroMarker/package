winget install jdx.mise
curl https://mise.run | sh

mise install java@21
mise use java@17  # 当前目录生效
# 或全局：mise use -g java@21

mise ls java
# 或更通用写法（显示所有工具，但会过滤出 java）
mise ls

mise ls-remote java

mise ls-remote java | grep temurin     # 只看 Temurin（最推荐的免费开源发行版）
mise ls-remote java | grep 21          # 所有 21.x 版本
mise ls-remote java | fzf              # 用 fzf 交互搜索（超级方便！先 brew install fzf 或类似安装）
# findstr

echo 'eval "$(mise activate bash)"' >> ~/.bashrc
source ~/.bashrc

# 添加激活行（注意用 pwsh，不是 powershell）
Add-Content -Path $PROFILE -Value '(&mise activate pwsh) | Out-String | Invoke-Expression'

