.class Lcom/mycompany/app/dialog/DialogImageBack$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogImageBack;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogImageBack;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogImageBack$1;->c:Lcom/mycompany/app/dialog/DialogImageBack;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageBack$1;->c:Lcom/mycompany/app/dialog/DialogImageBack;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogImageBack;->a0:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_0
    new-instance v3, Landroid/widget/LinearLayout;

    .line 12
    .line 13
    invoke-direct {v3, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 18
    .line 19
    .line 20
    new-instance v5, Landroid/view/View;

    .line 21
    .line 22
    invoke-direct {v5, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 26
    .line 27
    const/4 v7, -0x1

    .line 28
    const/4 v8, 0x0

    .line 29
    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 30
    .line 31
    .line 32
    const/high16 v9, 0x3f800000    # 1.0f

    .line 33
    .line 34
    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 35
    .line 36
    invoke-virtual {v3, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    .line 38
    .line 39
    const/high16 v5, 0x42a00000    # 80.0f

    .line 40
    .line 41
    invoke-static {v2, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    float-to-int v5, v5

    .line 46
    new-instance v6, Lcom/mycompany/app/view/MyButtonRelative;

    .line 47
    .line 48
    invoke-direct {v6, v2}, Lcom/mycompany/app/view/MyButtonRelative;-><init>(Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    sget v10, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 52
    .line 53
    invoke-virtual {v6, v10, v8}, Lcom/mycompany/app/view/MyButtonRelative;->e(IZ)V

    .line 54
    .line 55
    .line 56
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 57
    .line 58
    invoke-direct {v10, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 59
    .line 60
    .line 61
    iput v4, v10, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 62
    .line 63
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 64
    .line 65
    iput v5, v10, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 66
    .line 67
    invoke-virtual {v3, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    .line 69
    .line 70
    new-instance v5, Landroid/widget/ImageView;

    .line 71
    .line 72
    invoke-direct {v5, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 73
    .line 74
    .line 75
    sget-object v10, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 76
    .line 77
    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 78
    .line 79
    .line 80
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 81
    .line 82
    sget v11, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 83
    .line 84
    invoke-direct {v10, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 85
    .line 86
    .line 87
    const/16 v11, 0xd

    .line 88
    .line 89
    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v6, v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    .line 94
    .line 95
    new-instance v10, Lcom/mycompany/app/view/MyDialogLinear;

    .line 96
    .line 97
    invoke-direct {v10, v2}, Lcom/mycompany/app/view/MyDialogLinear;-><init>(Landroid/content/Context;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 101
    .line 102
    .line 103
    const/4 v11, -0x2

    .line 104
    invoke-virtual {v3, v10, v7, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 105
    .line 106
    .line 107
    new-instance v12, Landroid/widget/LinearLayout;

    .line 108
    .line 109
    invoke-direct {v12, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 110
    .line 111
    .line 112
    sget v13, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 113
    .line 114
    invoke-virtual {v12, v13, v13, v13, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v12, v8}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v12, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v10, v12, v7, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 124
    .line 125
    .line 126
    new-instance v13, Lcom/mycompany/app/view/MyButtonCheck;

    .line 127
    .line 128
    invoke-direct {v13, v2}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 129
    .line 130
    .line 131
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 132
    .line 133
    int-to-float v14, v14

    .line 134
    invoke-virtual {v13, v14}, Lcom/mycompany/app/view/MyButtonCheck;->setBgNorRadius(F)V

    .line 135
    .line 136
    .line 137
    sget v14, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 138
    .line 139
    invoke-static {v12, v13, v14, v14, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->c(Landroid/widget/LinearLayout;Lcom/mycompany/app/view/MyButtonCheck;IILandroid/content/Context;)Landroid/view/View;

    .line 140
    .line 141
    .line 142
    move-result-object v14

    .line 143
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 144
    .line 145
    invoke-direct {v15, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 146
    .line 147
    .line 148
    iput v9, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 149
    .line 150
    invoke-static {v12, v14, v15, v2}, Lcom/mycompany/app/dialog/a;->f(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;)Lcom/mycompany/app/view/MyButtonCheck;

    .line 151
    .line 152
    .line 153
    move-result-object v14

    .line 154
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 155
    .line 156
    int-to-float v15, v15

    .line 157
    invoke-virtual {v14, v15}, Lcom/mycompany/app/view/MyButtonCheck;->setBgNorRadius(F)V

    .line 158
    .line 159
    .line 160
    sget v15, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 161
    .line 162
    invoke-static {v12, v14, v15, v15, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->c(Landroid/widget/LinearLayout;Lcom/mycompany/app/view/MyButtonCheck;IILandroid/content/Context;)Landroid/view/View;

    .line 163
    .line 164
    .line 165
    move-result-object v15

    .line 166
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 167
    .line 168
    invoke-direct {v7, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 169
    .line 170
    .line 171
    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 172
    .line 173
    invoke-static {v12, v15, v7, v2}, Lcom/mycompany/app/dialog/a;->f(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;)Lcom/mycompany/app/view/MyButtonCheck;

    .line 174
    .line 175
    .line 176
    move-result-object v7

    .line 177
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 178
    .line 179
    int-to-float v15, v15

    .line 180
    invoke-virtual {v7, v15}, Lcom/mycompany/app/view/MyButtonCheck;->setBgNorRadius(F)V

    .line 181
    .line 182
    .line 183
    sget v15, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 184
    .line 185
    invoke-static {v12, v7, v15, v15, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->c(Landroid/widget/LinearLayout;Lcom/mycompany/app/view/MyButtonCheck;IILandroid/content/Context;)Landroid/view/View;

    .line 186
    .line 187
    .line 188
    move-result-object v15

    .line 189
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 190
    .line 191
    invoke-direct {v4, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 192
    .line 193
    .line 194
    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 195
    .line 196
    invoke-static {v12, v15, v4, v2}, Lcom/mycompany/app/dialog/a;->f(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;)Lcom/mycompany/app/view/MyButtonCheck;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 201
    .line 202
    int-to-float v15, v15

    .line 203
    invoke-virtual {v4, v15}, Lcom/mycompany/app/view/MyButtonCheck;->setBgNorRadius(F)V

    .line 204
    .line 205
    .line 206
    sget v15, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 207
    .line 208
    invoke-static {v12, v4, v15, v15, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->c(Landroid/widget/LinearLayout;Lcom/mycompany/app/view/MyButtonCheck;IILandroid/content/Context;)Landroid/view/View;

    .line 209
    .line 210
    .line 211
    move-result-object v15

    .line 212
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 213
    .line 214
    invoke-direct {v11, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 215
    .line 216
    .line 217
    iput v9, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 218
    .line 219
    invoke-static {v12, v15, v11, v2}, Lcom/mycompany/app/dialog/a;->f(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;)Lcom/mycompany/app/view/MyButtonCheck;

    .line 220
    .line 221
    .line 222
    move-result-object v11

    .line 223
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 224
    .line 225
    int-to-float v15, v15

    .line 226
    invoke-virtual {v11, v15}, Lcom/mycompany/app/view/MyButtonCheck;->setBgNorRadius(F)V

    .line 227
    .line 228
    .line 229
    sget v15, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 230
    .line 231
    invoke-static {v12, v11, v15, v15, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->c(Landroid/widget/LinearLayout;Lcom/mycompany/app/view/MyButtonCheck;IILandroid/content/Context;)Landroid/view/View;

    .line 232
    .line 233
    .line 234
    move-result-object v15

    .line 235
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 236
    .line 237
    invoke-direct {v0, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 238
    .line 239
    .line 240
    iput v9, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 241
    .line 242
    invoke-static {v12, v15, v0, v2}, Lcom/mycompany/app/dialog/a;->f(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;)Lcom/mycompany/app/view/MyButtonCheck;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 247
    .line 248
    int-to-float v9, v9

    .line 249
    invoke-virtual {v0, v9}, Lcom/mycompany/app/view/MyButtonCheck;->setBgNorRadius(F)V

    .line 250
    .line 251
    .line 252
    sget v9, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 253
    .line 254
    invoke-virtual {v12, v0, v9, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 255
    .line 256
    .line 257
    new-instance v9, Lcom/mycompany/app/view/MyPaletteView;

    .line 258
    .line 259
    invoke-direct {v9, v2}, Lcom/mycompany/app/view/MyPaletteView;-><init>(Landroid/content/Context;)V

    .line 260
    .line 261
    .line 262
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 263
    .line 264
    const/4 v15, -0x2

    .line 265
    invoke-direct {v12, v15, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 266
    .line 267
    .line 268
    const/4 v15, 0x1

    .line 269
    iput v15, v12, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 270
    .line 271
    move/from16 v17, v8

    .line 272
    .line 273
    sget v8, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 274
    .line 275
    iput v8, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 276
    .line 277
    invoke-virtual {v10, v9, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    .line 279
    .line 280
    new-instance v8, Lcom/mycompany/app/view/MyLineText;

    .line 281
    .line 282
    invoke-direct {v8, v2}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 283
    .line 284
    .line 285
    const/16 v2, 0x11

    .line 286
    .line 287
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 288
    .line 289
    .line 290
    const/high16 v2, 0x41800000    # 16.0f

    .line 291
    .line 292
    invoke-virtual {v8, v15, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 293
    .line 294
    .line 295
    sget v2, Lnet/kaki87/soul2/testing/R$string;->apply:I

    .line 296
    .line 297
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(I)V

    .line 298
    .line 299
    .line 300
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 301
    .line 302
    invoke-virtual {v8, v2}, Lcom/mycompany/app/view/MyLineText;->setLinePad(I)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v8, v15}, Lcom/mycompany/app/view/MyLineText;->setLineUp(Z)V

    .line 306
    .line 307
    .line 308
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 309
    .line 310
    const/4 v12, -0x1

    .line 311
    invoke-virtual {v10, v8, v12, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 312
    .line 313
    .line 314
    iput-object v3, v1, Lcom/mycompany/app/dialog/DialogImageBack;->c0:Landroid/widget/LinearLayout;

    .line 315
    .line 316
    iput-object v10, v1, Lcom/mycompany/app/dialog/DialogImageBack;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 317
    .line 318
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogImageBack;->e0:Lcom/mycompany/app/view/MyButtonRelative;

    .line 319
    .line 320
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogImageBack;->f0:Landroid/widget/ImageView;

    .line 321
    .line 322
    iput-object v9, v1, Lcom/mycompany/app/dialog/DialogImageBack;->h0:Lcom/mycompany/app/view/MyPaletteView;

    .line 323
    .line 324
    iput-object v8, v1, Lcom/mycompany/app/dialog/DialogImageBack;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 325
    .line 326
    sget-object v2, Lcom/mycompany/app/main/MainConst;->v:[I

    .line 327
    .line 328
    array-length v2, v2

    .line 329
    new-array v2, v2, [Lcom/mycompany/app/view/MyButtonCheck;

    .line 330
    .line 331
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogImageBack;->g0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 332
    .line 333
    aput-object v13, v2, v17

    .line 334
    .line 335
    const/16 v16, 0x1

    .line 336
    .line 337
    aput-object v14, v2, v16

    .line 338
    .line 339
    const/4 v3, 0x2

    .line 340
    aput-object v7, v2, v3

    .line 341
    .line 342
    const/4 v3, 0x3

    .line 343
    aput-object v4, v2, v3

    .line 344
    .line 345
    const/4 v3, 0x4

    .line 346
    aput-object v11, v2, v3

    .line 347
    .line 348
    const/4 v3, 0x5

    .line 349
    aput-object v0, v2, v3

    .line 350
    .line 351
    iget-object v0, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 352
    .line 353
    if-nez v0, :cond_1

    .line 354
    .line 355
    :goto_0
    return-void

    .line 356
    :cond_1
    new-instance v2, Lcom/mycompany/app/dialog/DialogImageBack$2;

    .line 357
    .line 358
    invoke-direct {v2, v1}, Lcom/mycompany/app/dialog/DialogImageBack$2;-><init>(Lcom/mycompany/app/dialog/DialogImageBack;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 362
    .line 363
    .line 364
    return-void
.end method
