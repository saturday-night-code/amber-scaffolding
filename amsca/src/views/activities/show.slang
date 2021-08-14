h1 Show Activities
p = activities.description
p = activities.owner
p
  == link_to("Back", "/activities", class: "btn btn-light btn-sm")
  == link_to("Edit", "/activities/#{activities.id}/edit", class: "btn btn-success btn-sm")
  == link_to("Delete", "/activities/#{activities.id}?_csrf=#{csrf_token}", "data-method": "delete", "data-confirm": "Are you sure?", class: "btn btn-danger btn-sm")
