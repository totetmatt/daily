import glob
import codecs
import os.path

TITLE = "런닝 맷 - Running Matt"

from jinja2 import Environment, FileSystemLoader, select_autoescape
env = Environment(loader=FileSystemLoader('templates/'),
    autoescape=select_autoescape(['html', 'xml'])
)
template = env.get_template('index.html')

images = glob.glob('target/large/*')
head,*tail = [os.path.basename(k) for k in reversed(sorted(images))]

with codecs.open('target/index.html','w','UTF-8') as f:
    f.write(template.render(title=TITLE,head=head,tail=tail))
