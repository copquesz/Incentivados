package br.com.incentivados.controller;

import br.com.incentivados.service.ChartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import javax.servlet.http.HttpServletRequest;

/**
 * @author Lucas Copque
 * @version 1.0
 * @since 14/05/2020
 */
@Controller
public class ChartController {

    private final ChartService chartService;

    @Autowired
    public ChartController(ChartService chartService) {
        this.chartService = chartService;
    }

    @GetMapping({"/painel/graficos/entidades/linha-do-tempo"})
    public String getLineChartEntidade(HttpServletRequest request, Model model) {
        model.addAttribute("path", request.getContextPath());
        model.addAttribute("linesChart", chartService.buildLineChartEntidade(2020));

        return "painel/admin/graficos/grafico-entidade-linha-do-tempo";
    }
}