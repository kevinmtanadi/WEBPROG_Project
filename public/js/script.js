function addActor() {
    const div = document.getElementById('actors-wrapper');

    const actors_amount = div.children.length;

    var q = document.getElementById('actors-wrapper');
    const node = document.createElement('div');
    node.innerHTML = '<div class="row d-flex"><div class="col"><label for="actor-'.concat(actors_amount + 1, '"class="mb-1">Actor</label><select name="actor-', actors_amount + 1,  '"id="actor-', actors_amount + 1, '"class="form-select bg-1 text-white border-0"><option selected disabled="disabled">-- Open this select menu --</option>@foreach ($actors as $a)<option value="{{$a->id}}">{{$a->name}}</option>@endforeach</select></div><div class="col"><label for="c-name-', actors_amount + 1,'" class="mb-1">Character Name</label><input type="text" class="form-control input-text w-100 text-white"  name="c-name-', actors_amount + 1, '" id="c-name-', actors_amount + 1, '"></div></div>')
    q.append(node);
}

