- if activities.errors
  ul.errors
    - activities.errors.each do |error|
      li = error.to_s

== form(action: "/activities/#{activities.id.to_s}", method: activities.id ? :patch : :post) do
  == csrf_tag
  .form-group
    == text_field(name: "description", value: activities.description, placeholder: "Description", class: "form-control")
  .form-group
    == text_field(name: "owner", value: activities.owner, placeholder: "Owner", class: "form-control")
  == submit("Submit", class: "btn btn-success btn-sm")
  == link_to("Back", "/activities", class: "btn btn-light btn-sm")
