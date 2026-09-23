.class public Lcom/mycompany/app/dialog/DialogSetDown;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogSetDown$SetDownListener;,
        Lcom/mycompany/app/dialog/DialogSetDown$DialogTask;,
        Lcom/mycompany/app/dialog/DialogSetDown$SortApp;
    }
.end annotation


# static fields
.field public static final m0:[Ljava/lang/String;


# instance fields
.field public a0:Landroid/app/Activity;

.field public b0:Landroid/content/Context;

.field public c0:Z

.field public d0:Lcom/mycompany/app/dialog/DialogSetDown$SetDownListener;

.field public e0:Lcom/mycompany/app/view/MyDialogRelative;

.field public f0:Lcom/mycompany/app/view/MyRecyclerView;

.field public g0:Lcom/mycompany/app/view/MyLineText;

.field public h0:Lcom/mycompany/app/main/MainAppAdapter;

.field public i0:Lcom/mycompany/app/dialog/DialogSetDown$DialogTask;

.field public j0:Ljava/lang/String;

.field public k0:Ljava/lang/String;

.field public l0:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "com.chrome.dev"

    .line 2
    .line 3
    const-string v1, "com.google.android.apps.chrome"

    .line 4
    .line 5
    const-string v2, "com.android.chrome"

    .line 6
    .line 7
    const-string v3, "com.chrome.beta"

    .line 8
    .line 9
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/mycompany/app/dialog/DialogSetDown;->m0:[Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZZILcom/mycompany/app/dialog/DialogSetDown$SetDownListener;)V
    .locals 1

    if-eqz p4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 4
    :cond_0
    sget v0, Lnet/kaki87/soul2/testing/R$style;->DialogExpandTheme:I

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogSetDown;->c0:Z

    .line 6
    invoke-virtual/range {p0 .. p8}, Lcom/mycompany/app/dialog/DialogSetDown;->E(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZZILcom/mycompany/app/dialog/DialogSetDown$SetDownListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;ZLcom/mycompany/app/dialog/DialogSetDown$SetDownListener;)V
    .locals 11

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    move v1, v0

    goto :goto_0

    .line 1
    :cond_0
    sget v1, Lnet/kaki87/soul2/testing/R$style;->DialogExpandTheme:I

    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;I)V

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogSetDown;->c0:Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v6, p3

    move-object v10, p4

    .line 3
    invoke-virtual/range {v2 .. v10}, Lcom/mycompany/app/dialog/DialogSetDown;->E(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZZILcom/mycompany/app/dialog/DialogSetDown$SetDownListener;)V

    return-void
.end method

