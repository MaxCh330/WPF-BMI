using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace WpfApp1
{
    /// <summary>
    /// MainWindow.xaml 的互動邏輯
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }
        double standard1 = 18.5;
        double standard2 = 24;
        // 身高拉桿 
        private void HeightSlider_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            if (IsInitialized)
            {
                // 更新數值
                HeightNumber.Text = HeightSlider.Value.ToString();

                // 計算拉桿數值轉為 0 ~ 1
                double heightWeight = (HeightSlider.Value - HeightSlider.Minimum) / (HeightSlider.Maximum - HeightSlider.Minimum);

                // 計算要移動的範圍
                double range = HeightSlider.ActualWidth - HeightRect.ActualWidth;

                // 移動數字框
                Canvas.SetLeft(HeightRect, heightWeight * range);


                // 計算 BMI
                BMIchange();
            }
        }

        // 體重拉桿
        private void WeightSlider_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            if (IsInitialized)
            {
                // 更新數值
                WeightNumber.Text = WeightSlider.Value.ToString();

                // 計算拉桿數值轉為 0 ~ 1
                double weightWeight = (WeightSlider.Value - WeightSlider.Minimum) / (WeightSlider.Maximum - WeightSlider.Minimum);

                // 計算要移動的範圍
                double range = WeightSlider.ActualWidth - WeightRect.ActualWidth;

                // 移動數字框
                Canvas.SetLeft(WeightRect, weightWeight * range);


                // 計算 BMI
                BMIchange();
            }
        }



        // 移動視窗 
        private void BaseGrid_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            this.DragMove();
        }

        // 關閉視窗 
        private void CloseBtn_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            this.Close();
        }

        // 重置按鈕 
        private void ResetBtn_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            HeightSlider.Value = HeightSlider.Minimum;
            WeightSlider.Value = WeightSlider.Minimum;
            ResultText.Text = "";
        }
        void BMIchange()
        {
            // 計算 BMI
            double bmi = WeightSlider.Value / Math.Pow(HeightSlider.Value / 100, 2);

            // 用小數點當區隔拆開
            string[] parts = Math.Round(bmi, 1).ToString().Split('.');

            // 顯示 BMI
            BmiNumber1.Text = parts[0];
            if (parts.Length > 1)
            {
                BmiNumber2.Text = '.' + parts[1];
            }

            // 變更文字
            if (bmi < standard1)
            {
                ResultText.Text = "Eat more and do more exercise!";
                ResultText.Foreground = Brushes.Red;
            }
            else if (bmi >= standard1 && bmi < standard2)
            {
                ResultText.Text = "Keep it and exercise!";
                ResultText.Foreground = Brushes.LimeGreen;
            }
            else
            {
                ResultText.Text = "Do more exercise and controll your diet!";
                ResultText.Foreground = Brushes.Red;
            }
        }

        private void maleCheckbox_Checked(object sender, RoutedEventArgs e)
        {
            if (maleCheckbox.IsChecked==true)
            {
                femaleCheckbox.IsChecked = false;
            }
            standard1 = 19.2;
            standard2 = 23.7;


        }

        private void femaleCheckbox_Checked(object sender, RoutedEventArgs e)
        {
            if (femaleCheckbox.IsChecked == true)
            {
                maleCheckbox.IsChecked = false;
            }
            standard1 = 18.3;
            standard2 = 22.7;
        }
    }
}
