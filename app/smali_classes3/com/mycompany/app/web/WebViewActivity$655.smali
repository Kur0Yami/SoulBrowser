.class Lcom/mycompany/app/web/WebViewActivity$655;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$655;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefRead;->y:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$655;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->da:Lcom/mycompany/app/view/MyFadeFrame;

    .line 9
    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto/16 :goto_0

    .line 17
    .line 18
    :cond_0
    new-instance v0, Lcom/mycompany/app/view/MyFadeFrame;

    .line 19
    .line 20
    invoke-direct {v0, v1}, Lcom/mycompany/app/view/MyFadeFrame;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->k3()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-virtual {v0, v3, v2, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 28
    .line 29
    .line 30
    iget-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 31
    .line 32
    const/high16 v4, 0x41f00000    # 30.0f

    .line 33
    .line 34
    invoke-static {v3, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    float-to-int v3, v3

    .line 39
    sget v4, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 40
    .line 41
    int-to-float v4, v4

    .line 42
    const/high16 v5, 0x40000000    # 2.0f

    .line 43
    .line 44
    div-float/2addr v4, v5

    .line 45
    float-to-int v4, v4

    .line 46
    new-instance v5, Lcom/mycompany/app/view/MyRoundFrame;

    .line 47
    .line 48
    invoke-direct {v5, v1}, Lcom/mycompany/app/view/MyRoundFrame;-><init>(Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 52
    .line 53
    invoke-virtual {v5, v6, v3, v6, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 54
    .line 55
    .line 56
    const v6, -0xe4a1e0

    .line 57
    .line 58
    .line 59
    sget v7, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 60
    .line 61
    invoke-virtual {v5, v6, v7}, Lcom/mycompany/app/view/MyRoundFrame;->c(II)V

    .line 62
    .line 63
    .line 64
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 65
    .line 66
    const/4 v7, -0x1

    .line 67
    const/4 v8, -0x2

    .line 68
    invoke-direct {v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 69
    .line 70
    .line 71
    const v9, 0x800053

    .line 72
    .line 73
    .line 74
    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 75
    .line 76
    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    .line 78
    .line 79
    new-instance v6, Landroid/widget/LinearLayout;

    .line 80
    .line 81
    invoke-direct {v6, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 82
    .line 83
    .line 84
    const/4 v9, 0x1

    .line 85
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 86
    .line 87
    .line 88
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 89
    .line 90
    invoke-direct {v10, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 91
    .line 92
    .line 93
    iput v9, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 94
    .line 95
    invoke-virtual {v5, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    .line 97
    .line 98
    new-instance v5, Landroidx/appcompat/widget/AppCompatTextView;

    .line 99
    .line 100
    const/4 v10, 0x0

    .line 101
    invoke-direct {v5, v1, v10}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    .line 103
    .line 104
    sget v10, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 105
    .line 106
    int-to-float v10, v10

    .line 107
    const/high16 v11, 0x3f800000    # 1.0f

    .line 108
    .line 109
    invoke-virtual {v5, v10, v11}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 110
    .line 111
    .line 112
    const/high16 v10, 0x41800000    # 16.0f

    .line 113
    .line 114
    invoke-virtual {v5, v9, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v6, v5, v8, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 121
    .line 122
    .line 123
    new-instance v10, Lcom/mycompany/app/view/MyButtonText;

    .line 124
    .line 125
    invoke-direct {v10, v1}, Lcom/mycompany/app/view/MyButtonText;-><init>(Landroid/content/Context;)V

    .line 126
    .line 127
    .line 128
    sget v11, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 129
    .line 130
    invoke-virtual {v10, v2, v11, v2, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 134
    .line 135
    .line 136
    const/high16 v11, 0x41600000    # 14.0f

    .line 137
    .line 138
    invoke-virtual {v10, v9, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v10, v9}, Lcom/mycompany/app/view/MyButtonText;->setRoundRect(Z)V

    .line 145
    .line 146
    .line 147
    sget v12, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 148
    .line 149
    invoke-virtual {v10, v12}, Lcom/mycompany/app/view/MyButtonText;->setRoundRadius(I)V

    .line 150
    .line 151
    .line 152
    sget v12, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 153
    .line 154
    invoke-virtual {v10, v7, v12}, Lcom/mycompany/app/view/MyButtonText;->v(II)V

    .line 155
    .line 156
    .line 157
    const v12, 0x44e0e0e0

    .line 158
    .line 159
    .line 160
    invoke-virtual {v10, v12}, Lcom/mycompany/app/view/MyButtonText;->setBgPreColor(I)V

    .line 161
    .line 162
    .line 163
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 164
    .line 165
    invoke-direct {v13, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 166
    .line 167
    .line 168
    iput v3, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 169
    .line 170
    sget v3, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 171
    .line 172
    invoke-virtual {v13, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 173
    .line 174
    .line 175
    sget v3, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 176
    .line 177
    invoke-virtual {v13, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v6, v10, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    .line 182
    .line 183
    new-instance v3, Lcom/mycompany/app/view/MyButtonText;

    .line 184
    .line 185
    invoke-direct {v3, v1}, Lcom/mycompany/app/view/MyButtonText;-><init>(Landroid/content/Context;)V

    .line 186
    .line 187
    .line 188
    sget v13, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 189
    .line 190
    invoke-virtual {v3, v2, v13, v2, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v3, v9, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v3, v9}, Lcom/mycompany/app/view/MyButtonText;->setRoundRect(Z)V

    .line 203
    .line 204
    .line 205
    sget v9, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 206
    .line 207
    invoke-virtual {v3, v9}, Lcom/mycompany/app/view/MyButtonText;->setRoundRadius(I)V

    .line 208
    .line 209
    .line 210
    sget v9, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 211
    .line 212
    invoke-virtual {v3, v7, v9}, Lcom/mycompany/app/view/MyButtonText;->v(II)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v3, v12}, Lcom/mycompany/app/view/MyButtonText;->setBgPreColor(I)V

    .line 216
    .line 217
    .line 218
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 219
    .line 220
    invoke-direct {v9, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 221
    .line 222
    .line 223
    iput v4, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 224
    .line 225
    sget v4, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 226
    .line 227
    invoke-virtual {v9, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 228
    .line 229
    .line 230
    sget v4, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 231
    .line 232
    invoke-virtual {v9, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v6, v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    .line 237
    .line 238
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->da:Lcom/mycompany/app/view/MyFadeFrame;

    .line 239
    .line 240
    sget v0, Lnet/kaki87/soul2/testing/R$string;->gesture_guide:I

    .line 241
    .line 242
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    .line 243
    .line 244
    .line 245
    sget v0, Lnet/kaki87/soul2/testing/R$string;->setting:I

    .line 246
    .line 247
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(I)V

    .line 248
    .line 249
    .line 250
    sget v0, Lnet/kaki87/soul2/testing/R$string;->ok:I

    .line 251
    .line 252
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 253
    .line 254
    .line 255
    new-instance v0, Lcom/mycompany/app/web/WebViewActivity$656;

    .line 256
    .line 257
    invoke-direct {v0, v1}, Lcom/mycompany/app/web/WebViewActivity$656;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v10, v0}, Lcom/mycompany/app/view/MyButtonText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    .line 262
    .line 263
    new-instance v0, Lcom/mycompany/app/web/WebViewActivity$657;

    .line 264
    .line 265
    invoke-direct {v0, v1}, Lcom/mycompany/app/web/WebViewActivity$657;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v3, v0}, Lcom/mycompany/app/view/MyButtonText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    .line 270
    .line 271
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->da:Lcom/mycompany/app/view/MyFadeFrame;

    .line 272
    .line 273
    new-instance v3, Lcom/mycompany/app/web/WebViewActivity$658;

    .line 274
    .line 275
    invoke-direct {v3, v1}, Lcom/mycompany/app/web/WebViewActivity$658;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyFadeFrame;->setSizeListener(Lcom/mycompany/app/image/ImageSizeListener;)V

    .line 279
    .line 280
    .line 281
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->da:Lcom/mycompany/app/view/MyFadeFrame;

    .line 282
    .line 283
    new-instance v3, Lcom/mycompany/app/web/WebViewActivity$659;

    .line 284
    .line 285
    invoke-direct {v3, v1}, Lcom/mycompany/app/web/WebViewActivity$659;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyFadeFrame;->setListener(Lcom/mycompany/app/view/MyFadeListener;)V

    .line 289
    .line 290
    .line 291
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->da:Lcom/mycompany/app/view/MyFadeFrame;

    .line 292
    .line 293
    new-instance v3, Lcom/mycompany/app/web/WebViewActivity$660;

    .line 294
    .line 295
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    .line 300
    .line 301
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 302
    .line 303
    iget-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->da:Lcom/mycompany/app/view/MyFadeFrame;

    .line 304
    .line 305
    invoke-virtual {v0, v3, v7, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 306
    .line 307
    .line 308
    goto :goto_0

    .line 309
    :cond_1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 310
    .line 311
    :cond_2
    :goto_0
    iput-boolean v2, v1, Lcom/mycompany/app/web/WebViewActivity;->Bo:Z

    .line 312
    .line 313
    return-void
.end method
