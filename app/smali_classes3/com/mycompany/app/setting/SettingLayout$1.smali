.class Lcom/mycompany/app/setting/SettingLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingLayout;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingLayout$1;->c:Lcom/mycompany/app/setting/SettingLayout;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLayout$1;->c:Lcom/mycompany/app/setting/SettingLayout;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLayout;->D1:Lcom/mycompany/app/view/MyMainRelative;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_0

    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingLayout;->Y0()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingLayout;->W0()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingLayout;->X0()V

    .line 16
    .line 17
    .line 18
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLayout;->E1:Lcom/mycompany/app/view/MyButtonImage;

    .line 19
    .line 20
    new-instance v2, Lcom/mycompany/app/setting/SettingLayout$2;

    .line 21
    .line 22
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingLayout$2;-><init>(Lcom/mycompany/app/setting/SettingLayout;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLayout;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 29
    .line 30
    new-instance v2, Lcom/mycompany/app/setting/SettingLayout$3;

    .line 31
    .line 32
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingLayout$3;-><init>(Lcom/mycompany/app/setting/SettingLayout;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLayout;->H1:Lcom/mycompany/app/view/MyButtonImage;

    .line 39
    .line 40
    new-instance v2, Lcom/mycompany/app/setting/SettingLayout$4;

    .line 41
    .line 42
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingLayout$4;-><init>(Lcom/mycompany/app/setting/SettingLayout;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    .line 47
    .line 48
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLayout;->I1:Lcom/mycompany/app/view/MyButtonImage;

    .line 49
    .line 50
    new-instance v2, Lcom/mycompany/app/setting/SettingLayout$5;

    .line 51
    .line 52
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingLayout$5;-><init>(Lcom/mycompany/app/setting/SettingLayout;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    .line 57
    .line 58
    new-instance v1, Lcom/mycompany/app/view/MyManagerLinear;

    .line 59
    .line 60
    const/4 v2, 0x0

    .line 61
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 62
    .line 63
    .line 64
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingLayout;->P1:Lcom/mycompany/app/view/MyManagerLinear;

    .line 65
    .line 66
    new-instance v3, Lcom/mycompany/app/main/MenuIconAdapter;

    .line 67
    .line 68
    iget-object v4, v0, Lcom/mycompany/app/setting/SettingLayout;->N1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 69
    .line 70
    iget-object v5, v0, Lcom/mycompany/app/setting/SettingLayout;->r2:[I

    .line 71
    .line 72
    new-instance v8, Lcom/mycompany/app/setting/SettingLayout$6;

    .line 73
    .line 74
    invoke-direct {v8, v0}, Lcom/mycompany/app/setting/SettingLayout$6;-><init>(Lcom/mycompany/app/setting/SettingLayout;)V

    .line 75
    .line 76
    .line 77
    const/4 v6, 0x2

    .line 78
    const/4 v7, 0x1

    .line 79
    invoke-direct/range {v3 .. v8}, Lcom/mycompany/app/main/MenuIconAdapter;-><init>(Landroid/view/View;[IIZLcom/mycompany/app/main/MenuIconAdapter$MenuListener;)V

    .line 80
    .line 81
    .line 82
    iput-object v3, v0, Lcom/mycompany/app/setting/SettingLayout;->O1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 83
    .line 84
    sget-boolean v1, Lcom/mycompany/app/pref/PrefRead;->v:Z

    .line 85
    .line 86
    const/4 v4, 0x1

    .line 87
    if-eqz v1, :cond_1

    .line 88
    .line 89
    iput-boolean v4, v3, Lcom/mycompany/app/main/MenuIconAdapter;->l:Z

    .line 90
    .line 91
    :cond_1
    iget-boolean v1, v0, Lcom/mycompany/app/setting/SettingLayout;->F2:Z

    .line 92
    .line 93
    invoke-virtual {v3, v1}, Lcom/mycompany/app/main/MenuIconAdapter;->I(Z)V

    .line 94
    .line 95
    .line 96
    new-instance v1, Lcom/mycompany/app/quick/MenuDragHelper;

    .line 97
    .line 98
    new-instance v3, Lcom/mycompany/app/setting/SettingLayout$7;

    .line 99
    .line 100
    invoke-direct {v3, v0}, Lcom/mycompany/app/setting/SettingLayout$7;-><init>(Lcom/mycompany/app/setting/SettingLayout;)V

    .line 101
    .line 102
    .line 103
    invoke-direct {v1, v3}, Lcom/mycompany/app/quick/MenuDragHelper;-><init>(Lcom/mycompany/app/quick/MenuDragHelper$MenuDragListener;)V

    .line 104
    .line 105
    .line 106
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingLayout;->Q1:Lcom/mycompany/app/quick/MenuDragHelper;

    .line 107
    .line 108
    new-instance v3, Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 109
    .line 110
    invoke-direct {v3, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 111
    .line 112
    .line 113
    iput-object v3, v0, Lcom/mycompany/app/setting/SettingLayout;->R1:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 114
    .line 115
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLayout;->N1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 116
    .line 117
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->i(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 118
    .line 119
    .line 120
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLayout;->N1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 121
    .line 122
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingLayout;->P1:Lcom/mycompany/app/view/MyManagerLinear;

    .line 123
    .line 124
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 125
    .line 126
    .line 127
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLayout;->N1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 128
    .line 129
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingLayout;->O1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 130
    .line 131
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 132
    .line 133
    .line 134
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLayout;->U1:Lcom/mycompany/app/view/MyButtonImage;

    .line 135
    .line 136
    new-instance v3, Lcom/mycompany/app/setting/SettingLayout$8;

    .line 137
    .line 138
    invoke-direct {v3, v0}, Lcom/mycompany/app/setting/SettingLayout$8;-><init>(Lcom/mycompany/app/setting/SettingLayout;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    .line 143
    .line 144
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLayout;->V1:Lcom/mycompany/app/view/MyButtonImage;

    .line 145
    .line 146
    new-instance v3, Lcom/mycompany/app/setting/SettingLayout$9;

    .line 147
    .line 148
    invoke-direct {v3, v0}, Lcom/mycompany/app/setting/SettingLayout$9;-><init>(Lcom/mycompany/app/setting/SettingLayout;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    .line 153
    .line 154
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLayout;->W1:Lcom/mycompany/app/view/MyButtonImage;

    .line 155
    .line 156
    new-instance v3, Lcom/mycompany/app/setting/SettingLayout$10;

    .line 157
    .line 158
    invoke-direct {v3, v0}, Lcom/mycompany/app/setting/SettingLayout$10;-><init>(Lcom/mycompany/app/setting/SettingLayout;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    .line 163
    .line 164
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLayout;->X1:Lcom/mycompany/app/view/MyButtonImage;

    .line 165
    .line 166
    new-instance v3, Lcom/mycompany/app/setting/SettingLayout$11;

    .line 167
    .line 168
    invoke-direct {v3, v0}, Lcom/mycompany/app/setting/SettingLayout$11;-><init>(Lcom/mycompany/app/setting/SettingLayout;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    .line 173
    .line 174
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLayout;->Y1:Lcom/mycompany/app/view/MyButtonImage;

    .line 175
    .line 176
    new-instance v3, Lcom/mycompany/app/setting/SettingLayout$12;

    .line 177
    .line 178
    invoke-direct {v3, v0}, Lcom/mycompany/app/setting/SettingLayout$12;-><init>(Lcom/mycompany/app/setting/SettingLayout;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    .line 183
    .line 184
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLayout;->c2:Lcom/mycompany/app/view/MyButtonRelative;

    .line 185
    .line 186
    new-instance v3, Lcom/mycompany/app/setting/SettingLayout$13;

    .line 187
    .line 188
    invoke-direct {v3, v0}, Lcom/mycompany/app/setting/SettingLayout$13;-><init>(Lcom/mycompany/app/setting/SettingLayout;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonRelative;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    .line 193
    .line 194
    new-instance v1, Lcom/mycompany/app/view/MyManagerLinear;

    .line 195
    .line 196
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 197
    .line 198
    .line 199
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingLayout;->i2:Lcom/mycompany/app/view/MyManagerLinear;

    .line 200
    .line 201
    new-instance v5, Lcom/mycompany/app/main/MenuIconAdapter;

    .line 202
    .line 203
    iget-object v6, v0, Lcom/mycompany/app/setting/SettingLayout;->g2:Lcom/mycompany/app/view/MyRecyclerView;

    .line 204
    .line 205
    iget-object v7, v0, Lcom/mycompany/app/setting/SettingLayout;->s2:[I

    .line 206
    .line 207
    new-instance v10, Lcom/mycompany/app/setting/SettingLayout$14;

    .line 208
    .line 209
    invoke-direct {v10, v0}, Lcom/mycompany/app/setting/SettingLayout$14;-><init>(Lcom/mycompany/app/setting/SettingLayout;)V

    .line 210
    .line 211
    .line 212
    const/4 v8, 0x3

    .line 213
    const/4 v9, 0x1

    .line 214
    invoke-direct/range {v5 .. v10}, Lcom/mycompany/app/main/MenuIconAdapter;-><init>(Landroid/view/View;[IIZLcom/mycompany/app/main/MenuIconAdapter$MenuListener;)V

    .line 215
    .line 216
    .line 217
    iput-object v5, v0, Lcom/mycompany/app/setting/SettingLayout;->h2:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 218
    .line 219
    new-instance v1, Lcom/mycompany/app/quick/MenuDragHelper;

    .line 220
    .line 221
    new-instance v2, Lcom/mycompany/app/setting/SettingLayout$15;

    .line 222
    .line 223
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingLayout$15;-><init>(Lcom/mycompany/app/setting/SettingLayout;)V

    .line 224
    .line 225
    .line 226
    invoke-direct {v1, v2}, Lcom/mycompany/app/quick/MenuDragHelper;-><init>(Lcom/mycompany/app/quick/MenuDragHelper$MenuDragListener;)V

    .line 227
    .line 228
    .line 229
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingLayout;->j2:Lcom/mycompany/app/quick/MenuDragHelper;

    .line 230
    .line 231
    new-instance v2, Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 232
    .line 233
    invoke-direct {v2, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 234
    .line 235
    .line 236
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingLayout;->k2:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 237
    .line 238
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLayout;->g2:Lcom/mycompany/app/view/MyRecyclerView;

    .line 239
    .line 240
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->i(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 241
    .line 242
    .line 243
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 244
    .line 245
    const/16 v2, 0x1f

    .line 246
    .line 247
    if-ge v1, v2, :cond_2

    .line 248
    .line 249
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLayout;->g2:Lcom/mycompany/app/view/MyRecyclerView;

    .line 250
    .line 251
    const/4 v2, 0x2

    .line 252
    invoke-virtual {v1, v2}, Landroid/view/View;->setOverScrollMode(I)V

    .line 253
    .line 254
    .line 255
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLayout;->g2:Lcom/mycompany/app/view/MyRecyclerView;

    .line 256
    .line 257
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingLayout;->i2:Lcom/mycompany/app/view/MyManagerLinear;

    .line 258
    .line 259
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 260
    .line 261
    .line 262
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLayout;->g2:Lcom/mycompany/app/view/MyRecyclerView;

    .line 263
    .line 264
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingLayout;->h2:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 265
    .line 266
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 267
    .line 268
    .line 269
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLayout;->n2:Lcom/mycompany/app/view/MyButtonImage;

    .line 270
    .line 271
    new-instance v2, Lcom/mycompany/app/setting/SettingLayout$16;

    .line 272
    .line 273
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingLayout$16;-><init>(Lcom/mycompany/app/setting/SettingLayout;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    .line 278
    .line 279
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLayout;->o2:Lcom/mycompany/app/view/MyButtonImage;

    .line 280
    .line 281
    new-instance v2, Lcom/mycompany/app/setting/SettingLayout$17;

    .line 282
    .line 283
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingLayout$17;-><init>(Lcom/mycompany/app/setting/SettingLayout;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    .line 288
    .line 289
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLayout;->p2:Lcom/mycompany/app/view/MyButtonImage;

    .line 290
    .line 291
    new-instance v2, Lcom/mycompany/app/setting/SettingLayout$18;

    .line 292
    .line 293
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingLayout$18;-><init>(Lcom/mycompany/app/setting/SettingLayout;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    .line 298
    .line 299
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLayout;->q2:Lcom/mycompany/app/view/MyButtonImage;

    .line 300
    .line 301
    new-instance v2, Lcom/mycompany/app/setting/SettingLayout$19;

    .line 302
    .line 303
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingLayout$19;-><init>(Lcom/mycompany/app/setting/SettingLayout;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingLayout;->U0()V

    .line 310
    .line 311
    .line 312
    sget-boolean v1, Lcom/mycompany/app/pref/PrefRead;->v:Z

    .line 313
    .line 314
    if-eqz v1, :cond_3

    .line 315
    .line 316
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLayout;->U1:Lcom/mycompany/app/view/MyButtonImage;

    .line 317
    .line 318
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setNoti(Z)V

    .line 319
    .line 320
    .line 321
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLayout;->n2:Lcom/mycompany/app/view/MyButtonImage;

    .line 322
    .line 323
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setNoti(Z)V

    .line 324
    .line 325
    .line 326
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLayout;->D1:Lcom/mycompany/app/view/MyMainRelative;

    .line 327
    .line 328
    new-instance v2, Lcom/mycompany/app/setting/SettingLayout$20;

    .line 329
    .line 330
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingLayout$20;-><init>(Lcom/mycompany/app/setting/SettingLayout;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 334
    .line 335
    .line 336
    :cond_3
    :goto_0
    return-void
.end method
