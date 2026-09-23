.class Lcom/mycompany/app/dialog/DialogMenuMain$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogMenuMain;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogMenuMain;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogMenuMain$7;->c:Lcom/mycompany/app/dialog/DialogMenuMain;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuMain$7;->c:Lcom/mycompany/app/dialog/DialogMenuMain;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->j0:I

    .line 4
    .line 5
    sget v2, Lcom/mycompany/app/pref/PrefMain;->y:I

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-ne v2, v3, :cond_2

    .line 9
    .line 10
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->s0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    goto/16 :goto_4

    .line 15
    .line 16
    :cond_0
    new-instance v1, Lcom/mycompany/app/main/MenuListAdapter;

    .line 17
    .line 18
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->d0:[I

    .line 19
    .line 20
    new-instance v4, Lcom/mycompany/app/dialog/DialogMenuMain$10;

    .line 21
    .line 22
    invoke-direct {v4, v0}, Lcom/mycompany/app/dialog/DialogMenuMain$10;-><init>(Lcom/mycompany/app/dialog/DialogMenuMain;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, v2, v4}, Lcom/mycompany/app/main/MenuListAdapter;-><init>([ILcom/mycompany/app/main/MenuIconAdapter$MenuListener;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->t0:Lcom/mycompany/app/main/MenuListAdapter;

    .line 29
    .line 30
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->s0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 31
    .line 32
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    const/high16 v2, -0x1000000

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const v2, -0x70708

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 43
    .line 44
    .line 45
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->s0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 46
    .line 47
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyRecyclerView;->setLineMenu(Z)V

    .line 48
    .line 49
    .line 50
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->s0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 51
    .line 52
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->w(ILcom/mycompany/app/view/MyRecyclerView;)V

    .line 53
    .line 54
    .line 55
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->s0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 56
    .line 57
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->t0:Lcom/mycompany/app/main/MenuListAdapter;

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 60
    .line 61
    .line 62
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->s0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 63
    .line 64
    new-instance v2, Lcom/mycompany/app/dialog/DialogMenuMain$11;

    .line 65
    .line 66
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogMenuMain$11;-><init>(Lcom/mycompany/app/dialog/DialogMenuMain;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->t(Lcom/mycompany/app/view/MyRecyclerView;Lcom/mycompany/app/view/MyDialogBottom$BotListListener;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogMenuMain;->C()V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_2
    const/4 v4, 0x2

    .line 77
    if-ne v2, v4, :cond_5

    .line 78
    .line 79
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->u0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 80
    .line 81
    if-nez v6, :cond_3

    .line 82
    .line 83
    goto/16 :goto_4

    .line 84
    .line 85
    :cond_3
    new-instance v5, Lcom/mycompany/app/main/MenuIconAdapter;

    .line 86
    .line 87
    new-instance v10, Lcom/mycompany/app/dialog/DialogMenuMain$12;

    .line 88
    .line 89
    invoke-direct {v10, v0}, Lcom/mycompany/app/dialog/DialogMenuMain$12;-><init>(Lcom/mycompany/app/dialog/DialogMenuMain;)V

    .line 90
    .line 91
    .line 92
    const/4 v7, 0x0

    .line 93
    const/4 v8, 0x0

    .line 94
    const/4 v9, 0x0

    .line 95
    invoke-direct/range {v5 .. v10}, Lcom/mycompany/app/main/MenuIconAdapter;-><init>(Landroid/view/View;[IIZLcom/mycompany/app/main/MenuIconAdapter$MenuListener;)V

    .line 96
    .line 97
    .line 98
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->v0:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 99
    .line 100
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->u0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 101
    .line 102
    new-instance v3, Lcom/mycompany/app/view/MyManagerGrid;

    .line 103
    .line 104
    invoke-direct {v3, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 108
    .line 109
    .line 110
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->u0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 111
    .line 112
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->v0:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 113
    .line 114
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 115
    .line 116
    .line 117
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->u0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 118
    .line 119
    new-instance v2, Lcom/mycompany/app/dialog/DialogMenuMain$13;

    .line 120
    .line 121
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogMenuMain$13;-><init>(Lcom/mycompany/app/dialog/DialogMenuMain;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->t(Lcom/mycompany/app/view/MyRecyclerView;Lcom/mycompany/app/view/MyDialogBottom$BotListListener;)V

    .line 125
    .line 126
    .line 127
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 128
    .line 129
    if-nez v1, :cond_4

    .line 130
    .line 131
    goto/16 :goto_4

    .line 132
    .line 133
    :cond_4
    new-instance v2, Lcom/mycompany/app/dialog/DialogMenuMain$14;

    .line 134
    .line 135
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogMenuMain$14;-><init>(Lcom/mycompany/app/dialog/DialogMenuMain;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :cond_5
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->w0:Landroid/widget/FrameLayout;

    .line 143
    .line 144
    if-nez v2, :cond_6

    .line 145
    .line 146
    goto/16 :goto_4

    .line 147
    .line 148
    :cond_6
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->b0:Landroid/content/Context;

    .line 149
    .line 150
    const/high16 v5, 0x41200000    # 10.0f

    .line 151
    .line 152
    invoke-static {v2, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    float-to-int v2, v2

    .line 157
    iput v2, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->B0:I

    .line 158
    .line 159
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->d0:[I

    .line 160
    .line 161
    const/4 v5, 0x0

    .line 162
    if-eqz v2, :cond_7

    .line 163
    .line 164
    array-length v2, v2

    .line 165
    goto :goto_1

    .line 166
    :cond_7
    move v2, v5

    .line 167
    :goto_1
    if-nez v2, :cond_8

    .line 168
    .line 169
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->w0:Landroid/widget/FrameLayout;

    .line 170
    .line 171
    const/16 v2, 0x8

    .line 172
    .line 173
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogMenuMain;->C()V

    .line 177
    .line 178
    .line 179
    return-void

    .line 180
    :cond_8
    sget v6, Lcom/mycompany/app/pref/PrefMain;->y:I

    .line 181
    .line 182
    const/4 v7, 0x3

    .line 183
    if-ne v6, v7, :cond_9

    .line 184
    .line 185
    move v6, v4

    .line 186
    goto :goto_2

    .line 187
    :cond_9
    move v6, v7

    .line 188
    :goto_2
    mul-int v8, v1, v6

    .line 189
    .line 190
    iput v8, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->A0:I

    .line 191
    .line 192
    if-ge v2, v8, :cond_a

    .line 193
    .line 194
    div-int v6, v2, v1

    .line 195
    .line 196
    rem-int v1, v2, v1

    .line 197
    .line 198
    if-eqz v1, :cond_a

    .line 199
    .line 200
    add-int/lit8 v6, v6, 0x1

    .line 201
    .line 202
    :cond_a
    div-int v1, v2, v8

    .line 203
    .line 204
    iput v1, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->z0:I

    .line 205
    .line 206
    rem-int/2addr v2, v8

    .line 207
    if-eqz v2, :cond_b

    .line 208
    .line 209
    add-int/2addr v1, v3

    .line 210
    iput v1, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->z0:I

    .line 211
    .line 212
    :cond_b
    if-eq v6, v7, :cond_d

    .line 213
    .line 214
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->b0:Landroid/content/Context;

    .line 215
    .line 216
    mul-int/lit8 v6, v6, 0x50

    .line 217
    .line 218
    int-to-float v2, v6

    .line 219
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    float-to-int v1, v1

    .line 224
    iget v2, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->B0:I

    .line 225
    .line 226
    mul-int/2addr v2, v4

    .line 227
    add-int/2addr v2, v1

    .line 228
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->w0:Landroid/widget/FrameLayout;

    .line 229
    .line 230
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    if-eqz v1, :cond_c

    .line 235
    .line 236
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 237
    .line 238
    goto :goto_3

    .line 239
    :cond_c
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 240
    .line 241
    const/4 v6, -0x1

    .line 242
    invoke-direct {v1, v6, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 243
    .line 244
    .line 245
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->b0:Landroid/content/Context;

    .line 246
    .line 247
    const/high16 v6, 0x42480000    # 50.0f

    .line 248
    .line 249
    invoke-static {v2, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    float-to-int v2, v2

    .line 254
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 255
    .line 256
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->w0:Landroid/widget/FrameLayout;

    .line 257
    .line 258
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    .line 260
    .line 261
    :cond_d
    :goto_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->w0:Landroid/widget/FrameLayout;

    .line 262
    .line 263
    iget v2, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->B0:I

    .line 264
    .line 265
    invoke-virtual {v1, v5, v2, v5, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 266
    .line 267
    .line 268
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 269
    .line 270
    const/16 v2, 0x1f

    .line 271
    .line 272
    if-ge v1, v2, :cond_e

    .line 273
    .line 274
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->x0:Landroidx/viewpager2/widget/ViewPager2;

    .line 275
    .line 276
    invoke-virtual {v1, v4}, Landroid/view/View;->setOverScrollMode(I)V

    .line 277
    .line 278
    .line 279
    :cond_e
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->g0:Z

    .line 280
    .line 281
    if-eqz v1, :cond_f

    .line 282
    .line 283
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->x0:Landroidx/viewpager2/widget/ViewPager2;

    .line 284
    .line 285
    invoke-virtual {v1, v3}, Landroidx/viewpager2/widget/ViewPager2;->setLayoutDirection(I)V

    .line 286
    .line 287
    .line 288
    :cond_f
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 289
    .line 290
    if-nez v1, :cond_10

    .line 291
    .line 292
    :goto_4
    return-void

    .line 293
    :cond_10
    new-instance v2, Lcom/mycompany/app/dialog/DialogMenuMain$15;

    .line 294
    .line 295
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogMenuMain$15;-><init>(Lcom/mycompany/app/dialog/DialogMenuMain;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 299
    .line 300
    .line 301
    return-void
.end method
