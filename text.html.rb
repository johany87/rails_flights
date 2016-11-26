
    <div class="dropdown">
        <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
          Cities
          <span class="caret"></span>
        </button>
        <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
        </ul>
    </div>


    <div class="form-group">
      <%= a.label :city_id %>
      <%= a.text_field :city_id, class: "form-control" %>
    </div>

     <% @airports.each do |a|  %>
         <option value="<% a.id %>"> <%= a.name %> </option>
     <% end  %>

     <% @airports.each do |a|  %>
         <option value="<%= a.id %>"> <%= a.name %> </option>
     <% end %>

    <% @airlines.each do |a|  %>
        <option value="<%= a.id %>"> <%= a.name %> </option>
    <% end  %>

    <option value="1">Bogota</option>
    <option value="2">Cucuta</option>
    <option value="3">Caracas</option>
    <option value="4">Madrid</option>
    <option value="5">Francia</option>
