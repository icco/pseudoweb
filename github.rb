#! /usr/bin/env ruby

require 'rubygems'
require 'bundler'
Bundler.require(:default)

files = Dir.glob("./_site/*")

root = "/tmp/pseudoweb-#{Time.now.to_i}"
remote = "git@github.com:icco/pseudoweb.git"
g = Git.clone(remote, root, :log => Logger.new(STDOUT))

# Make sure this actually switches branches.
g.checkout(g.branch('gh-pages'))
files.each do |f|
  FileUtils.cp_r f, root
end
g.add('.')

g.commit('Regenerating Github Pages.')

# PUSH!
g.push(g.remote('origin'), g.branch('gh-pages'))

puts '--> GitHub Pages Commit and Push successful.'
