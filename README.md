# My macOS install script


## Avant
Sauvegarder ~/Desktop, ~/workspace, clés SSH

## Après

curl -fsSL https://raw.githubusercontent.com/ `*******` /macOS-install-script/master/installConfig.sh | sh
NB: put your Github username instead of `*******`
# ignore this



- créer clé SSH pour Github (ou sauvegarder l'ancienne)
- modifier gitconfig pour que àa utilise ssh au lieu de HTTP
[url "git@github.com:"]
  insteadOf = https://github.com/
[url "git@github.com:"]
  pushInsteadOf = "git://github.com/"
[url "git@github.com:"]
  pushInsteadOf = "https://github.com/"
