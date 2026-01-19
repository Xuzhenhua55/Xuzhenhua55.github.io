# 1) 安装 Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# 2) 让 brew 生效（Apple Silicon / Intel 二选一，哪个存在用哪个）
if [ -x /opt/homebrew/bin/brew ]; then
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zshrc
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [ -x /usr/local/bin/brew ]; then
  echo 'eval "$(/usr/local/bin/brew shellenv)"' >> ~/.zshrc
  eval "$(/usr/local/bin/brew shellenv)"
fi

# 3) 继续你之前的流程
brew install rbenv ruby-build
echo 'eval "$(rbenv init - zsh)"' >> ~/.zshrc
source ~/.zshrc

cd /Users/xzh/Desktop/Repository/Xuzhenhua55.github.io
rbenv install 3.3.6
rbenv local 3.3.6
gem install bundler -v 2.6.9 --no-document
bundle _2.6.9_ install
bash ./run_server.sh