   M S B A M L   `   `   `  ����L  HInformationSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:InformationSystem.PagesInformationSystem.Pages  5      &     InformationSystem.Pages.PageData   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      7local%clr-namespace:InformationSystem.Pages     5        N� Title$  PageData��5	      .��5      � .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ GridData��5         AutoGenerateColumns .     
IsReadOnly .    CanUserAddRows .     CanUserDeleteRows .     SelectionUnit$ FullRow=�5         SelectionMode$ Single=�5         Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn	   Header$
	 Name��6%   1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 63   ��  �� Path$
 Name�  5      $	 Surname��6%   
 66   �� $ SurName�  5      $	 	Otchestvo��6%   
 68   �� $ 	Otchestvo�  5      $	 Birthday��6%   
 67   �� $ Birthday�4  .System.Windows.Controls.DataGridTemplateColumn  5      $
	 Role��6)      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 67      CellTemplate 5      �� 5      .R�5      ��  ��Name$ ListBoxTags��6&   
������ $��0q�5   &   $��-4q�5   &   $��Center=�5   &    �� DisplayMemberPath$ RoleName��5!   &   ��5    &   �� $
 Role���5"   "   �� 5#   &   .R�5$   *   �  � Orientation$ 
Horizontal=�64   $��Center=�6M   5%   '   ��5'   "   �� 5(   &    �� 
TargetType" ��6,   .�5)   *   ��  �� Property � |� �� Value .  6F   5*   '   5,      5-      5/      51      52      53      