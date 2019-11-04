# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


(로그인 상태확인)

<% if user_signed_in? %>
<p>현재 로그인된 유저의 이메일 : <%= current_user.email %></p>
<p><%= link_to "로그아웃", destroy_user_session_path, method: :delete, data: { confirm: "Are you sure?" } %></p>
<% else %>
<p><%= link_to "로그인", new_user_session_path %></p>
<% end %>
