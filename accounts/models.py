from django.db import models

# Create your models here.
class result(models.Model):
	name = models.CharField(max_length=80)
	email = models.EmailField()
	password = models.CharField(max_length=20)

	def __str__(self):
		return self.name
class student_list(models.Model):
    s_id=models.AutoField(primary_key=True)
    student_id=models.CharField(max_length=20)
    student_name=models.CharField( max_length=50) 
    student_email=models.EmailField(max_length=254)
    student_number=models.IntegerField()

    class Meta:
        
        verbose_name_plural = 'student_list'
    def __str__(self):
        return self.student_id
    
class course(models.Model):
    sec_id=models.AutoField(primary_key=True)
    course_id=models.CharField( max_length=50)
    course_title=models.CharField(max_length=50)
    sec_no=models.IntegerField()
    class Meta:
        verbose_name_plural = 'course'
    def __str__(self):
        return '%s        section%s'%(self.course_id,self.sec_no)
class student_enroll(models.Model):
    student_id=models.CharField(max_length=20)
    course_id=models.CharField(max_length=20)
    sec_no=models.IntegerField(default=0)
    


    def __str__(self):
        return self.student_id

   
class marks(models.Model):
    student_id=models.CharField(max_length=20)
    course_id=models.CharField(max_length=20)
    sec_no=models.IntegerField(default=0)
    mid1=models.FloatField(default=0)
    mid2=models.FloatField(default=0)
    final=models.FloatField(default=0)
    quiz1=models.FloatField(default=0)
    quiz2=models.FloatField(default=0)
    quiz3=models.FloatField(default=0)
    avarage_quiz=models.FloatField(default=0)
    class_participation=models.FloatField(default=0)
    project_assisgnment=models.FloatField(default=0)
    lab=models.FloatField(default=0)
    total_marks=models.FloatField(default=0)

    def __str__(self):
        return '%s'%(self.student_id)
