# Building

``` shellsession
$ pulp --psc-package build
* Building project in /home/sibi/github/halogen-demo
* Build successful.
```

# Watch and build

``` shellsession
pulp --watch --before 'clear' --psc-package build
```

# Build developer version

``` shellsession
$ pulp --psc-package browserify --to dist/example.js
```

# View in Browser

``` shellsession
$ xdg-open dist/index.html
```
