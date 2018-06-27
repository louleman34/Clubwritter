/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb


//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require turbolinks
//= require rails-ujs
//= require select2_simple_form

import 'bootstrap';
import { loadDynamicBannerText } from '../components/banner';
import '../components/select2.js';
import '../components/tab.js';

const typedText = document.getElementById('banner-typed-text');
if (typedText) {loadDynamicBannerText()};

// console.log("je suis dsnas le application.js");

// function coucou() {
//   console.log("je suis dna sla fonction coucou");
// }
