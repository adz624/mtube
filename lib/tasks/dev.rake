# encoding: utf-8
namespace :dev do
  desc "Rebuild system"
  task :build => :environment do
    %w(tmp:clear log:clear db:drop db:create db:migrate db:seed).each do |task_command|
      puts "Invoke: #{task_command} ..."
      Rake::Task[task_command].invoke
    end
  end

  desc "build fake data"
  task :fake => :environment do
    (1..5).each do |time|
      puts "#{time} times"
      Movie.create(title: 'Trainspotting', describe: "A wild, freeform, Rabelaisian trip through the darkest recesses of Edinburgh low-life, focusing on Mark Renton and his attempt to give up his heroin habit, and how the latter affects his relationship with family and friends: Sean Connery wannabe Sick Boy, dimbulb Spud, psycho Begbie, 14-year-old girlfriend Diane, and clean-cut athlete Tommy, who's never touched drugs but can't help being curious about them...", published: true, remote_image_url: 'http://fc08.deviantart.net/fs71/i/2013/310/2/6/trainspotting_movie_poster_by_adty83-d6ra30x.jpg')
      Movie.create(title: 'The Shawshank Redemption', describe: "Andy Dufresne is a young and successful banker whose life changes drastically when he is convicted and sentenced to life imprisonment for the murder of his wife and her lover. Set in the 1940's, the film shows how Andy, with the help of his friend Red, the prison entrepreneur, turns out to be a most unconventional prisoner.", published: true, remote_image_url: 'http://upload.wikimedia.org/wikipedia/zh/thumb/a/af/Shawshank_Redemption_ver2.jpg/440px-Shawshank_Redemption_ver2.jpg')
      Movie.create(title: "It's All Gone Pete Tong", describe: "Former musician Frankie Wilde is a legend within the Ibiza club scene for being the most inspired DJ around. On top of that, he has a beautiful model wife named Sonja Slowinski, although many within his social circle don't see her as being a good influence on him. But Frankie has disappeared from the Ibiza club scene now for a year, with most only speculating that his life has degenerated into squalor based on his excessive lifestyle in Ibiza. In reality, Frankie's current disappearance and his ultimate fate is due in part to his excessive substance abuse, especially of cocaine, but also partly due to exposure to continual loud music and a physical disorder: he went completely deaf, with no possibility of getting his hearing back. As he went from partial hearing to total deafness, Frankie believed he could still eke out a living as a DJ without telling many of his descent into total deafness. As Frankie went through a self-imposed isolation to deal with his deafness in his own unique", published: true, remote_image_url: 'http://ia.media-imdb.com/images/M/MV5BMTY0OTY2MzMyN15BMl5BanBnXkFtZTcwNzE5NTgyMQ@@._V1_SX214_AL_.jpg')
    end
  end
end
