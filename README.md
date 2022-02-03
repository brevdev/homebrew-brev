# homebrew for brev 


if brew is not already installed on your workspace install it with
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

or if you need to uninstall brew
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)"
```

## release [brev cli](https://github.com/brevdev/brev-cli) 


head to the releases page, which should look something similar to
```
https://github.com/brevdev/brev-cli/releases/tag/v0.6.13
```

and copy the link to the source code archive tar.gz

```
https://github.com/brevdev/brev-cli/archive/refs/tags/v0.6.13.tar.gz
```

update the url for the formula  located in `Formula/brev.rb` and then run `brew fetch Formula/brev.rb --build-from-source`
or

```
λ curl https://codeload.github.com/brevdev/brev-cli/tar.gz/refs/tags/v0.6.13 | openssl sha256

  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  173k    0  173k    0     0  17017      0 --:--:--  0:00:10 --:--:-- 43493
(stdin)= 8cd6d5ec12a6f2adcf8b45dff5fbe2b2964700cf7dc03cbe323bf5204900f31e

```

```
--- before	2022-01-28 18:27:25.200840905 -0800
+++ after	2022-01-28 18:27:25.200840905 -0800
@@ -1,8 +1,8 @@
 class Brev < Formula
   desc "CLI tool for managing workspaces provided by brev.dev"
   homepage "https://docs.brev.dev"
-  url "https://github.com/brevdev/brev-cli/archive/refs/tags/v0.6.12.tar.gz"
-  sha256 "5237a3706e88f76e9a4d97109272f491539ad45ff50fc3fdb12fd478c55c0774"
+  url "https://github.com/brevdev/brev-cli/archive/refs/tags/v0.6.13.tar.gz"
+  sha256 "8cd6d5ec12a6f2adcf8b45dff5fbe2b2964700cf7dc03cbe323bf5204900f31e"
   license "MIT"
   depends_on "go" => :build

```

test the formula with

```sh
brew install --verbose --debug Formula/brev.rb
```

audit the formula with
```
brew audit --strict --online Formula/brev.rb
```

```
brew update # required in more ways than you think (initialises the brew git repository if you don't already have it)
cd "$(brew --repository homebrew/core)"
# Create a new git branch for your formula so your pull request is easy to
# modify if any changes come up during review.
git checkout -b <some-descriptive-name> origin/master
git add Formula/brev-cli.rb
git commit
```
