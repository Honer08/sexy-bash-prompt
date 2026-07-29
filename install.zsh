#!/usr/bin/env zsh
# Installation script for sexy-zsh-prompt

# Create helper to determine if our prompt is installed
prompt_is_installed () {
  # If our prompt is being loaded, exit positively. Otherwise, negatively.
  [[ -n "$(zsh -i -c 'echo $PROMPT' 2>/dev/null | grep 'sexy_zsh_prompt_get_git_info')" ]]
}

# If the prompt already contains our current prompt, leave
if prompt_is_installed; then
  echo "sexy-zsh-prompt is already installed"
  exit 0
fi

# Check if .zshrc exists, if not create it
if [[ ! -f ~/.zshrc ]]; then
  echo "# Creating ~/.zshrc"
  touch ~/.zshrc
fi

# Add the .zsh_prompt invocation to .zshrc
echo "# Adding ~/.zsh_prompt to ~/.zshrc"
echo "" >> ~/.zshrc
echo "# Run twolfson/sexy-bash-prompt (zsh version)" >> ~/.zshrc
echo "source ~/.zsh_prompt" >> ~/.zshrc

# Copy the prompt file to home directory
echo "# Copying .zsh_prompt to ~/.zsh_prompt"
cp -f ".zsh_prompt" ~/.zsh_prompt

echo ""
echo "Installation complete!"
echo "Please run 'source ~/.zshrc' or open a new terminal to see the changes."
