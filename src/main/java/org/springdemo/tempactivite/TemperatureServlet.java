
package com.example;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "TemperatureServlet", value = "/temperature")
public class TemperatureServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Récupérer la température saisie
        int temperature = Integer.parseInt(request.getParameter("temperature"));
        String activity;

        // Logique de sélection de l'activité en fonction de la température
        if (temperature >= 30) {
            activity = "Aller à la plage";
        } else if (temperature >= 20) {
            activity = "Faire une randonnée";
        } else if (temperature >= 10) {
            activity = "Visiter un musée";
        } else {
            activity = "Rester à la maison avec un bon livre";
        }

        // Ajouter l'activité comme attribut et rediriger vers result.jsp
        request.setAttribute("activity", activity);
        request.getRequestDispatcher("result.jsp").forward(request, response);
    }
}
