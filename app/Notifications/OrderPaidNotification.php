<?php

namespace App\Notifications;

use App\Models\Order;
use Illuminate\Bus\Queueable;
use Illuminate\Notifications\Notification;
use Illuminate\Notifications\Messages\MailMessage;

class OrderPaidNotification extends Notification
{
    use Queueable;

    protected $order;

    public function __construct(Order $order)
    {
        $this->order = $order;
    }

    public function via($notifiable)
    {
        return ['mail'];
    }

    public function toMail($notifiable)
    {
        return (new MailMessage())
            ->subject('订单支付成功')  // 邮件标题
            ->greeting($this->order->user->name.'您好：') // 欢迎词
            ->line('您于 '.$this->order->created_at->format('m-d H:i').' 创建的订单已经支付成功。') // 邮件内容
            ->action('查看订单', route('orders.show', [$this->order->id])) // 邮件中的按钮及对应链接
            ->success(); // 按钮的色调
    }
}
