# AngularJS Markdown Preview Component

Markdown textarea with live HTML preview below.

## Setup

* `bower install angular-markdown-preview`
* Include `markdown_preview.js` and `marked.js` on your web page.
* Add `evgenyneu.markdown-preview` module to your AngularJS app.

## Usage

    <div class='iiMdPreview' />

### Init from text

    <div class='iiMdPreview' text='Init text' />

### Init from url

    <div class='iiMdPreview' url='/some-url' />
    
### Specify textarea's name attribute

    <div class='iiMdPreview' textarea-name='markdown' />

## Dependencies

* [marked](https://github.com/chjj/marked)
