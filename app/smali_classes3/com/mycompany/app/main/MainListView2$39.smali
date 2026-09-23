.class Lcom/mycompany/app/main/MainListView2$39;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/main/MainListAdapter$ListMoreListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/MainListView2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView2$39;->a:Lcom/mycompany/app/main/MainListView2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;I)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2$39;->a:Lcom/mycompany/app/main/MainListView2;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView2;->l:Lcom/mycompany/app/main/MainListListener;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView2;->m()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    :goto_0
    move v1, v3

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView2;->R:Lcom/mycompany/app/view/MyCoverView;

    .line 19
    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    move v1, v2

    .line 23
    goto :goto_1

    .line 24
    :cond_2
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyCoverView;->h()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    :goto_1
    if-eqz v1, :cond_3

    .line 29
    .line 30
    goto/16 :goto_4

    .line 31
    .line 32
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 33
    .line 34
    invoke-virtual {v1, p2}, Lcom/mycompany/app/main/MainListAdapter2;->z(I)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    iget v1, v0, Lcom/mycompany/app/main/MainListView2;->e:I

    .line 39
    .line 40
    iget-object v4, v0, Lcom/mycompany/app/main/MainListView2;->d0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 41
    .line 42
    if-nez v4, :cond_d

    .line 43
    .line 44
    iget-object v4, v0, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 45
    .line 46
    if-nez v4, :cond_4

    .line 47
    .line 48
    goto/16 :goto_4

    .line 49
    .line 50
    :cond_4
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView2;->i()V

    .line 51
    .line 52
    .line 53
    if-nez p2, :cond_5

    .line 54
    .line 55
    goto/16 :goto_4

    .line 56
    .line 57
    :cond_5
    new-instance v9, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .line 61
    .line 62
    const/16 v4, 0x11

    .line 63
    .line 64
    if-ne v1, v4, :cond_6

    .line 65
    .line 66
    sget-boolean v4, Lcom/mycompany/app/pref/PrefList;->F:Z

    .line 67
    .line 68
    if-eqz v4, :cond_9

    .line 69
    .line 70
    :cond_6
    iget v4, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 71
    .line 72
    iget v5, v0, Lcom/mycompany/app/main/MainListView2;->V:I

    .line 73
    .line 74
    if-le v4, v5, :cond_7

    .line 75
    .line 76
    new-instance v4, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 77
    .line 78
    sget v5, Lnet/kaki87/soul2/testing/R$string;->move_top:I

    .line 79
    .line 80
    invoke-direct {v4, v2, v5}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    :cond_7
    iget v4, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 87
    .line 88
    iget-object v5, v0, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 89
    .line 90
    iget-object v5, v5, Lcom/mycompany/app/main/MainListAdapter2;->g:Ljava/util/List;

    .line 91
    .line 92
    if-nez v5, :cond_8

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_8
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    :goto_2
    iget v5, v0, Lcom/mycompany/app/main/MainListView2;->W:I

    .line 100
    .line 101
    sub-int/2addr v2, v5

    .line 102
    sub-int/2addr v2, v3

    .line 103
    if-ge v4, v2, :cond_9

    .line 104
    .line 105
    new-instance v2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 106
    .line 107
    sget v4, Lnet/kaki87/soul2/testing/R$string;->move_bot:I

    .line 108
    .line 109
    invoke-direct {v2, v3, v4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    :cond_9
    const/16 v2, 0x25

    .line 116
    .line 117
    const/16 v3, 0xc

    .line 118
    .line 119
    const/16 v4, 0x9

    .line 120
    .line 121
    const/4 v5, 0x6

    .line 122
    if-ne v1, v2, :cond_a

    .line 123
    .line 124
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 125
    .line 126
    sget v2, Lnet/kaki87/soul2/testing/R$string;->delete:I

    .line 127
    .line 128
    invoke-direct {v1, v5, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 135
    .line 136
    sget v2, Lnet/kaki87/soul2/testing/R$string;->edit:I

    .line 137
    .line 138
    invoke-direct {v1, v4, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 145
    .line 146
    sget v2, Lnet/kaki87/soul2/testing/R$string;->details:I

    .line 147
    .line 148
    invoke-direct {v1, v3, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    goto/16 :goto_3

    .line 155
    .line 156
    :cond_a
    iget-boolean v1, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->k:Z

    .line 157
    .line 158
    const/4 v2, 0x7

    .line 159
    if-eqz v1, :cond_b

    .line 160
    .line 161
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 162
    .line 163
    sget v3, Lnet/kaki87/soul2/testing/R$string;->delete:I

    .line 164
    .line 165
    invoke-direct {v1, v5, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 172
    .line 173
    sget v3, Lnet/kaki87/soul2/testing/R$string;->move:I

    .line 174
    .line 175
    invoke-direct {v1, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 182
    .line 183
    const/16 v2, 0x8

    .line 184
    .line 185
    sget v3, Lnet/kaki87/soul2/testing/R$string;->rename:I

    .line 186
    .line 187
    invoke-direct {v1, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_b
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 195
    .line 196
    const/4 v6, 0x2

    .line 197
    sget v7, Lnet/kaki87/soul2/testing/R$string;->new_url:I

    .line 198
    .line 199
    invoke-direct {v1, v6, v7}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 206
    .line 207
    const/4 v6, 0x3

    .line 208
    sget v7, Lnet/kaki87/soul2/testing/R$string;->group_url:I

    .line 209
    .line 210
    invoke-direct {v1, v6, v7}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 217
    .line 218
    const/4 v6, 0x4

    .line 219
    sget v7, Lnet/kaki87/soul2/testing/R$string;->back_url:I

    .line 220
    .line 221
    invoke-direct {v1, v6, v7}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 228
    .line 229
    const/4 v6, 0x5

    .line 230
    sget v7, Lnet/kaki87/soul2/testing/R$string;->copy_url:I

    .line 231
    .line 232
    invoke-direct {v1, v6, v7}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 239
    .line 240
    sget v6, Lnet/kaki87/soul2/testing/R$string;->delete:I

    .line 241
    .line 242
    invoke-direct {v1, v5, v6}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 249
    .line 250
    sget v5, Lnet/kaki87/soul2/testing/R$string;->move:I

    .line 251
    .line 252
    invoke-direct {v1, v2, v5}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 259
    .line 260
    sget v2, Lnet/kaki87/soul2/testing/R$string;->edit:I

    .line 261
    .line 262
    invoke-direct {v1, v4, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 269
    .line 270
    const/16 v2, 0xa

    .line 271
    .line 272
    sget v4, Lnet/kaki87/soul2/testing/R$string;->share:I

    .line 273
    .line 274
    invoke-direct {v1, v2, v4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 281
    .line 282
    const/16 v2, 0xb

    .line 283
    .line 284
    sget v4, Lnet/kaki87/soul2/testing/R$string;->open_with:I

    .line 285
    .line 286
    invoke-direct {v1, v2, v4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 293
    .line 294
    sget v2, Lnet/kaki87/soul2/testing/R$string;->details:I

    .line 295
    .line 296
    invoke-direct {v1, v3, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    :goto_3
    new-instance v5, Lcom/mycompany/app/view/MyPopupMenu;

    .line 303
    .line 304
    iget-object v6, v0, Lcom/mycompany/app/main/MainListView2;->b:Lcom/mycompany/app/main/MainActivity;

    .line 305
    .line 306
    iget-object v7, v0, Lcom/mycompany/app/main/MainListView2;->g:Landroid/widget/RelativeLayout;

    .line 307
    .line 308
    sget-boolean v10, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 309
    .line 310
    new-instance v11, Lcom/mycompany/app/main/MainListView2$46;

    .line 311
    .line 312
    invoke-direct {v11, v0, p2}, Lcom/mycompany/app/main/MainListView2$46;-><init>(Lcom/mycompany/app/main/MainListView2;Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 313
    .line 314
    .line 315
    move-object v8, p1

    .line 316
    invoke-direct/range {v5 .. v11}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 317
    .line 318
    .line 319
    iput-object v5, v0, Lcom/mycompany/app/main/MainListView2;->d0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 320
    .line 321
    iget-object p1, v0, Lcom/mycompany/app/main/MainListView2;->y0:Lcom/mycompany/app/view/MyDialogNormal;

    .line 322
    .line 323
    if-eqz p1, :cond_c

    .line 324
    .line 325
    iput-object v5, p1, Lcom/mycompany/app/view/MyDialogNormal;->u:Lcom/mycompany/app/view/MyPopupWrap;

    .line 326
    .line 327
    return-void

    .line 328
    :cond_c
    iget-object p1, v0, Lcom/mycompany/app/main/MainListView2;->b:Lcom/mycompany/app/main/MainActivity;

    .line 329
    .line 330
    if-eqz p1, :cond_d

    .line 331
    .line 332
    iput-object v5, p1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 333
    .line 334
    :cond_d
    :goto_4
    return-void
.end method
