.class Lcom/mycompany/app/lock/PinActivity$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/lock/PinActivity$4;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/lock/PinActivity$4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/lock/PinActivity$4$1;->c:Lcom/mycompany/app/lock/PinActivity$4;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/lock/PinActivity$4$1;->c:Lcom/mycompany/app/lock/PinActivity$4;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/lock/PinActivity$4;->c:Lcom/mycompany/app/lock/PinActivity;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/lock/PinActivity;->p1:Lcom/mycompany/app/lock/PinLock;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_4

    .line 10
    .line 11
    :cond_0
    iget-object v2, v1, Lcom/mycompany/app/lock/PinLock;->g:Lcom/mycompany/app/view/MyButtonImage;

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    goto :goto_3

    .line 16
    :cond_1
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 17
    .line 18
    const/high16 v4, 0x21000000

    .line 19
    .line 20
    const v5, -0xc0c0c1

    .line 21
    .line 22
    .line 23
    if-eqz v3, :cond_2

    .line 24
    .line 25
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_backspace_dark_24:I

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 28
    .line 29
    .line 30
    iget-object v2, v1, Lcom/mycompany/app/lock/PinLock;->g:Lcom/mycompany/app/view/MyButtonImage;

    .line 31
    .line 32
    invoke-virtual {v2, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_backspace_black_24:I

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 39
    .line 40
    .line 41
    iget-object v2, v1, Lcom/mycompany/app/lock/PinLock;->g:Lcom/mycompany/app/view/MyButtonImage;

    .line 42
    .line 43
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 44
    .line 45
    .line 46
    :goto_0
    const/4 v2, 0x0

    .line 47
    :goto_1
    const/16 v3, 0xa

    .line 48
    .line 49
    if-ge v2, v3, :cond_4

    .line 50
    .line 51
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 52
    .line 53
    if-eqz v3, :cond_3

    .line 54
    .line 55
    iget-object v3, v1, Lcom/mycompany/app/lock/PinLock;->f:[Lcom/mycompany/app/view/MyButtonText;

    .line 56
    .line 57
    aget-object v3, v3, v2

    .line 58
    .line 59
    const v6, -0x50506

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    .line 64
    .line 65
    iget-object v3, v1, Lcom/mycompany/app/lock/PinLock;->f:[Lcom/mycompany/app/view/MyButtonText;

    .line 66
    .line 67
    aget-object v3, v3, v2

    .line 68
    .line 69
    invoke-virtual {v3, v5}, Lcom/mycompany/app/view/MyButtonText;->setBgPreColor(I)V

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_3
    iget-object v3, v1, Lcom/mycompany/app/lock/PinLock;->f:[Lcom/mycompany/app/view/MyButtonText;

    .line 74
    .line 75
    aget-object v3, v3, v2

    .line 76
    .line 77
    const/high16 v6, -0x1000000

    .line 78
    .line 79
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    .line 81
    .line 82
    iget-object v3, v1, Lcom/mycompany/app/lock/PinLock;->f:[Lcom/mycompany/app/view/MyButtonText;

    .line 83
    .line 84
    aget-object v3, v3, v2

    .line 85
    .line 86
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyButtonText;->setBgPreColor(I)V

    .line 87
    .line 88
    .line 89
    :goto_2
    iget-object v3, v1, Lcom/mycompany/app/lock/PinLock;->f:[Lcom/mycompany/app/view/MyButtonText;

    .line 90
    .line 91
    aget-object v3, v3, v2

    .line 92
    .line 93
    new-instance v6, Lcom/mycompany/app/lock/PinLock$1;

    .line 94
    .line 95
    invoke-direct {v6, v1, v2}, Lcom/mycompany/app/lock/PinLock$1;-><init>(Lcom/mycompany/app/lock/PinLock;I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v6}, Lcom/mycompany/app/view/MyButtonText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    .line 100
    .line 101
    add-int/lit8 v2, v2, 0x1

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    iget-object v2, v1, Lcom/mycompany/app/lock/PinLock;->g:Lcom/mycompany/app/view/MyButtonImage;

    .line 105
    .line 106
    new-instance v3, Lcom/mycompany/app/lock/PinLock$2;

    .line 107
    .line 108
    invoke-direct {v3, v1}, Lcom/mycompany/app/lock/PinLock$2;-><init>(Lcom/mycompany/app/lock/PinLock;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    .line 113
    .line 114
    iget-object v2, v1, Lcom/mycompany/app/lock/PinLock;->g:Lcom/mycompany/app/view/MyButtonImage;

    .line 115
    .line 116
    new-instance v3, Lcom/mycompany/app/lock/PinLock$3;

    .line 117
    .line 118
    invoke-direct {v3, v1}, Lcom/mycompany/app/lock/PinLock$3;-><init>(Lcom/mycompany/app/lock/PinLock;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 122
    .line 123
    .line 124
    :goto_3
    iget-object v0, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 125
    .line 126
    if-nez v0, :cond_5

    .line 127
    .line 128
    :goto_4
    return-void

    .line 129
    :cond_5
    new-instance v1, Lcom/mycompany/app/lock/PinActivity$4$1$1;

    .line 130
    .line 131
    invoke-direct {v1, p0}, Lcom/mycompany/app/lock/PinActivity$4$1$1;-><init>(Lcom/mycompany/app/lock/PinActivity$4$1;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 135
    .line 136
    .line 137
    return-void
.end method
