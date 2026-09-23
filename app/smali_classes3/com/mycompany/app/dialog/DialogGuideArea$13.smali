.class Lcom/mycompany/app/dialog/DialogGuideArea$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogGuideArea;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogGuideArea;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogGuideArea$13;->c:Lcom/mycompany/app/dialog/DialogGuideArea;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogGuideArea$13;->c:Lcom/mycompany/app/dialog/DialogGuideArea;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->a0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_0
    sget v2, Lnet/kaki87/soul2/testing/R$string;->block_area:I

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->a0:Landroid/content/Context;

    .line 25
    .line 26
    sget v4, Lnet/kaki87/soul2/testing/R$string;->area_info_1:I

    .line 27
    .line 28
    const-string v5, "\n"

    .line 29
    .line 30
    invoke-static {v3, v4, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->a0:Landroid/content/Context;

    .line 34
    .line 35
    sget v4, Lnet/kaki87/soul2/testing/R$string;->area_info_2:I

    .line 36
    .line 37
    const-string v6, "\n\n"

    .line 38
    .line 39
    invoke-static {v3, v4, v2, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->a0:Landroid/content/Context;

    .line 43
    .line 44
    sget v4, Lnet/kaki87/soul2/testing/R$string;->area_info_3:I

    .line 45
    .line 46
    invoke-static {v3, v4, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->a0:Landroid/content/Context;

    .line 50
    .line 51
    sget v4, Lnet/kaki87/soul2/testing/R$string;->area_info_4:I

    .line 52
    .line 53
    invoke-static {v3, v4, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->a0:Landroid/content/Context;

    .line 57
    .line 58
    sget v4, Lnet/kaki87/soul2/testing/R$string;->area_info_5:I

    .line 59
    .line 60
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->v0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 77
    .line 78
    const-string v3, "\ud83d\ude13"

    .line 79
    .line 80
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 84
    .line 85
    sget v3, Lnet/kaki87/soul2/testing/R$string;->area_info_6:I

    .line 86
    .line 87
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 88
    .line 89
    .line 90
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->x0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 91
    .line 92
    sget v3, Lnet/kaki87/soul2/testing/R$string;->area_info_7:I

    .line 93
    .line 94
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 95
    .line 96
    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->a0:Landroid/content/Context;

    .line 103
    .line 104
    sget v4, Lnet/kaki87/soul2/testing/R$string;->area_info_8:I

    .line 105
    .line 106
    invoke-static {v3, v4, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->a0:Landroid/content/Context;

    .line 110
    .line 111
    sget v4, Lnet/kaki87/soul2/testing/R$string;->area_info_9:I

    .line 112
    .line 113
    invoke-static {v3, v4, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->a0:Landroid/content/Context;

    .line 117
    .line 118
    sget v4, Lnet/kaki87/soul2/testing/R$string;->area_info_10:I

    .line 119
    .line 120
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 128
    .line 129
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    .line 135
    .line 136
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 137
    .line 138
    const-string v3, "\ud83d\ude04"

    .line 139
    .line 140
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    .line 142
    .line 143
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->z0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 144
    .line 145
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 146
    .line 147
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->a0:Landroid/content/Context;

    .line 148
    .line 149
    sget v7, Lnet/kaki87/soul2/testing/R$string;->area_info_11:I

    .line 150
    .line 151
    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    const/4 v7, 0x1

    .line 156
    new-array v8, v7, [Ljava/lang/Object;

    .line 157
    .line 158
    const/4 v9, 0x0

    .line 159
    aput-object v1, v8, v9

    .line 160
    .line 161
    invoke-static {v3, v4, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    .line 167
    .line 168
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->A0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 169
    .line 170
    sget v4, Lnet/kaki87/soul2/testing/R$string;->area_info_12:I

    .line 171
    .line 172
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 173
    .line 174
    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->a0:Landroid/content/Context;

    .line 181
    .line 182
    sget v8, Lnet/kaki87/soul2/testing/R$string;->area_info_13:I

    .line 183
    .line 184
    invoke-static {v4, v8, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->a0:Landroid/content/Context;

    .line 188
    .line 189
    sget v8, Lnet/kaki87/soul2/testing/R$string;->area_info_14:I

    .line 190
    .line 191
    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    new-array v8, v7, [Ljava/lang/Object;

    .line 196
    .line 197
    aput-object v1, v8, v9

    .line 198
    .line 199
    invoke-static {v3, v4, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->a0:Landroid/content/Context;

    .line 210
    .line 211
    sget v3, Lnet/kaki87/soul2/testing/R$string;->area_info_15:I

    .line 212
    .line 213
    invoke-static {v1, v3, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->a0:Landroid/content/Context;

    .line 217
    .line 218
    sget v3, Lnet/kaki87/soul2/testing/R$string;->area_info_16:I

    .line 219
    .line 220
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 228
    .line 229
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    .line 235
    .line 236
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->s0:Lcom/mycompany/app/view/MyRoundLinear;

    .line 237
    .line 238
    invoke-virtual {v1, v9, v7}, Lcom/mycompany/app/view/MyRoundLinear;->c(ZZ)V

    .line 239
    .line 240
    .line 241
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->t0:Lcom/mycompany/app/view/MyRoundLinear;

    .line 242
    .line 243
    invoke-virtual {v1, v7, v7}, Lcom/mycompany/app/view/MyRoundLinear;->c(ZZ)V

    .line 244
    .line 245
    .line 246
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->u0:Lcom/mycompany/app/view/MyRoundLinear;

    .line 247
    .line 248
    invoke-virtual {v1, v7, v9}, Lcom/mycompany/app/view/MyRoundLinear;->c(ZZ)V

    .line 249
    .line 250
    .line 251
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 252
    .line 253
    const/high16 v2, -0x1000000

    .line 254
    .line 255
    if-eqz v1, :cond_1

    .line 256
    .line 257
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->r0:Landroidx/core/widget/NestedScrollView;

    .line 258
    .line 259
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 260
    .line 261
    .line 262
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->s0:Lcom/mycompany/app/view/MyRoundLinear;

    .line 263
    .line 264
    const v2, -0xdededf

    .line 265
    .line 266
    .line 267
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyRoundLinear;->setColor(I)V

    .line 268
    .line 269
    .line 270
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->t0:Lcom/mycompany/app/view/MyRoundLinear;

    .line 271
    .line 272
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyRoundLinear;->setColor(I)V

    .line 273
    .line 274
    .line 275
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->u0:Lcom/mycompany/app/view/MyRoundLinear;

    .line 276
    .line 277
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyRoundLinear;->setColor(I)V

    .line 278
    .line 279
    .line 280
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->f0:Landroid/widget/ImageView;

    .line 281
    .line 282
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_wb_incandescent_2_dark_24:I

    .line 283
    .line 284
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 285
    .line 286
    .line 287
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 288
    .line 289
    const v2, -0x50506

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 293
    .line 294
    .line 295
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 296
    .line 297
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 298
    .line 299
    .line 300
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->v0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 301
    .line 302
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 303
    .line 304
    .line 305
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 306
    .line 307
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 308
    .line 309
    .line 310
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->x0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 311
    .line 312
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 313
    .line 314
    .line 315
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 316
    .line 317
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 318
    .line 319
    .line 320
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 321
    .line 322
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 323
    .line 324
    .line 325
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->z0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 326
    .line 327
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 328
    .line 329
    .line 330
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->A0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 331
    .line 332
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 333
    .line 334
    .line 335
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 336
    .line 337
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 338
    .line 339
    .line 340
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 341
    .line 342
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 343
    .line 344
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 345
    .line 346
    .line 347
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 348
    .line 349
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 350
    .line 351
    .line 352
    goto :goto_0

    .line 353
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->r0:Landroidx/core/widget/NestedScrollView;

    .line 354
    .line 355
    const v3, -0x70708

    .line 356
    .line 357
    .line 358
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 359
    .line 360
    .line 361
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->s0:Lcom/mycompany/app/view/MyRoundLinear;

    .line 362
    .line 363
    const/4 v3, -0x1

    .line 364
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyRoundLinear;->setColor(I)V

    .line 365
    .line 366
    .line 367
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->t0:Lcom/mycompany/app/view/MyRoundLinear;

    .line 368
    .line 369
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyRoundLinear;->setColor(I)V

    .line 370
    .line 371
    .line 372
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->u0:Lcom/mycompany/app/view/MyRoundLinear;

    .line 373
    .line 374
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyRoundLinear;->setColor(I)V

    .line 375
    .line 376
    .line 377
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->f0:Landroid/widget/ImageView;

    .line 378
    .line 379
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_wb_incandescent_2_black_24:I

    .line 380
    .line 381
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 382
    .line 383
    .line 384
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 385
    .line 386
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 387
    .line 388
    .line 389
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 390
    .line 391
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 392
    .line 393
    .line 394
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->v0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 395
    .line 396
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 397
    .line 398
    .line 399
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 400
    .line 401
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 402
    .line 403
    .line 404
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->x0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 405
    .line 406
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 407
    .line 408
    .line 409
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 410
    .line 411
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 412
    .line 413
    .line 414
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 415
    .line 416
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 417
    .line 418
    .line 419
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->z0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 420
    .line 421
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 422
    .line 423
    .line 424
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->A0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 425
    .line 426
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 427
    .line 428
    .line 429
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 430
    .line 431
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 432
    .line 433
    .line 434
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 435
    .line 436
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 437
    .line 438
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 439
    .line 440
    .line 441
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 442
    .line 443
    const v2, -0xe19938

    .line 444
    .line 445
    .line 446
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 447
    .line 448
    .line 449
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 450
    .line 451
    new-instance v2, Lcom/mycompany/app/dialog/DialogGuideArea$14;

    .line 452
    .line 453
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogGuideArea$14;-><init>(Lcom/mycompany/app/dialog/DialogGuideArea;)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    .line 458
    .line 459
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 460
    .line 461
    new-instance v2, Lcom/mycompany/app/dialog/DialogGuideArea$15;

    .line 462
    .line 463
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogGuideArea$15;-><init>(Lcom/mycompany/app/dialog/DialogGuideArea;)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 467
    .line 468
    .line 469
    :cond_2
    :goto_1
    return-void
.end method
