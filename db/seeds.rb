def make_paragraphs
	batman_ipsum =<<-STRING 
	Okay. Now... Hardened Kevlar plates over titanium-dipped, tri-weave fibers for flexibility. You'll be lighter, faster, more agile.
	Does it come in black?
	You see, I'm a guy of simple taste. I enjoy dynamite and gunpowder and gasoline.
	Dr. Crane isn't here right now. But if you'd like to make an appointment.
	No guns, no killing.
	Is Bruce Wayne really that paranoid?
	Pretty soon we will be chasing down over due library books.
	To manipulate the fears in others, you must first master your own. Are you ready to begin?
	Maybe someday, when Gotham no longer needs Batman I'll see him again.
	Swear to me!
	Although I'm not ordinary, I'm a citizen.
	If you can tell me the Russian for "apply your own bloody suntan lotion."
	I just want my phone call.
	You wanna know how I got them? So I had a wife. She was beautiful, like you, who tells me I worry too much, who tells me I ought to smile more, who gambles and gets in deep with the sharks. Hey. One day they carve her face. And we have no money for surgeries. She can't take it. I just wanna see her smile again. I just want her to know that I don't care about the scars. So, I do this to myself. And you know what? She can't stand the sight of me. She leaves. Now I see the funny side. Now I'm always smiling.
	Are you so desperate to fight criminals that you lock yourself in to take them on one at a time ?
	Very well. Death! By exile.
	My anger outweights my guilt.
	Justice is about harmony. Revenge is about you making yourself feel better.
	Are you so desperate to fight criminals that you lock yourself in to take them on one at a time ?
	Gotham's time has come.
	I can't do that as Bruce Wayne... as a man. I'm flesh and blood. I can be ignored, destroyed. But as a symbol, I can be incorruptible, I can be everlasting.
	STRING

  ipsum_array = batman_ipsum.split("\n")

  string = ''
  3.times { string << ipsum_array.sample }
  string
end


tags = ["music", "film", "art", "photo", "food", "drugs"]


30.times do
  Post.create :title => Faker::Lorem.words.join(" ").capitalize,
  	          :content => make_paragraphs,
  	          :tags => "#{tags.sample}, #{tags.sample}"
end