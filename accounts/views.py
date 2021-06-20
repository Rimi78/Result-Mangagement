from django.shortcuts import render, redirect
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.decorators import login_required
from django.contrib import messages 
from .models import *

# Create your views here.


def indexView(request):
    return render(request, 'index.html')


@login_required
def dashboardView(request):
    return render(request, 'dashboard.html')
def add_courseView(request):
    if request.method == 'POST':
        course_id=request.POST['course_id']
        course_title=request.POST['course_title']
        sec_no=request.POST['sec_no']
        course_view=course(course_id=course_id,course_title=course_title,sec_no=sec_no)
        course_view.save()
        return redirect('add_courseView')
    else:
        return render(request,'add_course.html')
def add_studentView(request):
    if request.method == 'POST':
        student_id=request.POST['student_id']
        student_name=request.POST['student_name']
        student_email=request.POST['student_email']
        student_number=request.POST['student_number']
        if student_list.objects.filter(student_id=student_id).exists():
            messages.error(request,"this student already exists")
        else:
            student_view=student_list( student_id= student_id,student_name=student_name,student_email=student_email,student_number=student_number)
            student_view.save()
        return redirect('add_studentView')
    else:
        return render(request,'add_student.html')
def add_studentenrollView(request):
    if request.method == 'POST':
        student_id=request.POST['student_id']
        course_id=request.POST['course_id']
        sec_no=request.POST['sec_no']
        if student_list.objects.filter(student_id=student_id).exists():
            if course.objects.filter(course_id=course_id).exists():
                if course.objects.filter(sec_no=sec_no).exists():
                    student_en=student_enroll(student_id=student_id,course_id=course_id,sec_no=sec_no)
                    student_en.save()
                    
                else:
                    messages.error(request,"this section does not exists")
            else:
                messages.error(request,"this course does not exists")    
        else:
            messages.error(request,"this student does not exists")
        return redirect('add_studentenrollView')
    else:        
        return render(request,'add_studentenroll.html')

def add_marksView(request):
    if request.method == 'POST':
        student_id=request.POST['student_id']
        course_id=request.POST['course_id']
        sec_no=request.POST['sec_no']
        mid1=request.POST['mid1']
        mid2=request.POST['mid2']
        final=request.POST['final']
        quiz1=request.POST['quiz1']
        quiz2=request.POST['quiz2']
        quiz3=request.POST['quiz3']
        val1=(float(quiz1)+float(quiz2)+float(quiz3))/3.0
        avarage_quiz=float(val1)
        class_participation=request.POST['class_participation']
        project_assisgnment=request.POST['project_assisgnment']
        lab=request.POST['lab']
        total_marks=(float(float(mid1)+float(mid2)+float(final)+float(avarage_quiz)+float(class_participation)+float(project_assisgnment)+float(lab)))
        if student_list.objects.filter(student_id=student_id).exists():
            if course.objects.filter(course_id=course_id).exists():
                if course.objects.filter(sec_no=sec_no).exists():
                    if total_marks<=100.00 and total_marks>=0.0 and float(mid1)<=25.0 and float(mid1)>=0.0 and float(mid2)<=25.0 and float(mid2)>=0.0 and float(final)<=25.0 and float(final)>=0.0 and float(quiz1)<=10.0 and float(quiz1)>=0.0 and float(quiz2)<=10.0 and float(quiz2)>=0.0 and float(quiz3)<=10.0 and float(quiz3)>=0.0 and float(avarage_quiz)<=10.0 and float(avarage_quiz)>=0.0 and float(class_participation)<=5.0 and float(class_participation)>=0.0 and float(project_assisgnment)<=10.0 and float(project_assisgnment)>=0.0 and float(lab)<=15.0 and float(lab)>=0.0 :
                        mar=marks(student_id=student_id,course_id=course_id,sec_no=sec_no,mid1=mid1,mid2=mid2,final=final,quiz1=quiz1,quiz2=quiz2,quiz3=quiz3,avarage_quiz=avarage_quiz,class_participation=class_participation,project_assisgnment=project_assisgnment,lab=lab,total_marks=total_marks)
                        mar.save();
                        return redirect('add_marks') 
                    else :
                        messages.error(request,"you have enterd a invalid value")
                        return redirect('add_marks')    
                else:
                    messages.error(request,"this section does not exists")
                    return redirect('add_marks')
            else:
                messages.error(request,"this course does not exists")
                return redirect('add_marks')    
        else:
            messages.error(request,"this student does not exists")
            return redirect('add_marks')
    else:        
        return render(request,'add_marks.html')
def showmarks(request):
    results= marks.objects.all().order_by('sec_no') 
       
    context={
         'results' : results,

        }
    return render(request,'showmarks.html',context)


def registerView(request):
    if request.method == "POST":
        form = UserCreationForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('login_url')
    else:
        form = UserCreationForm()
    return render(request, 'registration/register.html', {'form': form})
