   M S B A M L   `   `   `  ����H  DInjectNowTry2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:InjectNowGuiInjectNowGui  5   	   $    InjectNowGui.UserSettingWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:InjectNowGui     5   	     � Title$  UserSettingWindow��5   	   $	��450��6#   $	��800��60   .��5	      � ���	#FFEE9191 � ColumnDefinitions 5
   
   �� 5      �� 5       � RowDefinitions 5   
   �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      .+�5   
   �� $��User Settings��6   $��Center=�6(   $��Center=�6E   $��30(�6`   $
��Bold"�6n   $��2��6�   $��Microsoft Sans Serif)�6�   
�������6�   �� 5   
   $��Change Username:��6   $��Center=�6+   $��Center=�6H   $��20(�6c   $
��Bold"�6q   $��1��6�   $��Microsoft Sans Serif)�6�   
�������6�   �� 5   
   -   5         ��Name$ ChangeUsernameTextBox��5      $��35��61   $	��200��6=   $
��Left=�6I   $��Center=�6d   $��20(�6   $
��Bold"�6�   $��1��6�   $��1��6�   $��Microsoft Sans Serif)�6�   
���   �6�   �� 5   
   -   5         ��Name$ ChangeUsernameButton��5      $��Apply��6/   $��Right=�6?   $��Center=�6[   $��50��6v   $	��100��6�   $��1��6�   $��1��6�   6�   �� 5   
   $��Change Password:��6   $��Center=�6+   $��Center=�6H   $��20(�6c   $
��Bold"�6q   $��2��6�   $��Microsoft Sans Serif)�6�   
�������6�   �� 5   
   -   5        $ ChangePasswordTextBox��5      $��35��61   $	��200��6=   $
��Left=�6I   $��Center=�6d   $��20(�6   $
��Bold"�6�   $��2��6�   $��1��6�   $��Microsoft Sans Serif)�6�   
���   �6�   �� 5    
   -   5        $ ChangePasswordButton��5       $��Apply��6/   $��Right=�6?   $��Center=�6[   $��50��6v   $	��100��6�   $��1��6�   $��2��6�   6�   �� 5!   
   $��Change Email:��6   $��Center=�6(   $��Center=�6E   $��20(�6`   $
��Bold"�6n   $��3��6�   $��Microsoft Sans Serif)�6�   
�������6�   �� 5"   
   -   5        $ ChangeEmailTextBox��5"      $��35��6.   $	��200��6:   $
��Left=�6F   $��Center=�6a   $��20(�6|   $
��Bold"�6�   $��3��6�   $��1��6�   $��Microsoft Sans Serif)�6�   
���   �6�   �� 5#   
   -   5        $ ChangeEmailButton��5#      $��Apply��6,   $��Right=�6<   $��Center=�6X   $��50��6s   $	��100��6   $��1��6�   $��3��6�   6�   �� 5%   
   $��
Add money:��6   $��Center=�6%   $��Center=�6B   $��0��6]   $��4��6m   $��20(�6z   $
��Bold"�6�   $��Microsoft Sans Serif)�6�   
�������6�   �� 5&   
   $��Amount:��6   $
��Left=�6"   $��Center=�6=   $��1��6X   $��4��6h   $��20(�6u   $
��Bold"�6�   $��Microsoft Sans Serif)�6�   
�������6�   �� 5'   
   -   5        $ AddMoneyTextBox��5'      $��35��6+   $	��200��67   $��Right=�6C   $��Center=�6_   $��20(�6z   $
��Bold"�6�   $��4��6�   $��1��6�   $��Microsoft Sans Serif)�6�   
���   �6�   �� 5(   
   $��	E-Wallet:��6   $
��Left=�6$   $��Center=�6?   $��1��6Z   $��5��6j   $��20(�6w   $
��Bold"�6�   $��Microsoft Sans Serif)�6�   
�������6�   �� 5)   
   -   5        $ AddEWalletTextBox��5)      $��35��6-   $	��200��69   $��Right=�6E   $��Center=�6a   $��20(�6|   $
��Bold"�6�   $��5��6�   $��1��6�   $��Microsoft Sans Serif)�6�   
���   �6�   �� 5+   
   -	   5        $ AddMoneyButton��5+      $��Apply��6)   $��Center=�69   $��Center=�6V   $��50��6q   $	��100��6}   $��1��6�   $��6��6�   6�   �� 5-   
   $��Delete Account:��6   $��Center=�6*   $��Center=�6G   $��0��6b   $��7��6r   $��2��6   $��20(�6�   $
��Bold"�6�   $��Microsoft Sans Serif)�6�   
�������6�   �� 5.   
   -
   5        $ DeleteAccountButton��5.      $��Delete Account��6.   $��Center=�6G   $��Center=�6d   $��40��6   $	��150��6�   $��0��6�   $��8��6�   $��2��6�   ���	#FFF455556�   5/      50      