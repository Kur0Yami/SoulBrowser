.class Landroidx/recyclerview/widget/ItemTouchHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroidx/recyclerview/widget/ItemTouchHelper;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/ItemTouchHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$1;->c:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$1;->c:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 4
    .line 5
    if-eqz v1, :cond_c

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    iget-wide v3, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->B:J

    .line 12
    .line 13
    const-wide/high16 v5, -0x8000000000000000L

    .line 14
    .line 15
    cmp-long v7, v3, v5

    .line 16
    .line 17
    if-nez v7, :cond_0

    .line 18
    .line 19
    const-wide/16 v3, 0x0

    .line 20
    .line 21
    :goto_0
    move-wide v11, v3

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    sub-long v3, v1, v3

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :goto_1
    iget-object v3, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 27
    .line 28
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    iget-object v4, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->A:Landroid/graphics/Rect;

    .line 33
    .line 34
    if-nez v4, :cond_1

    .line 35
    .line 36
    new-instance v4, Landroid/graphics/Rect;

    .line 37
    .line 38
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v4, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->A:Landroid/graphics/Rect;

    .line 42
    .line 43
    :cond_1
    iget-object v4, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 44
    .line 45
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 46
    .line 47
    iget-object v7, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->A:Landroid/graphics/Rect;

    .line 48
    .line 49
    invoke-virtual {v3, v7, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->e(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->f()Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    const/4 v7, 0x0

    .line 57
    const/4 v8, 0x0

    .line 58
    if-eqz v4, :cond_3

    .line 59
    .line 60
    iget v4, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->j:F

    .line 61
    .line 62
    iget v9, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->h:F

    .line 63
    .line 64
    add-float/2addr v4, v9

    .line 65
    float-to-int v4, v4

    .line 66
    iget-object v9, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->A:Landroid/graphics/Rect;

    .line 67
    .line 68
    iget v9, v9, Landroid/graphics/Rect;->left:I

    .line 69
    .line 70
    sub-int v9, v4, v9

    .line 71
    .line 72
    iget-object v10, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 73
    .line 74
    invoke-virtual {v10}, Landroid/view/View;->getPaddingLeft()I

    .line 75
    .line 76
    .line 77
    move-result v10

    .line 78
    sub-int/2addr v9, v10

    .line 79
    iget v10, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->h:F

    .line 80
    .line 81
    cmpg-float v13, v10, v7

    .line 82
    .line 83
    if-gez v13, :cond_2

    .line 84
    .line 85
    if-gez v9, :cond_2

    .line 86
    .line 87
    :goto_2
    move v10, v9

    .line 88
    goto :goto_3

    .line 89
    :cond_2
    cmpl-float v9, v10, v7

    .line 90
    .line 91
    if-lez v9, :cond_3

    .line 92
    .line 93
    iget-object v9, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 94
    .line 95
    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 96
    .line 97
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    add-int/2addr v9, v4

    .line 102
    iget-object v4, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->A:Landroid/graphics/Rect;

    .line 103
    .line 104
    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 105
    .line 106
    add-int/2addr v9, v4

    .line 107
    iget-object v4, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 108
    .line 109
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    iget-object v10, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 114
    .line 115
    invoke-virtual {v10}, Landroid/view/View;->getPaddingRight()I

    .line 116
    .line 117
    .line 118
    move-result v10

    .line 119
    sub-int/2addr v4, v10

    .line 120
    sub-int/2addr v9, v4

    .line 121
    if-lez v9, :cond_3

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_3
    move v10, v8

    .line 125
    :goto_3
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->g()Z

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    if-eqz v3, :cond_5

    .line 130
    .line 131
    iget v3, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->k:F

    .line 132
    .line 133
    iget v4, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->i:F

    .line 134
    .line 135
    add-float/2addr v3, v4

    .line 136
    float-to-int v3, v3

    .line 137
    iget-object v4, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->A:Landroid/graphics/Rect;

    .line 138
    .line 139
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 140
    .line 141
    sub-int v4, v3, v4

    .line 142
    .line 143
    iget-object v9, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 144
    .line 145
    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    .line 146
    .line 147
    .line 148
    move-result v9

    .line 149
    sub-int/2addr v4, v9

    .line 150
    iget v9, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->i:F

    .line 151
    .line 152
    cmpg-float v13, v9, v7

    .line 153
    .line 154
    if-gez v13, :cond_4

    .line 155
    .line 156
    if-gez v4, :cond_4

    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_4
    cmpl-float v4, v9, v7

    .line 160
    .line 161
    if-lez v4, :cond_5

    .line 162
    .line 163
    iget-object v4, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 164
    .line 165
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 166
    .line 167
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    add-int/2addr v4, v3

    .line 172
    iget-object v3, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->A:Landroid/graphics/Rect;

    .line 173
    .line 174
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 175
    .line 176
    add-int/2addr v4, v3

    .line 177
    iget-object v3, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 178
    .line 179
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    iget-object v7, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 184
    .line 185
    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    .line 186
    .line 187
    .line 188
    move-result v7

    .line 189
    sub-int/2addr v3, v7

    .line 190
    sub-int/2addr v4, v3

    .line 191
    if-lez v4, :cond_5

    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_5
    move v4, v8

    .line 195
    :goto_4
    if-eqz v10, :cond_6

    .line 196
    .line 197
    iget-object v7, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->m:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 198
    .line 199
    iget-object v8, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 200
    .line 201
    iget-object v3, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 202
    .line 203
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 204
    .line 205
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 206
    .line 207
    .line 208
    move-result v9

    .line 209
    iget-object v3, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 210
    .line 211
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 212
    .line 213
    .line 214
    invoke-virtual/range {v7 .. v12}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->g(Landroidx/recyclerview/widget/RecyclerView;IIJ)I

    .line 215
    .line 216
    .line 217
    move-result v10

    .line 218
    :cond_6
    move v3, v10

    .line 219
    if-eqz v4, :cond_7

    .line 220
    .line 221
    iget-object v7, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->m:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 222
    .line 223
    iget-object v8, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 224
    .line 225
    iget-object v9, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 226
    .line 227
    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 228
    .line 229
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    .line 230
    .line 231
    .line 232
    move-result v9

    .line 233
    iget-object v10, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 234
    .line 235
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    .line 236
    .line 237
    .line 238
    move v10, v4

    .line 239
    invoke-virtual/range {v7 .. v12}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->g(Landroidx/recyclerview/widget/RecyclerView;IIJ)I

    .line 240
    .line 241
    .line 242
    move-result v4

    .line 243
    goto :goto_5

    .line 244
    :cond_7
    move v10, v4

    .line 245
    :goto_5
    if-nez v3, :cond_9

    .line 246
    .line 247
    if-eqz v4, :cond_8

    .line 248
    .line 249
    goto :goto_6

    .line 250
    :cond_8
    iput-wide v5, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->B:J

    .line 251
    .line 252
    return-void

    .line 253
    :cond_9
    :goto_6
    iget-wide v7, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->B:J

    .line 254
    .line 255
    cmp-long v5, v7, v5

    .line 256
    .line 257
    if-nez v5, :cond_a

    .line 258
    .line 259
    iput-wide v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->B:J

    .line 260
    .line 261
    :cond_a
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 262
    .line 263
    invoke-virtual {v1, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 264
    .line 265
    .line 266
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 267
    .line 268
    if-eqz v1, :cond_b

    .line 269
    .line 270
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->q(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 271
    .line 272
    .line 273
    :cond_b
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 274
    .line 275
    iget-object v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->s:Ljava/lang/Runnable;

    .line 276
    .line 277
    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 278
    .line 279
    .line 280
    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 281
    .line 282
    sget-object v1, Landroidx/core/view/ViewCompat;->a:Ljava/util/WeakHashMap;

    .line 283
    .line 284
    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 285
    .line 286
    .line 287
    :cond_c
    return-void
.end method
