from django.db import models

# Create your models here.
class NEWS(models.Model):
    title = models.CharField(default="VACIO",null=False,max_length=200)
    article = models.CharField(max_length=1000)
    date = models.DateField()
    # img = models.ImageField(null=True)

    def __str__(self):
        return "Titulo: {} Fecha: {}".format(self.title,self.date)

class CLUB(models.Model):
    titleIntro = models.CharField(default="VACIO",null=False, max_length=200)
    intro = models.CharField(default="VACIO",null=False, max_length=800)
    mision = models.CharField(default="VACIO",null=False, max_length=800)
    vision = models.CharField(default="VACIO",null=False, max_length=800)

    # --- Comentado por: Error 500 ---
    # imgA = models.ImageField(blank=True,default=None)
    # imgSchedule = models.ImageField(blank=True,default=None)
    # imgEvents = models.ImageField(blank=True,default=None)

    # cellphone = models.IntegerField(blank=True,default=None)
    # email = models.EmailField(blank=True,default=None)
    # instagram = models.URLField(blank=True,default=None)

class EMERGENCY_CONTACT(models.Model):
    name = models.CharField(max_length=200)
    rut = models.IntegerField()
    phone = models.IntegerField()

class STUDENT(models.Model):
    name = models.CharField(max_length=200)
    rut = models.IntegerField()
    birthday = models.CharField(max_length=200)
    health = models.CharField(max_length=200)
    id_emergency = models.ForeignKey(EMERGENCY_CONTACT, on_delete=models.CASCADE,default="VACIO")

    def __str__(self):
        return "Nombre: {} RUT: {} Contacto emergencia: {}".format(self.name,self.rut,self.id_emergency.phone)

class PLACE(models.Model):
    name = models.CharField(max_length=200)
    location = models.URLField(null=False)

    def __str__(self):
        return "Nombre: {}".format(self.name)

class DIVISION(models.Model):
    type = models.CharField(max_length=200)
    days = models.CharField(max_length=200)
    hours = models.CharField(max_length=200)
    location = models.ForeignKey(PLACE, on_delete=models.CASCADE)
    register = models.URLField(null=False, default="")

    def __str__(self):
        return "Tipo: {} Location: {}".format(self.type,self.location.name)

class ENROLLMENT(models.Model):
    id_division = models.ForeignKey(DIVISION, on_delete=models.CASCADE,default=0)
    id_student = models.ForeignKey(STUDENT, on_delete=models.CASCADE,default=0)

    def __str__(self):
        return "Estudiante: {} Division: {}".format(self.student.name,self.division.location.name)