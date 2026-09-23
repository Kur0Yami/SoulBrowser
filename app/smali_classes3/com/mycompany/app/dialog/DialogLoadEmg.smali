.class public Lcom/mycompany/app/dialog/DialogLoadEmg;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# instance fields
.field public a0:Lcom/mycompany/app/web/WebViewActivity;

.field public b0:Landroid/content/Context;

.field public c0:Lcom/mycompany/app/dialog/DialogLoadImg$LoadImgListener;

.field public d0:Lcom/mycompany/app/view/MyDialogLinear;

.field public e0:Landroidx/appcompat/widget/AppCompatTextView;

.field public f0:Lcom/mycompany/app/view/MyProgressBar;

.field public g0:Landroidx/appcompat/widget/AppCompatTextView;

.field public h0:Lcom/mycompany/app/view/MyLineLinear;

.field public i0:Landroidx/appcompat/widget/AppCompatTextView;

.field public j0:Lcom/mycompany/app/view/MyLineText;

.field public k0:I

.field public l0:Z

.field public m0:Lcom/mycompany/app/web/WebEmgTask;

.field public n0:Lcom/mycompany/app/web/WebNestView;

.field public o0:Ljava/lang/String;

.field public final p0:Z

.field public q0:I

.field public r0:J

.field public s0:Z

.field public t0:Z

