   M S B A M L   `   `   `  ����H  DInjectNowTry2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:InjectNow	InjectNow  5   	   5clr-namespace:ProductManagementProductManagement  5   	       InjectNow.Cart   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:InjectNow     5   	   .pmclr-namespace:ProductManagement     5   	     � Title$
  Cart��5
   	   $	��450��6   $	��800��6#   .��5      � ���	#FFEE9191 � ShowGridLines$
 True��6"    � ColumnDefinitions 5   
   �� 5      �� 5       � RowDefinitions 5   
   �� 5      �� 5      .+�5   
   �� -   5         ��Name$ CheckoutButton��5      $��1��6)   $��0��69   $��Checkout��6F   $	��100��6Y   $	��100��6e   6r   �� 5   
   -   5        $ BackToMainMenuButton��5      $��1��6/   $��1��6?   $��	Main Menu��6L   $	��100��6`   $	��100��6l   6y   �� 5   
   -   5         ��Name$ CartListView��5       �� View 5      �� 5      .P�5      �� $��Drug ID��6%    �� DisplayMemberBinding 66   �� *DrugID+�� 5      $��	Drug Name��6%    68   �� *
DrugName+�� 5      $��Category��6%    67   �� *
Category+�� 5      $��Price��6%    64   �� *Price+�� 5      $��Quantity��6%    67   �� *
Quantity+5!      5#      5$      5%      