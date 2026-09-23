.class Lcom/mycompany/app/dialog/DialogGuideAds$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogGuideAds;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogGuideAds;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogGuideAds$2;->c:Lcom/mycompany/app/dialog/DialogGuideAds;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogGuideAds$2;->c:Lcom/mycompany/app/dialog/DialogGuideAds;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->b0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->a0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->a0:Landroid/content/Context;

    .line 19
    .line 20
    sget v3, Lnet/kaki87/soul2/testing/R$string;->ads_guide_1:I

    .line 21
    .line 22
    const-string v4, "\n"

    .line 23
    .line 24
    invoke-static {v2, v3, v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->a0:Landroid/content/Context;

    .line 28
    .line 29
    sget v3, Lnet/kaki87/soul2/testing/R$string;->ads_guide_2:I

    .line 30
    .line 31
    invoke-static {v2, v3, v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->a0:Landroid/content/Context;

    .line 35
    .line 36
    sget v3, Lnet/kaki87/soul2/testing/R$string;->ads_guide_3:I

    .line 37
    .line 38
    const-string v5, "\n\n"

    .line 39
    .line 40
    invoke-static {v2, v3, v1, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->a0:Landroid/content/Context;

    .line 44
    .line 45
    sget v3, Lnet/kaki87/soul2/testing/R$string;->ads_guide_4:I

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->a0:Landroid/content/Context;

    .line 60
    .line 61
    sget v6, Lnet/kaki87/soul2/testing/R$string;->ads_guide_5:I

    .line 62
    .line 63
    invoke-static {v3, v6, v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->a0:Landroid/content/Context;

    .line 67
    .line 68
    sget v6, Lnet/kaki87/soul2/testing/R$string;->ads_guide_6:I

    .line 69
    .line 70
    invoke-static {v3, v6, v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->a0:Landroid/content/Context;

    .line 74
    .line 75
    sget v6, Lnet/kaki87/soul2/testing/R$string;->ads_guide_7:I

    .line 76
    .line 77
    invoke-static {v3, v6, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->a0:Landroid/content/Context;

    .line 81
    .line 82
    sget v5, Lnet/kaki87/soul2/testing/R$string;->remove_ads_info_4:I

    .line 83
    .line 84
    invoke-static {v3, v5, v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->a0:Landroid/content/Context;

    .line 88
    .line 89
    sget v4, Lnet/kaki87/soul2/testing/R$string;->ads_guide_8:I

    .line 90
    .line 91
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v4, "<"

    .line 101
    .line 102
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->a0:Landroid/content/Context;

    .line 106
    .line 107
    sget v5, Lnet/kaki87/soul2/testing/R$string;->inapp_ads_sample:I

    .line 108
    .line 109
    const-string v6, ">"

    .line 110
    .line 111
    invoke-static {v4, v5, v3, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 115
    .line 116
    sget v5, Lnet/kaki87/soul2/testing/R$string;->inapp_ads:I

    .line 117
    .line 118
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 119
    .line 120
    .line 121
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    .line 129
    .line 130
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 131
    .line 132
    sget v4, Lnet/kaki87/soul2/testing/R$string;->website_ads:I

    .line 133
    .line 134
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 135
    .line 136
    .line 137
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 138
    .line 139
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    .line 145
    .line 146
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 147
    .line 148
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    .line 154
    .line 155
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 156
    .line 157
    const/high16 v2, -0x1000000

    .line 158
    .line 159
    if-eqz v1, :cond_1

    .line 160
    .line 161
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->c0:Landroid/widget/ImageView;

    .line 162
    .line 163
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_wb_incandescent_2_dark_24:I

    .line 164
    .line 165
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 166
    .line 167
    .line 168
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->d0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 169
    .line 170
    const v3, -0x50506

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 174
    .line 175
    .line 176
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 177
    .line 178
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    .line 180
    .line 181
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 182
    .line 183
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 184
    .line 185
    .line 186
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 187
    .line 188
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 189
    .line 190
    .line 191
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 192
    .line 193
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 194
    .line 195
    .line 196
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 197
    .line 198
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 199
    .line 200
    .line 201
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 202
    .line 203
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 204
    .line 205
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 206
    .line 207
    .line 208
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 209
    .line 210
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 211
    .line 212
    .line 213
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->l0:Landroid/widget/FrameLayout;

    .line 214
    .line 215
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 216
    .line 217
    .line 218
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 219
    .line 220
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 221
    .line 222
    .line 223
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 224
    .line 225
    const v2, -0x4f4f50

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 229
    .line 230
    .line 231
    goto :goto_0

    .line 232
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->c0:Landroid/widget/ImageView;

    .line 233
    .line 234
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_wb_incandescent_2_black_24:I

    .line 235
    .line 236
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 237
    .line 238
    .line 239
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->d0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 240
    .line 241
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 242
    .line 243
    .line 244
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 245
    .line 246
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 247
    .line 248
    .line 249
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 250
    .line 251
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 252
    .line 253
    .line 254
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 255
    .line 256
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 257
    .line 258
    .line 259
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 260
    .line 261
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 262
    .line 263
    .line 264
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 265
    .line 266
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 267
    .line 268
    .line 269
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 270
    .line 271
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 272
    .line 273
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 274
    .line 275
    .line 276
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 277
    .line 278
    const v3, -0xe19938

    .line 279
    .line 280
    .line 281
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 282
    .line 283
    .line 284
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->k0:Lcom/mycompany/app/view/MyRoundFrame;

    .line 285
    .line 286
    const v3, -0x70708

    .line 287
    .line 288
    .line 289
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 290
    .line 291
    invoke-virtual {v1, v3, v4}, Lcom/mycompany/app/view/MyRoundFrame;->c(II)V

    .line 292
    .line 293
    .line 294
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->l0:Landroid/widget/FrameLayout;

    .line 295
    .line 296
    const/4 v3, -0x1

    .line 297
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 298
    .line 299
    .line 300
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 301
    .line 302
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 303
    .line 304
    .line 305
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 306
    .line 307
    const v2, -0xbbbbbc

    .line 308
    .line 309
    .line 310
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 311
    .line 312
    .line 313
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->m0:Landroid/view/View;

    .line 314
    .line 315
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->ads_noti:I

    .line 316
    .line 317
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 318
    .line 319
    .line 320
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->n0:Landroid/view/View;

    .line 321
    .line 322
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->ads_info:I

    .line 323
    .line 324
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 325
    .line 326
    .line 327
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->o0:Landroid/view/View;

    .line 328
    .line 329
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->ads_back:I

    .line 330
    .line 331
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 332
    .line 333
    .line 334
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->p0:Landroid/view/View;

    .line 335
    .line 336
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->ads_icon:I

    .line 337
    .line 338
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 339
    .line 340
    .line 341
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 342
    .line 343
    const-string v2, "Sample"

    .line 344
    .line 345
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    .line 347
    .line 348
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 349
    .line 350
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    .line 352
    .line 353
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 354
    .line 355
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    .line 357
    .line 358
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->l0:Landroid/widget/FrameLayout;

    .line 359
    .line 360
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->n7(Landroid/view/View;)V

    .line 361
    .line 362
    .line 363
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->p0:Landroid/view/View;

    .line 364
    .line 365
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->n7(Landroid/view/View;)V

    .line 366
    .line 367
    .line 368
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 369
    .line 370
    new-instance v2, Lcom/mycompany/app/dialog/DialogGuideAds$3;

    .line 371
    .line 372
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogGuideAds$3;-><init>(Lcom/mycompany/app/dialog/DialogGuideAds;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    .line 377
    .line 378
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideAds;->b0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 379
    .line 380
    new-instance v2, Lcom/mycompany/app/dialog/DialogGuideAds$4;

    .line 381
    .line 382
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogGuideAds$4;-><init>(Lcom/mycompany/app/dialog/DialogGuideAds;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 386
    .line 387
    .line 388
    :cond_2
    :goto_1
    return-void
.end method
