---
title: "TryRuby: Learn programming with Ruby"
description: Learn to program in Ruby in 15 minutes
---

<div class="row">
  <div class="col-md-5">

    <div id="tryruby-lang-container">
      <div class="row">
        <div class="col-md-2">
          <button class="btn btn-default btn-sm" id="tryruby-lang-toggle"><span aria-hidden="true" class="glyphicon glyphicon-globe"></span></button>
        </div>
        <div class="col-md-10">
          <div class="hidden" id="tryruby-lang-hider">
            <select class="form-control"" id="tryruby-lang-select">
              <option value="en">English</option>
              <!--option value="nl">Nederlands</option-->
              <!--option value="es">Espagnol</option-->
            </select>
          </div>
        </div>
      </div>
    </div>

    <select id="tryruby-index" class="form-control"></select>
  
    <div id="tryruby-explanation">

      <h2 id="tryruby-title">Got 30 minutes? Give Ruby a shot right now!</h2>

      <div id="tryruby-content">
        <p>Ruby is a programming language from Japan which is revolutionizing software development.</p>
        <p>The beauty of Ruby is found in its balance between simplicity and power.</p>
        <p>You can type some Ruby code in the editor and use these buttons to navigate:</p>
        
        <ul>
          <li><strong>Run</strong> &rarr; Executes the code in the editor</li>
          <li><strong>Copy</strong> &rarr; Copies the example code to the editor</li>
          <li><strong>Next</strong> &rarr; Allows you to go to the next lesson</li>
          <li><strong>Back</strong> &rarr; Allows you to return to the previous lesson</li>
          <li><strong>Clear</strong> &rarr; Clears the editor</li>
        </ul>

        <h3>Click on <strong>Next</strong> to start learning.</h3>
      </div>

      <div id="tryruby-answer" style="display:none"></div>

    </div>
  </div>

  <div class="col-md-7">

    <div class="row" id="wrapper">

      <div class="col-md-12">
        <h4>Output</h4>
        <div id="output" class="well" style="padding:0">
        </div>
      </div>

      <div id="editor_wrapper" class="col-md-12">
        <h4>Editor</h4>
        <div id="editor" class="well" style="padding:0"></div>

        <div class="row">
          <div class="col-md-4">
            <button type="button" id="btn_run" class="btn btn-primary btn-block">Run <span class="glyphicon glyphicon-play" aria-hidden="true"></span></button>
          </div>
          <div class="col-md-8">
            <div class="pull-right">
              <button type="button" id="btn_copy"  class="btn btn-default"><span class="glyphicon glyphicon-share-alt" aria-hidden="true"></span> Copy</button>
              <button type="button" id="btn_back"  class="btn btn-default"><span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> Back</button>
              <button type="button" id="btn_next"  class="btn btn-default">Next <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span></button>
              <button type="button" id="btn_clear" class="btn btn-default">Clear <span class="glyphicon glyphicon-remove-circle" aria-hidden="true"></span></button>
            </div>
          </div>
        </div>
      </div>

    </div>
  </div>
</div>