.class Lcom/mycompany/app/lock/FingerActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/lock/FingerActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/lock/FingerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/lock/FingerActivity$4;->c:Lcom/mycompany/app/lock/FingerActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/lock/FingerActivity$4;->c:Lcom/mycompany/app/lock/FingerActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/lock/FingerActivity;->g1:Lcom/mycompany/app/view/MyMainRelative;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    new-instance v2, Lcom/mycompany/app/lock/FingerActivity$5;

    .line 9
    .line 10
    invoke-direct {v2, v0}, Lcom/mycompany/app/lock/FingerActivity$5;-><init>(Lcom/mycompany/app/lock/FingerActivity;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, v0, Lcom/mycompany/app/lock/FingerActivity;->h1:Landroid/widget/ImageView;

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_lock_dark_84:I

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_lock_black_84:I

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 34
    .line 35
    .line 36
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/lock/FingerActivity;->i1:Lcom/mycompany/app/view/MyButtonText;

    .line 37
    .line 38
    if-nez v1, :cond_3

    .line 39
    .line 40
    :goto_1
    return-void

    .line 41
    :cond_3
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 42
    .line 43
    const/high16 v3, -0x1000000

    .line 44
    .line 45
    if-eqz v2, :cond_4

    .line 46
    .line 47
    const v2, -0x50506

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    .line 52
    .line 53
    iget-object v1, v0, Lcom/mycompany/app/lock/FingerActivity;->i1:Lcom/mycompany/app/view/MyButtonText;

    .line 54
    .line 55
    const v4, -0xd8d8d9

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v3, v4}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 59
    .line 60
    .line 61
    iget-object v1, v0, Lcom/mycompany/app/lock/FingerActivity;->j1:Lcom/mycompany/app/view/MyButtonText;

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    .line 65
    .line 66
    iget-object v1, v0, Lcom/mycompany/app/lock/FingerActivity;->j1:Lcom/mycompany/app/view/MyButtonText;

    .line 67
    .line 68
    invoke-virtual {v1, v3, v4}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_4
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    .line 74
    .line 75
    iget-object v1, v0, Lcom/mycompany/app/lock/FingerActivity;->i1:Lcom/mycompany/app/view/MyButtonText;

    .line 76
    .line 77
    const v2, -0x1f1f20

    .line 78
    .line 79
    .line 80
    const v4, -0x2f2f30

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v2, v4}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 84
    .line 85
    .line 86
    iget-object v1, v0, Lcom/mycompany/app/lock/FingerActivity;->j1:Lcom/mycompany/app/view/MyButtonText;

    .line 87
    .line 88
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    .line 90
    .line 91
    iget-object v1, v0, Lcom/mycompany/app/lock/FingerActivity;->j1:Lcom/mycompany/app/view/MyButtonText;

    .line 92
    .line 93
    invoke-virtual {v1, v2, v4}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 94
    .line 95
    .line 96
    :goto_2
    iget v1, v0, Lcom/mycompany/app/lock/FingerActivity;->l1:I

    .line 97
    .line 98
    const/4 v2, 0x2

    .line 99
    if-ne v1, v2, :cond_5

    .line 100
    .line 101
    sget v1, Lnet/kaki87/soul2/testing/R$string;->secret_reset:I

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_5
    const/4 v2, 0x3

    .line 105
    if-ne v1, v2, :cond_6

    .line 106
    .line 107
    sget v1, Lnet/kaki87/soul2/testing/R$string;->cancel:I

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_6
    sget-boolean v1, Lcom/mycompany/app/pref/PrefSecret;->u:Z

    .line 111
    .line 112
    if-eqz v1, :cond_7

    .line 113
    .line 114
    sget v1, Lnet/kaki87/soul2/testing/R$string;->normal_start:I

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_7
    sget v1, Lnet/kaki87/soul2/testing/R$string;->secret_reset:I

    .line 118
    .line 119
    :goto_3
    iget-object v2, v0, Lcom/mycompany/app/lock/FingerActivity;->i1:Lcom/mycompany/app/view/MyButtonText;

    .line 120
    .line 121
    sget v3, Lnet/kaki87/soul2/testing/R$string;->finger_print:I

    .line 122
    .line 123
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 124
    .line 125
    .line 126
    iget-object v2, v0, Lcom/mycompany/app/lock/FingerActivity;->j1:Lcom/mycompany/app/view/MyButtonText;

    .line 127
    .line 128
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 129
    .line 130
    .line 131
    iget-object v1, v0, Lcom/mycompany/app/lock/FingerActivity;->i1:Lcom/mycompany/app/view/MyButtonText;

    .line 132
    .line 133
    new-instance v2, Lcom/mycompany/app/lock/FingerActivity$6;

    .line 134
    .line 135
    invoke-direct {v2, v0}, Lcom/mycompany/app/lock/FingerActivity$6;-><init>(Lcom/mycompany/app/lock/FingerActivity;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    .line 140
    .line 141
    iget-object v1, v0, Lcom/mycompany/app/lock/FingerActivity;->j1:Lcom/mycompany/app/view/MyButtonText;

    .line 142
    .line 143
    new-instance v2, Lcom/mycompany/app/lock/FingerActivity$7;

    .line 144
    .line 145
    invoke-direct {v2, v0}, Lcom/mycompany/app/lock/FingerActivity$7;-><init>(Lcom/mycompany/app/lock/FingerActivity;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    .line 150
    .line 151
    return-void
.end method
