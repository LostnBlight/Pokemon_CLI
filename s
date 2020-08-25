
[1mFrom:[0m /home/lostnblight/Pokemon_CLI/lib/Issues/grabable.rb:47 Grabable::DeepMethods#random_pokemon:

    [1;34m43[0m:     [32mdef[0m [1;34mrandom_pokemon[0m
    [1;34m44[0m:         random = (rand*[1;34m151[0m).to_i.to_s
    [1;34m45[0m:         str1 = [31m[1;31m"[0m[31m00[1;31m"[0m[31m[0m
    [1;34m46[0m:         str2 = [31m[1;31m"[0m[31m0[1;31m"[0m[31m[0m
 => [1;34m47[0m:         binding.pry
    [1;34m48[0m:         [32mif[0m random == [[1;34m1[0m..[1;34m9[0m]
    [1;34m49[0m:             puts [31m[1;31m"[0m[31m#{str1}[0m[31m#{random}[0m[31m[1;31m"[0m[31m[0m
    [1;34m50[0m:         [32melsif[0m random == [[1;34m10[0m..[1;34m99[0m]
    [1;34m51[0m:             puts [31m[1;31m"[0m[31m#{str2}[0m[31m#{random}[0m[31m[1;31m"[0m[31m[0m
    [1;34m52[0m:         [32melse[0m
    [1;34m53[0m:             puts random
    [1;34m54[0m:         result = [1;36mself[0m.all.find{|pokemon| pokemon.pokemon_number == random}
    [1;34m55[0m:         [32mif[0m result
    [1;34m56[0m:             puts [31m[1;31m"[0m[31m#{result.name}[0m[31m#{result.pokemon_number}[0m[31m#{result.type}[0m[31m#{result.stats}[0m[31m[1;31m"[0m[31m[0m
    [1;34m57[0m:         [32mend[0m
    [1;34m58[0m:     [32mend[0m
    [1;34m59[0m: [32mend[0m

