.class Lcom/mycompany/app/dialog/DialogDownZip$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownZip;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownZip;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownZip$2;->c:Lcom/mycompany/app/dialog/DialogDownZip;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownZip$2;->c:Lcom/mycompany/app/dialog/DialogDownZip;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_3

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->b0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_2

    .line 12
    .line 13
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 14
    .line 15
    sget v2, Lnet/kaki87/soul2/testing/R$string;->name:I

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 18
    .line 19
    .line 20
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->p0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 21
    .line 22
    sget v2, Lnet/kaki87/soul2/testing/R$string;->down_location:I

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 25
    .line 26
    .line 27
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->C0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 28
    .line 29
    sget v2, Lnet/kaki87/soul2/testing/R$string;->create_zip:I

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 32
    .line 33
    .line 34
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->Q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 35
    .line 36
    sget v2, Lnet/kaki87/soul2/testing/R$string;->create_zip:I

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 39
    .line 40
    .line 41
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 42
    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 46
    .line 47
    const v2, -0x50506

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    .line 52
    .line 53
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 54
    .line 55
    const v3, -0x252526

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    .line 60
    .line 61
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 62
    .line 63
    const v4, -0xc0c0c1

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 67
    .line 68
    .line 69
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    .line 73
    .line 74
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    .line 78
    .line 79
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 80
    .line 81
    const v5, -0x3e3e3f

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    .line 86
    .line 87
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->n0:Lcom/mycompany/app/view/MyEditText;

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    .line 91
    .line 92
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->o0:Landroid/widget/FrameLayout;

    .line 93
    .line 94
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 95
    .line 96
    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 97
    .line 98
    .line 99
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->p0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 100
    .line 101
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    .line 103
    .line 104
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 105
    .line 106
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    .line 108
    .line 109
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->t0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 110
    .line 111
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    .line 113
    .line 114
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->t0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 115
    .line 116
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 117
    .line 118
    .line 119
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 120
    .line 121
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    .line 123
    .line 124
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->v0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 125
    .line 126
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    .line 128
    .line 129
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 130
    .line 131
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    .line 133
    .line 134
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->x0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 135
    .line 136
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    .line 138
    .line 139
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 140
    .line 141
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    .line 143
    .line 144
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->z0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 145
    .line 146
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    .line 148
    .line 149
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->A0:Lcom/mycompany/app/view/MyLineText;

    .line 150
    .line 151
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 152
    .line 153
    .line 154
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->C0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 155
    .line 156
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    .line 158
    .line 159
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->C0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 160
    .line 161
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 162
    .line 163
    .line 164
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->D0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 165
    .line 166
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    .line 168
    .line 169
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->E0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 170
    .line 171
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 172
    .line 173
    .line 174
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->F0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 175
    .line 176
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 177
    .line 178
    .line 179
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->G0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 180
    .line 181
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 182
    .line 183
    .line 184
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->H0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 185
    .line 186
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 187
    .line 188
    .line 189
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->I0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 190
    .line 191
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 192
    .line 193
    .line 194
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->K0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 195
    .line 196
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 197
    .line 198
    .line 199
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->K0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 200
    .line 201
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 202
    .line 203
    .line 204
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->L0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 205
    .line 206
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 207
    .line 208
    .line 209
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->M0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 210
    .line 211
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 212
    .line 213
    .line 214
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->O0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 215
    .line 216
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 217
    .line 218
    .line 219
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->P0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 220
    .line 221
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 222
    .line 223
    .line 224
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->R0:Lcom/mycompany/app/view/MyLineText;

    .line 225
    .line 226
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 227
    .line 228
    .line 229
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->R0:Lcom/mycompany/app/view/MyLineText;

    .line 230
    .line 231
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 232
    .line 233
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 234
    .line 235
    .line 236
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->Q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 237
    .line 238
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 239
    .line 240
    .line 241
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->Q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 242
    .line 243
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 244
    .line 245
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 246
    .line 247
    .line 248
    goto/16 :goto_0

    .line 249
    .line 250
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 251
    .line 252
    const/high16 v2, -0x1000000

    .line 253
    .line 254
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 255
    .line 256
    .line 257
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 258
    .line 259
    const v3, -0xbbbbbc

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 263
    .line 264
    .line 265
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 266
    .line 267
    const v4, -0x70708

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 271
    .line 272
    .line 273
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 274
    .line 275
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 276
    .line 277
    .line 278
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 279
    .line 280
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 281
    .line 282
    .line 283
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 284
    .line 285
    const v5, -0x9e9e9f

    .line 286
    .line 287
    .line 288
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 289
    .line 290
    .line 291
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->n0:Lcom/mycompany/app/view/MyEditText;

    .line 292
    .line 293
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 294
    .line 295
    .line 296
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->o0:Landroid/widget/FrameLayout;

    .line 297
    .line 298
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 299
    .line 300
    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 301
    .line 302
    .line 303
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->p0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 304
    .line 305
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 306
    .line 307
    .line 308
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 309
    .line 310
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 311
    .line 312
    .line 313
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->t0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 314
    .line 315
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 316
    .line 317
    .line 318
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->t0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 319
    .line 320
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 321
    .line 322
    .line 323
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 324
    .line 325
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 326
    .line 327
    .line 328
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->v0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 329
    .line 330
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 331
    .line 332
    .line 333
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 334
    .line 335
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 336
    .line 337
    .line 338
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->x0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 339
    .line 340
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 341
    .line 342
    .line 343
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 344
    .line 345
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 346
    .line 347
    .line 348
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->z0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 349
    .line 350
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 351
    .line 352
    .line 353
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->A0:Lcom/mycompany/app/view/MyLineText;

    .line 354
    .line 355
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 356
    .line 357
    .line 358
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->C0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 359
    .line 360
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 361
    .line 362
    .line 363
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->C0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 364
    .line 365
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 366
    .line 367
    .line 368
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->D0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 369
    .line 370
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 371
    .line 372
    .line 373
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->E0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 374
    .line 375
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 376
    .line 377
    .line 378
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->F0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 379
    .line 380
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 381
    .line 382
    .line 383
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->G0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 384
    .line 385
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 386
    .line 387
    .line 388
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->H0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 389
    .line 390
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 391
    .line 392
    .line 393
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->I0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 394
    .line 395
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 396
    .line 397
    .line 398
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->K0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 399
    .line 400
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 401
    .line 402
    .line 403
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->K0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 404
    .line 405
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 406
    .line 407
    .line 408
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->L0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 409
    .line 410
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 411
    .line 412
    .line 413
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->M0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 414
    .line 415
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 416
    .line 417
    .line 418
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->O0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 419
    .line 420
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 421
    .line 422
    .line 423
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->P0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 424
    .line 425
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 426
    .line 427
    .line 428
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->R0:Lcom/mycompany/app/view/MyLineText;

    .line 429
    .line 430
    const v2, -0xe19938

    .line 431
    .line 432
    .line 433
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 434
    .line 435
    .line 436
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->R0:Lcom/mycompany/app/view/MyLineText;

    .line 437
    .line 438
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 439
    .line 440
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 441
    .line 442
    .line 443
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->Q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 444
    .line 445
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 446
    .line 447
    .line 448
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->Q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 449
    .line 450
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 451
    .line 452
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 453
    .line 454
    .line 455
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->Z0:Ljava/util/List;

    .line 456
    .line 457
    if-eqz v1, :cond_2

    .line 458
    .line 459
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 460
    .line 461
    .line 462
    move-result v1

    .line 463
    goto :goto_1

    .line 464
    :cond_2
    const/4 v1, 0x0

    .line 465
    :goto_1
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownZip;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 466
    .line 467
    new-instance v3, Ljava/lang/StringBuilder;

    .line 468
    .line 469
    const-string v4, ""

    .line 470
    .line 471
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v1

    .line 481
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    .line 483
    .line 484
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 485
    .line 486
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownZip;->X0:Ljava/lang/String;

    .line 487
    .line 488
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    .line 490
    .line 491
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->Y0:Ljava/lang/String;

    .line 492
    .line 493
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogDownZip;->H(Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->n0:Lcom/mycompany/app/view/MyEditText;

    .line 497
    .line 498
    const/4 v2, 0x1

    .line 499
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    .line 500
    .line 501
    .line 502
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->n0:Lcom/mycompany/app/view/MyEditText;

    .line 503
    .line 504
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownZip$3;

    .line 505
    .line 506
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownZip$3;-><init>(Lcom/mycompany/app/dialog/DialogDownZip;)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 510
    .line 511
    .line 512
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->n0:Lcom/mycompany/app/view/MyEditText;

    .line 513
    .line 514
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownZip$4;

    .line 515
    .line 516
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownZip$4;-><init>(Lcom/mycompany/app/dialog/DialogDownZip;)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 520
    .line 521
    .line 522
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->o0:Landroid/widget/FrameLayout;

    .line 523
    .line 524
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownZip$5;

    .line 525
    .line 526
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownZip$5;-><init>(Lcom/mycompany/app/dialog/DialogDownZip;)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 530
    .line 531
    .line 532
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->Q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 533
    .line 534
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownZip$6;

    .line 535
    .line 536
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownZip$6;-><init>(Lcom/mycompany/app/dialog/DialogDownZip;)V

    .line 537
    .line 538
    .line 539
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 540
    .line 541
    .line 542
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->R0:Lcom/mycompany/app/view/MyLineText;

    .line 543
    .line 544
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownZip$7;

    .line 545
    .line 546
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownZip$7;-><init>(Lcom/mycompany/app/dialog/DialogDownZip;)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 550
    .line 551
    .line 552
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 553
    .line 554
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownZip$8;

    .line 555
    .line 556
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownZip$8;-><init>(Lcom/mycompany/app/dialog/DialogDownZip;)V

    .line 557
    .line 558
    .line 559
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 560
    .line 561
    .line 562
    :cond_3
    :goto_2
    return-void
.end method
