.class Lcom/mycompany/app/web/WebViewActivity$411$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$411;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$411;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$411$1;->c:Lcom/mycompany/app/web/WebViewActivity$411;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$411$1;->c:Lcom/mycompany/app/web/WebViewActivity$411;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$411;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Gl:Lcom/mycompany/app/web/WebTransControl;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Hl:Landroid/view/View;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Gl:Lcom/mycompany/app/web/WebTransControl;

    .line 11
    .line 12
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Hl:Landroid/view/View;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto/16 :goto_9

    .line 17
    .line 18
    :cond_0
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->V6:Lcom/mycompany/app/web/WebTransControl;

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    goto/16 :goto_9

    .line 23
    .line 24
    :cond_1
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->V6:Lcom/mycompany/app/web/WebTransControl;

    .line 25
    .line 26
    sget-boolean v1, Lcom/mycompany/app/pref/PrefAlbum;->w:Z

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    const/4 v4, 0x0

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->T6:Lcom/mycompany/app/wview/WebFltView;

    .line 33
    .line 34
    if-eqz v1, :cond_4

    .line 35
    .line 36
    invoke-virtual {v1, v3}, Lcom/mycompany/app/wview/WebFltView;->setHideBlocked(Z)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    sget-boolean v1, Lcom/mycompany/app/pref/PrefAlbum;->x:Z

    .line 41
    .line 42
    if-eqz v1, :cond_4

    .line 43
    .line 44
    sput-boolean v4, Lcom/mycompany/app/pref/PrefAlbum;->x:Z

    .line 45
    .line 46
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 47
    .line 48
    const-string v5, "mTransNoti"

    .line 49
    .line 50
    invoke-static {v4, v1, v5, v4}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 51
    .line 52
    .line 53
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->o2:Lcom/mycompany/app/view/MyBarView;

    .line 54
    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyBarView;->setAddrNoti(Z)V

    .line 58
    .line 59
    .line 60
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->p2:Lcom/mycompany/app/view/MyBarView;

    .line 61
    .line 62
    if-eqz v1, :cond_4

    .line 63
    .line 64
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyBarView;->setAddrNoti(Z)V

    .line 65
    .line 66
    .line 67
    :cond_4
    :goto_0
    :try_start_0
    sget-boolean v1, Lcom/mycompany/app/pref/PrefAlbum;->w:Z

    .line 68
    .line 69
    if-nez v1, :cond_6

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->O5()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_5

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_5
    move v1, v4

    .line 79
    goto :goto_2

    .line 80
    :cond_6
    :goto_1
    move v1, v3

    .line 81
    :goto_2
    const/4 v5, 0x2

    .line 82
    new-array v6, v5, [I

    .line 83
    .line 84
    iget-object v7, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 85
    .line 86
    invoke-virtual {v7, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 87
    .line 88
    .line 89
    aget v7, v6, v4

    .line 90
    .line 91
    iget-object v8, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 92
    .line 93
    invoke-virtual {v8}, Landroid/view/View;->getPaddingLeft()I

    .line 94
    .line 95
    .line 96
    move-result v8

    .line 97
    add-int/2addr v7, v8

    .line 98
    aget v8, v6, v3

    .line 99
    .line 100
    iget-object v9, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 101
    .line 102
    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    .line 103
    .line 104
    .line 105
    move-result v9

    .line 106
    add-int/2addr v8, v9

    .line 107
    iget-object v9, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 108
    .line 109
    invoke-virtual {v9}, Lcom/mycompany/app/view/MyWebBody;->getRectWidth()I

    .line 110
    .line 111
    .line 112
    move-result v9

    .line 113
    iget-object v10, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 114
    .line 115
    invoke-virtual {v10}, Lcom/mycompany/app/view/MyWebBody;->getRectHeight()I

    .line 116
    .line 117
    .line 118
    move-result v10

    .line 119
    invoke-virtual {v2, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 120
    .line 121
    .line 122
    aget v11, v6, v4

    .line 123
    .line 124
    sub-int/2addr v11, v7

    .line 125
    aget v3, v6, v3

    .line 126
    .line 127
    sub-int/2addr v3, v8

    .line 128
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    add-int/2addr v11, v6

    .line 137
    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 138
    .line 139
    div-int/lit8 v7, v6, 0x2

    .line 140
    .line 141
    sub-int/2addr v11, v7

    .line 142
    if-le v11, v9, :cond_7

    .line 143
    .line 144
    move v11, v9

    .line 145
    :cond_7
    if-gez v11, :cond_8

    .line 146
    .line 147
    move v11, v4

    .line 148
    :cond_8
    const/4 v7, -0x1

    .line 149
    if-gt v9, v10, :cond_9

    .line 150
    .line 151
    :goto_3
    move v8, v4

    .line 152
    move v6, v7

    .line 153
    goto :goto_4

    .line 154
    :cond_9
    mul-int/lit8 v6, v6, 0x7

    .line 155
    .line 156
    if-gt v9, v6, :cond_a

    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_a
    div-int/lit8 v8, v6, 0x2

    .line 160
    .line 161
    sub-int v8, v11, v8

    .line 162
    .line 163
    sub-int v12, v9, v6

    .line 164
    .line 165
    if-le v8, v12, :cond_b

    .line 166
    .line 167
    move v8, v12

    .line 168
    :cond_b
    if-gez v8, :cond_c

    .line 169
    .line 170
    move v8, v4

    .line 171
    :cond_c
    sub-int/2addr v11, v8

    .line 172
    sub-int v12, v9, v8

    .line 173
    .line 174
    if-le v11, v12, :cond_d

    .line 175
    .line 176
    move v11, v12

    .line 177
    :cond_d
    if-gez v11, :cond_e

    .line 178
    .line 179
    move v11, v4

    .line 180
    :cond_e
    :goto_4
    sget v12, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 181
    .line 182
    mul-int/lit8 v12, v12, 0x9

    .line 183
    .line 184
    if-eqz v1, :cond_f

    .line 185
    .line 186
    sub-int v1, v3, v12

    .line 187
    .line 188
    move v13, v12

    .line 189
    goto :goto_5

    .line 190
    :cond_f
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 191
    .line 192
    add-int/2addr v1, v3

    .line 193
    move v13, v4

    .line 194
    :goto_5
    sub-int v14, v10, v12

    .line 195
    .line 196
    if-le v1, v14, :cond_10

    .line 197
    .line 198
    move v1, v14

    .line 199
    :cond_10
    if-gez v1, :cond_14

    .line 200
    .line 201
    div-int/2addr v2, v5

    .line 202
    add-int/2addr v3, v2

    .line 203
    if-le v3, v12, :cond_11

    .line 204
    .line 205
    move v3, v12

    .line 206
    :cond_11
    if-le v3, v10, :cond_12

    .line 207
    .line 208
    goto :goto_6

    .line 209
    :cond_12
    move v10, v3

    .line 210
    :goto_6
    move v1, v4

    .line 211
    if-gez v10, :cond_13

    .line 212
    .line 213
    goto :goto_7

    .line 214
    :cond_13
    move v4, v10

    .line 215
    goto :goto_7

    .line 216
    :cond_14
    move v4, v13

    .line 217
    :goto_7
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->V6:Lcom/mycompany/app/web/WebTransControl;

    .line 218
    .line 219
    iput v11, v2, Lcom/mycompany/app/web/WebTransControl;->t:I

    .line 220
    .line 221
    iput v4, v2, Lcom/mycompany/app/web/WebTransControl;->u:I

    .line 222
    .line 223
    const/4 v3, 0x4

    .line 224
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 225
    .line 226
    .line 227
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->V6:Lcom/mycompany/app/web/WebTransControl;

    .line 228
    .line 229
    new-instance v3, Lcom/mycompany/app/web/WebViewActivity$412;

    .line 230
    .line 231
    invoke-direct {v3, v0}, Lcom/mycompany/app/web/WebViewActivity$412;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v2, v3}, Lcom/mycompany/app/web/WebTransControl;->setListener(Lcom/mycompany/app/web/WebTransControl$TransCtrlListener;)V

    .line 235
    .line 236
    .line 237
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 238
    .line 239
    invoke-direct {v2, v6, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 240
    .line 241
    .line 242
    if-eq v6, v7, :cond_16

    .line 243
    .line 244
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->j1:Z

    .line 245
    .line 246
    if-eqz v3, :cond_15

    .line 247
    .line 248
    add-int/2addr v8, v6

    .line 249
    sub-int/2addr v9, v8

    .line 250
    iput v9, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 251
    .line 252
    goto :goto_8

    .line 253
    :cond_15
    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 254
    .line 255
    :cond_16
    :goto_8
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 256
    .line 257
    new-instance v1, Landroid/widget/FrameLayout;

    .line 258
    .line 259
    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 260
    .line 261
    .line 262
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->W6:Landroid/widget/FrameLayout;

    .line 263
    .line 264
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->V6:Lcom/mycompany/app/web/WebTransControl;

    .line 265
    .line 266
    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    .line 268
    .line 269
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->W6:Landroid/widget/FrameLayout;

    .line 270
    .line 271
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$413;

    .line 272
    .line 273
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$413;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    .line 278
    .line 279
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 280
    .line 281
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->W6:Landroid/widget/FrameLayout;

    .line 282
    .line 283
    invoke-virtual {v1, v2, v7, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 284
    .line 285
    .line 286
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 287
    .line 288
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$414;

    .line 289
    .line 290
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$414;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    .line 295
    .line 296
    :catch_0
    :goto_9
    return-void
.end method
