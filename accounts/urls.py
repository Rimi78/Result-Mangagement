from django.urls import path
from . import views
from django.contrib.auth.views import LoginView, LogoutView

urlpatterns = [
    path('', views.indexView, name='home'),
    path('dashboard/', views.dashboardView, name='dashboard'),
    path('login/', LoginView.as_view(), name='login_url'),
    path('register/', views.registerView, name='register'),
    path('logout/', LogoutView.as_view(next_page='dashboard'), name='logout'),
    path('dashboard/', views.dashboardView, name='dashboard'),
    path('showmarks/',views.showmarks, name='showmarks'),
    path('add_student/',views.add_studentView,name='add_student'),
    path('add_course/',views.add_courseView, name='add_course'),
    path('add_studentenroll/',views.add_studentenrollView, name='add_studentenroll'),
    path('add_marks/',views.add_marksView, name='add_marks'),
    path('add_course/add_courseView',views.add_courseView,name='add_courseView'),
    path('add_student/add_studentView',views.add_studentView,name='add_studentView'),
    path('add_student/add_studentenrollView',views.add_studentenrollView,name='add_studentenrollView'),
    path('add_marks/add_marksView',views.add_marksView, name='add_marksView'),

]
