.class Lcom/mycompany/app/web/WebViewActivity$AnchorHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/web/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnchorHandler"
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$AnchorHandler;->a:Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    iput-object p2, p0, Lcom/mycompany/app/web/WebViewActivity$AnchorHandler;->b:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p3, p0, Lcom/mycompany/app/web/WebViewActivity$AnchorHandler;->c:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v2, 0x21

    .line 5
    .line 6
    if-lt v1, v2, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1, p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    return-object p0

    .line 20
    :catch_0
    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    :try_start_0
    const-string v1, "http"

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-ltz v1, :cond_7

    .line 18
    .line 19
    add-int/lit8 v2, v1, 0x4

    .line 20
    .line 21
    if-lt v2, v0, :cond_2

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    const/16 v3, 0x22

    .line 25
    .line 26
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-le v3, v1, :cond_3

    .line 31
    .line 32
    if-lt v3, v0, :cond_5

    .line 33
    .line 34
    :cond_3
    const/16 v3, 0x27

    .line 35
    .line 36
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-le v3, v1, :cond_4

    .line 41
    .line 42
    if-lt v3, v0, :cond_5

    .line 43
    .line 44
    :cond_4
    move v3, v0

    .line 45
    :cond_5
    if-gtz v1, :cond_6

    .line 46
    .line 47
    if-ge v3, v0, :cond_7

    .line 48
    .line 49
    :cond_6
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :catch_0
    :cond_7
    :goto_0
    return-object p0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const-string v0, "data:image/"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    const-string v0, "blob:"

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    invoke-static {p0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_3

    .line 32
    .line 33
    :goto_0
    return v1

    .line 34
    :cond_3
    invoke-static {p0, v1}, Lcom/mycompany/app/main/MainUtil;->U3(Ljava/lang/String;Z)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Lcom/mycompany/app/compress/Compress;->D(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    :goto_1
    const/4 p0, 0x1

    .line 45
    return p0

    .line 46
    :cond_4
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->l5(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    return p0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$AnchorHandler;->a:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_3

    .line 6
    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/mycompany/app/web/WebViewActivity;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    goto/16 :goto_3

    .line 16
    .line 17
    :cond_1
    const/4 v1, 0x0

    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    const-string v2, "url"

    .line 27
    .line 28
    invoke-static {v2, p1}, Lcom/mycompany/app/web/WebViewActivity$AnchorHandler;->a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {v2}, Lcom/mycompany/app/web/WebViewActivity$AnchorHandler;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const-string v3, "src"

    .line 37
    .line 38
    invoke-static {v3, p1}, Lcom/mycompany/app/web/WebViewActivity$AnchorHandler;->a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-static {v3}, Lcom/mycompany/app/web/WebViewActivity$AnchorHandler;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const-string v4, "title"

    .line 47
    .line 48
    invoke-static {v4, p1}, Lcom/mycompany/app/web/WebViewActivity$AnchorHandler;->a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$AnchorHandler;->d:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_3

    .line 59
    .line 60
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$AnchorHandler;->d:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$AnchorHandler;->d:Ljava/lang/String;

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    move-object v2, v1

    .line 70
    move-object v3, v2

    .line 71
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$AnchorHandler;->b:Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_5

    .line 78
    .line 79
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$AnchorHandler;->c:Ljava/lang/String;

    .line 80
    .line 81
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-nez p1, :cond_5

    .line 86
    .line 87
    invoke-static {v2}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_4

    .line 92
    .line 93
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$AnchorHandler;->c:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-nez p1, :cond_4

    .line 100
    .line 101
    iput-object v2, p0, Lcom/mycompany/app/web/WebViewActivity$AnchorHandler;->b:Ljava/lang/String;

    .line 102
    .line 103
    goto/16 :goto_2

    .line 104
    .line 105
    :cond_4
    invoke-static {v3}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-eqz p1, :cond_b

    .line 110
    .line 111
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$AnchorHandler;->c:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-nez p1, :cond_b

    .line 118
    .line 119
    iput-object v3, p0, Lcom/mycompany/app/web/WebViewActivity$AnchorHandler;->b:Ljava/lang/String;

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_5
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$AnchorHandler;->b:Ljava/lang/String;

    .line 123
    .line 124
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-nez p1, :cond_7

    .line 129
    .line 130
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$AnchorHandler;->c:Ljava/lang/String;

    .line 131
    .line 132
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-eqz p1, :cond_7

    .line 137
    .line 138
    invoke-static {v2}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-eqz p1, :cond_6

    .line 143
    .line 144
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$AnchorHandler;->b:Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-nez p1, :cond_6

    .line 151
    .line 152
    iput-object v2, p0, Lcom/mycompany/app/web/WebViewActivity$AnchorHandler;->c:Ljava/lang/String;

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_6
    invoke-static {v3}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    if-eqz p1, :cond_b

    .line 160
    .line 161
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$AnchorHandler;->b:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    if-nez p1, :cond_b

    .line 168
    .line 169
    iput-object v3, p0, Lcom/mycompany/app/web/WebViewActivity$AnchorHandler;->c:Ljava/lang/String;

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_7
    invoke-static {v3}, Lcom/mycompany/app/web/WebViewActivity$AnchorHandler;->c(Ljava/lang/String;)Z

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    if-eqz p1, :cond_8

    .line 177
    .line 178
    iput-object v3, p0, Lcom/mycompany/app/web/WebViewActivity$AnchorHandler;->c:Ljava/lang/String;

    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_8
    invoke-static {v2}, Lcom/mycompany/app/web/WebViewActivity$AnchorHandler;->c(Ljava/lang/String;)Z

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    if-eqz p1, :cond_9

    .line 186
    .line 187
    iput-object v2, p0, Lcom/mycompany/app/web/WebViewActivity$AnchorHandler;->c:Ljava/lang/String;

    .line 188
    .line 189
    :cond_9
    :goto_1
    invoke-static {v2}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    if-eqz p1, :cond_a

    .line 194
    .line 195
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$AnchorHandler;->c:Ljava/lang/String;

    .line 196
    .line 197
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    if-nez p1, :cond_a

    .line 202
    .line 203
    iput-object v2, p0, Lcom/mycompany/app/web/WebViewActivity$AnchorHandler;->b:Ljava/lang/String;

    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_a
    invoke-static {v3}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    if-eqz p1, :cond_b

    .line 211
    .line 212
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$AnchorHandler;->c:Ljava/lang/String;

    .line 213
    .line 214
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result p1

    .line 218
    if-nez p1, :cond_b

    .line 219
    .line 220
    iput-object v3, p0, Lcom/mycompany/app/web/WebViewActivity$AnchorHandler;->b:Ljava/lang/String;

    .line 221
    .line 222
    :cond_b
    :goto_2
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$AnchorHandler;->c:Ljava/lang/String;

    .line 223
    .line 224
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 225
    .line 226
    .line 227
    move-result p1

    .line 228
    if-nez p1, :cond_d

    .line 229
    .line 230
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$AnchorHandler;->c:Ljava/lang/String;

    .line 231
    .line 232
    const-string v2, "data:image/"

    .line 233
    .line 234
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 235
    .line 236
    .line 237
    move-result p1

    .line 238
    if-nez p1, :cond_d

    .line 239
    .line 240
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$AnchorHandler;->c:Ljava/lang/String;

    .line 241
    .line 242
    const-string v2, "blob:"

    .line 243
    .line 244
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 245
    .line 246
    .line 247
    move-result p1

    .line 248
    if-nez p1, :cond_d

    .line 249
    .line 250
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$AnchorHandler;->c:Ljava/lang/String;

    .line 251
    .line 252
    invoke-static {p1}, Lcom/mycompany/app/web/WebClean;->X(Ljava/lang/String;)Z

    .line 253
    .line 254
    .line 255
    move-result p1

    .line 256
    if-eqz p1, :cond_d

    .line 257
    .line 258
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$AnchorHandler;->b:Ljava/lang/String;

    .line 259
    .line 260
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 261
    .line 262
    .line 263
    move-result p1

    .line 264
    if-eqz p1, :cond_c

    .line 265
    .line 266
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$AnchorHandler;->c:Ljava/lang/String;

    .line 267
    .line 268
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$AnchorHandler;->b:Ljava/lang/String;

    .line 269
    .line 270
    :cond_c
    iput-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$AnchorHandler;->c:Ljava/lang/String;

    .line 271
    .line 272
    :cond_d
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$AnchorHandler;->b:Ljava/lang/String;

    .line 273
    .line 274
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$AnchorHandler;->c:Ljava/lang/String;

    .line 275
    .line 276
    iget-object v2, p0, Lcom/mycompany/app/web/WebViewActivity$AnchorHandler;->d:Ljava/lang/String;

    .line 277
    .line 278
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->vo:Z

    .line 279
    .line 280
    if-eqz v3, :cond_e

    .line 281
    .line 282
    goto :goto_3

    .line 283
    :cond_e
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 284
    .line 285
    if-eqz v3, :cond_f

    .line 286
    .line 287
    :goto_3
    return-void

    .line 288
    :cond_f
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->mo:Ljava/lang/String;

    .line 289
    .line 290
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 291
    .line 292
    .line 293
    move-result v3

    .line 294
    if-eqz v3, :cond_10

    .line 295
    .line 296
    iput-object p1, v0, Lcom/mycompany/app/web/WebViewActivity;->mo:Ljava/lang/String;

    .line 297
    .line 298
    :cond_10
    iget-object p1, v0, Lcom/mycompany/app/web/WebViewActivity;->no:Ljava/lang/String;

    .line 299
    .line 300
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 301
    .line 302
    .line 303
    move-result p1

    .line 304
    if-eqz p1, :cond_11

    .line 305
    .line 306
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->no:Ljava/lang/String;

    .line 307
    .line 308
    :cond_11
    iget-object p1, v0, Lcom/mycompany/app/web/WebViewActivity;->oo:Ljava/lang/String;

    .line 309
    .line 310
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 311
    .line 312
    .line 313
    move-result p1

    .line 314
    if-eqz p1, :cond_12

    .line 315
    .line 316
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->oo:Ljava/lang/String;

    .line 317
    .line 318
    :cond_12
    const/4 p1, 0x1

    .line 319
    iput-boolean p1, v0, Lcom/mycompany/app/web/WebViewActivity;->po:Z

    .line 320
    .line 321
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->P7()V

    .line 322
    .line 323
    .line 324
    return-void
.end method
