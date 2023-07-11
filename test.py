import tkinter as tk

def say_hello():
    label.config(text="Bonjour, world!")

# Création de la fenêtre principale
window = tk.Tk()

# Création d'un widget Label pour afficher le message
label = tk.Label(window, text="")
label.pack()

# Création d'un widget Button pour déclencher l'affichage du message
button = tk.Button(window, text="Cliquez ici", command=say_hello)
button.pack()

# Boucle principale de la fenêtre
window.mainloop()