.method public static C(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Lcom/mycompany/app/main/MainItem$ChildItem;
    .locals 1

    .line 1
    new-instance v0, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->S:Landroid/content/pm/ResolveInfo;

    .line 7
    .line 8
    const-string p0, "isCustomTab:"

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    iput-object p0, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 15
    .line 16
    const-string p0, "Chrome Custom Tab"

    .line 17
    .line 18
    iput-object p0, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    iput-object p0, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 22
    .line 23
    return-object v0
.end method

.method public static D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    return-object v0
.end method


# virtual methods
.method public final B(Ljava/util/List;Landroid/content/Intent;)Ljava/util/List;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDown;->a0:Landroid/app/Activity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetDown;->i0:Lcom/mycompany/app/dialog/DialogSetDown$DialogTask;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    iget-boolean v1, v1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 20
    .line 21
    const/16 v2, 0x21

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    if-lt v1, v2, :cond_2

    .line 25
    .line 26
    const-wide/16 v1, 0x0

    .line 27
    .line 28
    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {v0, p2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    :goto_0
    if-nez p2, :cond_3

    .line 42
    .line 43
    :goto_1
    return-object p1

    .line 44
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    :cond_4
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_19

    .line 53
    .line 54
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 59
    .line 60
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogSetDown;->i0:Lcom/mycompany/app/dialog/DialogSetDown$DialogTask;

    .line 61
    .line 62
    const/4 v4, 0x1

    .line 63
    if-eqz v2, :cond_5

    .line 64
    .line 65
    iget-boolean v2, v2, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 66
    .line 67
    if-eqz v2, :cond_5

    .line 68
    .line 69
    move v2, v4

    .line 70
    goto :goto_3

    .line 71
    :cond_5
    move v2, v3

    .line 72
    :goto_3
    if-eqz v2, :cond_6

    .line 73
    .line 74
    goto/16 :goto_c

    .line 75
    .line 76
    :cond_6
    if-eqz v1, :cond_4

    .line 77
    .line 78
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 79
    .line 80
    if-eqz v2, :cond_4

    .line 81
    .line 82
    iget-boolean v5, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 83
    .line 84
    if-nez v5, :cond_7

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_7
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    if-eqz v5, :cond_8

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_8
    const-string v5, "net.kaki87.soul2.testing"

    .line 97
    .line 98
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    if-eqz v5, :cond_9

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_9
    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 106
    .line 107
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 108
    .line 109
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    if-eqz v6, :cond_a

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_a
    const-string v6, "com.logiclooper.idm.activities.MainActivity"

    .line 117
    .line 118
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    if-eqz v6, :cond_b

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_b
    invoke-virtual {v1, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    if-nez v6, :cond_c

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_c
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 137
    .line 138
    .line 139
    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 140
    if-eqz v7, :cond_d

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_d
    const/4 v7, 0x4

    .line 144
    sget-object v8, Lcom/mycompany/app/dialog/DialogSetDown;->m0:[Ljava/lang/String;

    .line 145
    .line 146
    if-nez p1, :cond_12

    .line 147
    .line 148
    :try_start_1
    new-instance v9, Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 151
    .line 152
    .line 153
    :try_start_2
    new-instance p1, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 154
    .line 155
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 156
    .line 157
    .line 158
    iput-object v1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->S:Landroid/content/pm/ResolveInfo;

    .line 159
    .line 160
    iput-object v2, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 161
    .line 162
    iput-object v6, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 163
    .line 164
    iput-object v5, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    iget-boolean p1, p0, Lcom/mycompany/app/dialog/DialogSetDown;->c0:Z

    .line 170
    .line 171
    if-eqz p1, :cond_11

    .line 172
    .line 173
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    if-eqz p1, :cond_e

    .line 178
    .line 179
    goto :goto_5

    .line 180
    :cond_e
    move p1, v3

    .line 181
    :goto_4
    if-ge p1, v7, :cond_10

    .line 182
    .line 183
    aget-object v5, v8, p1

    .line 184
    .line 185
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v5

    .line 189
    if-eqz v5, :cond_f

    .line 190
    .line 191
    goto :goto_6

    .line 192
    :cond_f
    add-int/lit8 p1, p1, 0x1

    .line 193
    .line 194
    goto :goto_4

    .line 195
    :cond_10
    :goto_5
    move v4, v3

    .line 196
    :goto_6
    if-eqz v4, :cond_11

    .line 197
    .line 198
    iput-boolean v3, p0, Lcom/mycompany/app/dialog/DialogSetDown;->c0:Z

    .line 199
    .line 200
    invoke-static {v1, v2}, Lcom/mycompany/app/dialog/DialogSetDown;->C(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 205
    .line 206
    .line 207
    goto :goto_7

    .line 208
    :catch_0
    move-object p1, v9

    .line 209
    goto :goto_c

    .line 210
    :cond_11
    :goto_7
    move-object p1, v9

    .line 211
    goto/16 :goto_2

    .line 212
    .line 213
    :cond_12
    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 214
    .line 215
    .line 216
    move-result-object v9

    .line 217
    :cond_13
    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 218
    .line 219
    .line 220
    move-result v10

    .line 221
    if-eqz v10, :cond_15

    .line 222
    .line 223
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v10

    .line 227
    check-cast v10, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 228
    .line 229
    if-nez v10, :cond_14

    .line 230
    .line 231
    goto :goto_8

    .line 232
    :cond_14
    iget-object v10, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 233
    .line 234
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v10

    .line 238
    if-eqz v10, :cond_13

    .line 239
    .line 240
    goto/16 :goto_2

    .line 241
    .line 242
    :cond_15
    new-instance v9, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 243
    .line 244
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 245
    .line 246
    .line 247
    iput-object v1, v9, Lcom/mycompany/app/main/MainItem$ChildItem;->S:Landroid/content/pm/ResolveInfo;

    .line 248
    .line 249
    iput-object v2, v9, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 250
    .line 251
    iput-object v6, v9, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 252
    .line 253
    iput-object v5, v9, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 254
    .line 255
    invoke-interface {p1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    iget-boolean v5, p0, Lcom/mycompany/app/dialog/DialogSetDown;->c0:Z

    .line 259
    .line 260
    if-eqz v5, :cond_4

    .line 261
    .line 262
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 263
    .line 264
    .line 265
    move-result v5

    .line 266
    if-eqz v5, :cond_16

    .line 267
    .line 268
    goto :goto_a

    .line 269
    :cond_16
    move v5, v3

    .line 270
    :goto_9
    if-ge v5, v7, :cond_18

    .line 271
    .line 272
    aget-object v6, v8, v5

    .line 273
    .line 274
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result v6

    .line 278
    if-eqz v6, :cond_17

    .line 279
    .line 280
    goto :goto_b

    .line 281
    :cond_17
    add-int/lit8 v5, v5, 0x1

    .line 282
    .line 283
    goto :goto_9

    .line 284
    :cond_18
    :goto_a
    move v4, v3

    .line 285
    :goto_b
    if-eqz v4, :cond_4

    .line 286
    .line 287
    iput-boolean v3, p0, Lcom/mycompany/app/dialog/DialogSetDown;->c0:Z

    .line 288
    .line 289
    invoke-static {v1, v2}, Lcom/mycompany/app/dialog/DialogSetDown;->C(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 294
    .line 295
    .line 296
    goto/16 :goto_2

    .line 297
    .line 298
    :catch_1
    :cond_19
    :goto_c
    return-object p1
.end method

.method public final E(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZZILcom/mycompany/app/dialog/DialogSetDown$SetDownListener;)V
    .locals 1

    .line 1
    sget v0, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 2
    .line 3
    iput v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->w:I

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->C:Z

    .line 7
    .line 8
    if-nez p4, :cond_0

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->x:Z

    .line 11
    .line 12
    :cond_0
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetDown;->a0:Landroid/app/Activity;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetDown;->b0:Landroid/content/Context;

    .line 19
    .line 20
    iput-object p8, p0, Lcom/mycompany/app/dialog/DialogSetDown;->d0:Lcom/mycompany/app/dialog/DialogSetDown$SetDownListener;

    .line 21
    .line 22
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogSetDown;->j0:Ljava/lang/String;

    .line 23
    .line 24
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogSetDown;->k0:Ljava/lang/String;

    .line 25
    .line 26
    sget-boolean p1, Lcom/mycompany/app/main/MainConst;->e:Z

    .line 27
    .line 28
    if-nez p1, :cond_2

    .line 29
    .line 30
    if-nez p4, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move-object p2, p0

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    :goto_0
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->l1()I

    .line 36
    .line 37
    .line 38
    move-result p4

    .line 39
    move p3, p7

    .line 40
    const/4 p7, 0x1

    .line 41
    move-object p2, p0

    .line 42
    invoke-virtual/range {p2 .. p7}, Lcom/mycompany/app/view/MyDialogBottom;->x(IIZZZ)V

    .line 43
    .line 44
    .line 45
    :goto_1
    iget-object p1, p2, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 46
    .line 47
    if-nez p1, :cond_3

    .line 48
    .line 49
    return-void

    .line 50
    :cond_3
    new-instance p3, Lcom/mycompany/app/dialog/DialogSetDown$1;

    .line 51
    .line 52
    invoke-direct {p3, p0}, Lcom/mycompany/app/dialog/DialogSetDown$1;-><init>(Lcom/mycompany/app/dialog/DialogSetDown;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final dismiss()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDown;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDown;->i0:Lcom/mycompany/app/dialog/DialogSetDown$DialogTask;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 15
    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDown;->i0:Lcom/mycompany/app/dialog/DialogSetDown$DialogTask;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetDown;->e0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogRelative;->c()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDown;->e0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 27
    .line 28
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetDown;->f0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDown;->f0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 36
    .line 37
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetDown;->g0:Lcom/mycompany/app/view/MyLineText;

    .line 38
    .line 39
    if-eqz v1, :cond_4

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDown;->g0:Lcom/mycompany/app/view/MyLineText;

    .line 45
    .line 46
    :cond_4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetDown;->h0:Lcom/mycompany/app/main/MainAppAdapter;

    .line 47
    .line 48
    if-eqz v1, :cond_6

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainAppAdapter;->d()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    iput v2, v1, Lcom/mycompany/app/main/MainAppAdapter;->g:I

    .line 55
    .line 56
    iget-object v2, v1, Lcom/mycompany/app/main/MainAppAdapter;->f:Lcom/mycompany/app/main/MainListLoader;

    .line 57
    .line 58
    if-eqz v2, :cond_5

    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/mycompany/app/main/MainListLoader;->f()V

    .line 61
    .line 62
    .line 63
    iput-object v0, v1, Lcom/mycompany/app/main/MainAppAdapter;->f:Lcom/mycompany/app/main/MainListLoader;

    .line 64
    .line 65
    :cond_5
    iput-object v0, v1, Lcom/mycompany/app/main/MainAppAdapter;->d:Lcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;

    .line 66
    .line 67
    iput-object v0, v1, Lcom/mycompany/app/main/MainAppAdapter;->e:Ljava/util/List;

    .line 68
    .line 69
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDown;->h0:Lcom/mycompany/app/main/MainAppAdapter;

    .line 70
    .line 71
    :cond_6
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDown;->a0:Landroid/app/Activity;

    .line 72
    .line 73
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDown;->b0:Landroid/content/Context;

    .line 74
    .line 75
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDown;->d0:Lcom/mycompany/app/dialog/DialogSetDown$SetDownListener;

    .line 76
    .line 77
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDown;->j0:Ljava/lang/String;

    .line 78
    .line 79
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDown;->k0:Ljava/lang/String;

    .line 80
    .line 81
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 82
    .line 83
    .line 84
    return-void
.end method
