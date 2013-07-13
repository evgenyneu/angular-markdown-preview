# AngularJS Markdown Preview Component

Markdown textarea with live HTML preview below.

## Usage

* Include `markdown_preview.js` and `marked.js` on your web page.

    <div class='iiMdPreview' />

### Init from text

    <div class='iiMdPreview' text='Init text' />

### Init from url

    <div class='iiMdPreview' url='/some-url' />
    
### Specify textarea's name attribute

    <div class='iiMdPreview' textarea-name='markdown' />

## Dependencies

* [marked](https://github.com/chjj/marked)
