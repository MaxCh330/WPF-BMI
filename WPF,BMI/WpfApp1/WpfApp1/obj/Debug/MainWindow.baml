   M S B A M L   `   `   `  ����B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp1WpfApp1  5   	       WpfApp1.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:WpfApp1     5   	     � Title$  
MainWindow��5   	   $��547.661��6   $��316.056��6-    � 
ResizeMode$ NoResize=�5	   	    � AllowsTransparency .  � WindowStyle$
 None=�5
   #   
������ $��0q�6O   .��5      �  � RowDefinitions 5   
   �� 5      $��50 �6   6*   �� 5      $	��350 �6   6+   �� 5      6   .+�5   
   ��  �� CornerRadius$ 	15,15,0,0��6   $��0��6*   $��	0,0,0,333q�67   $��2��6J   ��5      �� 5       �� 
StartPoint$	 0,0&�6&    �� EndPoint$
 0, 1&�67   .��5      �  � Color$ 	#FFEC5C0A��6#   	 � Offset$		 0.0Q�65   � 5      $ 	#FFFB9459��6#   $	 1Q�65   5      ._�5      �� 
 �� Orientation$
 
Horizontal=�6   .+�5      �� -   5         ��Name$ maleCheckbox��5      $��50 20 10 10q�61   
�������$��20(�6Y   .��6�   Male6�   �� 5      -   5        $ femaleCheckbox��5      $��30 20 10 10q�63   
�������$��20(�6[   .��6�   Female6�   5      5      �� 5    
   $ 0,0,0,0��6   $��1��6(   $��0,5,0,0q�65   ��5#      �� 5$      $	 0,0&�6&   $
 0, 1&�67   .��5%      � $ 	#FFF88B4C��6#   $		 0.0Q�65   � 5&      $ 	#FFFB8484��6#   $	 1Q�65   5'      ._�5)      �� $��10,20q�6   .+�5,      �� 
������� �� TextAlignment$ Center=�6/   $��0,0,0,0q�6F   $��30(�6W   HEIGHT6m   �� 5-      $��40��6   .+�5.      �� -   5         ��Name$ 
HeightRect��5.   F   $ 15��6   ���	#44ffffff._�51      �� $
 
Horizontal=�6%   .+�52      �� -   5         ��Name$ HeightNumber��52   |   $��45��6(    �� Padding$	 0 7q�63   $ Right=�6A   ���	#eeffffff$��15(�6n   1106�   �� 53      $��35��6(   $ 3 10 0 0q�63   $
 Left=�6F   ���	#eeffffff$��12(�6r   cm6�   54      55      56      �� 57      -   5         ��Name$ HeightSlider��57   A   $	��280��6    � Minimum$	 110Q�6%    � Maximum$	 200Q�63    �� TickFrequency$ 1Q�6�    �� IsSnapToTickEnabled . $��16��6�   6�   �� 5:      
�������$ Center=�6/   $��	0,20,0,10q�6F   $��30(�6Y   WEIGHT6o   �� 5;      $��40��6   .+�5<      �� -   5        $ 
WeightRect��5<   F   $ 15��6   ���	#44ffffff._�5?      �� $
 
Horizontal=�6%   .+�5@      �� -   5        $ WeightNumber��5@   |   $��40��6(   $	 0 7q�63   $ Right=�6A   ���	#eeffffff$��15(�6n   306�   �� 5A      $��40��6(   $ 3 10 0 0q�63   $
 Left=�6F   ���	#eeffffff$��12(�6r   kg6�   5B      5C      5D      �� 5E      -   5        $ WeightSlider��5E   @   $	��280��6   $ 30Q�6%   $	 120Q�62   $ 1Q�6    . $��16��6�   5F      5G      �� 5I   
   $ 	0,0,15,15��6   $��2��6*   
�������._�5J      �� .+�5K      �� $��20q�6   .+�5L      �� $
��Bold"�6    BMI67   �� 5M      $
 
Horizontal=�6!   .+�5N      �� -	   5        $ 
BmiNumber1��5N   [   $��45(�6$   $
��Bold"�62   ���	#FFFF546B246s   �� 5O      -
   5        $ 
BmiNumber2��5O   l   $��25(�6$   $
��Bold"�62   $��0,6,0,0q�6D   ���	#FFFF546B.86�   5P      �� 5Q      -   5        $ 
ResultText��5Q   V   $��14(�6    $��0,1,0,0q�6.   ���	#FFCCCCCC$��19��6j   6x   5R      � 5U      -   5         �Name$ ResetBtn��5U   c   $��80��6   $��80��6"    �� Right$ 25��6.   
 �� Top$	 -42��6@    K� ZIndex$ 10��6Q    �� Left$	 216��6�   .+�5V      A� 
������� J� Effect 5W      3  -System.Windows.Media.Effects.DropShadowEffect  5X         Opacity$	 0.2Q�6/      	Direction$	 -90Q�6=      Color$ 	#FFBD1212��6M      
BlurRadius$ 20Q�6_   6q   5Z      �� 5[      $��Wingdings 3)�6    $��48(�69   $��Center=�6G   $��Center=�6d   ���	#FFF9616F$��	20,20,0,0q�6�   $��60��6�   $��60��6�   P6�   5\      5]      5^      �� 5a   
   $��40��6   $	��Top=�6!   $��Right=�69   .+�5b      A� -   5         A�Name$ CloseBtn��5b   I   $��15��6   $��15��6!   ���	#77FFCFBA$��8q�6>   6�   5c      5d      5e      