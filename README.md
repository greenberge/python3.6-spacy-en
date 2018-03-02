# python3.6-spacy-en
Python 3.6 | spaCy | en loaded


I had a tremendous amount of trouble figuring out how to build spaCy onto my docker image. If anything, this repo should help others that run into the same issues I was having.

At the end of the day, Docker crapped out when building spaCy due to container memory exceeding 100% while installing one of the dependencies. The only error message that printed was 'Killed'. Not very helpful...

To fix the issue (on Mac OSX), I simply had to open the Docker app > Preferences > Advanced, and set the memory to 4G instead of the default 2G. I also increased CPUs to 3 (although, I don't think that made much of a difference). 
