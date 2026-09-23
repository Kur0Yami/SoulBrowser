.class Lcom/mycompany/app/image/ImageViewListHori$55$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/image/ImageViewListHori$55;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewListHori$55;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewListHori$55$1;->c:Lcom/mycompany/app/image/ImageViewListHori$55;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewListHori$55$1;->c:Lcom/mycompany/app/image/ImageViewListHori$55;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewListHori$55;->c:Lcom/mycompany/app/image/ImageViewListHori;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->h1:Lcom/mycompany/app/web/WebTransOcrCtrl;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewListHori;->i1:Landroid/view/View;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    iput-object v3, v0, Lcom/mycompany/app/image/ImageViewListHori;->h1:Lcom/mycompany/app/web/WebTransOcrCtrl;

    .line 11
    .line 12
    iput-object v3, v0, Lcom/mycompany/app/image/ImageViewListHori;->i1:Landroid/view/View;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto/16 :goto_5

    .line 17
    .line 18
    :cond_0
    iget-object v3, v0, Lcom/mycompany/app/image/ImageViewListHori;->N0:Lcom/mycompany/app/web/WebTransOcrCtrl;

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    goto/16 :goto_5

    .line 23
    .line 24
    :cond_1
    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->N0:Lcom/mycompany/app/web/WebTransOcrCtrl;

    .line 25
    .line 26
    iget-boolean v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->K0:Z

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    iput-boolean v3, v0, Lcom/mycompany/app/image/ImageViewListHori;->K0:Z

    .line 32
    .line 33
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->a:Landroid/content/Context;

    .line 34
    .line 35
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->O5(Landroid/content/Context;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    iput-boolean v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->L0:Z

    .line 40
    .line 41
    :cond_2
    const/4 v1, 0x2

    .line 42
    :try_start_0
    new-array v4, v1, [I

    .line 43
    .line 44
    new-array v5, v1, [I

    .line 45
    .line 46
    iget-object v6, v0, Lcom/mycompany/app/image/ImageViewListHori;->H:Lcom/mycompany/app/view/MySizeFrame;

    .line 47
    .line 48
    invoke-virtual {v6, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 52
    .line 53
    .line 54
    const/4 v6, 0x0

    .line 55
    aget v7, v5, v6

    .line 56
    .line 57
    aget v8, v4, v6

    .line 58
    .line 59
    sub-int/2addr v7, v8

    .line 60
    aget v5, v5, v3

    .line 61
    .line 62
    aget v3, v4, v3

    .line 63
    .line 64
    sub-int/2addr v5, v3

    .line 65
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    iget-object v4, v0, Lcom/mycompany/app/image/ImageViewListHori;->H:Lcom/mycompany/app/view/MySizeFrame;

    .line 74
    .line 75
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    iget-object v8, v0, Lcom/mycompany/app/image/ImageViewListHori;->H:Lcom/mycompany/app/view/MySizeFrame;

    .line 80
    .line 81
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    .line 82
    .line 83
    .line 84
    move-result v8

    .line 85
    add-int/2addr v7, v3

    .line 86
    sget v3, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 87
    .line 88
    div-int/lit8 v9, v3, 0x2

    .line 89
    .line 90
    sub-int/2addr v7, v9

    .line 91
    if-le v7, v4, :cond_3

    .line 92
    .line 93
    move v7, v4

    .line 94
    :cond_3
    if-gez v7, :cond_4

    .line 95
    .line 96
    move v7, v6

    .line 97
    :cond_4
    const/4 v9, -0x1

    .line 98
    if-gt v4, v8, :cond_5

    .line 99
    .line 100
    :goto_0
    move v10, v6

    .line 101
    move v3, v9

    .line 102
    goto :goto_1

    .line 103
    :cond_5
    mul-int/lit8 v3, v3, 0x7

    .line 104
    .line 105
    if-gt v4, v3, :cond_6

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_6
    div-int/lit8 v10, v3, 0x2

    .line 109
    .line 110
    sub-int v10, v7, v10

    .line 111
    .line 112
    sub-int v11, v4, v3

    .line 113
    .line 114
    if-le v10, v11, :cond_7

    .line 115
    .line 116
    move v10, v11

    .line 117
    :cond_7
    if-gez v10, :cond_8

    .line 118
    .line 119
    move v10, v6

    .line 120
    :cond_8
    sub-int/2addr v7, v10

    .line 121
    sub-int v11, v4, v10

    .line 122
    .line 123
    if-le v7, v11, :cond_9

    .line 124
    .line 125
    move v7, v11

    .line 126
    :cond_9
    if-gez v7, :cond_a

    .line 127
    .line 128
    move v7, v6

    .line 129
    :cond_a
    :goto_1
    iget-object v11, v0, Lcom/mycompany/app/image/ImageViewListHori;->a:Landroid/content/Context;

    .line 130
    .line 131
    const/high16 v12, 0x42f00000    # 120.0f

    .line 132
    .line 133
    invoke-static {v11, v12}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 134
    .line 135
    .line 136
    move-result v11

    .line 137
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    .line 138
    .line 139
    .line 140
    move-result v11

    .line 141
    sub-int v12, v5, v11

    .line 142
    .line 143
    sub-int v13, v8, v11

    .line 144
    .line 145
    if-le v12, v13, :cond_b

    .line 146
    .line 147
    move v12, v13

    .line 148
    :cond_b
    if-gez v12, :cond_f

    .line 149
    .line 150
    div-int/2addr v2, v1

    .line 151
    add-int/2addr v5, v2

    .line 152
    if-le v5, v11, :cond_c

    .line 153
    .line 154
    move v5, v11

    .line 155
    :cond_c
    if-le v5, v8, :cond_d

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_d
    move v8, v5

    .line 159
    :goto_2
    move v12, v6

    .line 160
    if-gez v8, :cond_e

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_e
    move v6, v8

    .line 164
    goto :goto_3

    .line 165
    :cond_f
    move v6, v11

    .line 166
    :goto_3
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->N0:Lcom/mycompany/app/web/WebTransOcrCtrl;

    .line 167
    .line 168
    iput v7, v1, Lcom/mycompany/app/web/WebTransOcrCtrl;->w:I

    .line 169
    .line 170
    iput v6, v1, Lcom/mycompany/app/web/WebTransOcrCtrl;->x:I

    .line 171
    .line 172
    const/4 v2, 0x4

    .line 173
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 174
    .line 175
    .line 176
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->N0:Lcom/mycompany/app/web/WebTransOcrCtrl;

    .line 177
    .line 178
    new-instance v2, Lcom/mycompany/app/image/ImageViewListHori$56;

    .line 179
    .line 180
    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewListHori$56;-><init>(Lcom/mycompany/app/image/ImageViewListHori;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, v2}, Lcom/mycompany/app/web/WebTransOcrCtrl;->setListener(Lcom/mycompany/app/web/WebTransOcrCtrl$OcrCtrlListener;)V

    .line 184
    .line 185
    .line 186
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 187
    .line 188
    invoke-direct {v1, v3, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 189
    .line 190
    .line 191
    if-eq v3, v9, :cond_11

    .line 192
    .line 193
    iget-boolean v2, v0, Lcom/mycompany/app/image/ImageViewListHori;->L0:Z

    .line 194
    .line 195
    if-eqz v2, :cond_10

    .line 196
    .line 197
    add-int/2addr v10, v3

    .line 198
    sub-int/2addr v4, v10

    .line 199
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 200
    .line 201
    goto :goto_4

    .line 202
    :cond_10
    iput v10, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 203
    .line 204
    :cond_11
    :goto_4
    iput v12, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 205
    .line 206
    new-instance v2, Landroid/widget/FrameLayout;

    .line 207
    .line 208
    iget-object v3, v0, Lcom/mycompany/app/image/ImageViewListHori;->b:Lcom/mycompany/app/image/ImageViewActivity;

    .line 209
    .line 210
    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 211
    .line 212
    .line 213
    iput-object v2, v0, Lcom/mycompany/app/image/ImageViewListHori;->M0:Landroid/widget/FrameLayout;

    .line 214
    .line 215
    iget-object v3, v0, Lcom/mycompany/app/image/ImageViewListHori;->N0:Lcom/mycompany/app/web/WebTransOcrCtrl;

    .line 216
    .line 217
    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    .line 219
    .line 220
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->M0:Landroid/widget/FrameLayout;

    .line 221
    .line 222
    new-instance v2, Lcom/mycompany/app/image/ImageViewListHori$57;

    .line 223
    .line 224
    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewListHori$57;-><init>(Lcom/mycompany/app/image/ImageViewListHori;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    .line 229
    .line 230
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->H:Lcom/mycompany/app/view/MySizeFrame;

    .line 231
    .line 232
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewListHori;->M0:Landroid/widget/FrameLayout;

    .line 233
    .line 234
    invoke-virtual {v1, v2, v9, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 235
    .line 236
    .line 237
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->H:Lcom/mycompany/app/view/MySizeFrame;

    .line 238
    .line 239
    new-instance v2, Lcom/mycompany/app/image/ImageViewListHori$58;

    .line 240
    .line 241
    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewListHori$58;-><init>(Lcom/mycompany/app/image/ImageViewListHori;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .line 246
    .line 247
    :catch_0
    :goto_5
    return-void
.end method
