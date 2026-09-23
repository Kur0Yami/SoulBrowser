.class Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogTabMini;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabGrid"
.end annotation


# instance fields
.field public final A:Ljava/lang/Runnable;

.field public final synthetic B:Lcom/mycompany/app/dialog/DialogTabMini;

.field public final a:Z

.field public b:Ljava/util/List;

.field public c:Ljava/util/ArrayList;

.field public d:J

.field public e:I

.field public f:I

.field public g:Landroid/widget/FrameLayout;

.field public h:Lcom/mycompany/app/view/MyRecyclerView;

.field public i:Landroid/widget/ImageView;

.field public j:Lcom/mycompany/app/view/MyCoverView;

.field public k:Lcom/mycompany/app/view/MyRoundLinear;

.field public l:Lcom/mycompany/app/view/MyButtonText;

.field public m:Lcom/mycompany/app/web/WebTabAdapter;

.field public n:Lcom/mycompany/app/view/MyManagerLinear;

.field public o:Lcom/mycompany/app/quick/TabDragHelper;

.field public p:Landroidx/recyclerview/widget/ItemTouchHelper;

.field public q:Z

.field public r:I

.field public s:Z

.field public t:Z

.field public u:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

.field public v:Z

.field public w:Z

.field public x:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

.field public y:I

