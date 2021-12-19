---
title: "TryRuby: Learn programming with Ruby"
description: Learn to program in Ruby in 30 minutes
---

<div class="row">
  <div class="col-md-5">
    <h1 id="tryruby-title">
      Got 30 minutes? Give Ruby a shot right now!
    </h1>

    <div id="tryruby-content">
      <p>Ruby is a programming language from Japan which is revolutionizing software development.</p>
      <p>The beauty of Ruby is found in its balance between simplicity and power.</p>
      <p>You can type some Ruby code in the editor and use these buttons to navigate:</p>

      <ul>
        <li><strong>Run</strong> &rarr; Executes the code in the editor</li>
        <li><strong>Copy</strong> &rarr; Copies the example code to the editor</li>
        <li><strong>Next</strong> &rarr; Allows you to go to the next lesson</li>
        <li><strong>Back</strong> &rarr; Allows you to return to the previous lesson</li>
      </ul>

      <div class="foxes">Click on <strong>Next</strong> to start learning.</div>
    </div>
  </div>

  <div class="col-md-7">
    <h2 class="code-title">Editor</h2>
    <div id="editor" class="tryruby-code tryruby-code--editor"></div>

    <div class="tryruby-buttons">
      <button
        id="btn_copy"
        type="button"
        class="btn btn-secondary"
        aria-controls="editor"
      >
        Copy
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

    <div class="tryruby-buttons my-5">
      <button
        type="button"
        id="btn_back"
        class="btn btn-secondary pull-left"
        aria-controls="tryruby-content"
      >
        Back
      </button>

      <select
        id="tryruby-index"
        class="form-select mx-3"
        aria-controls="tryruby-content"
      ></select>

      <button
        id="btn_next"
        type="button"
        class="btn btn-primary pull-right"
        aria-controls="tryruby-content"
      >
        Next
      </button>
    </div>
  </div>
</div>
