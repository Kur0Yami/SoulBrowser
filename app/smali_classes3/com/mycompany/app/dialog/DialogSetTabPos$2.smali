.class Lcom/mycompany/app/dialog/DialogSetTabPos$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetTabPos;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetTabPos;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos$2;->c:Lcom/mycompany/app/dialog/DialogSetTabPos;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabPos$2;->c:Lcom/mycompany/app/dialog/DialogSetTabPos;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabPos;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_5

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabPos;->b0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 14
    .line 15
    const/high16 v2, -0x1000000

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabPos;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 20
    .line 21
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_help_dark_24:I

    .line 22
    .line 23
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 24
    .line 25
    .line 26
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabPos;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 27
    .line 28
    const v3, -0xc0c0c1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 32
    .line 33
    .line 34
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabPos;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 35
    .line 36
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_keyboard_arrow_up_dark_24:I

    .line 37
    .line 38
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 39
    .line 40
    .line 41
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabPos;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 42
    .line 43
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_keyboard_arrow_down_dark_24:I

    .line 44
    .line 45
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 46
    .line 47
    .line 48
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabPos;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 49
    .line 50
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 51
    .line 52
    .line 53
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabPos;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 54
    .line 55
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 56
    .line 57
    .line 58
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabPos;->i0:Lcom/mycompany/app/view/MyButtonRelative;

    .line 59
    .line 60
    sget v2, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 61
    .line 62
    const v4, -0x50506

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v4, v2}, Lcom/mycompany/app/view/MyButtonRelative;->h(II)V

    .line 66
    .line 67
    .line 68
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabPos;->k0:Landroid/widget/ImageView;

    .line 69
    .line 70
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 71
    .line 72
    .line 73
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabPos;->r0:Lcom/mycompany/app/view/MyLineRelative;

    .line 74
    .line 75
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 78
    .line 79
    .line 80
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabPos;->t0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 81
    .line 82
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    .line 84
    .line 85
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabPos;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 86
    .line 87
    const v2, -0x4e3a0c

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    .line 92
    .line 93
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabPos;->v0:Lcom/mycompany/app/view/MyLineText;

    .line 94
    .line 95
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 98
    .line 99
    .line 100
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabPos;->v0:Lcom/mycompany/app/view/MyLineText;

    .line 101
    .line 102
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabPos;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 107
    .line 108
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_help_black_24:I

    .line 109
    .line 110
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 111
    .line 112
    .line 113
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabPos;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 114
    .line 115
    const v3, -0x1f1f20

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 119
    .line 120
    .line 121
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabPos;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 122
    .line 123
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_keyboard_arrow_up_black_24:I

    .line 124
    .line 125
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 126
    .line 127
    .line 128
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabPos;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 129
    .line 130
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_keyboard_arrow_down_black_24:I

    .line 131
    .line 132
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 133
    .line 134
    .line 135
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabPos;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 136
    .line 137
    const v4, -0x70708

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v4, v3}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 141
    .line 142
    .line 143
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabPos;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 144
    .line 145
    invoke-virtual {v1, v4, v3}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 146
    .line 147
    .line 148
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabPos;->i0:Lcom/mycompany/app/view/MyButtonRelative;

    .line 149
    .line 150
    sget v3, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 151
    .line 152
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyButtonRelative;->h(II)V

    .line 153
    .line 154
    .line 155
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabPos;->k0:Landroid/widget/ImageView;

    .line 156
    .line 157
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 158
    .line 159
    .line 160
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabPos;->r0:Lcom/mycompany/app/view/MyLineRelative;

    .line 161
    .line 162
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 163
    .line 164
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 165
    .line 166
    .line 167
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabPos;->t0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 168
    .line 169
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 170
    .line 171
    .line 172
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabPos;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 173
    .line 174
    const v2, -0xc0ae4b

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 178
    .line 179
    .line 180
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabPos;->v0:Lcom/mycompany/app/view/MyLineText;

    .line 181
    .line 182
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 183
    .line 184
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 185
    .line 186
    .line 187
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabPos;->v0:Lcom/mycompany/app/view/MyLineText;

    .line 188
    .line 189
    const v2, -0xe19938

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 193
    .line 194
    .line 195
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabPos;->q0:Lcom/mycompany/app/view/MySelectView;

    .line 196
    .line 197
    const v2, 0x3f19999a    # 0.6f

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MySelectView;->setMaxAlpha(F)V

    .line 201
    .line 202
    .line 203
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabPos;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 204
    .line 205
    sget-object v2, Lcom/mycompany/app/dialog/DialogSetTabPos;->D0:[I

    .line 206
    .line 207
    iget v3, v0, Lcom/mycompany/app/dialog/DialogSetTabPos;->x0:I

    .line 208
    .line 209
    aget v2, v2, v3

    .line 210
    .line 211
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogBottom;->p()Z

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetTabPos;->e0:Landroid/widget/FrameLayout;

    .line 219
    .line 220
    if-nez v2, :cond_2

    .line 221
    .line 222
    goto :goto_2

    .line 223
    :cond_2
    if-eqz v1, :cond_3

    .line 224
    .line 225
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogBottom;->q()Z

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    :cond_3
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetTabPos;->e0:Landroid/widget/FrameLayout;

    .line 230
    .line 231
    if-eqz v1, :cond_4

    .line 232
    .line 233
    const/16 v1, 0x8

    .line 234
    .line 235
    goto :goto_1

    .line 236
    :cond_4
    const/4 v1, 0x0

    .line 237
    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 238
    .line 239
    .line 240
    :goto_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabPos;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 241
    .line 242
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetTabPos$3;

    .line 243
    .line 244
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetTabPos$3;-><init>(Lcom/mycompany/app/dialog/DialogSetTabPos;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    .line 249
    .line 250
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabPos;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 251
    .line 252
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetTabPos$4;

    .line 253
    .line 254
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetTabPos$4;-><init>(Lcom/mycompany/app/dialog/DialogSetTabPos;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    .line 259
    .line 260
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabPos;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 261
    .line 262
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetTabPos$5;

    .line 263
    .line 264
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetTabPos$5;-><init>(Lcom/mycompany/app/dialog/DialogSetTabPos;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    .line 269
    .line 270
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabPos;->r0:Lcom/mycompany/app/view/MyLineRelative;

    .line 271
    .line 272
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetTabPos$6;

    .line 273
    .line 274
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetTabPos$6;-><init>(Lcom/mycompany/app/dialog/DialogSetTabPos;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    .line 279
    .line 280
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabPos;->v0:Lcom/mycompany/app/view/MyLineText;

    .line 281
    .line 282
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetTabPos$7;

    .line 283
    .line 284
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetTabPos$7;-><init>(Lcom/mycompany/app/dialog/DialogSetTabPos;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    .line 289
    .line 290
    new-instance v1, Lcom/mycompany/app/dialog/DialogSetTabPos$8;

    .line 291
    .line 292
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogSetTabPos$8;-><init>(Lcom/mycompany/app/dialog/DialogSetTabPos;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 296
    .line 297
    .line 298
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabPos;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 299
    .line 300
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetTabPos$9;

    .line 301
    .line 302
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetTabPos$9;-><init>(Lcom/mycompany/app/dialog/DialogSetTabPos;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 306
    .line 307
    .line 308
    :cond_5
    :goto_3
    return-void
.end method
