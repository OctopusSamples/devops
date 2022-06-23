FROM gitpod/workspace-full:2022-05-08-14-31-53

RUN sudo install-packages ruby-full build-essential zlib1g-dev
RUN echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
RUN echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
RUN echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
RUN rvm_path=/workspace/gitpod/.rvm gem install bundler webrick jekyll
