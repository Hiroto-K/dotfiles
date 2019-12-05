#!/usr/bin/env zsh

set -eu

echo "Install anyenv"

anyenv_dir="${HOME}/.anyenv"
anyenv_bin="${anyenv_dir}/bin/anyenv"
anyenv_plugins_dir="${anyenv_dir}/plugins"
anyenv_update_dir="${anyenv_dir}/plugins/anyenv-update"

if [ -d ${anyenv_dir} ]; then
    echo "Directory ${anyenv_dir} is already exist."
    echo "Skip install the anyenv."
else
    git clone --depth 1 https://github.com/riywo/anyenv ${anyenv_dir}
fi

echo "Install envs"
for envname in rbenv phpenv pyenv ndenv; do
    echo "Install ${envname}"
    envname_dir="${anyenv_dir}/envs/${envname}"
    if [ -d ${envname_dir} ];then
        echo "Directory ${envname_dir} is already exist."
        echo "Skip install ${envname}."
    else
        ${anyenv_bin} install -f ${envname}
    fi
done

echo "Install anyenv-update"

echo "Create directory ${anyenv_plugins_dir}"
mkdir -p ${anyenv_plugins_dir}

echo "Install anyenv-update"
if [ -e ${anyenv_update_dir} ];then
    echo "Directory ${anyenv_update_dir} is already exist."
    echo "Skip install the anyenv-update."
else
    git clone --depth 1 https://github.com/znz/anyenv-update ${anyenv_update_dir}
fi