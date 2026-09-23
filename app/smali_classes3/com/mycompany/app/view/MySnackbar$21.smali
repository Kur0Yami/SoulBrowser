.class Lcom/mycompany/app/view/MySnackbar$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MySnackbar;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MySnackbar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MySnackbar$21;->c:Lcom/mycompany/app/view/MySnackbar;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar$21;->c:Lcom/mycompany/app/view/MySnackbar;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->f:Lcom/mycompany/app/main/MainActivity;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_7

    .line 8
    .line 9
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    goto/16 :goto_7

    .line 16
    .line 17
    :cond_1
    iget-object v2, v0, Lcom/mycompany/app/view/MySnackbar;->m:Ljava/lang/String;

    .line 18
    .line 19
    const-string v3, "android.intent.category.BROWSABLE"

    .line 20
    .line 21
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    const/4 v5, 0x0

    .line 26
    if-eqz v4, :cond_3

    .line 27
    .line 28
    :catch_0
    :cond_2
    move-object v4, v5

    .line 29
    goto/16 :goto_3

    .line 30
    .line 31
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_5

    .line 36
    .line 37
    :catch_1
    :cond_4
    :goto_0
    move-object v4, v5

    .line 38
    goto :goto_1

    .line 39
    :cond_5
    const-string v4, "https://play.google.com/store/apps/details?id="

    .line 40
    .line 41
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-nez v4, :cond_6

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_6
    const/16 v4, 0x26

    .line 49
    .line 50
    const/16 v6, 0x2e

    .line 51
    .line 52
    :try_start_0
    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->indexOf(II)I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-le v4, v6, :cond_4

    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    if-lt v4, v7, :cond_7

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_7
    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-eqz v6, :cond_8

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_8
    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    if-eqz v6, :cond_9

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_9
    const-string v4, "com.android.vending"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 84
    .line 85
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    if-nez v6, :cond_a

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_a
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 93
    .line 94
    const/16 v6, 0x1e

    .line 95
    .line 96
    if-lt v4, v6, :cond_b

    .line 97
    .line 98
    const v4, 0x10000600

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_b
    const/high16 v4, 0x10000000

    .line 103
    .line 104
    :goto_2
    const/4 v6, 0x1

    .line 105
    :try_start_1
    invoke-static {v2, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    invoke-virtual {v6, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v6, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v6, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v6, v5}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 119
    .line 120
    .line 121
    invoke-static {v1, v6}, Lcom/mycompany/app/view/MySnackbar;->l(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 126
    .line 127
    .line 128
    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 129
    if-nez v7, :cond_c

    .line 130
    .line 131
    move-object v4, v6

    .line 132
    goto :goto_3

    .line 133
    :catch_2
    :cond_c
    :try_start_2
    new-instance v6, Landroid/content/Intent;

    .line 134
    .line 135
    const-string v7, "android.intent.action.VIEW"

    .line 136
    .line 137
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-direct {v6, v7, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v6, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v6, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 148
    .line 149
    .line 150
    invoke-static {v1, v6}, Lcom/mycompany/app/view/MySnackbar;->l(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 155
    .line 156
    .line 157
    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 158
    if-nez v2, :cond_2

    .line 159
    .line 160
    :goto_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    if-nez v2, :cond_f

    .line 165
    .line 166
    const/16 v2, 0x80

    .line 167
    .line 168
    :try_start_3
    invoke-virtual {v1, v4, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 173
    .line 174
    .line 175
    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 176
    goto :goto_4

    .line 177
    :catch_3
    move-object v2, v5

    .line 178
    :goto_4
    const/4 v3, 0x2

    .line 179
    invoke-static {v3, v4}, Lcom/nostra13/universalimageloader/utils/MemoryCacheUtils;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 184
    .line 185
    .line 186
    move-result-object v7

    .line 187
    invoke-virtual {v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->g()Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;

    .line 188
    .line 189
    .line 190
    move-result-object v7

    .line 191
    invoke-virtual {v7, v6}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 192
    .line 193
    .line 194
    move-result-object v7

    .line 195
    invoke-static {v7}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 196
    .line 197
    .line 198
    move-result v8

    .line 199
    if-eqz v8, :cond_d

    .line 200
    .line 201
    :goto_5
    move-object v5, v7

    .line 202
    goto :goto_6

    .line 203
    :cond_d
    :try_start_4
    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    sget v4, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 208
    .line 209
    div-int/2addr v4, v3

    .line 210
    invoke-static {v1, v4}, Lcom/mycompany/app/main/MainUtil;->H(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    .line 211
    .line 212
    .line 213
    move-result-object v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 214
    :catch_4
    invoke-static {v7}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    if-nez v1, :cond_e

    .line 219
    .line 220
    goto :goto_6

    .line 221
    :cond_e
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->g()Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-virtual {v1, v6, v7}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    .line 230
    .line 231
    .line 232
    goto :goto_5

    .line 233
    :cond_f
    move-object v2, v5

    .line 234
    :goto_6
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    if-nez v1, :cond_10

    .line 239
    .line 240
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->n:Ljava/lang/String;

    .line 241
    .line 242
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->n4(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 243
    .line 244
    .line 245
    move-result-object v5

    .line 246
    :cond_10
    iput-object v2, v0, Lcom/mycompany/app/view/MySnackbar;->f0:Ljava/lang/CharSequence;

    .line 247
    .line 248
    iput-object v5, v0, Lcom/mycompany/app/view/MySnackbar;->g0:Landroid/graphics/Bitmap;

    .line 249
    .line 250
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->s:Landroid/view/ViewGroup;

    .line 251
    .line 252
    if-nez v1, :cond_11

    .line 253
    .line 254
    goto :goto_7

    .line 255
    :cond_11
    new-instance v2, Lcom/mycompany/app/view/MySnackbar$22;

    .line 256
    .line 257
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MySnackbar$22;-><init>(Lcom/mycompany/app/view/MySnackbar;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 261
    .line 262
    .line 263
    :goto_7
    return-void
.end method
