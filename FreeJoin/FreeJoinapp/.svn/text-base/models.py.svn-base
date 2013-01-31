from django.db import models

# Create your models here.
class Users(models.Model):
	UserId= models.AutoField(primary_key=True)
	Name=models.CharField(max_length=100)
	RegisterTime=models.DateField(auto_now=True)
	WeiboUrl=models.TextField()
	cellphone=models.CharField(max_length=30)
	qq=models.CharField(max_length=20)
        province=models.IntegerField()
        city=models.IntegerField()
        profile_image_url=models.CharField(max_length=150)
        gender=models.CharField(max_length=10)
        avatar_large=models.CharField(max_length=150)
        description=models.CharField(max_length=300)
        weibo_uid=models.CharField(max_length=30)
        
class Match(models.Model):
	MatchId= models.AutoField(primary_key=True)
	Time=models.TimeField()
	Date=models.DateField()
	Site=models.TextField()
	Level=models.IntegerField()
	Range=models.IntegerField()
	MainUser=models.ForeignKey(Users)

class Message(models.Model):
	MessageId= models.AutoField(primary_key=True)
	UserId=models.ForeignKey(Users)
	MatchId=models.ForeignKey(Match)
	AddTime=models.DateTimeField(auto_now=True)		


class Relation(models.Model):
	RelationId= models.AutoField(primary_key=True)
	SelfId=models.ForeignKey(Users)
	FollowerId=models.ForeignKey(Users,related_name='FollowerId')

class News(models.Model):
	NewsId= models.AutoField(primary_key=True)
	UserId=models.ForeignKey(Users)
	TheNews=models.TextField()
	MatchId=models.ForeignKey(Match)
	MessageId=models.ForeignKey(Message)
	
class Message(models.Model):
	MessageId= models.AutoField(primary_key=True)
	UserId=models.ForeignKey(Users)
	MatchId=models.ForeignKey(Match)
	AddTime=models.DateTimeField(auto_now=True)
        
class Site(models.Model):
	SiteId = models.AutoField(primary_key=True)
	SiteName =models.CharField(max_length=50)
	Site_x =models.CharField(max_length=15)
	Site_Y =models.CharField(max_length=15)
        SiteDetail =models.CharField(max_length=150)