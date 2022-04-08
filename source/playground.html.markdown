---
title: "TryRuby playground"
description: Play around with Ruby programs
---

<div class="row">
  <div class="col-md-6">
    <h2 id="tryruby-title">Playground</h2>
    <div id="tryruby-content">
      <div class="playground-iframe-wrapper">
        <iframe
          src="https://docs.ruby-lang.org/en/master/"
        >Ruby Documentation</iframe>
      </div>

      <p>
        In the Playground you can try any Ruby code you like.<br />
        The
        <a href="https://docs.ruby-lang.org/en/master/" target="_blank">Official Ruby documentation</a>
        is included.
      </p>
    </div>
  </div>

  <div class="col-md-6">
    <h2 class="code-title">Editor</h2>
    <div id="editor" class="tryruby-code tryruby-code--editor"></div>

    <div class="tryruby-buttons">
      <button
        id="btn_copy_url"
        type="button"
        class="btn btn-secondary"
        aria-controls="editor"
      >
        Copy URL
      </button>

      <select
        id="tryruby-engine"
        class="form-select mx-3 w-50"
        aria-controls="output"
      >
      </select>

      <button
        id="btn_run"
        type="button"
        class="btn btn-primary w-25"
        aria-controls="output"
      >
        Run
      </button>
    </div>

    <h2 class="code-title">Output</h2>
    <div id="output" class="tryruby-code tryruby-code--output"></div>
  </div>
</div>
