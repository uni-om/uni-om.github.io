module Jekyll
    class ListaGenerator < Generator
      def generate(site)
        site.data['lista'].each do |key, value|
          next unless key.start_with?('lista_vent_')
          page = ListaPage.new(site, value, key)
          page.data['menu_exclude'] = true
          site.collections['listas'].docs << page
        end
      end
    end
  
    class ListaPage < Page
      def initialize(site, lista, filename)
        @site = site
        @base = site.source
        @dir = 'lista'
        @name = "#{filename}.html"
  
        self.process(@name)
        self.read_yaml(File.join(@base, '_layouts'), 'lista.html')
        self.data['lista'] = lista
        self.data['title'] = lista['title']
      end
    end
  end
  