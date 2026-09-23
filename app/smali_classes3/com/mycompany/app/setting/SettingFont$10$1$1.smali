.class Lcom/mycompany/app/setting/SettingFont$10$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingFont$10$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingFont$10$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingFont$10$1$1;->c:Lcom/mycompany/app/setting/SettingFont$10$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont$10$1$1;->c:Lcom/mycompany/app/setting/SettingFont$10$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingFont$10$1;->c:Lcom/mycompany/app/setting/SettingFont$10;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingFont$10;->c:Lcom/mycompany/app/setting/SettingFont;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/setting/SettingFont;->h2:Z

    .line 13
    .line 14
    const/4 v2, -0x1

    .line 15
    const v3, -0xdededf

    .line 16
    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->U1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 21
    .line 22
    sget-boolean v4, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 23
    .line 24
    if-eqz v4, :cond_1

    .line 25
    .line 26
    const/high16 v4, -0x1000000

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const v4, -0x70708

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->U1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 37
    .line 38
    sget-boolean v4, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 39
    .line 40
    if-eqz v4, :cond_3

    .line 41
    .line 42
    move v4, v3

    .line 43
    goto :goto_1

    .line 44
    :cond_3
    move v4, v2

    .line 45
    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 46
    .line 47
    .line 48
    :goto_2
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 49
    .line 50
    if-eqz v1, :cond_4

    .line 51
    .line 52
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->j2:Lcom/mycompany/app/view/MyRecyclerView;

    .line 53
    .line 54
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->j2:Lcom/mycompany/app/view/MyRecyclerView;

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 61
    .line 62
    .line 63
    :goto_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 64
    .line 65
    const/16 v2, 0x1f

    .line 66
    .line 67
    if-ge v1, v2, :cond_5

    .line 68
    .line 69
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->R1:Landroidx/viewpager2/widget/ViewPager2;

    .line 70
    .line 71
    const/4 v2, 0x2

    .line 72
    invoke-virtual {v1, v2}, Landroid/view/View;->setOverScrollMode(I)V

    .line 73
    .line 74
    .line 75
    :cond_5
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 76
    .line 77
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->O5(Landroid/content/Context;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    const/4 v2, 0x1

    .line 82
    if-eqz v1, :cond_6

    .line 83
    .line 84
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->R1:Landroidx/viewpager2/widget/ViewPager2;

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setLayoutDirection(I)V

    .line 87
    .line 88
    .line 89
    :cond_6
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->R1:Landroidx/viewpager2/widget/ViewPager2;

    .line 90
    .line 91
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->q7(Landroid/view/View;)V

    .line 92
    .line 93
    .line 94
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->R1:Landroidx/viewpager2/widget/ViewPager2;

    .line 95
    .line 96
    if-nez v1, :cond_7

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_7
    new-instance v3, Lcom/mycompany/app/setting/SettingFont$17;

    .line 100
    .line 101
    invoke-direct {v3, v0}, Lcom/mycompany/app/setting/SettingFont$17;-><init>(Lcom/mycompany/app/setting/SettingFont;)V

    .line 102
    .line 103
    .line 104
    iput-object v3, v0, Lcom/mycompany/app/setting/SettingFont;->S1:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 105
    .line 106
    new-instance v3, Lcom/mycompany/app/setting/SettingFont$ViewPagerAdapter;

    .line 107
    .line 108
    invoke-direct {v3, v0}, Lcom/mycompany/app/setting/SettingFont$ViewPagerAdapter;-><init>(Lcom/mycompany/app/setting/SettingFont;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v3}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 112
    .line 113
    .line 114
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->R1:Landroidx/viewpager2/widget/ViewPager2;

    .line 115
    .line 116
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingFont;->S1:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 117
    .line 118
    invoke-virtual {v1, v3}, Landroidx/viewpager2/widget/ViewPager2;->b(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 119
    .line 120
    .line 121
    :goto_4
    new-instance v1, Lcom/google/android/material/tabs/TabLayoutMediator;

    .line 122
    .line 123
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingFont;->Q1:Lcom/google/android/material/tabs/TabLayout;

    .line 124
    .line 125
    iget-object v4, v0, Lcom/mycompany/app/setting/SettingFont;->R1:Landroidx/viewpager2/widget/ViewPager2;

    .line 126
    .line 127
    new-instance v5, Lcom/mycompany/app/setting/SettingFont$11;

    .line 128
    .line 129
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-direct {v1, v3, v4, v5}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayoutMediator;->a()V

    .line 136
    .line 137
    .line 138
    new-instance v1, Lcom/mycompany/app/view/MyManagerLinear;

    .line 139
    .line 140
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 141
    .line 142
    .line 143
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->X1:Lcom/mycompany/app/view/MyManagerLinear;

    .line 144
    .line 145
    new-instance v1, Lcom/mycompany/app/setting/SettingFontAdapter;

    .line 146
    .line 147
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingFont;->x2:Ljava/lang/String;

    .line 148
    .line 149
    new-instance v4, Lcom/mycompany/app/setting/SettingFont$12;

    .line 150
    .line 151
    invoke-direct {v4, v0}, Lcom/mycompany/app/setting/SettingFont$12;-><init>(Lcom/mycompany/app/setting/SettingFont;)V

    .line 152
    .line 153
    .line 154
    invoke-direct {v1, v3, v4}, Lcom/mycompany/app/setting/SettingFontAdapter;-><init>(Ljava/lang/String;Lcom/mycompany/app/setting/SettingFontAdapter$SettingFontListener;)V

    .line 155
    .line 156
    .line 157
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->Y1:Lcom/mycompany/app/setting/SettingFontAdapter;

    .line 158
    .line 159
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->U1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 160
    .line 161
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingFont;->X1:Lcom/mycompany/app/view/MyManagerLinear;

    .line 162
    .line 163
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 164
    .line 165
    .line 166
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->U1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 167
    .line 168
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingFont;->Y1:Lcom/mycompany/app/setting/SettingFontAdapter;

    .line 169
    .line 170
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 171
    .line 172
    .line 173
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->U1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 174
    .line 175
    new-instance v3, Lcom/mycompany/app/setting/SettingFont$13;

    .line 176
    .line 177
    invoke-direct {v3, v0}, Lcom/mycompany/app/setting/SettingFont$13;-><init>(Lcom/mycompany/app/setting/SettingFont;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->j(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 181
    .line 182
    .line 183
    new-instance v1, Lcom/mycompany/app/view/MyManagerLinear;

    .line 184
    .line 185
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 186
    .line 187
    .line 188
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->n2:Lcom/mycompany/app/view/MyManagerLinear;

    .line 189
    .line 190
    new-instance v1, Lcom/mycompany/app/setting/SettingFontAdapter;

    .line 191
    .line 192
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingFont;->x2:Ljava/lang/String;

    .line 193
    .line 194
    new-instance v4, Lcom/mycompany/app/setting/SettingFont$14;

    .line 195
    .line 196
    invoke-direct {v4, v0}, Lcom/mycompany/app/setting/SettingFont$14;-><init>(Lcom/mycompany/app/setting/SettingFont;)V

    .line 197
    .line 198
    .line 199
    invoke-direct {v1, v3, v4}, Lcom/mycompany/app/setting/SettingFontAdapter;-><init>(Ljava/lang/String;Lcom/mycompany/app/setting/SettingFontAdapter$SettingFontListener;)V

    .line 200
    .line 201
    .line 202
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->o2:Lcom/mycompany/app/setting/SettingFontAdapter;

    .line 203
    .line 204
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->j2:Lcom/mycompany/app/view/MyRecyclerView;

    .line 205
    .line 206
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingFont;->n2:Lcom/mycompany/app/view/MyManagerLinear;

    .line 207
    .line 208
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 209
    .line 210
    .line 211
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->j2:Lcom/mycompany/app/view/MyRecyclerView;

    .line 212
    .line 213
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingFont;->o2:Lcom/mycompany/app/setting/SettingFontAdapter;

    .line 214
    .line 215
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 216
    .line 217
    .line 218
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->j2:Lcom/mycompany/app/view/MyRecyclerView;

    .line 219
    .line 220
    new-instance v3, Lcom/mycompany/app/setting/SettingFont$15;

    .line 221
    .line 222
    invoke-direct {v3, v0}, Lcom/mycompany/app/setting/SettingFont$15;-><init>(Lcom/mycompany/app/setting/SettingFont;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->j(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 226
    .line 227
    .line 228
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->l2:Lcom/mycompany/app/view/MyButtonImage;

    .line 229
    .line 230
    new-instance v3, Lcom/mycompany/app/setting/SettingFont$16;

    .line 231
    .line 232
    invoke-direct {v3, v0}, Lcom/mycompany/app/setting/SettingFont$16;-><init>(Lcom/mycompany/app/setting/SettingFont;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    .line 237
    .line 238
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->W1:Lcom/mycompany/app/view/MyCoverView;

    .line 239
    .line 240
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyCoverView;->m(Z)V

    .line 241
    .line 242
    .line 243
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->m2:Lcom/mycompany/app/view/MyCoverView;

    .line 244
    .line 245
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyCoverView;->m(Z)V

    .line 246
    .line 247
    .line 248
    iget-boolean v1, v0, Lcom/mycompany/app/setting/SettingFont;->t2:Z

    .line 249
    .line 250
    const/4 v3, 0x0

    .line 251
    if-eqz v1, :cond_8

    .line 252
    .line 253
    sget-boolean v1, Lcom/mycompany/app/pref/PrefRead;->n:Z

    .line 254
    .line 255
    if-eqz v1, :cond_a

    .line 256
    .line 257
    goto :goto_5

    .line 258
    :cond_8
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZone;->k:Z

    .line 259
    .line 260
    if-eqz v1, :cond_a

    .line 261
    .line 262
    :goto_5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->v2:Ljava/lang/String;

    .line 263
    .line 264
    invoke-static {v1}, Lcom/mycompany/app/main/MainUri;->q(Ljava/lang/String;)Z

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    if-eqz v1, :cond_9

    .line 269
    .line 270
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->R1:Landroidx/viewpager2/widget/ViewPager2;

    .line 271
    .line 272
    invoke-virtual {v1, v2, v3}, Landroidx/viewpager2/widget/ViewPager2;->d(IZ)V

    .line 273
    .line 274
    .line 275
    move v4, v2

    .line 276
    move v1, v3

    .line 277
    goto :goto_6

    .line 278
    :cond_9
    move v1, v2

    .line 279
    move v4, v3

    .line 280
    goto :goto_6

    .line 281
    :cond_a
    move v1, v3

    .line 282
    move v4, v1

    .line 283
    :goto_6
    iget-object v5, v0, Lcom/mycompany/app/setting/SettingFont;->Z1:Lcom/mycompany/app/setting/SettingFont$BaseTask;

    .line 284
    .line 285
    if-eqz v5, :cond_b

    .line 286
    .line 287
    iput-boolean v2, v5, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 288
    .line 289
    :cond_b
    const/4 v5, 0x0

    .line 290
    iput-object v5, v0, Lcom/mycompany/app/setting/SettingFont;->Z1:Lcom/mycompany/app/setting/SettingFont$BaseTask;

    .line 291
    .line 292
    new-instance v6, Lcom/mycompany/app/setting/SettingFont$BaseTask;

    .line 293
    .line 294
    invoke-direct {v6, v0, v1}, Lcom/mycompany/app/setting/SettingFont$BaseTask;-><init>(Lcom/mycompany/app/setting/SettingFont;Z)V

    .line 295
    .line 296
    .line 297
    iput-object v6, v0, Lcom/mycompany/app/setting/SettingFont;->Z1:Lcom/mycompany/app/setting/SettingFont$BaseTask;

    .line 298
    .line 299
    iget-object v7, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 300
    .line 301
    invoke-virtual {v6, v7}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 302
    .line 303
    .line 304
    iget-object v6, v0, Lcom/mycompany/app/setting/SettingFont;->a2:Lcom/mycompany/app/setting/SettingFont$AppTask;

    .line 305
    .line 306
    if-eqz v6, :cond_c

    .line 307
    .line 308
    iput-boolean v2, v6, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 309
    .line 310
    :cond_c
    iput-object v5, v0, Lcom/mycompany/app/setting/SettingFont;->a2:Lcom/mycompany/app/setting/SettingFont$AppTask;

    .line 311
    .line 312
    new-instance v6, Lcom/mycompany/app/setting/SettingFont$AppTask;

    .line 313
    .line 314
    invoke-direct {v6, v0, v1}, Lcom/mycompany/app/setting/SettingFont$AppTask;-><init>(Lcom/mycompany/app/setting/SettingFont;Z)V

    .line 315
    .line 316
    .line 317
    iput-object v6, v0, Lcom/mycompany/app/setting/SettingFont;->a2:Lcom/mycompany/app/setting/SettingFont$AppTask;

    .line 318
    .line 319
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 320
    .line 321
    invoke-virtual {v6, v1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 322
    .line 323
    .line 324
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->p2:Lcom/mycompany/app/setting/SettingFont$UserTask;

    .line 325
    .line 326
    if-eqz v1, :cond_d

    .line 327
    .line 328
    iput-boolean v2, v1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 329
    .line 330
    :cond_d
    iput-object v5, v0, Lcom/mycompany/app/setting/SettingFont;->p2:Lcom/mycompany/app/setting/SettingFont$UserTask;

    .line 331
    .line 332
    new-instance v1, Lcom/mycompany/app/setting/SettingFont$UserTask;

    .line 333
    .line 334
    invoke-direct {v1, v0, v4, v3}, Lcom/mycompany/app/setting/SettingFont$UserTask;-><init>(Lcom/mycompany/app/setting/SettingFont;ZZ)V

    .line 335
    .line 336
    .line 337
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->p2:Lcom/mycompany/app/setting/SettingFont$UserTask;

    .line 338
    .line 339
    iget-object v0, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 340
    .line 341
    invoke-virtual {v1, v0}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 342
    .line 343
    .line 344
    return-void
.end method
