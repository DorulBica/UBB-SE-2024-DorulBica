   M S B A M L   `   `   `  ����H  DInjectNowTry2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:InjectNowGuiInjectNowGui  5   	       InjectNowGui.SignUpPage   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:InjectNowGui     5   	     � Title$  
SignUpPage��5   	   $	��450��6   $	��800��6)   .��5	      � ���	#FFEE9191 � RowDefinitions 5
   
   �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5       � ColumnDefinitions 5   
   �� 5      .+�5   
   �� $��Sign Up��6   $��Center=�6"   $��Center=�6?   $��30(�6Z   $
��Bold"�6h   $��0��6z   $��0��6�   $��0,0,0,0q�6�   $��Microsoft Sans Serif)�6�   
�������6�   �� 5   
   $��	Username:��6   $
��Left=�6$   $��Center=�6?   $��30(�6Z   $��1��6h   $��0��6u   $��0,0,0,0q�6�   $��Microsoft Sans Serif)�6�   
�������6�   �� 5   
   -   5         ��Name$ SignUpUsernameTextBox��5      $��1��61   $��0��6>   $��25��6N   $	��200��6Z   6h   �� 5   
   $��	Password:��6   $
��Left=�6$   $��Center=�6?   $��30(�6Z   $��2��6h   $��0��6u   $��0,0,0,0q�6�   $��Microsoft Sans Serif)�6�   
�������6�   �� 5   
   -   5        $ SignUpPasswordTextBox��5      $��2��61   $��0��6>   $��25��6N   $	��200��6Z   6h   �� 5   
   $��Confirm Password:��6   $
��Left=�6,   $��Center=�6G   $��30(�6b   $��3��6p   $��0��6}   $��0,0,0,0q�6�   $��Microsoft Sans Serif)�6�   
�������6�   �� 5   
   -   5        $" SignUpConfirmPasswordTextBox��5      $��3��68   $��0��6E   $��25��6U   $	��200��6a   6o   �� 5   
   $��Email:��6   $
��Left=�6!   $��Center=�6<   $��30(�6W   $��4��6e   $��0��6r   $��0,0,0,0q�6�   $��Microsoft Sans Serif)�6�   
�������6�   �� 5    
   -   5        $ SignUpEmailTextBox��5       $��4��6.   $��0��6;   $��25��6K   $	��200��6W   6e   �� 5!   
   $��Account Type:��6   $
��Left=�6(   $��0��6C   $��5��6S   $��30(�6`   $��Microsoft Sans Serif)�6n   
�������6�   �� 5"   
   -   5         ��Name$ SignUpAccountTypeComboBox��5"      $��5��66   $��0��6C   $��25��6S   $	��200��6_   .@�5#      �� $
��User��6   6,   �� 5$      $��Delivery��6   60   �� 5%      $��Dealer��6   6.   5&      �� 5'   
   -   5         ��Name$ SignUpButton��5'      $��Sign Up��6'   $��Center=�69   $��Center=�6V   $��30(�6q   $��6��6   $��0��6�   $��0,0,0,0q�6�   $��Microsoft Sans Serif)�6�   
����������	#FFD4C0C0$��40��6  $	��130��6   5(      5)      