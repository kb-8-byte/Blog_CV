import os
import sys

root = os.path.dirname(__file__)
sys.path.insert(0,os.path.join(root,'..','testsql/Lib/site-packages'))
from django.core.wsgi import get_wsgi_application

os.environ.setdefault("DJANGO_SETTINGS_MODULE", "davidblog.settings")

application = get_wsgi_application()