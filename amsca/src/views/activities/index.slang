.row
  .col-sm-11
    h2 Activities
  .col-sm-1
    a.btn.btn-success.btn-sm href="/activities/new" New
.table-responsive
  table.table.table-striped
    thead
      tr
        th Description
        th Owner
        th Actions
    tbody
      - activities.each do |activities|
        tr
          td = activities.description
          td = activities.owner
          td
            span
              == link_to("Show", "/activities/#{activities.id}", class: "btn btn-info btn-sm")
              == link_to("Edit", "/activities/#{activities.id}/edit", class: "btn btn-success btn-sm")
              == link_to("Delete", "/activities/#{ activities.id }?_csrf=#{csrf_token}", "data-method": "delete", "data-confirm": "Are you sure?", class: "btn btn-danger btn-sm")
