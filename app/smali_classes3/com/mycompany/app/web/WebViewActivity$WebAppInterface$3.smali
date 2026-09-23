.class Lcom/mycompany/app/web/WebViewActivity$WebAppInterface$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;->onSnsDet(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$WebAppInterface$3;->c:Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$WebAppInterface$3;->c:Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;->b:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Ug:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Ug:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const-string v4, "http"

    .line 15
    .line 16
    const/4 v5, -0x1

    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    :cond_0
    :goto_0
    move-object v1, v2

    .line 20
    goto/16 :goto_5

    .line 21
    .line 22
    :cond_1
    const-string v3, "&quot;"

    .line 23
    .line 24
    const-string v6, "\""

    .line 25
    .line 26
    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    if-nez v6, :cond_2

    .line 35
    .line 36
    move-object v1, v3

    .line 37
    :cond_2
    const-string v3, "<source"

    .line 38
    .line 39
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const-string v6, ""

    .line 44
    .line 45
    const-string v7, "amp;"

    .line 46
    .line 47
    const/16 v8, 0x22

    .line 48
    .line 49
    if-eqz v3, :cond_e

    .line 50
    .line 51
    array-length v9, v3

    .line 52
    if-eqz v9, :cond_e

    .line 53
    .line 54
    array-length v9, v3

    .line 55
    const/4 v10, 0x0

    .line 56
    move v11, v10

    .line 57
    :goto_1
    if-ge v11, v9, :cond_8

    .line 58
    .line 59
    aget-object v12, v3, v11

    .line 60
    .line 61
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v13

    .line 65
    if-eqz v13, :cond_3

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    const-string v13, "application/vnd.apple.mpegURL"

    .line 69
    .line 70
    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v13

    .line 74
    if-nez v13, :cond_4

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_4
    invoke-virtual {v12, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v13

    .line 81
    if-ne v13, v5, :cond_5

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_5
    add-int/lit8 v14, v13, 0x4

    .line 85
    .line 86
    invoke-virtual {v12, v8, v14}, Ljava/lang/String;->indexOf(II)I

    .line 87
    .line 88
    .line 89
    move-result v14

    .line 90
    if-ne v14, v5, :cond_6

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_6
    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v12

    .line 97
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 98
    .line 99
    .line 100
    move-result v13

    .line 101
    if-nez v13, :cond_7

    .line 102
    .line 103
    invoke-virtual {v12, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    goto :goto_5

    .line 108
    :cond_7
    :goto_2
    add-int/lit8 v11, v11, 0x1

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_8
    array-length v9, v3

    .line 112
    :goto_3
    if-ge v10, v9, :cond_e

    .line 113
    .line 114
    aget-object v11, v3, v10

    .line 115
    .line 116
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 117
    .line 118
    .line 119
    move-result v12

    .line 120
    if-eqz v12, :cond_9

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_9
    const-string v12, "application/dash+xml"

    .line 124
    .line 125
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 126
    .line 127
    .line 128
    move-result v12

    .line 129
    if-nez v12, :cond_a

    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_a
    invoke-virtual {v11, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    move-result v12

    .line 136
    if-ne v12, v5, :cond_b

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_b
    add-int/lit8 v13, v12, 0x4

    .line 140
    .line 141
    invoke-virtual {v11, v8, v13}, Ljava/lang/String;->indexOf(II)I

    .line 142
    .line 143
    .line 144
    move-result v13

    .line 145
    if-ne v13, v5, :cond_c

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_c
    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v11

    .line 152
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 153
    .line 154
    .line 155
    move-result v12

    .line 156
    if-nez v12, :cond_d

    .line 157
    .line 158
    invoke-virtual {v11, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    goto :goto_5

    .line 163
    :cond_d
    :goto_4
    add-int/lit8 v10, v10, 0x1

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_e
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    if-ne v3, v5, :cond_f

    .line 171
    .line 172
    goto/16 :goto_0

    .line 173
    .line 174
    :cond_f
    add-int/lit8 v9, v3, 0x4

    .line 175
    .line 176
    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->indexOf(II)I

    .line 177
    .line 178
    .line 179
    move-result v8

    .line 180
    if-ne v8, v5, :cond_10

    .line 181
    .line 182
    goto/16 :goto_0

    .line 183
    .line 184
    :cond_10
    invoke-virtual {v1, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    if-nez v3, :cond_0

    .line 193
    .line 194
    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    :goto_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    if-nez v3, :cond_16

    .line 203
    .line 204
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    if-eqz v3, :cond_11

    .line 209
    .line 210
    goto :goto_7

    .line 211
    :cond_11
    const-string v3, "thumbs.gfycat.com"

    .line 212
    .line 213
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    move-result v3

    .line 217
    if-ne v3, v5, :cond_12

    .line 218
    .line 219
    goto :goto_7

    .line 220
    :cond_12
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    if-ne v3, v5, :cond_13

    .line 225
    .line 226
    goto :goto_7

    .line 227
    :cond_13
    const-string v4, ".gif"

    .line 228
    .line 229
    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    move-result v4

    .line 233
    if-gt v4, v3, :cond_14

    .line 234
    .line 235
    goto :goto_7

    .line 236
    :cond_14
    add-int/lit8 v4, v4, 0x4

    .line 237
    .line 238
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    if-ge v4, v2, :cond_15

    .line 243
    .line 244
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    goto :goto_6

    .line 249
    :cond_15
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    :goto_6
    :try_start_0
    const-string v3, "UTF-8"

    .line 254
    .line 255
    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :catch_0
    :cond_16
    :goto_7
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Vg:Ljava/lang/String;

    .line 260
    .line 261
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Wg:Ljava/lang/String;

    .line 262
    .line 263
    iget-object v0, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 264
    .line 265
    if-nez v0, :cond_17

    .line 266
    .line 267
    return-void

    .line 268
    :cond_17
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$WebAppInterface$3$1;

    .line 269
    .line 270
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$WebAppInterface$3$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$WebAppInterface$3;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 274
    .line 275
    .line 276
    return-void
.end method
