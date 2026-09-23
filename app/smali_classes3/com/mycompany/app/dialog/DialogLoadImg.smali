.class public Lcom/mycompany/app/dialog/DialogLoadImg;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogLoadImg$LoadImgListener;
    }
.end annotation


# instance fields
.field public A0:I

.field public final B0:Ljava/lang/Runnable;

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

.field public l0:I

.field public m0:Z

.field public n0:Z

.field public o0:Ljava/lang/String;

.field public p0:Ljava/util/List;

.field public final q0:Z

.field public final r0:Z

.field public s0:Z

.field public t0:J

.field public u0:I

.field public v0:I

.field public w0:J

.field public x0:Z

.field public y0:I

.field public z0:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;Ljava/lang/String;ZZILcom/mycompany/app/dialog/DialogLoadImg$LoadImgListener;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/dialog/DialogLoadImg$9;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogLoadImg$9;-><init>(Lcom/mycompany/app/dialog/DialogLoadImg;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->B0:Ljava/lang/Runnable;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->b0:Landroid/content/Context;

    .line 18
    .line 19
    iput-object p6, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->c0:Lcom/mycompany/app/dialog/DialogLoadImg$LoadImgListener;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->o0:Ljava/lang/String;

    .line 22
    .line 23
    iput-boolean p3, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->q0:Z

    .line 24
    .line 25
    iput-boolean p4, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->r0:Z

    .line 26
    .line 27
    iput p5, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->k0:I

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->l0:I

    .line 31
    .line 32
    const/4 p2, 0x2

    .line 33
    if-ne p5, p2, :cond_0

    .line 34
    .line 35
    const/4 p1, 0x1

    .line 36
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->m0:Z

    .line 37
    .line 38
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 39
    .line 40
    if-nez p1, :cond_1

    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    new-instance p2, Lcom/mycompany/app/dialog/DialogLoadImg$1;

    .line 44
    .line 45
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogLoadImg$1;-><init>(Lcom/mycompany/app/dialog/DialogLoadImg;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public final B(ZZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->f0:Lcom/mycompany/app/view/MyProgressBar;

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
    iput v0, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->l0:I

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 10
    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->f0:Lcom/mycompany/app/view/MyProgressBar;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyProgressBar;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->g0:Landroidx/appcompat/widget/AppCompatTextView;

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
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 33
    .line 34
    sget p2, Lnet/kaki87/soul2/testing/R$string;->no_image:I

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 40
    .line 41
    const/4 p2, 0x1

    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->setActivated(Z)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 46
    .line 47
    sget p2, Lnet/kaki87/soul2/testing/R$string;->close:I

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->i0:Landroidx/appcompat/widget/AppCompatTextView;

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
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->g0:Landroidx/appcompat/widget/AppCompatTextView;

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
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->g0:Landroidx/appcompat/widget/AppCompatTextView;

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
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->g0:Landroidx/appcompat/widget/AppCompatTextView;

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
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 93
    .line 94
    invoke-virtual {p1, v1}, Landroid/view/View;->setActivated(Z)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 98
    .line 99
    sget p2, Lnet/kaki87/soul2/testing/R$string;->retry:I

    .line 100
    .line 101
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->i0:Landroidx/appcompat/widget/AppCompatTextView;

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
    iget-boolean p1, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->r0:Z

    .line 118
    .line 119
    if-eqz p1, :cond_6

    .line 120
    .line 121
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 122
    .line 123
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 124
    .line 125
    .line 126
    :cond_6
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->h0:Lcom/mycompany/app/view/MyLineLinear;

    .line 127
    .line 128
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public final C(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    iget v0, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->l0:I

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
    const/4 v0, -0x1

    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    if-ne p1, v0, :cond_3

    .line 16
    .line 17
    invoke-static {}, Lcom/mycompany/app/web/WebLoadTask;->c()Lcom/mycompany/app/web/WebLoadTask;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v0, v0, Lcom/mycompany/app/web/WebLoadTask;->b:Landroid/webkit/WebView;

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    move v0, v1

    .line 26
    goto :goto_0

    .line 27
    :cond_2
    invoke-virtual {v0}, Landroid/webkit/WebView;->getProgress()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    :goto_0
    iput v0, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->u0:I

    .line 32
    .line 33
    iput p1, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->v0:I

    .line 34
    .line 35
    iput v1, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->y0:I

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_3
    const/16 v0, 0x64

    .line 39
    .line 40
    if-eq p1, v0, :cond_6

    .line 41
    .line 42
    iget v0, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->v0:I

    .line 43
    .line 44
    const-wide/16 v3, 0x0

    .line 45
    .line 46
    if-ne v0, p1, :cond_5

    .line 47
    .line 48
    iget-boolean p1, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->x0:Z

    .line 49
    .line 50
    if-nez p1, :cond_7

    .line 51
    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    iget-wide v5, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->w0:J

    .line 57
    .line 58
    cmp-long p1, v5, v3

    .line 59
    .line 60
    if-nez p1, :cond_4

    .line 61
    .line 62
    iput-wide v0, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->w0:J

    .line 63
    .line 64
    return-void

    .line 65
    :cond_4
    sub-long/2addr v0, v5

    .line 66
    const-wide/16 v3, 0x1388

    .line 67
    .line 68
    cmp-long p1, v0, v3

    .line 69
    .line 70
    if-lez p1, :cond_7

    .line 71
    .line 72
    iput-boolean v2, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->x0:Z

    .line 73
    .line 74
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 75
    .line 76
    sget v0, Lnet/kaki87/soul2/testing/R$string;->server_delay:I

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_5
    iput p1, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->v0:I

    .line 83
    .line 84
    iput-wide v3, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->w0:J

    .line 85
    .line 86
    const/16 v0, 0x1e

    .line 87
    .line 88
    if-ge p1, v0, :cond_6

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_6
    :goto_1
    iget p1, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->l0:I

    .line 92
    .line 93
    if-eqz p1, :cond_8

    .line 94
    .line 95
    :cond_7
    :goto_2
    return-void

    .line 96
    :cond_8
    iget p1, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->k0:I

    .line 97
    .line 98
    if-nez p1, :cond_a

    .line 99
    .line 100
    invoke-static {}, Lcom/mycompany/app/web/WebLoadTask;->c()Lcom/mycompany/app/web/WebLoadTask;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->o0:Ljava/lang/String;

    .line 105
    .line 106
    iput-boolean v1, p1, Lcom/mycompany/app/web/WebLoadTask;->f:Z

    .line 107
    .line 108
    iget-object v1, p1, Lcom/mycompany/app/web/WebLoadTask;->b:Landroid/webkit/WebView;

    .line 109
    .line 110
    if-nez v1, :cond_9

    .line 111
    .line 112
    iget-object p1, p1, Lcom/mycompany/app/web/WebLoadTask;->c:Lcom/mycompany/app/web/WebLoadTask$WebLoadTaskListener;

    .line 113
    .line 114
    if-eqz p1, :cond_c

    .line 115
    .line 116
    invoke-interface {p1}, Lcom/mycompany/app/web/WebLoadTask$WebLoadTaskListener;->a()V

    .line 117
    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_9
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_a
    iget-boolean p1, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->s0:Z

    .line 125
    .line 126
    if-eqz p1, :cond_b

    .line 127
    .line 128
    iput-boolean v1, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->s0:Z

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_b
    iput v2, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->l0:I

    .line 132
    .line 133
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 134
    .line 135
    new-instance v0, Lcom/mycompany/app/dialog/DialogLoadImg$7;

    .line 136
    .line 137
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogLoadImg$7;-><init>(Lcom/mycompany/app/dialog/DialogLoadImg;)V

    .line 138
    .line 139
    .line 140
    const-wide/16 v3, 0xc8

    .line 141
    .line 142
    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 143
    .line 144
    .line 145
    :cond_c
    :goto_3
    iget-boolean p1, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->x0:Z

    .line 146
    .line 147
    if-nez p1, :cond_d

    .line 148
    .line 149
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 150
    .line 151
    sget v0, Lnet/kaki87/soul2/testing/R$string;->loading:I

    .line 152
    .line 153
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 154
    .line 155
    .line 156
    :cond_d
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 157
    .line 158
    const/16 v0, 0x8

    .line 159
    .line 160
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 161
    .line 162
    .line 163
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 164
    .line 165
    invoke-virtual {p1, v2}, Landroid/view/View;->setActivated(Z)V

    .line 166
    .line 167
    .line 168
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 169
    .line 170
    sget v1, Lnet/kaki87/soul2/testing/R$string;->cancel:I

    .line 171
    .line 172
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 173
    .line 174
    .line 175
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 176
    .line 177
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 178
    .line 179
    if-eqz v1, :cond_e

    .line 180
    .line 181
    const v1, -0x50506

    .line 182
    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_e
    const/high16 v1, -0x1000000

    .line 186
    .line 187
    :goto_4
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 188
    .line 189
    .line 190
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 191
    .line 192
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 193
    .line 194
    .line 195
    return-void
.end method

.method public final D(IZ)V
    .locals 6

    .line 1
    iput p1, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->A0:I

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->n0:Z

    .line 4
    .line 5
    if-nez v0, :cond_6

    .line 6
    .line 7
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->f0:Lcom/mycompany/app/view/MyProgressBar;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    if-eqz p2, :cond_1

    .line 13
    .line 14
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->f0:Lcom/mycompany/app/view/MyProgressBar;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {p2, v1}, Lcom/mycompany/app/view/MyProgressBar;->setProgress(F)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->f0:Lcom/mycompany/app/view/MyProgressBar;

    .line 27
    .line 28
    invoke-virtual {p2, v0}, Lcom/mycompany/app/view/MyProgressBar;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    const/16 p2, 0x32

    .line 32
    .line 33
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/dialog/DialogLoadImg;->D(IZ)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyProgressBar;->getProgress()F

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    const/16 v0, 0x64

    .line 50
    .line 51
    const/4 v1, -0x1

    .line 52
    if-ne p2, v0, :cond_2

    .line 53
    .line 54
    iget v0, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->y0:I

    .line 55
    .line 56
    if-lez v0, :cond_2

    .line 57
    .line 58
    const/4 v2, 0x3

    .line 59
    if-ge v0, v2, :cond_2

    .line 60
    .line 61
    add-int/lit8 v0, v0, 0x1

    .line 62
    .line 63
    iput v0, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->y0:I

    .line 64
    .line 65
    move p2, v1

    .line 66
    :cond_2
    iget v0, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->u0:I

    .line 67
    .line 68
    invoke-virtual {p0, v0}, Lcom/mycompany/app/dialog/DialogLoadImg;->C(I)V

    .line 69
    .line 70
    .line 71
    if-ge p2, p1, :cond_5

    .line 72
    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 74
    .line 75
    .line 76
    move-result-wide v2

    .line 77
    if-eq p2, v1, :cond_3

    .line 78
    .line 79
    iget-wide v0, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->t0:J

    .line 80
    .line 81
    sub-long v0, v2, v0

    .line 82
    .line 83
    const-wide/16 v4, 0x1

    .line 84
    .line 85
    cmp-long p1, v0, v4

    .line 86
    .line 87
    if-lez p1, :cond_4

    .line 88
    .line 89
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->f0:Lcom/mycompany/app/view/MyProgressBar;

    .line 90
    .line 91
    add-int/lit8 p2, p2, 0x1

    .line 92
    .line 93
    int-to-float p2, p2

    .line 94
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyProgressBar;->setProgress(F)V

    .line 95
    .line 96
    .line 97
    :cond_4
    iput-wide v2, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->t0:J

    .line 98
    .line 99
    :cond_5
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->B0:Ljava/lang/Runnable;

    .line 100
    .line 101
    if-eqz p1, :cond_6

    .line 102
    .line 103
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->f0:Lcom/mycompany/app/view/MyProgressBar;

    .line 104
    .line 105
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    if-nez p2, :cond_6

    .line 110
    .line 111
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->f0:Lcom/mycompany/app/view/MyProgressBar;

    .line 112
    .line 113
    invoke-virtual {p2, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 114
    .line 115
    .line 116
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->f0:Lcom/mycompany/app/view/MyProgressBar;

    .line 117
    .line 118
    invoke-virtual {p2, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 119
    .line 120
    .line 121
    :cond_6
    :goto_0
    return-void
.end method

.method public final dismiss()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-static {}, Lcom/mycompany/app/web/WebLoadTask;->c()Lcom/mycompany/app/web/WebLoadTask;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-boolean v0, v1, Lcom/mycompany/app/web/WebLoadTask;->f:Z

    .line 14
    .line 15
    iget-object v2, v1, Lcom/mycompany/app/web/WebLoadTask;->d:Lcom/mycompany/app/web/WebLoadTask$LoadTask;

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    iput-boolean v3, v2, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 21
    .line 22
    :cond_1
    const/4 v2, 0x0

    .line 23
    iput-object v2, v1, Lcom/mycompany/app/web/WebLoadTask;->d:Lcom/mycompany/app/web/WebLoadTask$LoadTask;

    .line 24
    .line 25
    iput-boolean v0, v1, Lcom/mycompany/app/web/WebLoadTask;->a:Z

    .line 26
    .line 27
    iput-object v2, v1, Lcom/mycompany/app/web/WebLoadTask;->b:Landroid/webkit/WebView;

    .line 28
    .line 29
    iput-object v2, v1, Lcom/mycompany/app/web/WebLoadTask;->c:Lcom/mycompany/app/web/WebLoadTask$WebLoadTaskListener;

    .line 30
    .line 31
    iput v0, v1, Lcom/mycompany/app/web/WebLoadTask;->e:I

    .line 32
    .line 33
    iput-boolean v0, v1, Lcom/mycompany/app/web/WebLoadTask;->f:Z

    .line 34
    .line 35
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 40
    .line 41
    .line 42
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 43
    .line 44
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->f0:Lcom/mycompany/app/view/MyProgressBar;

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyProgressBar;->f()V

    .line 49
    .line 50
    .line 51
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->f0:Lcom/mycompany/app/view/MyProgressBar;

    .line 52
    .line 53
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->h0:Lcom/mycompany/app/view/MyLineLinear;

    .line 54
    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineLinear;->a()V

    .line 58
    .line 59
    .line 60
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->h0:Lcom/mycompany/app/view/MyLineLinear;

    .line 61
    .line 62
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 63
    .line 64
    if-eqz v0, :cond_5

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 67
    .line 68
    .line 69
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 70
    .line 71
    :cond_5
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 72
    .line 73
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->b0:Landroid/content/Context;

    .line 74
    .line 75
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->c0:Lcom/mycompany/app/dialog/DialogLoadImg$LoadImgListener;

    .line 76
    .line 77
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 78
    .line 79
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 80
    .line 81
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 82
    .line 83
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->o0:Ljava/lang/String;

    .line 84
    .line 85
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogLoadImg;->p0:Ljava/util/List;

    .line 86
    .line 87
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 88
    .line 89
    .line 90
    return-void
.end method
