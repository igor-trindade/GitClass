import psutil

usuario = psutil.users()[0]
print(usuario)