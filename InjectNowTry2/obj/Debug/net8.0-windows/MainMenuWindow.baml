   M S B A M L   `   `   `  ����H  DInjectNowTry2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:InjectNowGuiInjectNowGui  5   	   !    InjectNowGui.MainMenuWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:InjectNowGui     5   	     � Title$  MainMenuWindow��5   	   $	��450��6    $	��800��6-   .��5	      � ���	#FFEE9191 � ColumnDefinitions 5
   
   �� 5      �� 5      �� 5       � RowDefinitions 5   
   �� 5      �� 5      .+�5   
   �� -   5         ��Name$ MainTitleLabel��5      $��0��6(   $��0��68   $��Brush Script MT)�6E   $��30(�6b   $��Center=�6p   ���	#FFEE9191$��InjectNow💉��6�   
�������6�   �� 5   
   -   5         ��Name$ SearchbarTextBox��5      $��1��6,   $��0��6<   $	��250��6I   $��30��6U   $	��Top=�6a   $��What are you looking for?��6y    �� TextAlignment$ Center=�6�   6�   �� 5   
   -   5         ��Name$ SearchButton��5      $��2��6'   $��0��67   $��50��6D   $��30��6O   $
��Left=�6[   $	��Top=�6w   $��Search��6�   6�   �� 5   
   -   5        $ 
CartButton��5      $��2��6%   $��0��65   $��50��6B   $��30��6M   $��Center=�6Y   $��Bottom=�6w   $
��Cart��6�   $��	0,0,0,187q�6�   6�   �� 5   
   -   5         ��Name$ DrugListListView��5   D   $��1��6   $��0��6    $��3��60    �� View 5      �� 5      .P�5      �� $��	Drug Name��6%   	 �� DisplayMemberBinding	 68   �� *
DrugName+�� 5      $��Category��6%   	 67   �� *
Category+5      5       �� 5!   
   -   5        $ AddToCartButton��5!      $��2��6*   $��1��6:   $	��100��6G   $��30��6S   $��Center=�6_   $��Center=�6|   $��Add to Cart��6�   6�   5"      5#      