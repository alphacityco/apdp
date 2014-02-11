namespace :articles do

  desc "Fetch all comments"
  task :fetch => :environment do
    res = HTTParty.get('http://apiedepagina.com/api/get_recent_posts')
    if res.code == 200
      posts = res['posts']

      posts.each do |post|
        puts post['id']
      end

    else
      puts "[RAKE-ERROR] [STATUS|#{res.code}] |  #{res.message} | #{res.headers.inspect}"
    end
  end
  # rake articles:fetch

end
