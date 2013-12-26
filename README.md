# Markdown Preview

Markdown textarea with live HTML preview. This is an AngularJS module.
Tested with AngularJS v1.2.6.

[See demo page](http://plnkr.co/DNUSfXduAlEoLiw5DbtB)

## Setup

* `bower install angular-markdown-preview`
* On your web page include `marked.js` and `markdown_preview.js`. They were downloaded by bower in the previous step.
* Add `evgenyneu.markdown-preview` module to your AngularJS app dependencies or add `ng-app='evgenyneu.markdown-preview'` attribute in HTML.

## Usage

    <div class='iiMdPreview' />

### Init from text

    <div class='iiMdPreview' text='Init text' />

### Init from url

    <div class='iiMdPreview' url='/some-url' />

### Specify textarea's name attribute

    <div class='iiMdPreview' textarea-name='markdown' />

## Development

### Clone the Repo

* `git clone https://github.com/evgenyneu/angular-markdown-preview.git`
* `cd angular-markdown-preview`
* `bower install`

### Run Tests

* Install Karma if not installed: `npm install karma -g`. Last tested with Karma v0.10.8.
* Run the tests: `karma start karma.conf.js`
