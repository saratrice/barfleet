function role_change(a) {
  $.ajax({
    url: "division_roles",
    type: "GET",
    data: { 'division': a.value },
  })
}
