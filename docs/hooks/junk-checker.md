# Junk checker hook

Checks for user defined phrases that you don't want to commit to your
repository, such as `var_dump()`, `console.log()` etc. on `pre-commit`.

This can be overridden by doing a:

```sh
git commit --no-verify
```

This hook is language-agnostic.

You must configure the `phrasesfile` option for this hook . The value is the
name of a file that contains one forbidden phrase per line. There is a sample,
you can use it like this :

    git config [--global] hooks.junkchecker.phrasesfile .git/hooks/junkchecker/junk-phrases.sample

Enable it :

```sh
git config --add hooks.enabled-plugins junkchecker
```
