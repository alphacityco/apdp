ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do

    div :class => "blank_slate_container", :id => "dashboard_default_message" do
      span :class => "blank_slate" do
        # span I18n.t("active_admin.dashboard_welcome.welcome")
        # small I18n.t("active_admin.dashboard_welcome.call_to_action")
        span "A Pie de Pagina - Admin"
        br
        a href: 'http://apiedepagina.com', target: '_new' do
          img src: "/assets/apdp_logo.jpg", width: "300px"
        end
      end
    end

  end

end
