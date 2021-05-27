class CadastroPage < SitePrism::Page 
    set_url'?controller=authentication&back=my-account'
    element :email_create_account_field, '#email_create'
    element :create_account_btn, '#SubmitCreate'
    element :title_fem_rd, '#id_gender2'
    element :first_name_field, '#customer_firstname'
    element :last_name_field, '#customer_lastname'
    element :password_field, '#passwd'
    element :day_select, '#days'
    element :month_select, '#uniform-months'
    element :year_select, '#uniform-years'
    element :newsletter_checkbox, '#uniform-newsletter'
    element :address_field, '#address1'
    element :city_field, '#city'
    element :state_select, '#uniform-id_state'
    elements :state_options, '#uniform-id_state option'
    element :zip_code_field, '#postcode'
    element :mobile_phone_field, '#phone_mobile'
    element :address_alias_field, '#alias'
    element :register_btn, '#submitAccount'

    def iniciar_criacao_conta(email)
        email_create_account_field.set email
        create_account_btn.click
    end
    def preencher_form_com_dados_fixos
        title_fem_rd.set true
        first_name_field.set 'Gabriela'
        last_name_field.set 'Mendes'
        password_field.set '12345'
        day_select.select '30'
        month_select.select 'September'
        year_select.select '1997'
        newsletter_checkbox.click
        address_field.set 'Rua 3, 54'
        city_field.set 'Rio de Janeiro'
        state_select.click
        option = state_options.find{|option| option.text.include?("Iowa")}
        option.click
        zip_code_field.set '59632'
        mobile_phone_field.set '5551566852242'
        address_alias_field.set 'Casa'
        sleep(5)
    end
    def confirmar_cadastro
        register_btn.click
    end
end