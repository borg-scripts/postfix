module.exports = ->
  @import __dirname, 'attributes', 'default'

  @then @install, 'postfix'

  @then @template, [__dirname, 'templates', 'default', 'main.cf'],
    to: '/etc/postfix/main.cf'
    owner: 'root'
    group: 'root'
    sudo: true
    mode: '0644'
