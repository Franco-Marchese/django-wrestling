from django.contrib import admin
from .models import NEWS, CLUB, PLACE, STUDENT, ENROLLMENT, DIVISION, EMERGENCY_CONTACT

# Register your models here.
admin.site.register(NEWS)
admin.site.register(CLUB)
admin.site.register(PLACE)
admin.site.register(STUDENT)
admin.site.register(ENROLLMENT)
admin.site.register(DIVISION)
admin.site.register(EMERGENCY_CONTACT)