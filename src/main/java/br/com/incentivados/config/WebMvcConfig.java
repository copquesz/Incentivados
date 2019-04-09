package br.com.incentivados.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import br.com.incentivados.interceptor.AutorizadorInterceptor;
 
@Configuration
public class WebMvcConfig implements WebMvcConfigurer  {
 
   //
   @Override
   public void addInterceptors(InterceptorRegistry registry) {
      // LogInterceptor apply to all URLs.
      registry.addInterceptor(new AutorizadorInterceptor()); 
      
   }
 
}