# Markdown Preview Component

Displays a text area. As you type it show live HTML preview under the text area.

## Usage

    <div class='MdPreview' />

### Specify textarea's name attribute

    <div class='MdPreview' data-textarea-name='markdown' />

### Init from text

    <div class='MdPreview' data-text='Init text' />

### Init from url

    <div class='MdPreview' data-url='/some-url' />

## Dependincies

* [marked](https://github.com/chjj/marked)