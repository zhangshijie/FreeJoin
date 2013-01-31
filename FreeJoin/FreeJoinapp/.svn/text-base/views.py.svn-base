from django.template.loader import get_template
from django.template import Context
from django.http import HttpResponse
from django.shortcuts import render_to_response
from FreeJoin.FreeJoinapp.models import Message
from FreeJoin.FreeJoinapp.models import Users
from weibo import APIClient
from django.http import HttpResponseRedirect
from django.contrib.auth.models import User
from django.contrib.auth import authenticate, login
import datetime

APP_KEY='4087193728'
APP_SECRET='ec16cd6c808ce60ebc7ca4cfeb4f3cd7'
CALLBACK_URL='http://FreeJoin.sinaapp.com/loginsuccess'

def my_messagelist_view(request):

    list_items=Message.objects.all()

    current_date=datetime.datetime.now()
    # t = get_template('FreeJoinapp/messagelist.html')
    # html = t.render(Context({'current_date': now}))
    # return HttpResponse(html)
    return render_to_response('FreeJoinapp/messagelist.html',locals())

def main(request):

    client = APIClient(app_key=APP_KEY, app_secret=APP_SECRET, redirect_uri=CALLBACK_URL)
    url = client.get_authorize_url()
    t = get_template('FreeJoinapp/index.html')
    html = t.render(Context({'WeiboUrl': url}))
    return HttpResponse(html)


def LoginSuccess(request):

    code = request.GET.get('code')
    client = APIClient(app_key=APP_KEY, app_secret=APP_SECRET, redirect_uri=CALLBACK_URL)
    r = client.request_access_token(code)
    access_token = r.access_token 
    expires_in = r.expires_in 
    
    client.set_access_token(access_token, expires_in)
    
    r=client.account.get_uid.get()
    back=client.users.show.get(uid=r.uid)
    
    
    try:
        Users.objects.get(Name=back.screen_name).Name
    except Users.DoesNotExist:
        p1 = Users(Name=back.screen_name,RegisterTime= datetime.date.year,WeiboUrl=back.profile_url,cellphone="",qq="",weibo_uid=back.id,province=back.province,city=back.city,profile_image_url=back.profile_image_url,gender=back.gender,avatar_large=back.avatar_large,description=back.description)
        p1.save()
        
        user = User.objects.create_user(back.screen_name, 'test@test.me', 'testtest')
        user.save()
        
    
    user = authenticate(username=back.screen_name, password='testtest')
    if user is not None:
        login(request, user)
        
    t = get_template('FreeJoinapp/loginsuccess.html')
    html = t.render(Context({'back':""}))
    return HttpResponse(html)
    
    
  #  return  HttpResponseRedirect("http://freejoin.sinaapp.com/loginfail")
  
def LoginFail(request):
    return render_to_response('FreeJoinapp/loginfail.html',locals())
    