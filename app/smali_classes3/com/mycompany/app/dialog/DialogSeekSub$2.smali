.class Lcom/mycompany/app/dialog/DialogSeekSub$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSeekSub;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSeekSub;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekSub$2;->c:Lcom/mycompany/app/dialog/DialogSeekSub;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekSub$2;->c:Lcom/mycompany/app/dialog/DialogSeekSub;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSub;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_3

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSub;->b0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_2

    .line 12
    .line 13
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSub;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 18
    .line 19
    const v2, -0x50506

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 23
    .line 24
    .line 25
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSub;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    .line 29
    .line 30
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSub;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 31
    .line 32
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_remove_dark_24:I

    .line 33
    .line 34
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 35
    .line 36
    .line 37
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSub;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 38
    .line 39
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_dark_24:I

    .line 40
    .line 41
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 42
    .line 43
    .line 44
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSub;->g0:Landroid/widget/SeekBar;

    .line 45
    .line 46
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekSub;->b0:Landroid/content/Context;

    .line 47
    .line 48
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->seek_progress_a:I

    .line 49
    .line 50
    invoke-static {v3, v4}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    .line 56
    .line 57
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSub;->g0:Landroid/widget/SeekBar;

    .line 58
    .line 59
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekSub;->b0:Landroid/content/Context;

    .line 60
    .line 61
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->seek_thumb_a:I

    .line 62
    .line 63
    invoke-static {v3, v4}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v1, v3}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 68
    .line 69
    .line 70
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSub;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 71
    .line 72
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 73
    .line 74
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 75
    .line 76
    .line 77
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSub;->k0:Lcom/mycompany/app/view/MyLineText;

    .line 78
    .line 79
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 80
    .line 81
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 82
    .line 83
    .line 84
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSub;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    .line 88
    .line 89
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSub;->k0:Lcom/mycompany/app/view/MyLineText;

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    .line 93
    .line 94
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSub;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 95
    .line 96
    const v2, -0xc0c0c1

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 100
    .line 101
    .line 102
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSub;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSub;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 109
    .line 110
    const/high16 v2, -0x1000000

    .line 111
    .line 112
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    .line 114
    .line 115
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSub;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 116
    .line 117
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    .line 119
    .line 120
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSub;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 121
    .line 122
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_remove_black_24:I

    .line 123
    .line 124
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 125
    .line 126
    .line 127
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSub;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 128
    .line 129
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_black_24:I

    .line 130
    .line 131
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 132
    .line 133
    .line 134
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSub;->g0:Landroid/widget/SeekBar;

    .line 135
    .line 136
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekSub;->b0:Landroid/content/Context;

    .line 137
    .line 138
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->seek_progress_a:I

    .line 139
    .line 140
    invoke-static {v3, v4}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    .line 146
    .line 147
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSub;->g0:Landroid/widget/SeekBar;

    .line 148
    .line 149
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekSub;->b0:Landroid/content/Context;

    .line 150
    .line 151
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->seek_thumb_a:I

    .line 152
    .line 153
    invoke-static {v3, v4}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-virtual {v1, v3}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 158
    .line 159
    .line 160
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSub;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 161
    .line 162
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 163
    .line 164
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 165
    .line 166
    .line 167
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSub;->k0:Lcom/mycompany/app/view/MyLineText;

    .line 168
    .line 169
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 170
    .line 171
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 172
    .line 173
    .line 174
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSub;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 175
    .line 176
    const v3, -0xe19938

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 180
    .line 181
    .line 182
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSub;->k0:Lcom/mycompany/app/view/MyLineText;

    .line 183
    .line 184
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 185
    .line 186
    .line 187
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSub;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 188
    .line 189
    const v2, -0x1f1f20

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 193
    .line 194
    .line 195
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSub;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 196
    .line 197
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 198
    .line 199
    .line 200
    :goto_0
    iget v1, v0, Lcom/mycompany/app/dialog/DialogSeekSub;->m0:I

    .line 201
    .line 202
    if-eqz v1, :cond_2

    .line 203
    .line 204
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekSub;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 205
    .line 206
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 207
    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSub;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 211
    .line 212
    sget v2, Lnet/kaki87/soul2/testing/R$string;->sub_sync:I

    .line 213
    .line 214
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 215
    .line 216
    .line 217
    :goto_1
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSeekSub;->D()V

    .line 218
    .line 219
    .line 220
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSub;->g0:Landroid/widget/SeekBar;

    .line 221
    .line 222
    const/4 v2, 0x0

    .line 223
    invoke-virtual {v1, v2}, Landroid/widget/AbsSeekBar;->setSplitTrack(Z)V

    .line 224
    .line 225
    .line 226
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSub;->g0:Landroid/widget/SeekBar;

    .line 227
    .line 228
    const/16 v2, 0xc8

    .line 229
    .line 230
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 231
    .line 232
    .line 233
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSub;->g0:Landroid/widget/SeekBar;

    .line 234
    .line 235
    iget v2, v0, Lcom/mycompany/app/dialog/DialogSeekSub;->n0:I

    .line 236
    .line 237
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 238
    .line 239
    .line 240
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSub;->g0:Landroid/widget/SeekBar;

    .line 241
    .line 242
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekSub$3;

    .line 243
    .line 244
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSeekSub$3;-><init>(Lcom/mycompany/app/dialog/DialogSeekSub;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 248
    .line 249
    .line 250
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSub;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 251
    .line 252
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekSub$4;

    .line 253
    .line 254
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSeekSub$4;-><init>(Lcom/mycompany/app/dialog/DialogSeekSub;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    .line 259
    .line 260
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSub;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 261
    .line 262
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekSub$5;

    .line 263
    .line 264
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSeekSub$5;-><init>(Lcom/mycompany/app/dialog/DialogSeekSub;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    .line 269
    .line 270
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSub;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 271
    .line 272
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekSub$6;

    .line 273
    .line 274
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSeekSub$6;-><init>(Lcom/mycompany/app/dialog/DialogSeekSub;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    .line 279
    .line 280
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSub;->k0:Lcom/mycompany/app/view/MyLineText;

    .line 281
    .line 282
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekSub$7;

    .line 283
    .line 284
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSeekSub$7;-><init>(Lcom/mycompany/app/dialog/DialogSeekSub;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    .line 289
    .line 290
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSub;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 291
    .line 292
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekSub$8;

    .line 293
    .line 294
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSeekSub$8;-><init>(Lcom/mycompany/app/dialog/DialogSeekSub;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 298
    .line 299
    .line 300
    :cond_3
    :goto_2
    return-void
.end method
