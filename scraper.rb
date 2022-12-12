# frozen_string_literal: true

require 'watir'
require 'webdrivers'
require 'nokogiri'
require 'byebug'

browser = Watir::Browser.new
browser.goto 'https://remktg.arval.com/'
browser.text_field(id: 'username').set 'XXX'
browser.text_field(id: 'password').set 'XXX'
browser.button(id: 'onetrust-accept-btn-handler').click
browser.button(value: 'Login').click

debugger

parsed_page = Nokogiri::HTML(browser.html)

