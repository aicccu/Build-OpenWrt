# Setting zsh

mkdir -p files/root

pushd files/root
git clone https://github.com/robbyrussell/oh-my-zsh ./.oh-my-zsh

git clone https://github.com/zsh-users/zsh-autosuggestions ./.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ./.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions ./.oh-my-zsh/custom/plugins/zsh-completions

cp $GITHUB_WORKSPACE/scripts/.zshrc ./
popd