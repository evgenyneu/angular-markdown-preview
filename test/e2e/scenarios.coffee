'use strict'

describe 'Markdown Preview App', ->
  beforeEach -> browser().navigateTo('/e2e/index.html')

  it 'with text', ->
    expect(element('h3').text()).toBe('Hello, Markdown')

  it 'with url', ->
    expect(element('h2').text()).toBe('Markdown from server')

  it "sets textarea'a name attritbue", ->
    expect(element('.withName .MdPreview-markdown').attr('name')).toBe('nameForYou')