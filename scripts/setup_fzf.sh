# echo "export FZF_DEFAULT_OPTS='--color=info:#f8f8f2,spinner:#f8f8f2,pointer:#50fa7b,hl:#50fa7b,fg:#f8f8f2,header:#6272a4'" >> ~/.zshrc
# echo "export FZF_DEFAULT_OPTS=\"$FZF_DEFAULT_OPTS --preview 'bat --style=numbers --color=always --line-range :500 {}'\"" >> ~/.zshrc
# echo "export FZF_DEFAULT_OPTS=\"$FZF_DEFAULT_OPTS --bind='ctrl-o:execute(vim {})+abort'\"" >> ~/.zshrc
#
echo "export FZF_DEFAULT_OPTS='--color=info:#f8f8f2,spinner:#f8f8f2,pointer:#50fa7b,hl:#50fa7b,fg:#f8f8f2,header:#6272a4'" >> ~/.zshrc
echo "export FZF_DEFAULT_OPTS=\"\$FZF_DEFAULT_OPTS --preview 'bat --style=numbers --color=always --line-range :500 {}'\"" >> ~/.zshrc
echo "export FZF_DEFAULT_OPTS=\"\$FZF_DEFAULT_OPTS --bind='ctrl-o:execute(vim {})+abort'\"" >> ~/.zshrc
echo "alias nv=\"\nvim \$(fzf)\"\" >> ~/.zshrc

