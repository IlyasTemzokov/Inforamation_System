   M S B A M L   `   `   `  ����L  HInformationSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:InformationSystem.WindowsInformationSystem.Windows  5   	   4    .InformationSystem.Windows.WindowCreatePersonal   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   9local'clr-namespace:InformationSystem.Windows     5   	     � Title$  Create Personal��5   	   $	��450��6!   $	��800��6.   .��5	      �  � RowDefinitions 5
   
   �� 5      $��* �6   �� 5      $
��auto �6    � ColumnDefinitions 5   
   �� 5      $��* �6   .+�5   
   � $��3q�6    5      �� 5      $
��auto �6    �� 5      $
��auto �6    �� 5      $
��auto �6    �� 5      $
��auto �6    �� 5      $
��auto �6     5      �� 5      $
��auto �6#   �� 5      $��* �6#   .+�5      �� $��0��6   $��0��6%   $��Name:��5       �� 5!      -   5         ��Name$ TextBoxName��5!      $��0��5"      $��1��6   �� 5$      $��1��6   $��0��6%   $��Surname:��5%      �� 5&      -   5        $ TextBoxSurName��5&      $��1��5'      $��1��6   �� 5)      $��2��6   $��0��6%   $��Otchestvo:  ��5*      �� 5+      -   5        $ TextBoxOtchestvo��5+      $��2��5,      $��1��6   �� 5.      $��3��6   $��0��6%   $��	Birthday:��5/      (  "System.Windows.Controls.DatePicker  50      -   5          Name$ DatePickerBirthday��50      $��3��51      $��1��6"   �� 53      $��4��6   $��0��6%   $��Roles:��54      �� 55      -   5         ��Name$ ListViewRoles��55      $��4��56      $��1��6    ��57      �� 58      .R�59      ��  �� Orientation$ 
Horizontal=�6%   $
��auto��5:   %   .+�5;      ��  d� 	IsChecked 6'   ��  �� Path$ 
IsSelected��� 5<      ��6(   �� $ Role.RoleName�5=      5>      5@      5A      � 5C   
   -   5        	 �Name$	 GridMenu��5C      $��1��5D      $��0��6    5E      �� 5F      $��30 �6     5H      �� 5I      $	��100 �6#   �� 5J      $��* �6#   �� 5K      $	��100 �6#   .+�5N      �� -   5        
 ��Name$
 ButtonCancel��5N      $��0��5O      $��0��6   $��3q�5P      $��Cancel��5R      �� 5T      -   5        $
 ButtonConfirm��5T      $��0��5U      $��2��6   $��3q�5V      $��Confirm��5X      5Y      5[      5\      