sap.ui.define([
  "sap/ui/core/mvc/XMLView",
  "sap/ui/core/ComponentContainer"
], function(XMLView, ComponentContainer) {
  "use strict";

  // Load XML view
  XMLView.create({
    viewName: "myApp.view.Main"
  }).then(function (oView) {
    // Place the view on the HTML page
    oView.placeAt("content");
  });

  // For component-based apps, use ComponentContainer instead of XMLView
  /*
  new ComponentContainer({
    name: "myApp",
    settings : {
      id : "myApp"
    },
    async: true
  }).placeAt("content");
  */

});
