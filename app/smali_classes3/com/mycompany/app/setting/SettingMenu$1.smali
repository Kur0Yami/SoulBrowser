.class Lcom/mycompany/app/setting/SettingMenu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingMenu;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingMenu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingMenu$1;->c:Lcom/mycompany/app/setting/SettingMenu;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu$1;->c:Lcom/mycompany/app/setting/SettingMenu;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMenu;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_0

    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingMenu;->T0()V

    .line 10
    .line 11
    .line 12
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMenu;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 13
    .line 14
    new-instance v2, Lcom/mycompany/app/setting/SettingMenu$2;

    .line 15
    .line 16
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingMenu$2;-><init>(Lcom/mycompany/app/setting/SettingMenu;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMenu;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 23
    .line 24
    new-instance v2, Lcom/mycompany/app/setting/SettingMenu$3;

    .line 25
    .line 26
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingMenu$3;-><init>(Lcom/mycompany/app/setting/SettingMenu;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMenu;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 33
    .line 34
    new-instance v2, Lcom/mycompany/app/setting/SettingMenu$4;

    .line 35
    .line 36
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingMenu$4;-><init>(Lcom/mycompany/app/setting/SettingMenu;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    .line 41
    .line 42
    new-instance v1, Lcom/mycompany/app/view/MyManagerGrid;

    .line 43
    .line 44
    iget v2, v0, Lcom/mycompany/app/setting/SettingMenu;->q2:I

    .line 45
    .line 46
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    .line 47
    .line 48
    .line 49
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingMenu;->J1:Lcom/mycompany/app/view/MyManagerGrid;

    .line 50
    .line 51
    new-instance v3, Lcom/mycompany/app/main/MenuIconAdapter;

    .line 52
    .line 53
    iget-object v4, v0, Lcom/mycompany/app/setting/SettingMenu;->H1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 54
    .line 55
    iget-object v5, v0, Lcom/mycompany/app/setting/SettingMenu;->d2:[I

    .line 56
    .line 57
    new-instance v8, Lcom/mycompany/app/setting/SettingMenu$5;

    .line 58
    .line 59
    invoke-direct {v8, v0}, Lcom/mycompany/app/setting/SettingMenu$5;-><init>(Lcom/mycompany/app/setting/SettingMenu;)V

    .line 60
    .line 61
    .line 62
    const/4 v6, 0x0

    .line 63
    const/4 v7, 0x1

    .line 64
    invoke-direct/range {v3 .. v8}, Lcom/mycompany/app/main/MenuIconAdapter;-><init>(Landroid/view/View;[IIZLcom/mycompany/app/main/MenuIconAdapter$MenuListener;)V

    .line 65
    .line 66
    .line 67
    iput-object v3, v0, Lcom/mycompany/app/setting/SettingMenu;->I1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 68
    .line 69
    new-instance v1, Lcom/mycompany/app/quick/MenuDragHelper;

    .line 70
    .line 71
    new-instance v2, Lcom/mycompany/app/setting/SettingMenu$6;

    .line 72
    .line 73
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingMenu$6;-><init>(Lcom/mycompany/app/setting/SettingMenu;)V

    .line 74
    .line 75
    .line 76
    invoke-direct {v1, v2}, Lcom/mycompany/app/quick/MenuDragHelper;-><init>(Lcom/mycompany/app/quick/MenuDragHelper$MenuDragListener;)V

    .line 77
    .line 78
    .line 79
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingMenu;->K1:Lcom/mycompany/app/quick/MenuDragHelper;

    .line 80
    .line 81
    new-instance v2, Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 82
    .line 83
    invoke-direct {v2, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 84
    .line 85
    .line 86
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingMenu;->L1:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 87
    .line 88
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMenu;->H1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 89
    .line 90
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->i(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 91
    .line 92
    .line 93
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMenu;->H1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 94
    .line 95
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingMenu;->J1:Lcom/mycompany/app/view/MyManagerGrid;

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 98
    .line 99
    .line 100
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMenu;->H1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 101
    .line 102
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingMenu;->I1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 105
    .line 106
    .line 107
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMenu;->H1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 108
    .line 109
    new-instance v2, Lcom/mycompany/app/setting/SettingMenu$7;

    .line 110
    .line 111
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingMenu$7;-><init>(Lcom/mycompany/app/setting/SettingMenu;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->j(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 115
    .line 116
    .line 117
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMenu;->O1:Lcom/mycompany/app/view/MyButtonImage;

    .line 118
    .line 119
    new-instance v2, Lcom/mycompany/app/setting/SettingMenu$8;

    .line 120
    .line 121
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingMenu$8;-><init>(Lcom/mycompany/app/setting/SettingMenu;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    .line 126
    .line 127
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMenu;->P1:Lcom/mycompany/app/view/MyButtonImage;

    .line 128
    .line 129
    new-instance v2, Lcom/mycompany/app/setting/SettingMenu$9;

    .line 130
    .line 131
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingMenu$9;-><init>(Lcom/mycompany/app/setting/SettingMenu;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    .line 136
    .line 137
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMenu;->Q1:Lcom/mycompany/app/view/MyButtonImage;

    .line 138
    .line 139
    new-instance v2, Lcom/mycompany/app/setting/SettingMenu$10;

    .line 140
    .line 141
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingMenu$10;-><init>(Lcom/mycompany/app/setting/SettingMenu;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    .line 146
    .line 147
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMenu;->R1:Lcom/mycompany/app/view/MyButtonImage;

    .line 148
    .line 149
    new-instance v2, Lcom/mycompany/app/setting/SettingMenu$11;

    .line 150
    .line 151
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingMenu$11;-><init>(Lcom/mycompany/app/setting/SettingMenu;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    .line 156
    .line 157
    new-instance v1, Lcom/mycompany/app/view/MyManagerLinear;

    .line 158
    .line 159
    const/4 v2, 0x0

    .line 160
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 161
    .line 162
    .line 163
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingMenu;->U1:Lcom/mycompany/app/view/MyManagerLinear;

    .line 164
    .line 165
    new-instance v3, Lcom/mycompany/app/main/MenuIconAdapter;

    .line 166
    .line 167
    iget-object v4, v0, Lcom/mycompany/app/setting/SettingMenu;->S1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 168
    .line 169
    iget-object v5, v0, Lcom/mycompany/app/setting/SettingMenu;->e2:[I

    .line 170
    .line 171
    new-instance v8, Lcom/mycompany/app/setting/SettingMenu$12;

    .line 172
    .line 173
    invoke-direct {v8, v0}, Lcom/mycompany/app/setting/SettingMenu$12;-><init>(Lcom/mycompany/app/setting/SettingMenu;)V

    .line 174
    .line 175
    .line 176
    const/4 v6, 0x1

    .line 177
    invoke-direct/range {v3 .. v8}, Lcom/mycompany/app/main/MenuIconAdapter;-><init>(Landroid/view/View;[IIZLcom/mycompany/app/main/MenuIconAdapter$MenuListener;)V

    .line 178
    .line 179
    .line 180
    iput-object v3, v0, Lcom/mycompany/app/setting/SettingMenu;->T1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 181
    .line 182
    new-instance v1, Lcom/mycompany/app/quick/MenuDragHelper;

    .line 183
    .line 184
    new-instance v2, Lcom/mycompany/app/setting/SettingMenu$13;

    .line 185
    .line 186
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingMenu$13;-><init>(Lcom/mycompany/app/setting/SettingMenu;)V

    .line 187
    .line 188
    .line 189
    invoke-direct {v1, v2}, Lcom/mycompany/app/quick/MenuDragHelper;-><init>(Lcom/mycompany/app/quick/MenuDragHelper$MenuDragListener;)V

    .line 190
    .line 191
    .line 192
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingMenu;->V1:Lcom/mycompany/app/quick/MenuDragHelper;

    .line 193
    .line 194
    new-instance v2, Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 195
    .line 196
    invoke-direct {v2, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 197
    .line 198
    .line 199
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingMenu;->W1:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 200
    .line 201
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMenu;->S1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 202
    .line 203
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->i(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 204
    .line 205
    .line 206
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMenu;->S1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 207
    .line 208
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingMenu;->U1:Lcom/mycompany/app/view/MyManagerLinear;

    .line 209
    .line 210
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 211
    .line 212
    .line 213
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMenu;->S1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 214
    .line 215
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingMenu;->T1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 216
    .line 217
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 218
    .line 219
    .line 220
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMenu;->Z1:Lcom/mycompany/app/view/MyButtonImage;

    .line 221
    .line 222
    new-instance v2, Lcom/mycompany/app/setting/SettingMenu$14;

    .line 223
    .line 224
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingMenu$14;-><init>(Lcom/mycompany/app/setting/SettingMenu;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    .line 229
    .line 230
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMenu;->a2:Lcom/mycompany/app/view/MyButtonImage;

    .line 231
    .line 232
    new-instance v2, Lcom/mycompany/app/setting/SettingMenu$15;

    .line 233
    .line 234
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingMenu$15;-><init>(Lcom/mycompany/app/setting/SettingMenu;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    .line 239
    .line 240
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMenu;->b2:Lcom/mycompany/app/view/MyButtonImage;

    .line 241
    .line 242
    new-instance v2, Lcom/mycompany/app/setting/SettingMenu$16;

    .line 243
    .line 244
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingMenu$16;-><init>(Lcom/mycompany/app/setting/SettingMenu;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    .line 249
    .line 250
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMenu;->c2:Lcom/mycompany/app/view/MyButtonImage;

    .line 251
    .line 252
    new-instance v2, Lcom/mycompany/app/setting/SettingMenu$17;

    .line 253
    .line 254
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingMenu$17;-><init>(Lcom/mycompany/app/setting/SettingMenu;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingMenu;->R0()V

    .line 261
    .line 262
    .line 263
    sget-boolean v1, Lcom/mycompany/app/pref/PrefRead;->u:Z

    .line 264
    .line 265
    if-eqz v1, :cond_1

    .line 266
    .line 267
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMenu;->O1:Lcom/mycompany/app/view/MyButtonImage;

    .line 268
    .line 269
    const/4 v2, 0x1

    .line 270
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setNoti(Z)V

    .line 271
    .line 272
    .line 273
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMenu;->Z1:Lcom/mycompany/app/view/MyButtonImage;

    .line 274
    .line 275
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setNoti(Z)V

    .line 276
    .line 277
    .line 278
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMenu;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 279
    .line 280
    new-instance v2, Lcom/mycompany/app/setting/SettingMenu$18;

    .line 281
    .line 282
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingMenu$18;-><init>(Lcom/mycompany/app/setting/SettingMenu;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 286
    .line 287
    .line 288
    :cond_1
    :goto_0
    return-void
.end method
