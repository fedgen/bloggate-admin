# Generated by Django 4.2.1 on 2023-05-05 20:21

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('adminPHIS', '0006_alter_menu_options_alter_microservice_options_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='phisuser',
            name='profile_picture',
            field=models.CharField(default='/profiles/default.png', max_length=250),
        ),
    ]
