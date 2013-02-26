# coding: utf-8
require 'spec_helper'

feature 'gerenciar funcionario' do

  scenario 'incluir funcionario' do #, :javascript => true  do

    funcao = FactoryGirl.create(:funcao, :nome => 'XXX')

    visit new_funcionario_path

    preencher_e_verificar_funcionario

    

  end

  scenario 'alterar funcionario' do #, :javascript => true  do

    funcao = FactoryGirl.create(:funcao, :nome => 'XXX')

    funcionario = FactoryGirl.create(:funcionario,:funcao => funcao)

    visit edit_funcionario_path(funcionario)

    preencher_e_verificar_funcionario


  end

  scenario 'excluir funcionario' do #, :javascript => true  do

    funcao = FactoryGirl.create(:funcao, :nome => 'XXX')

    funcionario = FactoryGirl.create(:funcionario,:funcao => funcao)

    visit funcionarios_path

    click_link 'Excluir'
    
    
  end



  def preencher_e_verificar_funcionario

    
    fill_in 'Nome', :with => 'Luiz'
    fill_in 'Rua', :with => 'Rua dos BOBOS'
    fill_in 'Complemento', :with => 'n 01'
    fill_in 'Sexo', :with => 'M' 
    
    select 'XXX', :on => 'Função'
    
    click_button 'Salvar'
    
    page.should have_content 'Nome: Luiz'
    page.should have_content 'Rua: Rua dos BOBOS'
    page.should have_content 'Complemento: n 01'
    page.should have_content 'Sexo: M'
    page.should have_content 'Função: XXX'
    
  end

      

end
