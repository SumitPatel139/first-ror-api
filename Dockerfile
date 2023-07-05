FROM public.ecr.aws/x2r7e9o3/housing/ruby:ruby_latest
WORKDIR /home/app
ENV PORT 3000
EXPOSE $PORT
ADD Gemfile* $WORKDIR/
RUN bundle install
ENTRYPOINT [ "/bin/bash" ]