run do |env|
  method = env['REQUEST_METHOD']
  path = env['REQUEST_PATH']

  puts "#{method} #{path}"

  case path
  when '/'
    file = File.new('index.html')
    [200, {'content-type' => 'text/html'}, [file.read]]
  when '/login'
    file = File.new('login.html')
    [200, {'content-type' => 'text/html'}, [file.read]]
  when '/dashboard'
    file = File.new('dashboard.html')
    [200, {'content-type' => 'text/html'}, [file.read]]
  when '/logo.png'
    file = File.new('logo.png')
    [200, {'content-type' => 'image/png'}, [file.read]]
  when '/index.css'
    file = File.new('index.css')
    [200, {'content-type' => 'text/css'}, [file.read]]
  else
    file = File.new('404.html')
    [404, {'content-type' => 'text/html'}, [file.read]]
  end
end
