.class Lcom/mycompany/app/dialog/DialogSetTabDetail$26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSetTabDetail;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetTabDetail;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail$26;->a:Lcom/mycompany/app/dialog/DialogSetTabDetail;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->e1:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail$26;->a:Lcom/mycompany/app/dialog/DialogSetTabDetail;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetTabDetail;->F()V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->J0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto/16 :goto_2

    .line 13
    .line 14
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->P0:Z

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x1

    .line 18
    if-eq v1, v3, :cond_1

    .line 19
    .line 20
    iput-boolean v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->P0:Z

    .line 21
    .line 22
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->s0:Lcom/mycompany/app/view/MySwitchView;

    .line 23
    .line 24
    invoke-virtual {v1, v3, v2}, Lcom/mycompany/app/view/MySwitchView;->b(ZZ)V

    .line 25
    .line 26
    .line 27
    move v1, v3

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v1, v2

    .line 30
    :goto_0
    iget v4, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->Q0:I

    .line 31
    .line 32
    const/4 v5, 0x5

    .line 33
    if-eq v4, v5, :cond_3

    .line 34
    .line 35
    iput v5, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->Q0:I

    .line 36
    .line 37
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->v0:Lcom/mycompany/app/dialog/DialogSetTabDetail$ColorAdapter;

    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 42
    .line 43
    .line 44
    :cond_2
    move v1, v3

    .line 45
    :cond_3
    iget v4, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->R0:I

    .line 46
    .line 47
    const/4 v5, 0x3

    .line 48
    if-eq v4, v5, :cond_4

    .line 49
    .line 50
    iput v5, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->R0:I

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetTabDetail;->E()V

    .line 53
    .line 54
    .line 55
    :cond_4
    iget-boolean v4, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->S0:Z

    .line 56
    .line 57
    if-eq v4, v3, :cond_5

    .line 58
    .line 59
    iput-boolean v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->S0:Z

    .line 60
    .line 61
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->B0:Lcom/mycompany/app/view/MySwitchView;

    .line 62
    .line 63
    invoke-virtual {v1, v3, v2}, Lcom/mycompany/app/view/MySwitchView;->b(ZZ)V

    .line 64
    .line 65
    .line 66
    move v1, v3

    .line 67
    :cond_5
    iget v4, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->T0:I

    .line 68
    .line 69
    const-string v5, "%"

    .line 70
    .line 71
    const/16 v6, 0x64

    .line 72
    .line 73
    if-eq v4, v6, :cond_6

    .line 74
    .line 75
    iput v6, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->T0:I

    .line 76
    .line 77
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->E0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 78
    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    iget v7, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->T0:I

    .line 85
    .line 86
    invoke-static {v4, v7, v5, v1}, Lcom/mycompany/app/dialog/a;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 87
    .line 88
    .line 89
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->F0:Landroid/widget/SeekBar;

    .line 90
    .line 91
    iget v4, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->T0:I

    .line 92
    .line 93
    iget v7, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->a0:I

    .line 94
    .line 95
    sub-int/2addr v4, v7

    .line 96
    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_6
    move v3, v1

    .line 101
    :goto_1
    iget v1, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->U0:I

    .line 102
    .line 103
    if-eq v1, v6, :cond_7

    .line 104
    .line 105
    iput v6, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->U0:I

    .line 106
    .line 107
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->J0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 108
    .line 109
    new-instance v4, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    iget v6, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->U0:I

    .line 115
    .line 116
    invoke-static {v4, v6, v5, v1}, Lcom/mycompany/app/dialog/a;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 117
    .line 118
    .line 119
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->K0:Landroid/widget/SeekBar;

    .line 120
    .line 121
    iget v4, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->U0:I

    .line 122
    .line 123
    iget v5, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->c0:I

    .line 124
    .line 125
    sub-int/2addr v4, v5

    .line 126
    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 127
    .line 128
    .line 129
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->q0:Landroid/view/ViewGroup$LayoutParams;

    .line 130
    .line 131
    sget v4, Lcom/mycompany/app/main/MainApp;->a1:I

    .line 132
    .line 133
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 134
    .line 135
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->l0:Landroid/widget/FrameLayout;

    .line 136
    .line 137
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 138
    .line 139
    .line 140
    :cond_7
    invoke-virtual {v0, v2}, Lcom/mycompany/app/dialog/DialogSetTabDetail;->G(Z)V

    .line 141
    .line 142
    .line 143
    if-nez v3, :cond_8

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_8
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 147
    .line 148
    if-nez v1, :cond_9

    .line 149
    .line 150
    :goto_2
    return-void

    .line 151
    :cond_9
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetTabDetail$28;

    .line 152
    .line 153
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetTabDetail$28;-><init>(Lcom/mycompany/app/dialog/DialogSetTabDetail;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 157
    .line 158
    .line 159
    return-void
.end method
