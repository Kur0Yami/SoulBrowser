.class Lcom/mycompany/app/dialog/DialogMenuList$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogMenuList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogMenuList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogMenuList$14;->c:Lcom/mycompany/app/dialog/DialogMenuList;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogMenuList$14;->c:Lcom/mycompany/app/dialog/DialogMenuList;

    .line 4
    .line 5
    iget-boolean v2, v1, Lcom/mycompany/app/dialog/DialogMenuList;->h:Z

    .line 6
    .line 7
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogMenuList;->g:[I

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    array-length v3, v3

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v3, v4

    .line 15
    :goto_0
    if-nez v3, :cond_1

    .line 16
    .line 17
    goto/16 :goto_3

    .line 18
    .line 19
    :cond_1
    if-eqz v2, :cond_2

    .line 20
    .line 21
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogMenuList;->o:Lcom/mycompany/app/view/MyRoundLinear;

    .line 22
    .line 23
    if-nez v3, :cond_5

    .line 24
    .line 25
    goto/16 :goto_3

    .line 26
    .line 27
    :cond_2
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogMenuList;->m:Landroid/view/ViewGroup;

    .line 28
    .line 29
    if-nez v3, :cond_3

    .line 30
    .line 31
    goto/16 :goto_3

    .line 32
    .line 33
    :cond_3
    new-instance v3, Landroid/view/View;

    .line 34
    .line 35
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogMenuList;->b:Landroid/content/Context;

    .line 36
    .line 37
    invoke-direct {v3, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    new-instance v5, Landroid/view/View;

    .line 41
    .line 42
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogMenuList;->b:Landroid/content/Context;

    .line 43
    .line 44
    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 45
    .line 46
    .line 47
    sget-boolean v6, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 48
    .line 49
    if-eqz v6, :cond_4

    .line 50
    .line 51
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->round_bot_left_b:I

    .line 52
    .line 53
    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 54
    .line 55
    .line 56
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->round_bot_right_b:I

    .line 57
    .line 58
    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_4
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->round_bot_left_g:I

    .line 63
    .line 64
    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 65
    .line 66
    .line 67
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->round_bot_right_g:I

    .line 68
    .line 69
    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 70
    .line 71
    .line 72
    :goto_1
    new-instance v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 73
    .line 74
    sget v7, Lcom/mycompany/app/main/MainApp;->m1:I

    .line 75
    .line 76
    invoke-direct {v6, v7, v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    .line 77
    .line 78
    .line 79
    const v7, 0x800053

    .line 80
    .line 81
    .line 82
    iput v7, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->c:I

    .line 83
    .line 84
    sget v7, Lcom/mycompany/app/pref/PrefPdf;->y:I

    .line 85
    .line 86
    iput v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 87
    .line 88
    new-instance v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 89
    .line 90
    sget v8, Lcom/mycompany/app/main/MainApp;->m1:I

    .line 91
    .line 92
    invoke-direct {v7, v8, v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    .line 93
    .line 94
    .line 95
    const v8, 0x800055

    .line 96
    .line 97
    .line 98
    iput v8, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->c:I

    .line 99
    .line 100
    sget v8, Lcom/mycompany/app/pref/PrefPdf;->y:I

    .line 101
    .line 102
    iput v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 103
    .line 104
    :try_start_0
    iget-object v8, v1, Lcom/mycompany/app/dialog/DialogMenuList;->m:Landroid/view/ViewGroup;

    .line 105
    .line 106
    invoke-virtual {v8, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    .line 108
    .line 109
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogMenuList;->m:Landroid/view/ViewGroup;

    .line 110
    .line 111
    invoke-virtual {v3, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    .line 114
    :catch_0
    :cond_5
    invoke-static {v4, v4}, Lcom/mycompany/app/main/MainUtil;->s0(IZ)I

    .line 115
    .line 116
    .line 117
    move-result v18

    .line 118
    new-instance v8, Lcom/mycompany/app/view/MyBarView;

    .line 119
    .line 120
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogMenuList;->b:Landroid/content/Context;

    .line 121
    .line 122
    invoke-direct {v8, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 123
    .line 124
    .line 125
    iput-object v8, v1, Lcom/mycompany/app/dialog/DialogMenuList;->x:Lcom/mycompany/app/view/MyBarView;

    .line 126
    .line 127
    iget-object v9, v1, Lcom/mycompany/app/dialog/DialogMenuList;->b:Landroid/content/Context;

    .line 128
    .line 129
    iget-object v10, v1, Lcom/mycompany/app/dialog/DialogMenuList;->g:[I

    .line 130
    .line 131
    const/16 v20, 0x0

    .line 132
    .line 133
    const/16 v21, 0x0

    .line 134
    .line 135
    const/4 v11, 0x0

    .line 136
    const/4 v12, 0x0

    .line 137
    const/4 v13, 0x0

    .line 138
    const/4 v14, 0x0

    .line 139
    const/4 v15, 0x0

    .line 140
    const/16 v16, 0x0

    .line 141
    .line 142
    const/16 v17, 0x0

    .line 143
    .line 144
    const/16 v19, 0x0

    .line 145
    .line 146
    invoke-virtual/range {v8 .. v21}, Lcom/mycompany/app/view/MyBarView;->a(Landroid/content/Context;[ILjava/lang/String;Ljava/lang/String;IZIIZIIII)V

    .line 147
    .line 148
    .line 149
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogMenuList;->x:Lcom/mycompany/app/view/MyBarView;

    .line 150
    .line 151
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 152
    .line 153
    if-eqz v5, :cond_6

    .line 154
    .line 155
    const/high16 v5, -0x1000000

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_6
    const v5, -0x70708

    .line 159
    .line 160
    .line 161
    :goto_2
    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 162
    .line 163
    .line 164
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogMenuList;->x:Lcom/mycompany/app/view/MyBarView;

    .line 165
    .line 166
    new-instance v5, Lcom/mycompany/app/dialog/DialogMenuList$15;

    .line 167
    .line 168
    invoke-direct {v5, v1}, Lcom/mycompany/app/dialog/DialogMenuList$15;-><init>(Lcom/mycompany/app/dialog/DialogMenuList;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3, v5}, Lcom/mycompany/app/view/MyBarView;->setListener(Lcom/mycompany/app/view/MyBarView$BarListener;)V

    .line 172
    .line 173
    .line 174
    const/4 v3, -0x1

    .line 175
    if-eqz v2, :cond_7

    .line 176
    .line 177
    :try_start_1
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuList;->o:Lcom/mycompany/app/view/MyRoundLinear;

    .line 178
    .line 179
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogMenuList;->x:Lcom/mycompany/app/view/MyBarView;

    .line 180
    .line 181
    sget v6, Lcom/mycompany/app/pref/PrefPdf;->y:I

    .line 182
    .line 183
    invoke-virtual {v2, v5, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 184
    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_7
    new-instance v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 188
    .line 189
    sget v5, Lcom/mycompany/app/pref/PrefPdf;->y:I

    .line 190
    .line 191
    invoke-direct {v2, v3, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    .line 192
    .line 193
    .line 194
    const/16 v3, 0x50

    .line 195
    .line 196
    iput v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->c:I

    .line 197
    .line 198
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogMenuList;->m:Landroid/view/ViewGroup;

    .line 199
    .line 200
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogMenuList;->x:Lcom/mycompany/app/view/MyBarView;

    .line 201
    .line 202
    invoke-virtual {v3, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 203
    .line 204
    .line 205
    goto :goto_3

    .line 206
    :catch_1
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuList;->o:Lcom/mycompany/app/view/MyRoundLinear;

    .line 207
    .line 208
    if-nez v2, :cond_8

    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_8
    new-instance v3, Lcom/mycompany/app/dialog/DialogMenuList$9;

    .line 212
    .line 213
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogMenuList$9;-><init>(Lcom/mycompany/app/dialog/DialogMenuList;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 217
    .line 218
    .line 219
    :goto_3
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuList;->m:Landroid/view/ViewGroup;

    .line 220
    .line 221
    if-eqz v2, :cond_a

    .line 222
    .line 223
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogMenuList;->A:Landroid/animation/ValueAnimator;

    .line 224
    .line 225
    if-nez v3, :cond_a

    .line 226
    .line 227
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogMenuList;->B:Landroid/animation/ValueAnimator;

    .line 228
    .line 229
    if-eqz v3, :cond_9

    .line 230
    .line 231
    goto :goto_4

    .line 232
    :cond_9
    iget v3, v1, Lcom/mycompany/app/dialog/DialogMenuList;->y:I

    .line 233
    .line 234
    int-to-float v3, v3

    .line 235
    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotX(F)V

    .line 236
    .line 237
    .line 238
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuList;->m:Landroid/view/ViewGroup;

    .line 239
    .line 240
    iget v3, v1, Lcom/mycompany/app/dialog/DialogMenuList;->z:I

    .line 241
    .line 242
    int-to-float v3, v3

    .line 243
    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    .line 244
    .line 245
    .line 246
    const/4 v2, 0x0

    .line 247
    iput v2, v1, Lcom/mycompany/app/dialog/DialogMenuList;->F:F

    .line 248
    .line 249
    iput-boolean v4, v1, Lcom/mycompany/app/dialog/DialogMenuList;->G:Z

    .line 250
    .line 251
    const/4 v2, 0x2

    .line 252
    new-array v2, v2, [F

    .line 253
    .line 254
    fill-array-data v2, :array_0

    .line 255
    .line 256
    .line 257
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuList;->A:Landroid/animation/ValueAnimator;

    .line 262
    .line 263
    const-wide/16 v3, 0xc8

    .line 264
    .line 265
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 266
    .line 267
    .line 268
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuList;->A:Landroid/animation/ValueAnimator;

    .line 269
    .line 270
    invoke-static {v2}, Lcom/mycompany/app/dialog/a;->v(Landroid/animation/ValueAnimator;)V

    .line 271
    .line 272
    .line 273
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuList;->A:Landroid/animation/ValueAnimator;

    .line 274
    .line 275
    new-instance v3, Lcom/mycompany/app/dialog/DialogMenuList$19;

    .line 276
    .line 277
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogMenuList$19;-><init>(Lcom/mycompany/app/dialog/DialogMenuList;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 281
    .line 282
    .line 283
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuList;->A:Landroid/animation/ValueAnimator;

    .line 284
    .line 285
    new-instance v3, Lcom/mycompany/app/dialog/DialogMenuList$20;

    .line 286
    .line 287
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogMenuList$20;-><init>(Lcom/mycompany/app/dialog/DialogMenuList;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 291
    .line 292
    .line 293
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogMenuList;->A:Landroid/animation/ValueAnimator;

    .line 294
    .line 295
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 296
    .line 297
    .line 298
    :cond_a
    :goto_4
    return-void

    .line 299
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
