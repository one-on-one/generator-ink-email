# generator-ink-email

# Installation

```bash
npm install -g yo coffee-script one-on-one/generator-ink-email
# cd to the directory you would like your email project to be in
yo ink-email
grunt
```

The above command will install several global modules, namely: `yo`,
`grunt-cli`, `bower`, `coffee-script`, and `generator-ink-email`.

The `yo ink-email` will scaffold out an email project template for you to
quickly get started. Here is the directory structure:

The `grunt` command will do an initial build of the email. More on the available
`grunt` tasks later.

<!--
└
├
─
│
-->

```
bower_components/
build/
└─ email.html
node_modules/
src/
├─ _layout.jade
├─ _mixins.jade
├─ email.html
└─ email.jade
bower.json
Gruntfile.js
package.json
```

# Usage

[Jade](http://jade-lang.com/) is the templating engine used. Make your html
additions to `src/email.jade`. There is already the boilerplate wrapper that
will appear around the compiled content, so everything in `src/email.jade` is
your unique content.

In the terminal, navigate to your generated email project and run the command
`grunt watch`. Make sure that you have `grunt-cli` and `coffee-script` installed
as global modules.

# Grunt Tasks

The grunt tasks available are:

* `grunt build`: Builds out your email. You can test it out by viewing
`src/email.html` in your browser. This should be used for debugging. The
production version of it is in `build/email.html`
* `grunt watch`: Same as `grunt build`, but it does everything automatically,
which means it watches your files for changes, and builds everything out for
you.
* `grunt`: Does the same thing as `grunt build`.
