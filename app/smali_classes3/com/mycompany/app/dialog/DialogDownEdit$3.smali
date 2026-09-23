.class Lcom/mycompany/app/dialog/DialogDownEdit$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownEdit;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownEdit;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownEdit$3;->c:Lcom/mycompany/app/dialog/DialogDownEdit;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownEdit$3;->c:Lcom/mycompany/app/dialog/DialogDownEdit;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_4

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->b0:Landroid/content/Context;

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
    const v2, -0x70708

    .line 16
    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 21
    .line 22
    const v3, -0x3e3e3f

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 26
    .line 27
    .line 28
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 29
    .line 30
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 34
    .line 35
    const v3, -0xc0c0c1

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 39
    .line 40
    .line 41
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 42
    .line 43
    const v4, -0x252526

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    .line 48
    .line 49
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 50
    .line 51
    const v4, -0x50506

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    .line 56
    .line 57
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->k0:Lcom/mycompany/app/view/MyEditText;

    .line 58
    .line 59
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    .line 61
    .line 62
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 63
    .line 64
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    .line 66
    .line 67
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->l0:Lcom/mycompany/app/view/MyLineRelative;

    .line 68
    .line 69
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 70
    .line 71
    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 72
    .line 73
    .line 74
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->o0:Lcom/mycompany/app/view/MyButtonImage;

    .line 75
    .line 76
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->baseline_play_arrow_dark_24:I

    .line 77
    .line 78
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 79
    .line 80
    .line 81
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->o0:Lcom/mycompany/app/view/MyButtonImage;

    .line 82
    .line 83
    const v5, -0xafafb0

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v5, v3}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 87
    .line 88
    .line 89
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->p0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 90
    .line 91
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 92
    .line 93
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 94
    .line 95
    .line 96
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->p0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 97
    .line 98
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 103
    .line 104
    const v3, -0x9e9e9f

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    .line 109
    .line 110
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 111
    .line 112
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    .line 114
    .line 115
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 116
    .line 117
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 118
    .line 119
    .line 120
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 121
    .line 122
    const v3, -0xbbbbbc

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    .line 127
    .line 128
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 129
    .line 130
    const/high16 v3, -0x1000000

    .line 131
    .line 132
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    .line 134
    .line 135
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->k0:Lcom/mycompany/app/view/MyEditText;

    .line 136
    .line 137
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    .line 139
    .line 140
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 141
    .line 142
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    .line 144
    .line 145
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->l0:Lcom/mycompany/app/view/MyLineRelative;

    .line 146
    .line 147
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 148
    .line 149
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 150
    .line 151
    .line 152
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->o0:Lcom/mycompany/app/view/MyButtonImage;

    .line 153
    .line 154
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->baseline_play_arrow_black_24:I

    .line 155
    .line 156
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 157
    .line 158
    .line 159
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->o0:Lcom/mycompany/app/view/MyButtonImage;

    .line 160
    .line 161
    const v3, -0x1f1f20

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 165
    .line 166
    .line 167
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->p0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 168
    .line 169
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 170
    .line 171
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 172
    .line 173
    .line 174
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->p0:Landroidx/appcompat/widget/AppCompatTextView;

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
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 183
    .line 184
    sget v3, Lnet/kaki87/soul2/testing/R$string;->save_location:I

    .line 185
    .line 186
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 187
    .line 188
    .line 189
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->p0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 190
    .line 191
    sget v3, Lnet/kaki87/soul2/testing/R$string;->save:I

    .line 192
    .line 193
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 194
    .line 195
    .line 196
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->e0:Lcom/mycompany/app/view/MyRoundImage;

    .line 197
    .line 198
    const/4 v3, 0x0

    .line 199
    if-nez v1, :cond_2

    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->r0:Landroid/graphics/Bitmap;

    .line 203
    .line 204
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    if-eqz v1, :cond_3

    .line 209
    .line 210
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->g0:Lcom/mycompany/app/view/MyRoundImage;

    .line 211
    .line 212
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->r0:Landroid/graphics/Bitmap;

    .line 213
    .line 214
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 215
    .line 216
    .line 217
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->g0:Lcom/mycompany/app/view/MyRoundImage;

    .line 218
    .line 219
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 220
    .line 221
    .line 222
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->e0:Lcom/mycompany/app/view/MyRoundImage;

    .line 223
    .line 224
    const/16 v2, 0x8

    .line 225
    .line 226
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 227
    .line 228
    .line 229
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 230
    .line 231
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 232
    .line 233
    .line 234
    goto :goto_1

    .line 235
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->e0:Lcom/mycompany/app/view/MyRoundImage;

    .line 236
    .line 237
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_image_black_24:I

    .line 238
    .line 239
    invoke-virtual {v1, v2, v4}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 240
    .line 241
    .line 242
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 243
    .line 244
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->s0:Ljava/lang/String;

    .line 245
    .line 246
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    .line 248
    .line 249
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->t0:Ljava/lang/String;

    .line 250
    .line 251
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogDownEdit;->F(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->k0:Lcom/mycompany/app/view/MyEditText;

    .line 255
    .line 256
    invoke-static {v1, v3}, Lcom/mycompany/app/main/MainUtil;->k7(Landroid/widget/EditText;Z)V

    .line 257
    .line 258
    .line 259
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->k0:Lcom/mycompany/app/view/MyEditText;

    .line 260
    .line 261
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownEdit$4;

    .line 262
    .line 263
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownEdit$4;-><init>(Lcom/mycompany/app/dialog/DialogDownEdit;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 267
    .line 268
    .line 269
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->k0:Lcom/mycompany/app/view/MyEditText;

    .line 270
    .line 271
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownEdit$5;

    .line 272
    .line 273
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownEdit$5;-><init>(Lcom/mycompany/app/dialog/DialogDownEdit;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 277
    .line 278
    .line 279
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->l0:Lcom/mycompany/app/view/MyLineRelative;

    .line 280
    .line 281
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownEdit$6;

    .line 282
    .line 283
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownEdit$6;-><init>(Lcom/mycompany/app/dialog/DialogDownEdit;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    .line 288
    .line 289
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->o0:Lcom/mycompany/app/view/MyButtonImage;

    .line 290
    .line 291
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownEdit$7;

    .line 292
    .line 293
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownEdit$7;-><init>(Lcom/mycompany/app/dialog/DialogDownEdit;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    .line 298
    .line 299
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->p0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 300
    .line 301
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownEdit$8;

    .line 302
    .line 303
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownEdit$8;-><init>(Lcom/mycompany/app/dialog/DialogDownEdit;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogBottom;->p()Z

    .line 310
    .line 311
    .line 312
    move-result v1

    .line 313
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogDownEdit;->E(Z)V

    .line 314
    .line 315
    .line 316
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 317
    .line 318
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownEdit$9;

    .line 319
    .line 320
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownEdit$9;-><init>(Lcom/mycompany/app/dialog/DialogDownEdit;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 324
    .line 325
    .line 326
    :cond_4
    :goto_2
    return-void
.end method
