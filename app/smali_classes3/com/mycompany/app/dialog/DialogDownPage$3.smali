.class Lcom/mycompany/app/dialog/DialogDownPage$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownPage;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownPage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownPage$3;->c:Lcom/mycompany/app/dialog/DialogDownPage;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownPage$3;->c:Lcom/mycompany/app/dialog/DialogDownPage;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownPage;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_6

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownPage;->b0:Landroid/content/Context;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownPage;->h0:Landroidx/appcompat/widget/AppCompatTextView;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownPage;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 29
    .line 30
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownPage;->g0:Landroidx/appcompat/widget/AppCompatTextView;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownPage;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 42
    .line 43
    const v3, -0x252526

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    .line 48
    .line 49
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownPage;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 50
    .line 51
    const v3, -0x50506

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    .line 56
    .line 57
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownPage;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 58
    .line 59
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    .line 61
    .line 62
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownPage;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 63
    .line 64
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    .line 66
    .line 67
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownPage;->j0:Lcom/mycompany/app/view/MyLineRelative;

    .line 68
    .line 69
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 70
    .line 71
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 72
    .line 73
    .line 74
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownPage;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 75
    .line 76
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 77
    .line 78
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 79
    .line 80
    .line 81
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownPage;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 82
    .line 83
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownPage;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 88
    .line 89
    const v3, -0x9e9e9f

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    .line 94
    .line 95
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownPage;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 96
    .line 97
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    .line 99
    .line 100
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownPage;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 101
    .line 102
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 103
    .line 104
    .line 105
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownPage;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 106
    .line 107
    const v3, -0xbbbbbc

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    .line 112
    .line 113
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownPage;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 114
    .line 115
    const/high16 v3, -0x1000000

    .line 116
    .line 117
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    .line 119
    .line 120
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownPage;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 121
    .line 122
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    .line 124
    .line 125
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownPage;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 126
    .line 127
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    .line 129
    .line 130
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownPage;->j0:Lcom/mycompany/app/view/MyLineRelative;

    .line 131
    .line 132
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 133
    .line 134
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 135
    .line 136
    .line 137
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownPage;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 138
    .line 139
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 140
    .line 141
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 142
    .line 143
    .line 144
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownPage;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 145
    .line 146
    const v3, -0xe19938

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    .line 151
    .line 152
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownPage;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 153
    .line 154
    sget v3, Lnet/kaki87/soul2/testing/R$string;->save_location:I

    .line 155
    .line 156
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 157
    .line 158
    .line 159
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownPage;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 160
    .line 161
    sget v3, Lnet/kaki87/soul2/testing/R$string;->save:I

    .line 162
    .line 163
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 164
    .line 165
    .line 166
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownPage;->p0:Landroid/graphics/Bitmap;

    .line 167
    .line 168
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogDownPage;->d0:Lcom/mycompany/app/view/MyRoundImage;

    .line 169
    .line 170
    const/4 v4, 0x0

    .line 171
    if-nez v3, :cond_2

    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_2
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogDownPage;->p0:Landroid/graphics/Bitmap;

    .line 175
    .line 176
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    const/4 v5, 0x1

    .line 181
    if-eqz v3, :cond_3

    .line 182
    .line 183
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownPage;->d0:Lcom/mycompany/app/view/MyRoundImage;

    .line 184
    .line 185
    invoke-virtual {v2, v5}, Lcom/mycompany/app/view/MyRoundImage;->setIconSmall(Z)V

    .line 186
    .line 187
    .line 188
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownPage;->d0:Lcom/mycompany/app/view/MyRoundImage;

    .line 189
    .line 190
    invoke-virtual {v2, v1}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 191
    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownPage;->o0:Ljava/lang/String;

    .line 195
    .line 196
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    if-eqz v1, :cond_4

    .line 201
    .line 202
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownPage;->d0:Lcom/mycompany/app/view/MyRoundImage;

    .line 203
    .line 204
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 205
    .line 206
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownPage;->q0:Ljava/lang/String;

    .line 207
    .line 208
    const/4 v6, 0x0

    .line 209
    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/mycompany/app/view/MyRoundImage;->p(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 210
    .line 211
    .line 212
    goto :goto_1

    .line 213
    :cond_4
    new-instance v1, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 214
    .line 215
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 216
    .line 217
    .line 218
    const/16 v2, 0x12

    .line 219
    .line 220
    iput v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 221
    .line 222
    const/16 v2, 0xb

    .line 223
    .line 224
    iput v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 225
    .line 226
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownPage;->o0:Ljava/lang/String;

    .line 227
    .line 228
    iput-object v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 229
    .line 230
    invoke-static {v1}, Lcom/mycompany/app/main/MainListLoader;->b(Lcom/mycompany/app/main/MainItem$ChildItem;)Landroid/graphics/Bitmap;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogDownPage;->p0:Landroid/graphics/Bitmap;

    .line 235
    .line 236
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 237
    .line 238
    .line 239
    move-result v3

    .line 240
    if-eqz v3, :cond_5

    .line 241
    .line 242
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownPage;->d0:Lcom/mycompany/app/view/MyRoundImage;

    .line 243
    .line 244
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyRoundImage;->setIconSmall(Z)V

    .line 245
    .line 246
    .line 247
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownPage;->d0:Lcom/mycompany/app/view/MyRoundImage;

    .line 248
    .line 249
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 250
    .line 251
    .line 252
    goto :goto_1

    .line 253
    :cond_5
    new-instance v2, Lcom/mycompany/app/main/MainListLoader;

    .line 254
    .line 255
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogDownPage;->b0:Landroid/content/Context;

    .line 256
    .line 257
    new-instance v5, Lcom/mycompany/app/dialog/DialogDownPage$9;

    .line 258
    .line 259
    invoke-direct {v5, v0}, Lcom/mycompany/app/dialog/DialogDownPage$9;-><init>(Lcom/mycompany/app/dialog/DialogDownPage;)V

    .line 260
    .line 261
    .line 262
    invoke-direct {v2, v3, v4, v5}, Lcom/mycompany/app/main/MainListLoader;-><init>(Landroid/content/Context;ZLcom/mycompany/app/main/MainListLoader$ListLoadListener;)V

    .line 263
    .line 264
    .line 265
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogDownPage;->A0:Lcom/mycompany/app/main/MainListLoader;

    .line 266
    .line 267
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownPage;->d0:Lcom/mycompany/app/view/MyRoundImage;

    .line 268
    .line 269
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 274
    .line 275
    .line 276
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownPage;->A0:Lcom/mycompany/app/main/MainListLoader;

    .line 277
    .line 278
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogDownPage;->d0:Lcom/mycompany/app/view/MyRoundImage;

    .line 279
    .line 280
    invoke-virtual {v2, v1, v3}, Lcom/mycompany/app/main/MainListLoader;->e(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;)V

    .line 281
    .line 282
    .line 283
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownPage;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 284
    .line 285
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownPage;->q0:Ljava/lang/String;

    .line 286
    .line 287
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    .line 289
    .line 290
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownPage;->r0:Ljava/lang/String;

    .line 291
    .line 292
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogDownPage;->D(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownPage;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 296
    .line 297
    invoke-static {v1, v4}, Lcom/mycompany/app/main/MainUtil;->k7(Landroid/widget/EditText;Z)V

    .line 298
    .line 299
    .line 300
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownPage;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 301
    .line 302
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownPage$4;

    .line 303
    .line 304
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownPage$4;-><init>(Lcom/mycompany/app/dialog/DialogDownPage;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 308
    .line 309
    .line 310
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownPage;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 311
    .line 312
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownPage$5;

    .line 313
    .line 314
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownPage$5;-><init>(Lcom/mycompany/app/dialog/DialogDownPage;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 318
    .line 319
    .line 320
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownPage;->j0:Lcom/mycompany/app/view/MyLineRelative;

    .line 321
    .line 322
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownPage$6;

    .line 323
    .line 324
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownPage$6;-><init>(Lcom/mycompany/app/dialog/DialogDownPage;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    .line 329
    .line 330
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownPage;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 331
    .line 332
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownPage$7;

    .line 333
    .line 334
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownPage$7;-><init>(Lcom/mycompany/app/dialog/DialogDownPage;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    .line 339
    .line 340
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownPage;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 341
    .line 342
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownPage$8;

    .line 343
    .line 344
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownPage$8;-><init>(Lcom/mycompany/app/dialog/DialogDownPage;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 348
    .line 349
    .line 350
    :cond_6
    :goto_2
    return-void
.end method
