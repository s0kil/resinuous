// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Resinuous = require("./Resinuous.bs.js");

// Parcel HMR
if (module.hot) {
  module.hot.accept();
}
;

var view = Resinuous.main({
      hd: Resinuous.div({
            hd: Resinuous.p({
                  hd: "Count: " + 0,
                  tl: /* [] */0
                }, undefined),
            tl: /* [] */0
          }, undefined),
      tl: /* [] */0
    }, undefined);

Resinuous.render(view);

var count = 0;

exports.count = count;
exports.view = view;
/*  Not a pure module */