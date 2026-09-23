.class Lcom/mycompany/app/dialog/DialogEditMemo$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditMemo;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditMemo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditMemo$4;->c:Lcom/mycompany/app/dialog/DialogEditMemo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditMemo$4;->c:Lcom/mycompany/app/dialog/DialogEditMemo;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->k0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_b

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->a0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_5

    .line 12
    .line 13
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 14
    .line 15
    const v2, -0x70708

    .line 16
    .line 17
    .line 18
    const v3, -0xd2d2d3

    .line 19
    .line 20
    .line 21
    const/high16 v4, -0x1000000

    .line 22
    .line 23
    const v5, -0x50506

    .line 24
    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->o0:Lcom/mycompany/app/view/MyRoundFrame;

    .line 29
    .line 30
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyRoundFrame;->setBgColor(I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->p0:Lcom/mycompany/app/view/MyEditPure;

    .line 34
    .line 35
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    .line 37
    .line 38
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 39
    .line 40
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 41
    .line 42
    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 43
    .line 44
    .line 45
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 46
    .line 47
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->o0:Lcom/mycompany/app/view/MyRoundFrame;

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyRoundFrame;->setBgColor(I)V

    .line 54
    .line 55
    .line 56
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->p0:Lcom/mycompany/app/view/MyEditPure;

    .line 57
    .line 58
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    .line 60
    .line 61
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 62
    .line 63
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 64
    .line 65
    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 66
    .line 67
    .line 68
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 69
    .line 70
    const v6, -0xe19938

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    .line 75
    .line 76
    :goto_0
    iget v1, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->c0:I

    .line 77
    .line 78
    const/16 v6, 0x18

    .line 79
    .line 80
    const/4 v7, 0x1

    .line 81
    if-ne v1, v6, :cond_4

    .line 82
    .line 83
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 84
    .line 85
    if-nez v1, :cond_2

    .line 86
    .line 87
    goto/16 :goto_5

    .line 88
    .line 89
    :cond_2
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 90
    .line 91
    if-eqz v2, :cond_3

    .line 92
    .line 93
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    .line 99
    .line 100
    :goto_1
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->h0:Z

    .line 101
    .line 102
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->i0:Ljava/lang/String;

    .line 103
    .line 104
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->j0:Ljava/lang/String;

    .line 105
    .line 106
    invoke-static {v2, v3, v1}, Lcom/mycompany/app/db/book/DbBookDc;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 111
    .line 112
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_4
    const/16 v6, 0x1a

    .line 117
    .line 118
    if-eq v1, v6, :cond_8

    .line 119
    .line 120
    const/16 v6, 0x25

    .line 121
    .line 122
    if-eq v1, v6, :cond_8

    .line 123
    .line 124
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->m0:Lcom/mycompany/app/view/MyRoundFrame;

    .line 125
    .line 126
    if-nez v1, :cond_5

    .line 127
    .line 128
    goto/16 :goto_5

    .line 129
    .line 130
    :cond_5
    sget-boolean v6, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 131
    .line 132
    if-eqz v6, :cond_6

    .line 133
    .line 134
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyRoundFrame;->setBgColor(I)V

    .line 135
    .line 136
    .line 137
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->n0:Lcom/mycompany/app/view/MyEditPure;

    .line 138
    .line 139
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_6
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyRoundFrame;->setBgColor(I)V

    .line 144
    .line 145
    .line 146
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->n0:Lcom/mycompany/app/view/MyEditPure;

    .line 147
    .line 148
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    .line 150
    .line 151
    :goto_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->e0:Ljava/lang/String;

    .line 152
    .line 153
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-nez v1, :cond_7

    .line 158
    .line 159
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->n0:Lcom/mycompany/app/view/MyEditPure;

    .line 160
    .line 161
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->e0:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    .line 165
    .line 166
    :cond_7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->m0:Lcom/mycompany/app/view/MyRoundFrame;

    .line 167
    .line 168
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditMemo$5;

    .line 169
    .line 170
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditMemo$5;-><init>(Lcom/mycompany/app/dialog/DialogEditMemo;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    .line 175
    .line 176
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->n0:Lcom/mycompany/app/view/MyEditPure;

    .line 177
    .line 178
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    .line 179
    .line 180
    .line 181
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->n0:Lcom/mycompany/app/view/MyEditPure;

    .line 182
    .line 183
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditMemo$6;

    .line 184
    .line 185
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditMemo$6;-><init>(Lcom/mycompany/app/dialog/DialogEditMemo;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 189
    .line 190
    .line 191
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->p0:Lcom/mycompany/app/view/MyEditPure;

    .line 192
    .line 193
    sget v2, Lnet/kaki87/soul2/testing/R$string;->user_agent:I

    .line 194
    .line 195
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(I)V

    .line 196
    .line 197
    .line 198
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->p0:Lcom/mycompany/app/view/MyEditPure;

    .line 199
    .line 200
    const v2, -0x7e7e7f

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 204
    .line 205
    .line 206
    :cond_8
    :goto_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->f0:Ljava/lang/String;

    .line 207
    .line 208
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    if-nez v1, :cond_9

    .line 213
    .line 214
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->p0:Lcom/mycompany/app/view/MyEditPure;

    .line 215
    .line 216
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->f0:Ljava/lang/String;

    .line 217
    .line 218
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    .line 220
    .line 221
    :cond_9
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->o0:Lcom/mycompany/app/view/MyRoundFrame;

    .line 222
    .line 223
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditMemo$7;

    .line 224
    .line 225
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditMemo$7;-><init>(Lcom/mycompany/app/dialog/DialogEditMemo;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    .line 230
    .line 231
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->p0:Lcom/mycompany/app/view/MyEditPure;

    .line 232
    .line 233
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    .line 234
    .line 235
    .line 236
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->n0:Lcom/mycompany/app/view/MyEditPure;

    .line 237
    .line 238
    if-nez v1, :cond_a

    .line 239
    .line 240
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->p0:Lcom/mycompany/app/view/MyEditPure;

    .line 241
    .line 242
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditMemo$8;

    .line 243
    .line 244
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditMemo$8;-><init>(Lcom/mycompany/app/dialog/DialogEditMemo;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 248
    .line 249
    .line 250
    goto :goto_4

    .line 251
    :cond_a
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->p0:Lcom/mycompany/app/view/MyEditPure;

    .line 252
    .line 253
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditMemo$9;

    .line 254
    .line 255
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditMemo$9;-><init>(Lcom/mycompany/app/dialog/DialogEditMemo;)V

    .line 256
    .line 257
    .line 258
    const-wide/16 v3, 0xc8

    .line 259
    .line 260
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 261
    .line 262
    .line 263
    :goto_4
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 264
    .line 265
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditMemo$10;

    .line 266
    .line 267
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditMemo$10;-><init>(Lcom/mycompany/app/dialog/DialogEditMemo;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    .line 272
    .line 273
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->k0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 274
    .line 275
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditMemo$11;

    .line 276
    .line 277
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditMemo$11;-><init>(Lcom/mycompany/app/dialog/DialogEditMemo;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 281
    .line 282
    .line 283
    :cond_b
    :goto_5
    return-void
.end method
