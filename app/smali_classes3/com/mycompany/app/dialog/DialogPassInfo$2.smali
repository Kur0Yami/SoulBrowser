.class Lcom/mycompany/app/dialog/DialogPassInfo$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogPassInfo;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogPassInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPassInfo$2;->c:Lcom/mycompany/app/dialog/DialogPassInfo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassInfo$2;->c:Lcom/mycompany/app/dialog/DialogPassInfo;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->j0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_7

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->c0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_4

    .line 12
    .line 13
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 14
    .line 15
    const v2, -0xe19938

    .line 16
    .line 17
    .line 18
    const v3, -0xc0c0c1

    .line 19
    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 24
    .line 25
    const v4, -0x50506

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 29
    .line 30
    .line 31
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->o0:Lcom/mycompany/app/view/MyLineText;

    .line 32
    .line 33
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 34
    .line 35
    .line 36
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->p0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 37
    .line 38
    const v5, -0x3e3e3f

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 42
    .line 43
    .line 44
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 45
    .line 46
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    .line 48
    .line 49
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 50
    .line 51
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    .line 53
    .line 54
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->t0:Lcom/mycompany/app/view/MyEditText;

    .line 55
    .line 56
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    .line 58
    .line 59
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->v0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 60
    .line 61
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    .line 63
    .line 64
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->w0:Lcom/mycompany/app/view/MyEditText;

    .line 65
    .line 66
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    .line 68
    .line 69
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 70
    .line 71
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_edit_dark_24:I

    .line 72
    .line 73
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 74
    .line 75
    .line 76
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->r0:Lcom/mycompany/app/view/MyButtonImage;

    .line 77
    .line 78
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_content_copy_dark_24:I

    .line 79
    .line 80
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 81
    .line 82
    .line 83
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->u0:Lcom/mycompany/app/view/MyButtonImage;

    .line 84
    .line 85
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_content_copy_dark_24:I

    .line 86
    .line 87
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 88
    .line 89
    .line 90
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->z0:Lcom/mycompany/app/view/MyButtonImage;

    .line 91
    .line 92
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_content_copy_dark_24:I

    .line 93
    .line 94
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 95
    .line 96
    .line 97
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->y0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 98
    .line 99
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_visibility_off_dark_24:I

    .line 100
    .line 101
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_visibility_dark_24:I

    .line 102
    .line 103
    invoke-virtual {v1, v5, v6}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 104
    .line 105
    .line 106
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->A0:Lcom/mycompany/app/view/MyLineText;

    .line 107
    .line 108
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 109
    .line 110
    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 111
    .line 112
    .line 113
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->A0:Lcom/mycompany/app/view/MyLineText;

    .line 114
    .line 115
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    .line 117
    .line 118
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 119
    .line 120
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 121
    .line 122
    .line 123
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->r0:Lcom/mycompany/app/view/MyButtonImage;

    .line 124
    .line 125
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 126
    .line 127
    .line 128
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->u0:Lcom/mycompany/app/view/MyButtonImage;

    .line 129
    .line 130
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 131
    .line 132
    .line 133
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->y0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 134
    .line 135
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 136
    .line 137
    .line 138
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->z0:Lcom/mycompany/app/view/MyButtonImage;

    .line 139
    .line 140
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 145
    .line 146
    const/high16 v4, -0x1000000

    .line 147
    .line 148
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    .line 150
    .line 151
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->o0:Lcom/mycompany/app/view/MyLineText;

    .line 152
    .line 153
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    .line 155
    .line 156
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->p0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 157
    .line 158
    const v5, -0x9e9e9f

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    .line 163
    .line 164
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 165
    .line 166
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    .line 168
    .line 169
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 170
    .line 171
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 172
    .line 173
    .line 174
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->t0:Lcom/mycompany/app/view/MyEditText;

    .line 175
    .line 176
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 177
    .line 178
    .line 179
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->v0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 180
    .line 181
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 182
    .line 183
    .line 184
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->w0:Lcom/mycompany/app/view/MyEditText;

    .line 185
    .line 186
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 187
    .line 188
    .line 189
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 190
    .line 191
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_edit_black_24:I

    .line 192
    .line 193
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 194
    .line 195
    .line 196
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->r0:Lcom/mycompany/app/view/MyButtonImage;

    .line 197
    .line 198
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_content_copy_black_24:I

    .line 199
    .line 200
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 201
    .line 202
    .line 203
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->u0:Lcom/mycompany/app/view/MyButtonImage;

    .line 204
    .line 205
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_content_copy_black_24:I

    .line 206
    .line 207
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 208
    .line 209
    .line 210
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->z0:Lcom/mycompany/app/view/MyButtonImage;

    .line 211
    .line 212
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_content_copy_black_24:I

    .line 213
    .line 214
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 215
    .line 216
    .line 217
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->y0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 218
    .line 219
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_visibility_off_black_24:I

    .line 220
    .line 221
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_visibility_black_24:I

    .line 222
    .line 223
    invoke-virtual {v1, v4, v5}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 224
    .line 225
    .line 226
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->A0:Lcom/mycompany/app/view/MyLineText;

    .line 227
    .line 228
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 229
    .line 230
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 231
    .line 232
    .line 233
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->A0:Lcom/mycompany/app/view/MyLineText;

    .line 234
    .line 235
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 236
    .line 237
    .line 238
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 239
    .line 240
    const v4, -0x1f1f20

    .line 241
    .line 242
    .line 243
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 244
    .line 245
    .line 246
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->r0:Lcom/mycompany/app/view/MyButtonImage;

    .line 247
    .line 248
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 249
    .line 250
    .line 251
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->u0:Lcom/mycompany/app/view/MyButtonImage;

    .line 252
    .line 253
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 254
    .line 255
    .line 256
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->y0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 257
    .line 258
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 259
    .line 260
    .line 261
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->z0:Lcom/mycompany/app/view/MyButtonImage;

    .line 262
    .line 263
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 264
    .line 265
    .line 266
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->t0:Lcom/mycompany/app/view/MyEditText;

    .line 267
    .line 268
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyEditText;->setElineColor(I)V

    .line 269
    .line 270
    .line 271
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->w0:Lcom/mycompany/app/view/MyEditText;

    .line 272
    .line 273
    const/4 v2, 0x0

    .line 274
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyEditText;->setDrawEline(Z)V

    .line 275
    .line 276
    .line 277
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 278
    .line 279
    const/4 v4, 0x1

    .line 280
    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 281
    .line 282
    .line 283
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 284
    .line 285
    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 286
    .line 287
    .line 288
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 289
    .line 290
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->f0:Ljava/lang/String;

    .line 291
    .line 292
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    .line 294
    .line 295
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->t0:Lcom/mycompany/app/view/MyEditText;

    .line 296
    .line 297
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->g0:Ljava/lang/String;

    .line 298
    .line 299
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    .line 301
    .line 302
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->w0:Lcom/mycompany/app/view/MyEditText;

    .line 303
    .line 304
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->h0:Ljava/lang/String;

    .line 305
    .line 306
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    .line 308
    .line 309
    iget-wide v5, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->e0:J

    .line 310
    .line 311
    const-wide/16 v7, 0x0

    .line 312
    .line 313
    cmp-long v1, v5, v7

    .line 314
    .line 315
    if-nez v1, :cond_3

    .line 316
    .line 317
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->o0:Lcom/mycompany/app/view/MyLineText;

    .line 318
    .line 319
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 320
    .line 321
    .line 322
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->x0:Lcom/mycompany/app/view/MyLineView;

    .line 323
    .line 324
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 325
    .line 326
    .line 327
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->A0:Lcom/mycompany/app/view/MyLineText;

    .line 328
    .line 329
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 330
    .line 331
    .line 332
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->x0:Lcom/mycompany/app/view/MyLineView;

    .line 333
    .line 334
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 335
    .line 336
    if-eqz v2, :cond_2

    .line 337
    .line 338
    goto :goto_1

    .line 339
    :cond_2
    const v3, -0x252526

    .line 340
    .line 341
    .line 342
    :goto_1
    iget v2, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->b0:F

    .line 343
    .line 344
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyLineView;->d(FI)V

    .line 345
    .line 346
    .line 347
    goto/16 :goto_3

    .line 348
    .line 349
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->k0:Lcom/mycompany/app/view/MyLineRelative;

    .line 350
    .line 351
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 352
    .line 353
    .line 354
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 355
    .line 356
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 357
    .line 358
    .line 359
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->r0:Lcom/mycompany/app/view/MyButtonImage;

    .line 360
    .line 361
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 362
    .line 363
    .line 364
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->u0:Lcom/mycompany/app/view/MyButtonImage;

    .line 365
    .line 366
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 367
    .line 368
    .line 369
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->z0:Lcom/mycompany/app/view/MyButtonImage;

    .line 370
    .line 371
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 372
    .line 373
    .line 374
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->t0:Lcom/mycompany/app/view/MyEditText;

    .line 375
    .line 376
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyEditText;->setDrawEline(Z)V

    .line 377
    .line 378
    .line 379
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->t0:Lcom/mycompany/app/view/MyEditText;

    .line 380
    .line 381
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 382
    .line 383
    .line 384
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->w0:Lcom/mycompany/app/view/MyEditText;

    .line 385
    .line 386
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 387
    .line 388
    .line 389
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->l0:Lcom/mycompany/app/view/MyRoundImage;

    .line 390
    .line 391
    if-nez v1, :cond_4

    .line 392
    .line 393
    goto :goto_2

    .line 394
    :cond_4
    new-instance v1, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 395
    .line 396
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 397
    .line 398
    .line 399
    const/16 v3, 0x22

    .line 400
    .line 401
    iput v3, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 402
    .line 403
    const/16 v3, 0xb

    .line 404
    .line 405
    iput v3, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 406
    .line 407
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->f0:Ljava/lang/String;

    .line 408
    .line 409
    iput-object v3, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 410
    .line 411
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 412
    .line 413
    .line 414
    move-result v3

    .line 415
    if-eqz v3, :cond_5

    .line 416
    .line 417
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->l0:Lcom/mycompany/app/view/MyRoundImage;

    .line 418
    .line 419
    const v2, -0x70708

    .line 420
    .line 421
    .line 422
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 423
    .line 424
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 425
    .line 426
    .line 427
    goto :goto_2

    .line 428
    :cond_5
    invoke-static {v1}, Lcom/mycompany/app/main/MainListLoader;->b(Lcom/mycompany/app/main/MainItem$ChildItem;)Landroid/graphics/Bitmap;

    .line 429
    .line 430
    .line 431
    move-result-object v3

    .line 432
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 433
    .line 434
    .line 435
    move-result v5

    .line 436
    if-eqz v5, :cond_6

    .line 437
    .line 438
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->l0:Lcom/mycompany/app/view/MyRoundImage;

    .line 439
    .line 440
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyRoundImage;->setIconSmall(Z)V

    .line 441
    .line 442
    .line 443
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->l0:Lcom/mycompany/app/view/MyRoundImage;

    .line 444
    .line 445
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 446
    .line 447
    .line 448
    goto :goto_2

    .line 449
    :cond_6
    new-instance v3, Lcom/mycompany/app/main/MainListLoader;

    .line 450
    .line 451
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->c0:Landroid/content/Context;

    .line 452
    .line 453
    new-instance v6, Lcom/mycompany/app/dialog/DialogPassInfo$14;

    .line 454
    .line 455
    invoke-direct {v6, v0}, Lcom/mycompany/app/dialog/DialogPassInfo$14;-><init>(Lcom/mycompany/app/dialog/DialogPassInfo;)V

    .line 456
    .line 457
    .line 458
    invoke-direct {v3, v5, v2, v6}, Lcom/mycompany/app/main/MainListLoader;-><init>(Landroid/content/Context;ZLcom/mycompany/app/main/MainListLoader$ListLoadListener;)V

    .line 459
    .line 460
    .line 461
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->B0:Lcom/mycompany/app/main/MainListLoader;

    .line 462
    .line 463
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->l0:Lcom/mycompany/app/view/MyRoundImage;

    .line 464
    .line 465
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 466
    .line 467
    .line 468
    move-result-object v2

    .line 469
    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 470
    .line 471
    .line 472
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->B0:Lcom/mycompany/app/main/MainListLoader;

    .line 473
    .line 474
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->l0:Lcom/mycompany/app/view/MyRoundImage;

    .line 475
    .line 476
    invoke-virtual {v2, v1, v3}, Lcom/mycompany/app/main/MainListLoader;->e(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;)V

    .line 477
    .line 478
    .line 479
    :goto_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 480
    .line 481
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->f0:Ljava/lang/String;

    .line 482
    .line 483
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    .line 485
    .line 486
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 487
    .line 488
    new-instance v2, Lcom/mycompany/app/dialog/DialogPassInfo$3;

    .line 489
    .line 490
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPassInfo$3;-><init>(Lcom/mycompany/app/dialog/DialogPassInfo;)V

    .line 491
    .line 492
    .line 493
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 494
    .line 495
    .line 496
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->r0:Lcom/mycompany/app/view/MyButtonImage;

    .line 497
    .line 498
    new-instance v2, Lcom/mycompany/app/dialog/DialogPassInfo$4;

    .line 499
    .line 500
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPassInfo$4;-><init>(Lcom/mycompany/app/dialog/DialogPassInfo;)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 504
    .line 505
    .line 506
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->u0:Lcom/mycompany/app/view/MyButtonImage;

    .line 507
    .line 508
    new-instance v2, Lcom/mycompany/app/dialog/DialogPassInfo$5;

    .line 509
    .line 510
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPassInfo$5;-><init>(Lcom/mycompany/app/dialog/DialogPassInfo;)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 514
    .line 515
    .line 516
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->z0:Lcom/mycompany/app/view/MyButtonImage;

    .line 517
    .line 518
    new-instance v2, Lcom/mycompany/app/dialog/DialogPassInfo$6;

    .line 519
    .line 520
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPassInfo$6;-><init>(Lcom/mycompany/app/dialog/DialogPassInfo;)V

    .line 521
    .line 522
    .line 523
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 524
    .line 525
    .line 526
    :goto_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->w0:Lcom/mycompany/app/view/MyEditText;

    .line 527
    .line 528
    const/16 v2, 0x81

    .line 529
    .line 530
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 531
    .line 532
    .line 533
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->w0:Lcom/mycompany/app/view/MyEditText;

    .line 534
    .line 535
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    .line 536
    .line 537
    .line 538
    move-result-object v2

    .line 539
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 540
    .line 541
    .line 542
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->y0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 543
    .line 544
    new-instance v2, Lcom/mycompany/app/dialog/DialogPassInfo$7;

    .line 545
    .line 546
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPassInfo$7;-><init>(Lcom/mycompany/app/dialog/DialogPassInfo;)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 550
    .line 551
    .line 552
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->t0:Lcom/mycompany/app/view/MyEditText;

    .line 553
    .line 554
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    .line 555
    .line 556
    .line 557
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->t0:Lcom/mycompany/app/view/MyEditText;

    .line 558
    .line 559
    new-instance v2, Lcom/mycompany/app/dialog/DialogPassInfo$8;

    .line 560
    .line 561
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPassInfo$8;-><init>(Lcom/mycompany/app/dialog/DialogPassInfo;)V

    .line 562
    .line 563
    .line 564
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 565
    .line 566
    .line 567
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->t0:Lcom/mycompany/app/view/MyEditText;

    .line 568
    .line 569
    new-instance v2, Lcom/mycompany/app/dialog/DialogPassInfo$9;

    .line 570
    .line 571
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPassInfo$9;-><init>(Lcom/mycompany/app/dialog/DialogPassInfo;)V

    .line 572
    .line 573
    .line 574
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 575
    .line 576
    .line 577
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->w0:Lcom/mycompany/app/view/MyEditText;

    .line 578
    .line 579
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    .line 580
    .line 581
    .line 582
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->w0:Lcom/mycompany/app/view/MyEditText;

    .line 583
    .line 584
    new-instance v2, Lcom/mycompany/app/dialog/DialogPassInfo$10;

    .line 585
    .line 586
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPassInfo$10;-><init>(Lcom/mycompany/app/dialog/DialogPassInfo;)V

    .line 587
    .line 588
    .line 589
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 590
    .line 591
    .line 592
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->w0:Lcom/mycompany/app/view/MyEditText;

    .line 593
    .line 594
    new-instance v2, Lcom/mycompany/app/dialog/DialogPassInfo$11;

    .line 595
    .line 596
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPassInfo$11;-><init>(Lcom/mycompany/app/dialog/DialogPassInfo;)V

    .line 597
    .line 598
    .line 599
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 600
    .line 601
    .line 602
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->A0:Lcom/mycompany/app/view/MyLineText;

    .line 603
    .line 604
    new-instance v2, Lcom/mycompany/app/dialog/DialogPassInfo$12;

    .line 605
    .line 606
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPassInfo$12;-><init>(Lcom/mycompany/app/dialog/DialogPassInfo;)V

    .line 607
    .line 608
    .line 609
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 610
    .line 611
    .line 612
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->j0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 613
    .line 614
    new-instance v2, Lcom/mycompany/app/dialog/DialogPassInfo$13;

    .line 615
    .line 616
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPassInfo$13;-><init>(Lcom/mycompany/app/dialog/DialogPassInfo;)V

    .line 617
    .line 618
    .line 619
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 620
    .line 621
    .line 622
    :cond_7
    :goto_4
    return-void
.end method
