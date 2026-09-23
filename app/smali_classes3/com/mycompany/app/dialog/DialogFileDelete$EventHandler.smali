.class Lcom/mycompany/app/dialog/DialogFileDelete$EventHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogFileDelete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventHandler"
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogFileDelete;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogFileDelete$EventHandler;->a:Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogFileDelete$EventHandler;->a:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/mycompany/app/dialog/DialogFileDelete;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_2

    .line 12
    .line 13
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    .line 14
    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    const-wide/16 v4, 0x3e8

    .line 18
    .line 19
    if-eqz v1, :cond_9

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    if-eq v1, p1, :cond_1

    .line 23
    .line 24
    goto/16 :goto_2

    .line 25
    .line 26
    :cond_1
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->A0:Lcom/mycompany/app/dialog/DialogFileDelete$DialogTask;

    .line 27
    .line 28
    if-nez p1, :cond_2

    .line 29
    .line 30
    goto/16 :goto_2

    .line 31
    .line 32
    :cond_2
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 33
    .line 34
    if-nez p1, :cond_3

    .line 35
    .line 36
    goto/16 :goto_2

    .line 37
    .line 38
    :cond_3
    iget v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->D0:I

    .line 39
    .line 40
    iget v6, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->C0:I

    .line 41
    .line 42
    if-le v1, v6, :cond_4

    .line 43
    .line 44
    iput v6, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->D0:I

    .line 45
    .line 46
    :cond_4
    iget v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->E0:I

    .line 47
    .line 48
    if-le v1, v6, :cond_5

    .line 49
    .line 50
    iput v6, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->E0:I

    .line 51
    .line 52
    :cond_5
    iget v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->D0:I

    .line 53
    .line 54
    invoke-static {v1, v6}, Lcom/mycompany/app/main/MainUtil;->h3(II)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->m0:Lcom/mycompany/app/view/MyProgressBar;

    .line 62
    .line 63
    iget v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->C0:I

    .line 64
    .line 65
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyProgressBar;->setMax(I)V

    .line 66
    .line 67
    .line 68
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->m0:Lcom/mycompany/app/view/MyProgressBar;

    .line 69
    .line 70
    iget v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->D0:I

    .line 71
    .line 72
    int-to-float v1, v1

    .line 73
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyProgressBar;->setProgress(F)V

    .line 74
    .line 75
    .line 76
    iget p1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->D0:I

    .line 77
    .line 78
    if-lez p1, :cond_7

    .line 79
    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 81
    .line 82
    .line 83
    move-result-wide v6

    .line 84
    iget-wide v8, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->G0:J

    .line 85
    .line 86
    sub-long/2addr v6, v8

    .line 87
    iget-wide v8, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->F0:J

    .line 88
    .line 89
    iget p1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->D0:I

    .line 90
    .line 91
    int-to-long v10, p1

    .line 92
    sub-long/2addr v8, v10

    .line 93
    mul-long/2addr v8, v6

    .line 94
    div-long/2addr v8, v10

    .line 95
    cmp-long p1, v8, v2

    .line 96
    .line 97
    if-lez p1, :cond_6

    .line 98
    .line 99
    cmp-long p1, v8, v4

    .line 100
    .line 101
    if-gez p1, :cond_6

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_6
    move-wide v4, v8

    .line 105
    :goto_0
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->o0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 106
    .line 107
    invoke-static {v4, v5}, Lcom/mycompany/app/main/MainUtil;->s2(J)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    .line 113
    .line 114
    :cond_7
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 115
    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v2, ""

    .line 119
    .line 120
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget v2, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->E0:I

    .line 124
    .line 125
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->B(Ljava/lang/StringBuilder;ILandroidx/appcompat/widget/AppCompatTextView;)V

    .line 126
    .line 127
    .line 128
    iget p1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->E0:I

    .line 129
    .line 130
    if-lez p1, :cond_8

    .line 131
    .line 132
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 133
    .line 134
    const v1, -0xbbcca

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    .line 139
    .line 140
    :cond_8
    const/4 p1, 0x0

    .line 141
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyDialogBottom;->setCanceledOnTouchOutside(Z)V

    .line 142
    .line 143
    .line 144
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->k0:Lcom/mycompany/app/view/MyLineFrame;

    .line 145
    .line 146
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :cond_9
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->A0:Lcom/mycompany/app/dialog/DialogFileDelete$DialogTask;

    .line 151
    .line 152
    if-nez v1, :cond_a

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_a
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 156
    .line 157
    if-nez v1, :cond_b

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 161
    .line 162
    if-nez p1, :cond_c

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_c
    check-cast p1, Lcom/mycompany/app/dialog/DialogFileDelete$CopyInfo;

    .line 166
    .line 167
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogFileDelete$CopyInfo;->a:Ljava/lang/String;

    .line 168
    .line 169
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 170
    .line 171
    .line 172
    move-result v6

    .line 173
    if-eqz v6, :cond_d

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_d
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogFileDelete$CopyInfo;->b:Ljava/lang/String;

    .line 177
    .line 178
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->I0:Ljava/lang/String;

    .line 179
    .line 180
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v6

    .line 184
    if-nez v6, :cond_e

    .line 185
    .line 186
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->I0:Ljava/lang/String;

    .line 187
    .line 188
    iget-boolean v6, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->K0:Z

    .line 189
    .line 190
    if-nez v6, :cond_e

    .line 191
    .line 192
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->H0:Ljava/lang/String;

    .line 193
    .line 194
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    if-nez v1, :cond_e

    .line 199
    .line 200
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 201
    .line 202
    iget v6, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->d0:I

    .line 203
    .line 204
    iget v7, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->e0:I

    .line 205
    .line 206
    invoke-virtual {v1, v6, v7}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 207
    .line 208
    .line 209
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 210
    .line 211
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    .line 213
    .line 214
    :cond_e
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->m0:Lcom/mycompany/app/view/MyProgressBar;

    .line 215
    .line 216
    iget v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->D0:I

    .line 217
    .line 218
    int-to-float v1, v1

    .line 219
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyProgressBar;->setProgress(F)V

    .line 220
    .line 221
    .line 222
    iget p1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->D0:I

    .line 223
    .line 224
    if-lez p1, :cond_10

    .line 225
    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 227
    .line 228
    .line 229
    move-result-wide v6

    .line 230
    iget-wide v8, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->G0:J

    .line 231
    .line 232
    sub-long/2addr v6, v8

    .line 233
    iget-wide v8, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->F0:J

    .line 234
    .line 235
    iget p1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->D0:I

    .line 236
    .line 237
    int-to-long v10, p1

    .line 238
    sub-long/2addr v8, v10

    .line 239
    mul-long/2addr v8, v6

    .line 240
    div-long/2addr v8, v10

    .line 241
    cmp-long p1, v8, v2

    .line 242
    .line 243
    if-lez p1, :cond_f

    .line 244
    .line 245
    cmp-long p1, v8, v4

    .line 246
    .line 247
    if-gez p1, :cond_f

    .line 248
    .line 249
    goto :goto_1

    .line 250
    :cond_f
    move-wide v4, v8

    .line 251
    :goto_1
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->o0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 252
    .line 253
    invoke-static {v4, v5}, Lcom/mycompany/app/main/MainUtil;->s2(J)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    .line 259
    .line 260
    :cond_10
    :goto_2
    return-void
.end method
