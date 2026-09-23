.class Lcom/mycompany/app/dialog/DialogSeekText$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSeekText;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSeekText;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekText$2;->c:Lcom/mycompany/app/dialog/DialogSeekText;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekText$2;->c:Lcom/mycompany/app/dialog/DialogSeekText;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/dialog/DialogSeekText;->a0:I

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekText;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 6
    .line 7
    if-eqz v2, :cond_2

    .line 8
    .line 9
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekText;->d0:Landroid/content/Context;

    .line 10
    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    goto/16 :goto_1

    .line 14
    .line 15
    :cond_0
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 16
    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    const v3, -0x4f4f50

    .line 20
    .line 21
    .line 22
    sget v4, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 23
    .line 24
    invoke-virtual {v2, v3, v4}, Lcom/mycompany/app/view/MyDialogLinear;->c(II)V

    .line 25
    .line 26
    .line 27
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekText;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 28
    .line 29
    const v3, -0x50506

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 33
    .line 34
    .line 35
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekText;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    .line 39
    .line 40
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekText;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 41
    .line 42
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_remove_dark_24:I

    .line 43
    .line 44
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 45
    .line 46
    .line 47
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekText;->k0:Lcom/mycompany/app/view/MyButtonImage;

    .line 48
    .line 49
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_dark_24:I

    .line 50
    .line 51
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 52
    .line 53
    .line 54
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekText;->i0:Landroid/widget/SeekBar;

    .line 55
    .line 56
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogSeekText;->d0:Landroid/content/Context;

    .line 57
    .line 58
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->seek_progress_a:I

    .line 59
    .line 60
    invoke-static {v4, v5}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    .line 66
    .line 67
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekText;->i0:Landroid/widget/SeekBar;

    .line 68
    .line 69
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogSeekText;->d0:Landroid/content/Context;

    .line 70
    .line 71
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->seek_thumb_a:I

    .line 72
    .line 73
    invoke-static {v4, v5}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-virtual {v2, v4}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 78
    .line 79
    .line 80
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekText;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 81
    .line 82
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 83
    .line 84
    invoke-virtual {v2, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 85
    .line 86
    .line 87
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekText;->m0:Lcom/mycompany/app/view/MyLineText;

    .line 88
    .line 89
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 90
    .line 91
    invoke-virtual {v2, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 92
    .line 93
    .line 94
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekText;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 95
    .line 96
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    .line 98
    .line 99
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekText;->m0:Lcom/mycompany/app/view/MyLineText;

    .line 100
    .line 101
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    .line 103
    .line 104
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekText;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 105
    .line 106
    const v3, -0xc0c0c1

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 110
    .line 111
    .line 112
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekText;->k0:Lcom/mycompany/app/view/MyButtonImage;

    .line 113
    .line 114
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_1
    sget v3, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 119
    .line 120
    const/high16 v4, -0x1000000

    .line 121
    .line 122
    invoke-virtual {v2, v4, v3}, Lcom/mycompany/app/view/MyDialogLinear;->c(II)V

    .line 123
    .line 124
    .line 125
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekText;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 126
    .line 127
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    .line 129
    .line 130
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekText;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 131
    .line 132
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    .line 134
    .line 135
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekText;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 136
    .line 137
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_remove_black_24:I

    .line 138
    .line 139
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 140
    .line 141
    .line 142
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekText;->k0:Lcom/mycompany/app/view/MyButtonImage;

    .line 143
    .line 144
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_black_24:I

    .line 145
    .line 146
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 147
    .line 148
    .line 149
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekText;->i0:Landroid/widget/SeekBar;

    .line 150
    .line 151
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekText;->d0:Landroid/content/Context;

    .line 152
    .line 153
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->seek_progress_a:I

    .line 154
    .line 155
    invoke-static {v3, v5}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    .line 161
    .line 162
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekText;->i0:Landroid/widget/SeekBar;

    .line 163
    .line 164
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekText;->d0:Landroid/content/Context;

    .line 165
    .line 166
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->seek_thumb_a:I

    .line 167
    .line 168
    invoke-static {v3, v5}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    invoke-virtual {v2, v3}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 173
    .line 174
    .line 175
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekText;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 176
    .line 177
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 178
    .line 179
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 180
    .line 181
    .line 182
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekText;->m0:Lcom/mycompany/app/view/MyLineText;

    .line 183
    .line 184
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 185
    .line 186
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 187
    .line 188
    .line 189
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekText;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 190
    .line 191
    const v3, -0xe19938

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 195
    .line 196
    .line 197
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekText;->m0:Lcom/mycompany/app/view/MyLineText;

    .line 198
    .line 199
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 200
    .line 201
    .line 202
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekText;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 203
    .line 204
    const v3, -0x1f1f20

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 208
    .line 209
    .line 210
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekText;->k0:Lcom/mycompany/app/view/MyButtonImage;

    .line 211
    .line 212
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 213
    .line 214
    .line 215
    :goto_0
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekText;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 216
    .line 217
    sget v3, Lnet/kaki87/soul2/testing/R$string;->text_size:I

    .line 218
    .line 219
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 220
    .line 221
    .line 222
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekText;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 223
    .line 224
    new-instance v3, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .line 228
    .line 229
    iget v4, v0, Lcom/mycompany/app/dialog/DialogSeekText;->p0:I

    .line 230
    .line 231
    const-string v5, "%"

    .line 232
    .line 233
    invoke-static {v3, v4, v5, v2}, Lcom/mycompany/app/dialog/a;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 234
    .line 235
    .line 236
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekText;->i0:Landroid/widget/SeekBar;

    .line 237
    .line 238
    const/4 v3, 0x0

    .line 239
    invoke-virtual {v2, v3}, Landroid/widget/AbsSeekBar;->setSplitTrack(Z)V

    .line 240
    .line 241
    .line 242
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekText;->i0:Landroid/widget/SeekBar;

    .line 243
    .line 244
    iget v3, v0, Lcom/mycompany/app/dialog/DialogSeekText;->b0:I

    .line 245
    .line 246
    sub-int/2addr v3, v1

    .line 247
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 248
    .line 249
    .line 250
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekText;->i0:Landroid/widget/SeekBar;

    .line 251
    .line 252
    iget v3, v0, Lcom/mycompany/app/dialog/DialogSeekText;->p0:I

    .line 253
    .line 254
    sub-int/2addr v3, v1

    .line 255
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 256
    .line 257
    .line 258
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekText;->i0:Landroid/widget/SeekBar;

    .line 259
    .line 260
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekText$3;

    .line 261
    .line 262
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSeekText$3;-><init>(Lcom/mycompany/app/dialog/DialogSeekText;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 266
    .line 267
    .line 268
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekText;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 269
    .line 270
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekText$4;

    .line 271
    .line 272
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSeekText$4;-><init>(Lcom/mycompany/app/dialog/DialogSeekText;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    .line 277
    .line 278
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekText;->k0:Lcom/mycompany/app/view/MyButtonImage;

    .line 279
    .line 280
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekText$5;

    .line 281
    .line 282
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSeekText$5;-><init>(Lcom/mycompany/app/dialog/DialogSeekText;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    .line 287
    .line 288
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekText;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 289
    .line 290
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekText$6;

    .line 291
    .line 292
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSeekText$6;-><init>(Lcom/mycompany/app/dialog/DialogSeekText;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    .line 297
    .line 298
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekText;->m0:Lcom/mycompany/app/view/MyLineText;

    .line 299
    .line 300
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekText$7;

    .line 301
    .line 302
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSeekText$7;-><init>(Lcom/mycompany/app/dialog/DialogSeekText;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    .line 307
    .line 308
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekText;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 309
    .line 310
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekText$8;

    .line 311
    .line 312
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSeekText$8;-><init>(Lcom/mycompany/app/dialog/DialogSeekText;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 316
    .line 317
    .line 318
    :cond_2
    :goto_1
    return-void
.end method
