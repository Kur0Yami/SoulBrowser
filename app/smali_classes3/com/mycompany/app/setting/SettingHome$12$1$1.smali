.class Lcom/mycompany/app/setting/SettingHome$12$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingHome$12$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingHome$12$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingHome$12$1$1;->c:Lcom/mycompany/app/setting/SettingHome$12$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingHome$12$1$1;->c:Lcom/mycompany/app/setting/SettingHome$12$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingHome$12$1;->c:Lcom/mycompany/app/setting/SettingHome$12;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingHome$12;->c:Lcom/mycompany/app/setting/SettingHome;

    .line 6
    .line 7
    sget v1, Lcom/mycompany/app/setting/SettingHome;->E2:I

    .line 8
    .line 9
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->j2:Lcom/mycompany/app/view/MyRecyclerView;

    .line 19
    .line 20
    const v2, -0xdededf

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 24
    .line 25
    .line 26
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->s2:Lcom/mycompany/app/view/MyRecyclerView;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->j2:Lcom/mycompany/app/view/MyRecyclerView;

    .line 33
    .line 34
    const/4 v2, -0x1

    .line 35
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 36
    .line 37
    .line 38
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->s2:Lcom/mycompany/app/view/MyRecyclerView;

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 41
    .line 42
    .line 43
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 44
    .line 45
    const/16 v2, 0x1f

    .line 46
    .line 47
    if-ge v1, v2, :cond_2

    .line 48
    .line 49
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->g2:Landroidx/viewpager2/widget/ViewPager2;

    .line 50
    .line 51
    const/4 v2, 0x2

    .line 52
    invoke-virtual {v1, v2}, Landroid/view/View;->setOverScrollMode(I)V

    .line 53
    .line 54
    .line 55
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 56
    .line 57
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->O5(Landroid/content/Context;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    const/4 v2, 0x1

    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->g2:Landroidx/viewpager2/widget/ViewPager2;

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setLayoutDirection(I)V

    .line 67
    .line 68
    .line 69
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->g2:Landroidx/viewpager2/widget/ViewPager2;

    .line 70
    .line 71
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->q7(Landroid/view/View;)V

    .line 72
    .line 73
    .line 74
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->g2:Landroidx/viewpager2/widget/ViewPager2;

    .line 75
    .line 76
    if-nez v1, :cond_4

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_4
    new-instance v3, Lcom/mycompany/app/setting/SettingHome$20;

    .line 80
    .line 81
    invoke-direct {v3, v0}, Lcom/mycompany/app/setting/SettingHome$20;-><init>(Lcom/mycompany/app/setting/SettingHome;)V

    .line 82
    .line 83
    .line 84
    iput-object v3, v0, Lcom/mycompany/app/setting/SettingHome;->h2:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 85
    .line 86
    new-instance v3, Lcom/mycompany/app/setting/SettingHome$ViewPagerAdapter;

    .line 87
    .line 88
    invoke-direct {v3, v0}, Lcom/mycompany/app/setting/SettingHome$ViewPagerAdapter;-><init>(Lcom/mycompany/app/setting/SettingHome;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v3}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 92
    .line 93
    .line 94
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->g2:Landroidx/viewpager2/widget/ViewPager2;

    .line 95
    .line 96
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingHome;->h2:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 97
    .line 98
    invoke-virtual {v1, v3}, Landroidx/viewpager2/widget/ViewPager2;->b(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 99
    .line 100
    .line 101
    :goto_1
    new-instance v1, Lcom/google/android/material/tabs/TabLayoutMediator;

    .line 102
    .line 103
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingHome;->f2:Lcom/google/android/material/tabs/TabLayout;

    .line 104
    .line 105
    iget-object v4, v0, Lcom/mycompany/app/setting/SettingHome;->g2:Landroidx/viewpager2/widget/ViewPager2;

    .line 106
    .line 107
    new-instance v5, Lcom/mycompany/app/setting/SettingHome$13;

    .line 108
    .line 109
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-direct {v1, v3, v4, v5}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayoutMediator;->a()V

    .line 116
    .line 117
    .line 118
    new-instance v1, Lcom/mycompany/app/view/MyManagerLinear;

    .line 119
    .line 120
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 121
    .line 122
    .line 123
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->n2:Lcom/mycompany/app/view/MyManagerLinear;

    .line 124
    .line 125
    new-instance v1, Lcom/mycompany/app/quick/QuickAddAdapter;

    .line 126
    .line 127
    iget-object v3, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 128
    .line 129
    new-instance v4, Lcom/mycompany/app/setting/SettingHome$14;

    .line 130
    .line 131
    invoke-direct {v4, v0}, Lcom/mycompany/app/setting/SettingHome$14;-><init>(Lcom/mycompany/app/setting/SettingHome;)V

    .line 132
    .line 133
    .line 134
    invoke-direct {v1, v3, v4}, Lcom/mycompany/app/quick/QuickAddAdapter;-><init>(Landroid/content/Context;Lcom/mycompany/app/quick/QuickAddAdapter$QuickListListener;)V

    .line 135
    .line 136
    .line 137
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->o2:Lcom/mycompany/app/quick/QuickAddAdapter;

    .line 138
    .line 139
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->j2:Lcom/mycompany/app/view/MyRecyclerView;

    .line 140
    .line 141
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingHome;->n2:Lcom/mycompany/app/view/MyManagerLinear;

    .line 142
    .line 143
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 144
    .line 145
    .line 146
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->j2:Lcom/mycompany/app/view/MyRecyclerView;

    .line 147
    .line 148
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingHome;->o2:Lcom/mycompany/app/quick/QuickAddAdapter;

    .line 149
    .line 150
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 151
    .line 152
    .line 153
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->j2:Lcom/mycompany/app/view/MyRecyclerView;

    .line 154
    .line 155
    new-instance v3, Lcom/mycompany/app/setting/SettingHome$15;

    .line 156
    .line 157
    invoke-direct {v3, v0}, Lcom/mycompany/app/setting/SettingHome$15;-><init>(Lcom/mycompany/app/setting/SettingHome;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->j(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 161
    .line 162
    .line 163
    new-instance v1, Lcom/mycompany/app/view/MyManagerLinear;

    .line 164
    .line 165
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 166
    .line 167
    .line 168
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->w2:Lcom/mycompany/app/view/MyManagerLinear;

    .line 169
    .line 170
    new-instance v1, Lcom/mycompany/app/quick/QuickAddAdapter;

    .line 171
    .line 172
    iget-object v3, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 173
    .line 174
    new-instance v4, Lcom/mycompany/app/setting/SettingHome$16;

    .line 175
    .line 176
    invoke-direct {v4, v0}, Lcom/mycompany/app/setting/SettingHome$16;-><init>(Lcom/mycompany/app/setting/SettingHome;)V

    .line 177
    .line 178
    .line 179
    invoke-direct {v1, v3, v4}, Lcom/mycompany/app/quick/QuickAddAdapter;-><init>(Landroid/content/Context;Lcom/mycompany/app/quick/QuickAddAdapter$QuickListListener;)V

    .line 180
    .line 181
    .line 182
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->x2:Lcom/mycompany/app/quick/QuickAddAdapter;

    .line 183
    .line 184
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->s2:Lcom/mycompany/app/view/MyRecyclerView;

    .line 185
    .line 186
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingHome;->w2:Lcom/mycompany/app/view/MyManagerLinear;

    .line 187
    .line 188
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 189
    .line 190
    .line 191
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->s2:Lcom/mycompany/app/view/MyRecyclerView;

    .line 192
    .line 193
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingHome;->x2:Lcom/mycompany/app/quick/QuickAddAdapter;

    .line 194
    .line 195
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 196
    .line 197
    .line 198
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->s2:Lcom/mycompany/app/view/MyRecyclerView;

    .line 199
    .line 200
    new-instance v3, Lcom/mycompany/app/setting/SettingHome$17;

    .line 201
    .line 202
    invoke-direct {v3, v0}, Lcom/mycompany/app/setting/SettingHome$17;-><init>(Lcom/mycompany/app/setting/SettingHome;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->j(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 206
    .line 207
    .line 208
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->l2:Lcom/mycompany/app/view/MyButtonText;

    .line 209
    .line 210
    const/high16 v3, 0x21000000

    .line 211
    .line 212
    const v4, -0x70708

    .line 213
    .line 214
    .line 215
    const v5, -0xd8d8d9

    .line 216
    .line 217
    .line 218
    const v6, -0x50506

    .line 219
    .line 220
    .line 221
    const/high16 v7, -0x1000000

    .line 222
    .line 223
    if-eqz v1, :cond_6

    .line 224
    .line 225
    sget-boolean v8, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 226
    .line 227
    if-eqz v8, :cond_5

    .line 228
    .line 229
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 230
    .line 231
    .line 232
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->l2:Lcom/mycompany/app/view/MyButtonText;

    .line 233
    .line 234
    invoke-virtual {v1, v7, v5}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 235
    .line 236
    .line 237
    goto :goto_2

    .line 238
    :cond_5
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 239
    .line 240
    .line 241
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->l2:Lcom/mycompany/app/view/MyButtonText;

    .line 242
    .line 243
    invoke-virtual {v1, v4, v3}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 244
    .line 245
    .line 246
    :goto_2
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->l2:Lcom/mycompany/app/view/MyButtonText;

    .line 247
    .line 248
    new-instance v8, Lcom/mycompany/app/setting/SettingHome$18;

    .line 249
    .line 250
    invoke-direct {v8, v0}, Lcom/mycompany/app/setting/SettingHome$18;-><init>(Lcom/mycompany/app/setting/SettingHome;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1, v8}, Lcom/mycompany/app/view/MyButtonText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    .line 255
    .line 256
    :cond_6
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->u2:Lcom/mycompany/app/view/MyButtonText;

    .line 257
    .line 258
    if-eqz v1, :cond_8

    .line 259
    .line 260
    sget-boolean v8, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 261
    .line 262
    if-eqz v8, :cond_7

    .line 263
    .line 264
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 265
    .line 266
    .line 267
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->u2:Lcom/mycompany/app/view/MyButtonText;

    .line 268
    .line 269
    invoke-virtual {v1, v7, v5}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 270
    .line 271
    .line 272
    goto :goto_3

    .line 273
    :cond_7
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 274
    .line 275
    .line 276
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->u2:Lcom/mycompany/app/view/MyButtonText;

    .line 277
    .line 278
    invoke-virtual {v1, v4, v3}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 279
    .line 280
    .line 281
    :goto_3
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->u2:Lcom/mycompany/app/view/MyButtonText;

    .line 282
    .line 283
    new-instance v3, Lcom/mycompany/app/setting/SettingHome$19;

    .line 284
    .line 285
    invoke-direct {v3, v0}, Lcom/mycompany/app/setting/SettingHome$19;-><init>(Lcom/mycompany/app/setting/SettingHome;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    .line 290
    .line 291
    :cond_8
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->m2:Lcom/mycompany/app/view/MyCoverView;

    .line 292
    .line 293
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyCoverView;->m(Z)V

    .line 294
    .line 295
    .line 296
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->v2:Lcom/mycompany/app/view/MyCoverView;

    .line 297
    .line 298
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyCoverView;->m(Z)V

    .line 299
    .line 300
    .line 301
    sget-boolean v1, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 302
    .line 303
    iput-boolean v1, v0, Lcom/mycompany/app/setting/SettingHome;->q2:Z

    .line 304
    .line 305
    const/4 v3, 0x0

    .line 306
    const/4 v4, 0x0

    .line 307
    invoke-virtual {v0, v3, v1, v4}, Lcom/mycompany/app/setting/SettingHome;->Q0(Ljava/lang/String;ZZ)V

    .line 308
    .line 309
    .line 310
    sget-boolean v1, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 311
    .line 312
    iget-object v5, v0, Lcom/mycompany/app/setting/SettingHome;->y2:Lcom/mycompany/app/setting/SettingHome$HistTask;

    .line 313
    .line 314
    if-eqz v5, :cond_9

    .line 315
    .line 316
    iput-boolean v2, v5, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 317
    .line 318
    :cond_9
    iput-object v3, v0, Lcom/mycompany/app/setting/SettingHome;->y2:Lcom/mycompany/app/setting/SettingHome$HistTask;

    .line 319
    .line 320
    new-instance v2, Lcom/mycompany/app/setting/SettingHome$HistTask;

    .line 321
    .line 322
    invoke-direct {v2, v0, v1, v4}, Lcom/mycompany/app/setting/SettingHome$HistTask;-><init>(Lcom/mycompany/app/setting/SettingHome;ZZ)V

    .line 323
    .line 324
    .line 325
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingHome;->y2:Lcom/mycompany/app/setting/SettingHome$HistTask;

    .line 326
    .line 327
    iget-object v0, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 328
    .line 329
    invoke-virtual {v2, v0}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 330
    .line 331
    .line 332
    return-void
.end method
