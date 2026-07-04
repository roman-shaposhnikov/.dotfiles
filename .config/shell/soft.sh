# PATH
export PATH=~/.local/bin:$PATH
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/go/bin
export PATH=~/.local/share/solana/install/active_release/bin:$PATH

# Yazi
function y() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
    command yazi "$@" --cwd-file="$tmp"
    IFS= read -r -d '' cwd < "$tmp"
    [ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
    rm -f -- "$tmp"
}

# NVM set up
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Android Studio
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin
export ANDROID_SDK_ROOT=$HOME/Android/Sdk

# Ionic
export CAPACITOR_ANDROID_STUDIO_PATH=/snap/android-studio/current/bin/studio.sh

# Tauri
#export JAVA_HOME=/opt/android-studio/jbr
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
export NDK_HOME=$ANDROID_HOME/ndk/26.1.10909125


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Swift
export PATH=~/.local/share/swift-5.10.1-RELEASE-ubuntu22.04/usr/bin:$PATH

# Gradle
#export PATH=/opt/gradle/gradle-8.5-rc-2/bin:$PATH

# pnpm
export PNPM_HOME="/home/dector/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

[ -f "/home/dector/.ghcup/env" ] && . "/home/dector/.ghcup/env" # ghcup-env

# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
test -r '/home/dector/.opam/opam-init/init.sh' && . '/home/dector/.opam/opam-init/init.sh' > /dev/null 2> /dev/null || true
# END opam configuration

