/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb

console.log('Hello World from Webpacker')

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import 'bootstrap/dist/js/bootstrap'
import "bootstrap/dist/css/bootstrap";

import "@fortawesome/fontawesome-free/css/all"

import "stylesheets/application"

$(document).on('turbolinks:load', function(){

    $('.chapter-sortable').sortable({
      axis        : "y",
      cursor      : "grabbing",
      placeholder : "ui-state-highlight",
  
      update: function(_, ui){
        let item      = ui.item
        let itemData  = item.data()
        let params    = { _method: 'put' }
  
        params[itemData.modelName] = { row_order_position: item.index() }
  
        $.ajax({
          type     : 'POST',
          url      : itemData.updateUrl,
          dataType : 'json',
          data     : params
        })
      },
    })
  
    $('.lesson-sortable').sortable({
      axis        : "y",
      cursor      : "grabbing",
      placeholder : "ui-state-highlight",
      connectWith : '.lesson-sortable',
  
      update: function(_, ui){
        if (ui.sender) return
  
        let item      = ui.item
        let itemData  = item.data()
        let chapterID    = item.parents('.ui-sortable-handle').eq(0).data().id
        let params    = { _method: 'put' }
  
        params[itemData.modelName] = { row_order_position: item.index(), chapter_id: chapterID }
  
        $.ajax({
          type     : 'POST',
          url      : itemData.updateUrl,
          dataType : 'json',
          data     : params
        })
      }
    })
  
    $("video").bind("contextmenu",function(){
        return false;
    });
  
    if ($('.selectize')){
        $('.selectize').selectize({
            sortField: 'text'
        });
    }
  
    $(".selectize-tags").selectize({
      create: function(input, callback) {
        $.post('/tags.json', { tag: { name: input } })
          .done(function(response){
            console.log(response)
            callback({value: response.id, text: response.name });
          })
      }
    });
  
  });