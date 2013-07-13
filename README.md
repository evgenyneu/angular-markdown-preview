# AngularJS Markdown Preview Component

Markdown textarea with live HTML preview below.

## Setup

* `bower install angular-markdown-preview`
* On your web page include `marked.js` and `markdown_preview.js`. They were downloaded by bower in the previous step.
* Add `evgenyneu.markdown-preview` module to your AngularJS module or add `ng-app='evgenyneu.markdown-preview'` attribute in HTML.

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
* 


git clone https://github.com/evgenyneu/angular-markdown-preview.git