.field public z:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMini;Z)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->B:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 5
    .line 6
    new-instance v0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$16;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$16;-><init>(Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->A:Ljava/lang/Runnable;

    .line 12
    .line 13
    iput-boolean p2, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->a:Z

    .line 14
    .line 15
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogTabMini;->b0:Landroid/content/Context;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout;

    .line 21
    .line 22
    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 26
    .line 27
    const/4 v3, -0x1

    .line 28
    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    .line 33
    .line 34
    new-instance v2, Lcom/mycompany/app/view/MyRecyclerView;

    .line 35
    .line 36
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MyRecyclerView;-><init>(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    sget v4, Lcom/mycompany/app/main/MainApp;->q1:I

    .line 40
    .line 41
    const/4 v5, 0x0

    .line 42
    invoke-virtual {v2, v4, v5, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v5}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v5}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 52
    .line 53
    .line 54
    new-instance v4, Landroid/widget/ImageView;

    .line 55
    .line 56
    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 57
    .line 58
    .line 59
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 60
    .line 61
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 62
    .line 63
    .line 64
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->logo_gray:I

    .line 65
    .line 66
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 67
    .line 68
    .line 69
    const/16 v6, 0x8

    .line 70
    .line 71
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v4, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 75
    .line 76
    .line 77
    new-instance v7, Lcom/mycompany/app/view/MyCoverView;

    .line 78
    .line 79
    invoke-direct {v7, v0}, Lcom/mycompany/app/view/MyCoverView;-><init>(Landroid/content/Context;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v7, v6}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v7, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 86
    .line 87
    .line 88
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->g:Landroid/widget/FrameLayout;

    .line 89
    .line 90
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->h:Lcom/mycompany/app/view/MyRecyclerView;

    .line 91
    .line 92
    iput-object v4, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->i:Landroid/widget/ImageView;

    .line 93
    .line 94
    iput-object v7, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->j:Lcom/mycompany/app/view/MyCoverView;

    .line 95
    .line 96
    const v0, -0xdededf

    .line 97
    .line 98
    .line 99
    const v2, -0x50506

    .line 100
    .line 101
    .line 102
    if-eqz p2, :cond_4

    .line 103
    .line 104
    iget-boolean p2, p1, Lcom/mycompany/app/dialog/DialogTabMini;->i0:Z

    .line 105
    .line 106
    if-eqz p2, :cond_4

    .line 107
    .line 108
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogTabMini;->b0:Landroid/content/Context;

    .line 109
    .line 110
    if-nez p1, :cond_1

    .line 111
    .line 112
    goto/16 :goto_2

    .line 113
    .line 114
    :cond_1
    new-instance p2, Lcom/mycompany/app/view/MyRoundLinear;

    .line 115
    .line 116
    invoke-direct {p2, p1}, Lcom/mycompany/app/view/MyRoundLinear;-><init>(Landroid/content/Context;)V

    .line 117
    .line 118
    .line 119
    const/4 v4, 0x1

    .line 120
    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, p2, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 124
    .line 125
    .line 126
    new-instance v1, Landroid/view/View;

    .line 127
    .line 128
    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 129
    .line 130
    .line 131
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 132
    .line 133
    invoke-direct {v6, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 134
    .line 135
    .line 136
    const/high16 v7, 0x3f800000    # 1.0f

    .line 137
    .line 138
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 139
    .line 140
    invoke-virtual {p2, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    .line 142
    .line 143
    new-instance v1, Lcom/mycompany/app/view/MyButtonText;

    .line 144
    .line 145
    invoke-direct {v1, p1}, Lcom/mycompany/app/view/MyButtonText;-><init>(Landroid/content/Context;)V

    .line 146
    .line 147
    .line 148
    sget v6, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 149
    .line 150
    sget v8, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 151
    .line 152
    sget v9, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 153
    .line 154
    sget v10, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 155
    .line 156
    invoke-virtual {v1, v6, v8, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 157
    .line 158
    .line 159
    sget v6, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 160
    .line 161
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 162
    .line 163
    .line 164
    const/16 v6, 0x11

    .line 165
    .line 166
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 167
    .line 168
    .line 169
    const/high16 v6, 0x41800000    # 16.0f

    .line 170
    .line 171
    invoke-virtual {v1, v4, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 172
    .line 173
    .line 174
    sget v6, Lnet/kaki87/soul2/testing/R$string;->unlock:I

    .line 175
    .line 176
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonText;->setBgNorFixed(Z)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonText;->setRoundRect(Z)V

    .line 183
    .line 184
    .line 185
    sget v6, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 186
    .line 187
    invoke-virtual {v1, v6}, Lcom/mycompany/app/view/MyButtonText;->setRoundRadius(I)V

    .line 188
    .line 189
    .line 190
    const/high16 v6, 0x41c00000    # 24.0f

    .line 191
    .line 192
    invoke-static {p1, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 193
    .line 194
    .line 195
    move-result v6

    .line 196
    float-to-int v6, v6

    .line 197
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 198
    .line 199
    const/4 v9, -0x2

    .line 200
    invoke-direct {v8, v3, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v8, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v8, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p2, v1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    .line 211
    .line 212
    new-instance v6, Landroid/view/View;

    .line 213
    .line 214
    invoke-direct {v6, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 215
    .line 216
    .line 217
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 218
    .line 219
    invoke-direct {p1, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 220
    .line 221
    .line 222
    iput v7, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 223
    .line 224
    invoke-virtual {p2, v6, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    .line 226
    .line 227
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->k:Lcom/mycompany/app/view/MyRoundLinear;

    .line 228
    .line 229
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->l:Lcom/mycompany/app/view/MyButtonText;

    .line 230
    .line 231
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 232
    .line 233
    const/high16 p2, -0x1000000

    .line 234
    .line 235
    if-eqz p1, :cond_2

    .line 236
    .line 237
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 238
    .line 239
    .line 240
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->l:Lcom/mycompany/app/view/MyButtonText;

    .line 241
    .line 242
    const v1, -0xd8d8d9

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1, p2, v1}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 246
    .line 247
    .line 248
    goto :goto_0

    .line 249
    :cond_2
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 250
    .line 251
    .line 252
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->l:Lcom/mycompany/app/view/MyButtonText;

    .line 253
    .line 254
    const p2, -0x1f1f20

    .line 255
    .line 256
    .line 257
    const v1, -0x2f2f30

    .line 258
    .line 259
    .line 260
    invoke-virtual {p1, p2, v1}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 261
    .line 262
    .line 263
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->k:Lcom/mycompany/app/view/MyRoundLinear;

    .line 264
    .line 265
    invoke-virtual {p1, v4, v4}, Lcom/mycompany/app/view/MyRoundLinear;->c(ZZ)V

    .line 266
    .line 267
    .line 268
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->k:Lcom/mycompany/app/view/MyRoundLinear;

    .line 269
    .line 270
    sget-boolean p2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 271
    .line 272
    if-eqz p2, :cond_3

    .line 273
    .line 274
    move p2, v0

    .line 275
    goto :goto_1

    .line 276
    :cond_3
    move p2, v2

    .line 277
    :goto_1
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyRoundLinear;->setColor(I)V

    .line 278
    .line 279
    .line 280
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->k:Lcom/mycompany/app/view/MyRoundLinear;

    .line 281
    .line 282
    new-instance p2, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$1;

    .line 283
    .line 284
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    .line 289
    .line 290
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->l:Lcom/mycompany/app/view/MyButtonText;

    .line 291
    .line 292
    new-instance p2, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$2;

    .line 293
    .line 294
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$2;-><init>(Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyButtonText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    .line 299
    .line 300
    :cond_4
    :goto_2
    sget p1, Lcom/mycompany/app/pref/PrefZone;->C:I

    .line 301
    .line 302
    if-eqz p1, :cond_5

    .line 303
    .line 304
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->h:Lcom/mycompany/app/view/MyRecyclerView;

    .line 305
    .line 306
    sget p2, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 307
    .line 308
    sget v1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 309
    .line 310
    sget v3, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 311
    .line 312
    sget v4, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 313
    .line 314
    invoke-virtual {p1, p2, v1, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 315
    .line 316
    .line 317
    :cond_5
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->h:Lcom/mycompany/app/view/MyRecyclerView;

    .line 318
    .line 319
    sget-boolean p2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 320
    .line 321
    if-eqz p2, :cond_6

    .line 322
    .line 323
    goto :goto_3

    .line 324
    :cond_6
    move v0, v2

    .line 325
    :goto_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 326
    .line 327
    .line 328
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->m:Lcom/mycompany/app/web/WebTabAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebTabAdapter;->v()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final b(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->j:Lcom/mycompany/app/view/MyCoverView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    .line 8
    const-wide/16 v2, 0xc8

    .line 9
    .line 10
    const/4 v4, 0x1

    .line 11
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/mycompany/app/view/MyCoverView;->n(ZFJ)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$3;

    .line 15
    .line 16
    invoke-direct {v0, p0, p1}, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$3;-><init>(Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;Z)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->B:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->h:Lcom/mycompany/app/view/MyRecyclerView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->h:Lcom/mycompany/app/view/MyRecyclerView;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->j:Lcom/mycompany/app/view/MyCoverView;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyCoverView;->i()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->j:Lcom/mycompany/app/view/MyCoverView;

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->k:Lcom/mycompany/app/view/MyRoundLinear;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundLinear;->a()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->k:Lcom/mycompany/app/view/MyRoundLinear;

    .line 28
    .line 29
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->l:Lcom/mycompany/app/view/MyButtonText;

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonText;->t()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->l:Lcom/mycompany/app/view/MyButtonText;

    .line 37
    .line 38
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->m:Lcom/mycompany/app/web/WebTabAdapter;

    .line 39
    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebTabAdapter;->P()V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->m:Lcom/mycompany/app/web/WebTabAdapter;

    .line 46
    .line 47
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->o:Lcom/mycompany/app/quick/TabDragHelper;

    .line 48
    .line 49
    if-eqz v0, :cond_5

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/mycompany/app/quick/TabDragHelper;->p()V

    .line 52
    .line 53
    .line 54
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->o:Lcom/mycompany/app/quick/TabDragHelper;

    .line 55
    .line 56
    :cond_5
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->b:Ljava/util/List;

    .line 57
    .line 58
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->c:Ljava/util/ArrayList;

    .line 59
    .line 60
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->g:Landroid/widget/FrameLayout;

    .line 61
    .line 62
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->i:Landroid/widget/ImageView;

    .line 63
    .line 64
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->n:Lcom/mycompany/app/view/MyManagerLinear;

    .line 65
    .line 66
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->p:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 67
    .line 68
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->m:Lcom/mycompany/app/web/WebTabAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->B:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 7
    .line 8
    iget-boolean v2, v1, Lcom/mycompany/app/dialog/DialogTabMini;->B1:Z

    .line 9
    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const/4 v2, 0x1

    .line 14
    iput-boolean v2, v1, Lcom/mycompany/app/dialog/DialogTabMini;->B1:Z

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebTabAdapter;->U()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v2, -0x1

    .line 21
    if-ne v0, v2, :cond_2

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, v1, Lcom/mycompany/app/dialog/DialogTabMini;->B1:Z

    .line 25
    .line 26
    return-void

    .line 27
    :cond_2
    iput v0, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->y:I

    .line 28
    .line 29
    iget-object v0, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 30
    .line 31
    if-nez v0, :cond_3

    .line 32
    .line 33
    :goto_0
    return-void

    .line 34
    :cond_3
    new-instance v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$13;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$13;-><init>(Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final e()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->l:Lcom/mycompany/app/view/MyButtonText;

    .line 2
    .line 3
    const v1, -0xdededf

    .line 4
    .line 5
    .line 6
    const v2, -0x50506

    .line 7
    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 12
    .line 13
    const/high16 v4, -0x1000000

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->l:Lcom/mycompany/app/view/MyButtonText;

    .line 21
    .line 22
    const v3, -0xd8d8d9

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v4, v3}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->l:Lcom/mycompany/app/view/MyButtonText;

    .line 33
    .line 34
    const v3, -0x1f1f20

    .line 35
    .line 36
    .line 37
    const v4, -0x2f2f30

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v3, v4}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 41
    .line 42
    .line 43
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->k:Lcom/mycompany/app/view/MyRoundLinear;

    .line 44
    .line 45
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 46
    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    move v3, v1

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    move v3, v2

    .line 52
    :goto_1
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyRoundLinear;->setColor(I)V

    .line 53
    .line 54
    .line 55
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->h:Lcom/mycompany/app/view/MyRecyclerView;

    .line 56
    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 60
    .line 61
    if-eqz v3, :cond_3

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_3
    move v1, v2

    .line 65
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 66
    .line 67
    .line 68
    :cond_4
    return-void
.end method

.method public final f()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->h:Lcom/mycompany/app/view/MyRecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->m:Lcom/mycompany/app/web/WebTabAdapter;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-boolean v2, Lcom/mycompany/app/pref/PrefZtwo;->z:Z

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->B:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 17
    .line 18
    iget v4, v3, Lcom/mycompany/app/dialog/DialogTabMini;->C0:I

    .line 19
    .line 20
    iget v3, v3, Lcom/mycompany/app/dialog/DialogTabMini;->D0:I

    .line 21
    .line 22
    invoke-virtual {v1, v0, v4, v3, v2}, Lcom/mycompany/app/web/WebTabAdapter;->Z(IIIZ)V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    return-void
.end method

.method public final g(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->m:Lcom/mycompany/app/web/WebTabAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->B:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 7
    .line 8
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->A1:Z

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->A1:Z

    .line 15
    .line 16
    iput p1, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->r:I

    .line 17
    .line 18
    new-instance p1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$10;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$10;-><init>(Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
