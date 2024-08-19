# Generated by Django 4.1.3 on 2024-02-15 10:59

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("adminPHIS", "0007_phisuser_profile_picture"),
    ]

    operations = [
        migrations.AlterField(
            model_name="phisuser",
            name="profile_picture",
            field=models.CharField(
                default="/media/profiles/default.png", max_length=250
            ),
        ),
    ]