.field public u0:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;Lcom/mycompany/app/web/WebNestView;Ljava/lang/String;ZLcom/mycompany/app/dialog/DialogLoadImg$LoadImgListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->b0:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->c0:Lcom/mycompany/app/dialog/DialogLoadImg$LoadImgListener;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->n0:Lcom/mycompany/app/web/WebNestView;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->o0:Ljava/lang/String;

    .line 17
    .line 18
    iput-boolean p4, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->p0:Z

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->k0:I

    .line 22
    .line 23
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 24
    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogLoadEmg$1;

    .line 29
    .line 30
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogLoadEmg$1;-><init>(Lcom/mycompany/app/dialog/DialogLoadEmg;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final B(ZZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->f0:Lcom/mycompany/app/view/MyProgressBar;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x2

    .line 7
    iput v0, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->k0:I

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 10
    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->f0:Lcom/mycompany/app/view/MyProgressBar;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyProgressBar;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    const v0, -0x50506

    .line 28
    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 33
    .line 34
    sget p2, Lnet/kaki87/soul2/testing/R$string;->no_image:I

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 40
    .line 41
    const/4 p2, 0x1

    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->setActivated(Z)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 46
    .line 47
    sget p2, Lnet/kaki87/soul2/testing/R$string;->close:I

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 53
    .line 54
    sget-boolean p2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 55
    .line 56
    if-eqz p2, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const/high16 v0, -0x1000000

    .line 60
    .line 61
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_2
    if-eqz p2, :cond_3

    .line 66
    .line 67
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 68
    .line 69
    sget p2, Lnet/kaki87/soul2/testing/R$string;->server_error:I

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    if-eqz p3, :cond_4

    .line 76
    .line 77
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 78
    .line 79
    sget p2, Lnet/kaki87/soul2/testing/R$string;->check_network:I

    .line 80
    .line 81
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_4
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 86
    .line 87
    sget p2, Lnet/kaki87/soul2/testing/R$string;->no_image:I

    .line 88
    .line 89
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 90
    .line 91
    .line 92
    :goto_1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 93
    .line 94
    invoke-virtual {p1, v1}, Landroid/view/View;->setActivated(Z)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 98
    .line 99
    sget p2, Lnet/kaki87/soul2/testing/R$string;->retry:I

    .line 100
    .line 101
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 105
    .line 106
    sget-boolean p2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 107
    .line 108
    if-eqz p2, :cond_5

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_5
    const v0, -0xe19938

    .line 112
    .line 113
    .line 114
    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    .line 116
    .line 117
    iget-boolean p1, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->p0:Z

    .line 118
    .line 119
    if-eqz p1, :cond_6

    .line 120
    .line 121
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 122
    .line 123
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 124
    .line 125
    .line 126
    :cond_6
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->h0:Lcom/mycompany/app/view/MyLineLinear;

    .line 127
    .line 128
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public final C(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    iget v0, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->k0:I

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_1
    const/4 v1, -0x1

    .line 13
    const/4 v2, 0x1

    .line 14
    if-ne p1, v1, :cond_2

    .line 15
    .line 16
    iput p1, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->q0:I

    .line 17
    .line 18
    iput-boolean v2, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->t0:Z

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_2
    const/16 v1, 0x64

    .line 22
    .line 23
    if-eq p1, v1, :cond_6

    .line 24
    .line 25
    iget v1, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->q0:I

    .line 26
    .line 27
    const-wide/16 v3, 0x190

    .line 28
    .line 29
    const-wide/16 v5, 0x0

    .line 30
    .line 31
    if-ne v1, p1, :cond_5

    .line 32
    .line 33
    iget-boolean p1, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->s0:Z

    .line 34
    .line 35
    if-nez p1, :cond_4

    .line 36
    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    iget-wide v7, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->r0:J

    .line 42
    .line 43
    cmp-long p1, v7, v5

    .line 44
    .line 45
    if-nez p1, :cond_3

    .line 46
    .line 47
    iput-wide v0, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->r0:J

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    sub-long/2addr v0, v7

    .line 51
    const-wide/16 v5, 0x1388

    .line 52
    .line 53
    cmp-long p1, v0, v5

    .line 54
    .line 55
    if-lez p1, :cond_4

    .line 56
    .line 57
    iput-boolean v2, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->s0:Z

    .line 58
    .line 59
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 60
    .line 61
    sget v0, Lnet/kaki87/soul2/testing/R$string;->server_delay:I

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 64
    .line 65
    .line 66
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 67
    .line 68
    new-instance v0, Lcom/mycompany/app/dialog/DialogLoadEmg$7;

    .line 69
    .line 70
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogLoadEmg$7;-><init>(Lcom/mycompany/app/dialog/DialogLoadEmg;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_5
    iput p1, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->q0:I

    .line 78
    .line 79
    iput-wide v5, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->r0:J

    .line 80
    .line 81
    const/16 v1, 0x1e

    .line 82
    .line 83
    if-ge p1, v1, :cond_6

    .line 84
    .line 85
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 86
    .line 87
    new-instance v0, Lcom/mycompany/app/dialog/DialogLoadEmg$8;

    .line 88
    .line 89
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogLoadEmg$8;-><init>(Lcom/mycompany/app/dialog/DialogLoadEmg;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    .line 97
    .line 98
    :goto_2
    return-void

    .line 99
    :cond_7
    iput v2, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->k0:I

    .line 100
    .line 101
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 102
    .line 103
    new-instance v0, Lcom/mycompany/app/dialog/DialogLoadEmg$9;

    .line 104
    .line 105
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogLoadEmg$9;-><init>(Lcom/mycompany/app/dialog/DialogLoadEmg;)V

    .line 106
    .line 107
    .line 108
    const-wide/16 v3, 0xc8

    .line 109
    .line 110
    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 111
    .line 112
    .line 113
    iget-boolean p1, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->s0:Z

    .line 114
    .line 115
    if-nez p1, :cond_8

    .line 116
    .line 117
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 118
    .line 119
    sget v0, Lnet/kaki87/soul2/testing/R$string;->loading:I

    .line 120
    .line 121
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 122
    .line 123
    .line 124
    :cond_8
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 125
    .line 126
    const/16 v0, 0x8

    .line 127
    .line 128
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 129
    .line 130
    .line 131
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 132
    .line 133
    invoke-virtual {p1, v2}, Landroid/view/View;->setActivated(Z)V

    .line 134
    .line 135
    .line 136
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 137
    .line 138
    sget v1, Lnet/kaki87/soul2/testing/R$string;->cancel:I

    .line 139
    .line 140
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 141
    .line 142
    .line 143
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 144
    .line 145
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 146
    .line 147
    if-eqz v1, :cond_9

    .line 148
    .line 149
    const v1, -0x50506

    .line 150
    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_9
    const/high16 v1, -0x1000000

    .line 154
    .line 155
    :goto_3
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    .line 157
    .line 158
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 159
    .line 160
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 161
    .line 162
    .line 163
    return-void
.end method

.method public final dismiss()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->m0:Lcom/mycompany/app/web/WebEmgTask;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebEmgTask;->d()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->m0:Lcom/mycompany/app/web/WebEmgTask;

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 27
    .line 28
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->f0:Lcom/mycompany/app/view/MyProgressBar;

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyProgressBar;->f()V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->f0:Lcom/mycompany/app/view/MyProgressBar;

    .line 36
    .line 37
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->h0:Lcom/mycompany/app/view/MyLineLinear;

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineLinear;->a()V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->h0:Lcom/mycompany/app/view/MyLineLinear;

    .line 45
    .line 46
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 47
    .line 48
    if-eqz v0, :cond_5

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 51
    .line 52
    .line 53
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 54
    .line 55
    :cond_5
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 56
    .line 57
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->b0:Landroid/content/Context;

    .line 58
    .line 59
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->c0:Lcom/mycompany/app/dialog/DialogLoadImg$LoadImgListener;

    .line 60
    .line 61
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 62
    .line 63
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 64
    .line 65
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 66
    .line 67
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->n0:Lcom/mycompany/app/web/WebNestView;

    .line 68
    .line 69
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogLoadEmg;->o0:Ljava/lang/String;

    .line 70
    .line 71
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 72
    .line 73
    .line 74
    return-void
.end method
