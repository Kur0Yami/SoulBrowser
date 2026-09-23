.class Lcom/mycompany/app/dialog/DialogDownList$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownList$2;->c:Lcom/mycompany/app/dialog/DialogDownList;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList$2;->c:Lcom/mycompany/app/dialog/DialogDownList;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_5

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->b0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 14
    .line 15
    sget v2, Lnet/kaki87/soul2/testing/R$string;->sub_dir:I

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 18
    .line 19
    .line 20
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->v0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 21
    .line 22
    sget v2, Lnet/kaki87/soul2/testing/R$string;->down_location:I

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 25
    .line 26
    .line 27
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->x0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 28
    .line 29
    sget v2, Lnet/kaki87/soul2/testing/R$string;->download:I

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 32
    .line 33
    .line 34
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 35
    .line 36
    const v2, -0xe19938

    .line 37
    .line 38
    .line 39
    const/high16 v3, -0x1000000

    .line 40
    .line 41
    const v4, -0x50506

    .line 42
    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 47
    .line 48
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    .line 50
    .line 51
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 52
    .line 53
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    .line 55
    .line 56
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 57
    .line 58
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    .line 60
    .line 61
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 62
    .line 63
    const v5, -0x3e3e3f

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    .line 68
    .line 69
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->m0:Lcom/mycompany/app/view/MyEditText;

    .line 70
    .line 71
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    .line 73
    .line 74
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 75
    .line 76
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    .line 78
    .line 79
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->r0:Lcom/mycompany/app/view/MyEditText;

    .line 80
    .line 81
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    .line 83
    .line 84
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->u0:Landroid/widget/FrameLayout;

    .line 85
    .line 86
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 87
    .line 88
    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 89
    .line 90
    .line 91
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->v0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 92
    .line 93
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    .line 95
    .line 96
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 97
    .line 98
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    .line 100
    .line 101
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->x0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 102
    .line 103
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    .line 105
    .line 106
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->x0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 107
    .line 108
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 109
    .line 110
    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 111
    .line 112
    .line 113
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->o0:Lcom/mycompany/app/view/MyButtonText;

    .line 114
    .line 115
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    .line 117
    .line 118
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->o0:Lcom/mycompany/app/view/MyButtonText;

    .line 119
    .line 120
    sget v5, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 121
    .line 122
    invoke-virtual {v1, v4, v5}, Lcom/mycompany/app/view/MyButtonText;->v(II)V

    .line 123
    .line 124
    .line 125
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->t0:Lcom/mycompany/app/view/MyButtonText;

    .line 126
    .line 127
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    .line 129
    .line 130
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->t0:Lcom/mycompany/app/view/MyButtonText;

    .line 131
    .line 132
    sget v5, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 133
    .line 134
    invoke-virtual {v1, v4, v5}, Lcom/mycompany/app/view/MyButtonText;->v(II)V

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 139
    .line 140
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    .line 142
    .line 143
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 144
    .line 145
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    .line 147
    .line 148
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 149
    .line 150
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    .line 152
    .line 153
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 154
    .line 155
    const v5, -0x9e9e9f

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 159
    .line 160
    .line 161
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->m0:Lcom/mycompany/app/view/MyEditText;

    .line 162
    .line 163
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 164
    .line 165
    .line 166
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 167
    .line 168
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 169
    .line 170
    .line 171
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->r0:Lcom/mycompany/app/view/MyEditText;

    .line 172
    .line 173
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 174
    .line 175
    .line 176
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->u0:Landroid/widget/FrameLayout;

    .line 177
    .line 178
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 179
    .line 180
    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 181
    .line 182
    .line 183
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->v0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 184
    .line 185
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 186
    .line 187
    .line 188
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 189
    .line 190
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 191
    .line 192
    .line 193
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->x0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 194
    .line 195
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 196
    .line 197
    .line 198
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->x0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 199
    .line 200
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 201
    .line 202
    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 203
    .line 204
    .line 205
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->o0:Lcom/mycompany/app/view/MyButtonText;

    .line 206
    .line 207
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 208
    .line 209
    .line 210
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->o0:Lcom/mycompany/app/view/MyButtonText;

    .line 211
    .line 212
    sget v5, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 213
    .line 214
    invoke-virtual {v1, v3, v5}, Lcom/mycompany/app/view/MyButtonText;->v(II)V

    .line 215
    .line 216
    .line 217
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->t0:Lcom/mycompany/app/view/MyButtonText;

    .line 218
    .line 219
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 220
    .line 221
    .line 222
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->t0:Lcom/mycompany/app/view/MyButtonText;

    .line 223
    .line 224
    sget v5, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 225
    .line 226
    invoke-virtual {v1, v3, v5}, Lcom/mycompany/app/view/MyButtonText;->v(II)V

    .line 227
    .line 228
    .line 229
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->f0:Ljava/util/List;

    .line 230
    .line 231
    if-eqz v1, :cond_2

    .line 232
    .line 233
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    goto :goto_1

    .line 238
    :cond_2
    const/4 v1, 0x0

    .line 239
    :goto_1
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownList;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 240
    .line 241
    new-instance v6, Ljava/lang/StringBuilder;

    .line 242
    .line 243
    const-string v7, ""

    .line 244
    .line 245
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    .line 257
    .line 258
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 259
    .line 260
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownList;->e0:Ljava/lang/String;

    .line 261
    .line 262
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    .line 264
    .line 265
    invoke-static {}, Lcom/mycompany/app/main/MainUri;->e()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    if-eqz v1, :cond_3

    .line 274
    .line 275
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 276
    .line 277
    sget v3, Lnet/kaki87/soul2/testing/R$string;->not_selected:I

    .line 278
    .line 279
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 280
    .line 281
    .line 282
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 283
    .line 284
    const v3, -0xbbcca

    .line 285
    .line 286
    .line 287
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 288
    .line 289
    .line 290
    goto :goto_2

    .line 291
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 292
    .line 293
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownList;->D0:Ljava/lang/String;

    .line 294
    .line 295
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    .line 297
    .line 298
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 299
    .line 300
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 301
    .line 302
    if-eqz v5, :cond_4

    .line 303
    .line 304
    move v3, v4

    .line 305
    :cond_4
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 306
    .line 307
    .line 308
    :goto_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->m0:Lcom/mycompany/app/view/MyEditText;

    .line 309
    .line 310
    sget v3, Lnet/kaki87/soul2/testing/R$string;->not_used:I

    .line 311
    .line 312
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHint(I)V

    .line 313
    .line 314
    .line 315
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->r0:Lcom/mycompany/app/view/MyEditText;

    .line 316
    .line 317
    sget v3, Lnet/kaki87/soul2/testing/R$string;->real_name:I

    .line 318
    .line 319
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHint(I)V

    .line 320
    .line 321
    .line 322
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->m0:Lcom/mycompany/app/view/MyEditText;

    .line 323
    .line 324
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyEditText;->setElineColor(I)V

    .line 325
    .line 326
    .line 327
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->r0:Lcom/mycompany/app/view/MyEditText;

    .line 328
    .line 329
    const v2, -0x252526

    .line 330
    .line 331
    .line 332
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyEditText;->setElineColor(I)V

    .line 333
    .line 334
    .line 335
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->m0:Lcom/mycompany/app/view/MyEditText;

    .line 336
    .line 337
    const/4 v2, 0x1

    .line 338
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    .line 339
    .line 340
    .line 341
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->m0:Lcom/mycompany/app/view/MyEditText;

    .line 342
    .line 343
    new-instance v3, Lcom/mycompany/app/dialog/DialogDownList$3;

    .line 344
    .line 345
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogDownList$3;-><init>(Lcom/mycompany/app/dialog/DialogDownList;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 349
    .line 350
    .line 351
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->m0:Lcom/mycompany/app/view/MyEditText;

    .line 352
    .line 353
    new-instance v3, Lcom/mycompany/app/dialog/DialogDownList$4;

    .line 354
    .line 355
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogDownList$4;-><init>(Lcom/mycompany/app/dialog/DialogDownList;)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 359
    .line 360
    .line 361
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->m0:Lcom/mycompany/app/view/MyEditText;

    .line 362
    .line 363
    new-instance v3, Lcom/mycompany/app/dialog/DialogDownList$5;

    .line 364
    .line 365
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogDownList$5;-><init>(Lcom/mycompany/app/dialog/DialogDownList;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 369
    .line 370
    .line 371
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->n0:Landroid/widget/FrameLayout;

    .line 372
    .line 373
    new-instance v3, Lcom/mycompany/app/dialog/DialogDownList$6;

    .line 374
    .line 375
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogDownList$6;-><init>(Lcom/mycompany/app/dialog/DialogDownList;)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    .line 380
    .line 381
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->r0:Lcom/mycompany/app/view/MyEditText;

    .line 382
    .line 383
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    .line 384
    .line 385
    .line 386
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->r0:Lcom/mycompany/app/view/MyEditText;

    .line 387
    .line 388
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownList$7;

    .line 389
    .line 390
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownList$7;-><init>(Lcom/mycompany/app/dialog/DialogDownList;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 394
    .line 395
    .line 396
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->r0:Lcom/mycompany/app/view/MyEditText;

    .line 397
    .line 398
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownList$8;

    .line 399
    .line 400
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownList$8;-><init>(Lcom/mycompany/app/dialog/DialogDownList;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 404
    .line 405
    .line 406
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->r0:Lcom/mycompany/app/view/MyEditText;

    .line 407
    .line 408
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownList$9;

    .line 409
    .line 410
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownList$9;-><init>(Lcom/mycompany/app/dialog/DialogDownList;)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 414
    .line 415
    .line 416
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->s0:Landroid/widget/FrameLayout;

    .line 417
    .line 418
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownList$10;

    .line 419
    .line 420
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownList$10;-><init>(Lcom/mycompany/app/dialog/DialogDownList;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    .line 425
    .line 426
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->u0:Landroid/widget/FrameLayout;

    .line 427
    .line 428
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownList$11;

    .line 429
    .line 430
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownList$11;-><init>(Lcom/mycompany/app/dialog/DialogDownList;)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    .line 435
    .line 436
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->x0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 437
    .line 438
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownList$12;

    .line 439
    .line 440
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownList$12;-><init>(Lcom/mycompany/app/dialog/DialogDownList;)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    .line 445
    .line 446
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 447
    .line 448
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownList$13;

    .line 449
    .line 450
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownList$13;-><init>(Lcom/mycompany/app/dialog/DialogDownList;)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 454
    .line 455
    .line 456
    :cond_5
    :goto_3
    return-void
.end method
