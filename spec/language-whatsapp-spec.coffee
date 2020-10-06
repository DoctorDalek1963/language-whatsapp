# If you want an example of language specs, check out:
# https://github.com/atom/language-javascript/blob/master/spec/javascript-spec.coffee

describe "Whatsapp grammar", ->
  grammar = "../grammars/whatsapp.cson"

  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage("language-whatsapp")

    runs ->
      grammar = atom.syntax.grammarForScopeName("source.whatsapp")

  it "parses the grammar", ->
    expect(grammar).toBeTruthy()
    expect(grammar.scopeName).toBe "source.whatsapp"
