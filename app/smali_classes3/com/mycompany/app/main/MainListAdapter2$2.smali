.class Lcom/mycompany/app/main/MainListAdapter2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainListAdapter2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListAdapter2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListAdapter2$2;->c:Lcom/mycompany/app/main/MainListAdapter2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter2$2;->c:Lcom/mycompany/app/main/MainListAdapter2;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainListAdapter2;->q:Lcom/mycompany/app/main/MainListAdapter2$List2Listener;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_5

    .line 8
    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-nez p1, :cond_2

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    instance-of v2, p1, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;

    .line 21
    .line 22
    if-nez v2, :cond_3

    .line 23
    .line 24
    :goto_0
    move-object p1, v1

    .line 25
    goto :goto_1

    .line 26
    :cond_3
    check-cast p1, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;

    .line 27
    .line 28
    :goto_1
    if-eqz p1, :cond_5

    .line 29
    .line 30
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 31
    .line 32
    if-nez v2, :cond_4

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    goto :goto_3

    .line 40
    :cond_5
    :goto_2
    const/4 p1, -0x1

    .line 41
    :goto_3
    iget-object v0, v0, Lcom/mycompany/app/main/MainListAdapter2;->q:Lcom/mycompany/app/main/MainListAdapter2$List2Listener;

    .line 42
    .line 43
    check-cast v0, Lcom/mycompany/app/main/MainListView2$38;

    .line 44
    .line 45
    iget-object v2, v0, Lcom/mycompany/app/main/MainListView2$38;->a:Lcom/mycompany/app/main/MainListView2;

    .line 46
    .line 47
    iget-object v3, v2, Lcom/mycompany/app/main/MainListView2;->b:Lcom/mycompany/app/main/MainActivity;

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/mycompany/app/main/MainListView2;->m()Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_6

    .line 54
    .line 55
    goto :goto_5

    .line 56
    :cond_6
    iget-object v4, v2, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 57
    .line 58
    if-nez v4, :cond_7

    .line 59
    .line 60
    goto :goto_5

    .line 61
    :cond_7
    iget-object v5, v2, Lcom/mycompany/app/main/MainListView2;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 62
    .line 63
    if-nez v5, :cond_8

    .line 64
    .line 65
    goto :goto_5

    .line 66
    :cond_8
    invoke-virtual {v4, p1}, Lcom/mycompany/app/main/MainListAdapter2;->z(I)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    if-nez v4, :cond_9

    .line 71
    .line 72
    goto :goto_5

    .line 73
    :cond_9
    iget v5, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->b:I

    .line 74
    .line 75
    const/4 v6, 0x2

    .line 76
    const/4 v7, 0x0

    .line 77
    if-ne v5, v6, :cond_a

    .line 78
    .line 79
    iget-object p1, v2, Lcom/mycompany/app/main/MainListView2;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 80
    .line 81
    invoke-virtual {p1, v7}, Landroidx/recyclerview/widget/RecyclerView;->i0(I)V

    .line 82
    .line 83
    .line 84
    iget-object p1, v2, Lcom/mycompany/app/main/MainListView2;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 85
    .line 86
    new-instance v1, Lcom/mycompany/app/main/MainListView2$38$1;

    .line 87
    .line 88
    invoke-direct {v1, v0}, Lcom/mycompany/app/main/MainListView2$38$1;-><init>(Lcom/mycompany/app/main/MainListView2$38;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_a
    iget-boolean v0, v2, Lcom/mycompany/app/main/MainListView2;->k:Z

    .line 96
    .line 97
    const/4 v5, 0x1

    .line 98
    if-eqz v0, :cond_e

    .line 99
    .line 100
    iget-object v0, v2, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 101
    .line 102
    iget-boolean v6, v0, Lcom/mycompany/app/main/MainListAdapter2;->m:Z

    .line 103
    .line 104
    if-eqz v6, :cond_e

    .line 105
    .line 106
    invoke-virtual {v0, p1}, Lcom/mycompany/app/main/MainListAdapter2;->E(I)Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_b

    .line 111
    .line 112
    goto :goto_5

    .line 113
    :cond_b
    iget-object v0, v2, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 114
    .line 115
    iget-object v1, v0, Lcom/mycompany/app/main/MainListAdapter2;->h:[Z

    .line 116
    .line 117
    if-eqz v1, :cond_d

    .line 118
    .line 119
    iget v3, v0, Lcom/mycompany/app/main/MainListAdapter2;->j:I

    .line 120
    .line 121
    if-lt p1, v3, :cond_d

    .line 122
    .line 123
    array-length v3, v1

    .line 124
    iget v4, v0, Lcom/mycompany/app/main/MainListAdapter2;->k:I

    .line 125
    .line 126
    sub-int/2addr v3, v4

    .line 127
    if-lt p1, v3, :cond_c

    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_c
    aget-boolean v1, v1, p1

    .line 131
    .line 132
    xor-int/2addr v1, v5

    .line 133
    invoke-virtual {v0, p1, v1}, Lcom/mycompany/app/main/MainListAdapter2;->G(IZ)V

    .line 134
    .line 135
    .line 136
    :cond_d
    :goto_4
    invoke-virtual {v2}, Lcom/mycompany/app/main/MainListView2;->A()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2}, Lcom/mycompany/app/main/MainListView2;->y()V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :cond_e
    iget-object v0, v2, Lcom/mycompany/app/main/MainListView2;->l:Lcom/mycompany/app/main/MainListListener;

    .line 144
    .line 145
    if-nez v0, :cond_f

    .line 146
    .line 147
    :goto_5
    return-void

    .line 148
    :cond_f
    iget v0, v2, Lcom/mycompany/app/main/MainListView2;->e:I

    .line 149
    .line 150
    const/16 v6, 0x25

    .line 151
    .line 152
    if-ne v0, v6, :cond_10

    .line 153
    .line 154
    iget-object p1, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 155
    .line 156
    sget v0, Lnet/kaki87/soul2/testing/R$string;->copied_clipboard:I

    .line 157
    .line 158
    const-string v1, "Copied memo"

    .line 159
    .line 160
    invoke-static {v0, v3, v1, p1}, Lcom/mycompany/app/main/MainUtil;->s(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :cond_10
    iget-object v0, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 165
    .line 166
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-eqz v0, :cond_11

    .line 171
    .line 172
    sget p1, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 173
    .line 174
    invoke-static {v3, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 175
    .line 176
    .line 177
    return-void

    .line 178
    :cond_11
    iget v0, v2, Lcom/mycompany/app/main/MainListView2;->i:I

    .line 179
    .line 180
    iget v3, v2, Lcom/mycompany/app/main/MainListView2;->V:I

    .line 181
    .line 182
    if-ge p1, v3, :cond_12

    .line 183
    .line 184
    goto/16 :goto_b

    .line 185
    .line 186
    :cond_12
    iget-object v3, v2, Lcom/mycompany/app/main/MainListView2;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 187
    .line 188
    if-eqz v3, :cond_1d

    .line 189
    .line 190
    iget-object v3, v2, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 191
    .line 192
    if-nez v3, :cond_13

    .line 193
    .line 194
    goto/16 :goto_b

    .line 195
    .line 196
    :cond_13
    iget-object v3, v2, Lcom/mycompany/app/main/MainListView2;->S:Lcom/mycompany/app/list/ListTask;

    .line 197
    .line 198
    invoke-virtual {v3}, Lcom/mycompany/app/list/ListTask;->b()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 203
    .line 204
    .line 205
    move-result v6

    .line 206
    if-eqz v6, :cond_14

    .line 207
    .line 208
    goto/16 :goto_b

    .line 209
    .line 210
    :cond_14
    iget-object v6, v2, Lcom/mycompany/app/main/MainListView2;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 211
    .line 212
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    .line 213
    .line 214
    .line 215
    move-result v6

    .line 216
    move v8, v7

    .line 217
    :goto_6
    if-ge v8, v6, :cond_18

    .line 218
    .line 219
    iget-object v9, v2, Lcom/mycompany/app/main/MainListView2;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 220
    .line 221
    invoke-virtual {v9, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 222
    .line 223
    .line 224
    move-result-object v9

    .line 225
    if-nez v9, :cond_15

    .line 226
    .line 227
    goto :goto_7

    .line 228
    :cond_15
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v10

    .line 232
    if-nez v10, :cond_16

    .line 233
    .line 234
    goto :goto_7

    .line 235
    :cond_16
    instance-of v11, v10, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;

    .line 236
    .line 237
    if-eqz v11, :cond_17

    .line 238
    .line 239
    check-cast v10, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;

    .line 240
    .line 241
    iget v10, v10, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->H:I

    .line 242
    .line 243
    if-ne p1, v10, :cond_17

    .line 244
    .line 245
    invoke-virtual {v9}, Landroid/view/View;->getY()F

    .line 246
    .line 247
    .line 248
    move-result v6

    .line 249
    int-to-float v8, v0

    .line 250
    add-float/2addr v6, v8

    .line 251
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 252
    .line 253
    .line 254
    move-result v6

    .line 255
    goto :goto_8

    .line 256
    :cond_17
    :goto_7
    add-int/lit8 v8, v8, 0x1

    .line 257
    .line 258
    goto :goto_6

    .line 259
    :cond_18
    move v6, v7

    .line 260
    :goto_8
    iget-object v8, v2, Lcom/mycompany/app/main/MainListView2;->o:Lcom/mycompany/app/view/MyHeaderView;

    .line 261
    .line 262
    if-eqz v8, :cond_19

    .line 263
    .line 264
    if-ge v6, v0, :cond_19

    .line 265
    .line 266
    goto :goto_9

    .line 267
    :cond_19
    move v0, v6

    .line 268
    :goto_9
    iget-object v6, v2, Lcom/mycompany/app/main/MainListView2;->Y:Ljava/util/HashMap;

    .line 269
    .line 270
    if-nez v6, :cond_1a

    .line 271
    .line 272
    new-instance v6, Ljava/util/HashMap;

    .line 273
    .line 274
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 275
    .line 276
    .line 277
    iput-object v6, v2, Lcom/mycompany/app/main/MainListView2;->Y:Ljava/util/HashMap;

    .line 278
    .line 279
    :cond_1a
    new-instance v6, Lcom/mycompany/app/main/MainListView2$ListPos;

    .line 280
    .line 281
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 282
    .line 283
    .line 284
    iget-object v8, v2, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 285
    .line 286
    iget-object v9, v8, Lcom/mycompany/app/main/MainListAdapter2;->g:Ljava/util/List;

    .line 287
    .line 288
    if-eqz v9, :cond_1c

    .line 289
    .line 290
    if-ltz p1, :cond_1c

    .line 291
    .line 292
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 293
    .line 294
    .line 295
    move-result v9

    .line 296
    if-lt p1, v9, :cond_1b

    .line 297
    .line 298
    goto :goto_a

    .line 299
    :cond_1b
    iget-object v1, v8, Lcom/mycompany/app/main/MainListAdapter2;->g:Ljava/util/List;

    .line 300
    .line 301
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    check-cast v1, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 306
    .line 307
    iget-object v1, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 308
    .line 309
    :cond_1c
    :goto_a
    iput-object v1, v6, Lcom/mycompany/app/main/MainListView2$ListPos;->a:Ljava/lang/String;

    .line 310
    .line 311
    iput p1, v6, Lcom/mycompany/app/main/MainListView2$ListPos;->b:I

    .line 312
    .line 313
    iput v0, v6, Lcom/mycompany/app/main/MainListView2$ListPos;->c:I

    .line 314
    .line 315
    iget-object p1, v2, Lcom/mycompany/app/main/MainListView2;->Y:Ljava/util/HashMap;

    .line 316
    .line 317
    invoke-virtual {p1, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    :cond_1d
    :goto_b
    iget-object p1, v2, Lcom/mycompany/app/main/MainListView2;->l:Lcom/mycompany/app/main/MainListListener;

    .line 321
    .line 322
    invoke-virtual {p1, v7, v4, v5}, Lcom/mycompany/app/main/MainListListener;->f(ILcom/mycompany/app/main/MainItem$ChildItem;Z)V

    .line 323
    .line 324
    .line 325
    return-void
.end method
