# Generated by Django 3.0.3 on 2020-04-13 17:56

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='course',
            fields=[
                ('sec_id', models.AutoField(primary_key=True, serialize=False)),
                ('course_id', models.CharField(max_length=50)),
                ('course_title', models.CharField(max_length=50)),
                ('sec_no', models.IntegerField()),
            ],
            options={
                'verbose_name_plural': 'course',
            },
        ),
        migrations.CreateModel(
            name='marks',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('student_id', models.CharField(max_length=20)),
                ('course_id', models.CharField(max_length=20)),
                ('sec_no', models.IntegerField(default=0)),
                ('mid1', models.FloatField(default=0)),
                ('mid2', models.FloatField(default=0)),
                ('final', models.FloatField(default=0)),
                ('quiz1', models.FloatField(default=0)),
                ('quiz2', models.FloatField(default=0)),
                ('quiz3', models.FloatField(default=0)),
                ('avarage_quiz', models.FloatField(default=0)),
                ('class_participation', models.FloatField(default=0)),
                ('project_assisgnment', models.FloatField(default=0)),
                ('lab', models.FloatField(default=0)),
                ('total_marks', models.FloatField(default=0)),
            ],
        ),
        migrations.CreateModel(
            name='result',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=80)),
                ('email', models.EmailField(max_length=254)),
                ('password', models.CharField(max_length=20)),
            ],
        ),
        migrations.CreateModel(
            name='student_enroll',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('student_id', models.CharField(max_length=20)),
                ('course_id', models.CharField(max_length=20)),
                ('sec_no', models.IntegerField(default=0)),
            ],
        ),
        migrations.CreateModel(
            name='student_list',
            fields=[
                ('s_id', models.AutoField(primary_key=True, serialize=False)),
                ('student_id', models.CharField(max_length=20)),
                ('student_name', models.CharField(max_length=50)),
                ('student_email', models.EmailField(max_length=254)),
                ('student_number', models.IntegerField()),
            ],
            options={
                'verbose_name_plural': 'student_list',
            },
        ),
    ]
