
<!-- README.md is generated from README.Rmd. Please edit that file -->

# gemstones

<!-- badges: start -->
<!-- badges: end -->

Make your `{golem}` based apps more beautiful with `{gemstones}`.

## Installation

You can install the development version of `{gemstones}` like so:

``` r
remotes::install_github("thinkr-open/gemstones")
```

## How it works

The goal of `{gemstones}` is to allow you to add some JavaScript
libraries to your `{golem}` based app.

`{gemstones}` will automate the download and the linking of some JS
libraries, but it’s important to understand that **`{gemstones}` is not
providing a full wrapper or widget for these libraries**. You’ll still
have to code some elements to make it work.

Note also that the functions in this package are not intended to work
outside of a `{golem}` based app.

## Notifyjs

Skeleton for [Notifyjs](https://notifyjs.jpillora.com/) can be added
with `gemstones::use_notifyjs()`.

This function will do the following:

-   Download `notifyjs` from the website.
-   Add a `notifyjs_handlers.js` file, which are shiny custom message
    handlesr
-   Add `fct_notifyjs.R`, which contains `notify_success()`,
    `notify_warning()`, & `notify_error()`.
-   Add tes.

### How to use `notifyjs`

This JS plugin provides notifications that can be sent and customize via
the R functions defined in `fct_notifyjs.R`

## jquery-i18next

Skeleton for [jquery-i18next](https://github.com/i18next/jquery-i18next)
can be added with `gemstones::use_jqueryi18next()`.

This function will do the following:

-   Download `i18next` & `jquery-i18next` from a CDN.
-   Add a `i18n_locales.json` file, which you can use to add your
    translation.
-   Add a `i18n_shiny.js` file, which will load the lib & data when your
    shiny app launched.
-   Add a `i18n_handlers.js` file, which are shiny custom message
    handlesr
-   Add `fct_i18n.R`, which contains `with_i18n()`, `localize()`,
    `change_language()` & `get_language()`.
-   Add test for `with_i18n()`.

### How to use `jquery-i18next`

This JS plugin provides client-side translation of the UI elements.

To define a translation, you need to follow this pattern:

``` r
gemstones::use_jqueryi18next()
```

``` r
# Add a i18n tag to your element
h1("Hello") |> with_i18n("main_title")
```

``` json
{
    "en": {
        "translation": {
            "main_title": "Hello World"
        }
    },
    "fr": {
        "translation": {
            "main_title": "Wesh la famille"
        }
    }
}
```

Then at app launch, this title will be translated.

To switch from one language to the other, you can use one of these two
technics:

-   Run code in JavaScript:

``` javascript
//  Set the language
i18next.changeLanguage('fr')
// Localize
$("html").localize()
```

-   Run code in R:

``` r
change_language("fr")
localize("html")
```
