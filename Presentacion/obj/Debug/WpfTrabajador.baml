   M S B A M L   `   `   `  ����G  CPresentacion, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:PresentacionPresentacion  5   	        Presentacion.WpfTrabajador   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:Presentacion     5   	     � Title$  Gestion de Trabajadores��5   	   $��333.333��6)   $	��325��6:   .��5	      � $��0,0,2,-3q�6   .+�5
   
   �� -   5         ��Name$ label��5
      $��Nombre del Trabajador :��6   $
��Left=�6A   $��	22,24,0,0q�6\   $	��Top=�6o    J� RenderTransformOrigin$ 0.307,-0.346&�6�   �� 5   
   -   5        $ label1��5      $��Apellido del Trabajador :��6    $
��Left=�6D   $��	22,63,0,0q�6_   $	��Top=�6r   �� 5   
   -   5         ��Name$ 
txtNombreT��5      $
��Left=�6&   $��23��6A   $��
166,28,0,0q�6M    �� TextWrapping$
 Wrap=�6a   $	��Top=�6u   $	��120��6�   6�   �� 5   
   -   5        $ txtApellidoT��5      $
��Left=�6(   $��23��6C   $��
166,63,0,0q�6O   $
 Wrap=�6c   $	��Top=�6w   $	��120��6�   6�   �� 5   
   -   5         ��Name$ 
btnAgregar��5      $��Agregar��6%   $
��Left=�67   $��
60,115,0,0q�6R   $	��Top=�6f   $��75��6~   6�   �� 5   
   -   5        $ btnModificar��5      $��	Modificar��6'   $
��Left=�6;   $��180,115,0,0q�6V   $	��Top=�6k   $��75��6�   6�   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ dgTrabajadores��5      $
��Left=�6+   $��
20,158,0,0q�6F   $	��Top=�6Z   $	��127��6r   $	��273��6      
IsReadOnly . 6�   5      5      