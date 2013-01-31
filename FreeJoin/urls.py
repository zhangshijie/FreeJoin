from django.conf.urls.defaults import patterns, include, url
# from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from django.contrib import admin
from django.conf.urls.defaults import *
from FreeJoin.FreeJoinapp.views import my_messagelist_view
from FreeJoin.FreeJoinapp.views import main
from FreeJoin.FreeJoinapp.views import LoginSuccess
from FreeJoin.FreeJoinapp.views import LoginFail

admin.autodiscover(
)


# Uncomment the next two lines to enable the admin:
# from django.contrib import admin
# admin.autodiscover()

urlpatterns = patterns('',
    #('^list', my_messagelist_view),
    ('^$', main),
    ('loginfail', LoginFail),
    ('loginsuccess', LoginSuccess),
    url(r'^admin/', include(admin.site.urls)),
  
    # url('^$',my_messagelist_view),
)

# urlpatterns+=staticfiles_urlpatterns()
