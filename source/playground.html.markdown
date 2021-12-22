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
          src="https://www.ruby-doc.org/core/Kernel.html"
        >www.ruby-doc.org</iframe>
      </div>

      <p>
        In the Playground you can try any Ruby code you like.<br />
        The
        <a href="https://www.ruby-doc.org/core/Kernel.html" target="_blank">Ruby documentation</a>
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
