.class Lcom/mycompany/app/dialog/DialogTabMini$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogTabMini;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMini;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMini$9;->a:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 10

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMini$9;->a:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogTabMini;->k0:Lcom/mycompany/app/view/MyDialogMenu;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_5

    .line 8
    .line 9
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/view/MyDialogBottom;->t:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 10
    .line 11
    if-eqz v0, :cond_8

    .line 12
    .line 13
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogTabMini;->b0:Landroid/content/Context;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    goto/16 :goto_4

    .line 18
    .line 19
    :cond_1
    new-instance v1, Lcom/mycompany/app/view/MyLineLinear;

    .line 20
    .line 21
    invoke-direct {v1, v0}, Lcom/mycompany/app/view/MyLineLinear;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 29
    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/16 v4, 0x11

    .line 33
    .line 34
    const/4 v5, 0x1

    .line 35
    const/high16 v6, 0x41800000    # 16.0f

    .line 36
    .line 37
    invoke-static {v0, v3, v4, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->C(Landroid/content/Context;Landroid/util/AttributeSet;IIF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    sget v7, Lnet/kaki87/soul2/testing/R$string;->delete_all:I

    .line 42
    .line 43
    const/4 v8, -0x1

    .line 44
    invoke-static {v3, v7, v2, v8}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->e(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/LinearLayout$LayoutParams;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    const/high16 v9, 0x3f800000    # 1.0f

    .line 49
    .line 50
    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 51
    .line 52
    invoke-virtual {v1, v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    .line 54
    .line 55
    new-instance v7, Lcom/mycompany/app/view/MyLineText;

    .line 56
    .line 57
    invoke-direct {v7, v0}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v7, v0}, Lcom/mycompany/app/view/MyLineText;->r(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v7, v5, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 67
    .line 68
    .line 69
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 70
    .line 71
    invoke-direct {v0, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 72
    .line 73
    .line 74
    iput v9, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 75
    .line 76
    invoke-virtual {v1, v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    .line 78
    .line 79
    iput-object v1, p1, Lcom/mycompany/app/dialog/DialogTabMini;->z0:Lcom/mycompany/app/view/MyLineLinear;

    .line 80
    .line 81
    iput-object v7, p1, Lcom/mycompany/app/dialog/DialogTabMini;->A0:Lcom/mycompany/app/view/MyLineText;

    .line 82
    .line 83
    iput-object v3, p1, Lcom/mycompany/app/dialog/DialogTabMini;->B0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 84
    .line 85
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 86
    .line 87
    if-eqz v0, :cond_2

    .line 88
    .line 89
    const/high16 v0, -0x1000000

    .line 90
    .line 91
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogTabMini;->A0:Lcom/mycompany/app/view/MyLineText;

    .line 95
    .line 96
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogTabMini;->B0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 102
    .line 103
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogTabMini;->A0:Lcom/mycompany/app/view/MyLineText;

    .line 109
    .line 110
    const v1, -0x50506

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_2
    const v0, -0x70708

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogTabMini;->A0:Lcom/mycompany/app/view/MyLineText;

    .line 124
    .line 125
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_gray:I

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogTabMini;->B0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 131
    .line 132
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_gray:I

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 135
    .line 136
    .line 137
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogTabMini;->A0:Lcom/mycompany/app/view/MyLineText;

    .line 138
    .line 139
    const v1, -0xe19938

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    .line 144
    .line 145
    :goto_0
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogTabMini;->z0:Lcom/mycompany/app/view/MyLineLinear;

    .line 146
    .line 147
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->l1()I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyLineLinear;->setFilterColor(I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogTabMini;->W()V

    .line 155
    .line 156
    .line 157
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogTabMini;->A0:Lcom/mycompany/app/view/MyLineText;

    .line 158
    .line 159
    new-instance v1, Lcom/mycompany/app/dialog/DialogTabMini$15;

    .line 160
    .line 161
    invoke-direct {v1, p1}, Lcom/mycompany/app/dialog/DialogTabMini$15;-><init>(Lcom/mycompany/app/dialog/DialogTabMini;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    .line 166
    .line 167
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogTabMini;->B0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 168
    .line 169
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 170
    .line 171
    .line 172
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogTabMini;->B0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 173
    .line 174
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 175
    .line 176
    if-eqz v1, :cond_3

    .line 177
    .line 178
    const v1, -0x7f7f80

    .line 179
    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_3
    const v1, -0x252526

    .line 183
    .line 184
    .line 185
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 186
    .line 187
    .line 188
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogTabMini;->B0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 189
    .line 190
    new-instance v1, Lcom/mycompany/app/dialog/DialogTabMini$16;

    .line 191
    .line 192
    invoke-direct {v1, p1}, Lcom/mycompany/app/dialog/DialogTabMini$16;-><init>(Lcom/mycompany/app/dialog/DialogTabMini;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    .line 197
    .line 198
    :try_start_0
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 199
    .line 200
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 201
    .line 202
    invoke-direct {v0, v8, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    .line 203
    .line 204
    .line 205
    const/16 v1, 0x50

    .line 206
    .line 207
    iput v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->c:I

    .line 208
    .line 209
    iget-object v1, p1, Lcom/mycompany/app/view/MyDialogBottom;->t:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 210
    .line 211
    iget-object v2, p1, Lcom/mycompany/app/dialog/DialogTabMini;->z0:Lcom/mycompany/app/view/MyLineLinear;

    .line 212
    .line 213
    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .line 215
    .line 216
    goto :goto_2

    .line 217
    :catch_0
    iget-object v0, p1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 218
    .line 219
    if-nez v0, :cond_4

    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_4
    new-instance v1, Lcom/mycompany/app/dialog/DialogTabMini$14;

    .line 223
    .line 224
    invoke-direct {v1, p1}, Lcom/mycompany/app/dialog/DialogTabMini$14;-><init>(Lcom/mycompany/app/dialog/DialogTabMini;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 228
    .line 229
    .line 230
    :goto_2
    sget v0, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 231
    .line 232
    iget-object v1, p1, Lcom/mycompany/app/view/MyDialogBottom;->t:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 233
    .line 234
    if-nez v1, :cond_5

    .line 235
    .line 236
    goto :goto_4

    .line 237
    :cond_5
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->l1()I

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    if-eqz v1, :cond_6

    .line 242
    .line 243
    goto :goto_4

    .line 244
    :cond_6
    new-instance v1, Landroid/view/View;

    .line 245
    .line 246
    iget-object v2, p1, Lcom/mycompany/app/dialog/DialogTabMini;->b0:Landroid/content/Context;

    .line 247
    .line 248
    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 249
    .line 250
    .line 251
    new-instance v2, Landroid/view/View;

    .line 252
    .line 253
    iget-object v3, p1, Lcom/mycompany/app/dialog/DialogTabMini;->b0:Landroid/content/Context;

    .line 254
    .line 255
    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 256
    .line 257
    .line 258
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 259
    .line 260
    if-eqz v3, :cond_7

    .line 261
    .line 262
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->round_bot_left_b:I

    .line 263
    .line 264
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 265
    .line 266
    .line 267
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->round_bot_right_b:I

    .line 268
    .line 269
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 270
    .line 271
    .line 272
    goto :goto_3

    .line 273
    :cond_7
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->round_bot_left_g:I

    .line 274
    .line 275
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 276
    .line 277
    .line 278
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->round_bot_right_g:I

    .line 279
    .line 280
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 281
    .line 282
    .line 283
    :goto_3
    new-instance v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 284
    .line 285
    sget v4, Lcom/mycompany/app/main/MainApp;->m1:I

    .line 286
    .line 287
    invoke-direct {v3, v4, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    .line 288
    .line 289
    .line 290
    const v4, 0x800053

    .line 291
    .line 292
    .line 293
    iput v4, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->c:I

    .line 294
    .line 295
    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 296
    .line 297
    new-instance v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 298
    .line 299
    sget v5, Lcom/mycompany/app/main/MainApp;->m1:I

    .line 300
    .line 301
    invoke-direct {v4, v5, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    .line 302
    .line 303
    .line 304
    const v5, 0x800055

    .line 305
    .line 306
    .line 307
    iput v5, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->c:I

    .line 308
    .line 309
    iput v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 310
    .line 311
    :try_start_1
    iget-object v0, p1, Lcom/mycompany/app/view/MyDialogBottom;->t:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 312
    .line 313
    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    .line 315
    .line 316
    iget-object v0, p1, Lcom/mycompany/app/view/MyDialogBottom;->t:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 317
    .line 318
    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 319
    .line 320
    .line 321
    :catch_1
    :cond_8
    :goto_4
    iget-object v0, p1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 322
    .line 323
    if-nez v0, :cond_9

    .line 324
    .line 325
    goto :goto_5

    .line 326
    :cond_9
    new-instance v1, Lcom/mycompany/app/dialog/DialogTabMini$10;

    .line 327
    .line 328
    invoke-direct {v1, p1}, Lcom/mycompany/app/dialog/DialogTabMini$10;-><init>(Lcom/mycompany/app/dialog/DialogTabMini;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 332
    .line 333
    .line 334
    :goto_5
    return-void
.end method
