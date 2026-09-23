.class public Lcom/mycompany/app/down/DownParseVimeo;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(ILjava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-object p1

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 5
    if-nez p1, :cond_1

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_2

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_2
    const/16 v2, 0x2f

    .line 16
    .line 17
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    add-int/lit8 v4, v3, -0x1

    .line 22
    .line 23
    if-lez v4, :cond_8

    .line 24
    .line 25
    if-lt v4, v1, :cond_3

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_3
    const/4 v4, 0x0

    .line 29
    move v5, v4

    .line 30
    :goto_0
    if-ge v5, p0, :cond_6

    .line 31
    .line 32
    add-int/lit8 v3, v3, -0x1

    .line 33
    .line 34
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->lastIndexOf(II)I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    add-int/lit8 v6, v3, -0x1

    .line 39
    .line 40
    if-lez v6, :cond_5

    .line 41
    .line 42
    if-lt v6, v1, :cond_4

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_5
    :goto_1
    return-object v0

    .line 49
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 50
    .line 51
    if-lez v3, :cond_8

    .line 52
    .line 53
    if-lt v3, v1, :cond_7

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_7
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    :cond_8
    :goto_2
    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/main/MainDownSvc$M3u8Item;
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->M0(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_1

    .line 13
    .line 14
    :cond_0
    const-string v0, "<,>"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_c

    .line 21
    .line 22
    array-length v0, p1

    .line 23
    const/4 v2, 0x3

    .line 24
    if-eq v0, v2, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    aget-object v0, p1, v0

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    const/4 v3, 0x1

    .line 34
    aget-object v3, p1, v3

    .line 35
    .line 36
    if-nez v3, :cond_3

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    const/4 v4, 0x2

    .line 40
    aget-object p1, p1, v4

    .line 41
    .line 42
    if-nez p1, :cond_4

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_4
    invoke-static {p0, v0, p2}, Lcom/mycompany/app/down/DownParseVimeo;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    if-nez p0, :cond_5

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_5
    invoke-static {v3}, Lcom/mycompany/app/down/DownParseVimeo;->e(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    if-nez p2, :cond_6

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_6
    invoke-static {p2, v0}, Lcom/mycompany/app/down/DownParseVimeo;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_7

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_7
    if-nez p2, :cond_8

    .line 71
    .line 72
    move-object v1, v3

    .line 73
    goto :goto_0

    .line 74
    :cond_8
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-nez v4, :cond_9

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_9
    mul-int/2addr p2, v2

    .line 82
    if-lt p2, v4, :cond_a

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_a
    invoke-virtual {v3, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    if-nez p2, :cond_b

    .line 94
    .line 95
    invoke-static {v0, v1}, Landroid/support/v4/media/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    :cond_b
    new-instance p2, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;

    .line 100
    .line 101
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 102
    .line 103
    .line 104
    iput-object p0, p2, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->j:Lcom/google/gson/JsonObject;

    .line 105
    .line 106
    iput-object v0, p2, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->f:Ljava/lang/String;

    .line 107
    .line 108
    iput-object p1, p2, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->b:Ljava/lang/String;

    .line 109
    .line 110
    return-object p2

    .line 111
    :cond_c
    :goto_1
    return-object v1
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->M0(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v3

    .line 5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v6, 0x0

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    const/4 v5, 0x1

    .line 15
    const/4 v0, 0x0

    .line 16
    move-object v2, p0

    .line 17
    move-object v4, p2

    .line 18
    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/mycompany/app/main/MainUtil;->S3(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/net/HttpURLConnection;

    .line 19
    .line 20
    .line 21
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    if-nez p0, :cond_1

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_1
    :try_start_1
    const-string p1, "gzip"

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-static {v2, p2, p1}, Lcom/mycompany/app/main/MainUtil;->A3(Landroid/content/Context;Ljava/io/InputStream;Z)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 43
    goto :goto_1

    .line 44
    :catch_0
    move-object p0, v6

    .line 45
    :catch_1
    :goto_0
    move-object p1, v6

    .line 46
    goto :goto_1

    .line 47
    :catch_2
    move-object p0, v6

    .line 48
    :catch_3
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->D6(Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :goto_1
    if-eqz p0, :cond_2

    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 55
    .line 56
    .line 57
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-eqz p0, :cond_3

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_3
    :try_start_2
    invoke-static {p1}, Lcom/google/gson/JsonParser;->b(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->k()Lcom/google/gson/JsonObject;

    .line 69
    .line 70
    .line 71
    move-result-object p0
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 72
    return-object p0

    .line 73
    :catch_4
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->D6(Landroid/content/Context;)V

    .line 74
    .line 75
    .line 76
    :catch_5
    :goto_2
    return-object v6
.end method

.method public static d(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_1d

    .line 3
    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_7

    .line 11
    .line 12
    :cond_0
    if-nez p3, :cond_1

    .line 13
    .line 14
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    goto/16 :goto_7

    .line 21
    .line 22
    :cond_1
    :try_start_0
    const-string v1, "clip_id"

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->r(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    goto/16 :goto_7

    .line 31
    .line 32
    :cond_2
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->p()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    goto/16 :goto_7

    .line 43
    .line 44
    :cond_3
    if-eqz p3, :cond_4

    .line 45
    .line 46
    const-string v1, "audio"

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_4
    const-string v1, "video"

    .line 50
    .line 51
    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->r(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    check-cast p0, Lcom/google/gson/JsonArray;

    .line 56
    .line 57
    if-nez p0, :cond_5

    .line 58
    .line 59
    goto/16 :goto_7

    .line 60
    .line 61
    :cond_5
    iget-object v1, p0, Lcom/google/gson/JsonArray;->c:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 64
    .line 65
    .line 66
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 67
    if-nez v1, :cond_6

    .line 68
    .line 69
    goto/16 :goto_7

    .line 70
    .line 71
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .line 75
    .line 76
    const/4 v3, 0x0

    .line 77
    move v4, v3

    .line 78
    :goto_1
    if-ge v4, v1, :cond_1c

    .line 79
    .line 80
    :try_start_1
    invoke-virtual {p0, v4}, Lcom/google/gson/JsonArray;->q(I)Lcom/google/gson/JsonElement;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    check-cast v5, Lcom/google/gson/JsonObject;

    .line 85
    .line 86
    if-nez v5, :cond_7

    .line 87
    .line 88
    goto/16 :goto_6

    .line 89
    .line 90
    :cond_7
    const-string v6, "id"

    .line 91
    .line 92
    invoke-virtual {v5, v6}, Lcom/google/gson/JsonObject;->r(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    if-nez v6, :cond_8

    .line 97
    .line 98
    goto/16 :goto_6

    .line 99
    .line 100
    :cond_8
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->p()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    if-eqz v7, :cond_9

    .line 109
    .line 110
    goto/16 :goto_6

    .line 111
    .line 112
    :cond_9
    if-nez p3, :cond_a

    .line 113
    .line 114
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    if-nez v6, :cond_a

    .line 119
    .line 120
    goto/16 :goto_6

    .line 121
    .line 122
    :cond_a
    const-string v6, "base_url"

    .line 123
    .line 124
    invoke-virtual {v5, v6}, Lcom/google/gson/JsonObject;->r(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    if-nez v6, :cond_b

    .line 129
    .line 130
    if-eqz p3, :cond_1c

    .line 131
    .line 132
    goto/16 :goto_6

    .line 133
    .line 134
    :cond_b
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->p()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 139
    .line 140
    .line 141
    move-result v7

    .line 142
    if-eqz v7, :cond_c

    .line 143
    .line 144
    if-eqz p3, :cond_1c

    .line 145
    .line 146
    goto/16 :goto_6

    .line 147
    .line 148
    :cond_c
    invoke-static {v6}, Lcom/mycompany/app/down/DownParseVimeo;->e(Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    move-result v7

    .line 152
    if-eqz v7, :cond_12

    .line 153
    .line 154
    invoke-static {v7, p1}, Lcom/mycompany/app/down/DownParseVimeo;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 159
    .line 160
    .line 161
    move-result v9

    .line 162
    if-eqz v9, :cond_d

    .line 163
    .line 164
    if-eqz p3, :cond_1c

    .line 165
    .line 166
    goto/16 :goto_6

    .line 167
    .line 168
    :cond_d
    if-nez v7, :cond_e

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_e
    if-nez v6, :cond_f

    .line 172
    .line 173
    :goto_2
    move-object v6, v0

    .line 174
    goto :goto_3

    .line 175
    :cond_f
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 176
    .line 177
    .line 178
    move-result v9

    .line 179
    if-nez v9, :cond_10

    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_10
    mul-int/lit8 v7, v7, 0x3

    .line 183
    .line 184
    if-lt v7, v9, :cond_11

    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_11
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    :goto_3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 192
    .line 193
    .line 194
    move-result v7

    .line 195
    if-eqz v7, :cond_13

    .line 196
    .line 197
    if-eqz p3, :cond_1c

    .line 198
    .line 199
    goto/16 :goto_6

    .line 200
    .line 201
    :cond_12
    move-object v8, p1

    .line 202
    :cond_13
    const-string v7, "init_segment"

    .line 203
    .line 204
    invoke-virtual {v5, v7}, Lcom/google/gson/JsonObject;->r(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 205
    .line 206
    .line 207
    move-result-object v7

    .line 208
    if-nez v7, :cond_14

    .line 209
    .line 210
    if-eqz p3, :cond_1c

    .line 211
    .line 212
    goto/16 :goto_6

    .line 213
    .line 214
    :cond_14
    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->p()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v7

    .line 218
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 219
    .line 220
    .line 221
    move-result v9

    .line 222
    if-eqz v9, :cond_15

    .line 223
    .line 224
    if-eqz p3, :cond_1c

    .line 225
    .line 226
    goto/16 :goto_6

    .line 227
    .line 228
    :cond_15
    const-string v9, "segments"

    .line 229
    .line 230
    invoke-virtual {v5, v9}, Lcom/google/gson/JsonObject;->r(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 231
    .line 232
    .line 233
    move-result-object v9

    .line 234
    check-cast v9, Lcom/google/gson/JsonArray;

    .line 235
    .line 236
    if-nez v9, :cond_16

    .line 237
    .line 238
    if-eqz p3, :cond_1c

    .line 239
    .line 240
    goto/16 :goto_6

    .line 241
    .line 242
    :cond_16
    iget-object v10, v9, Lcom/google/gson/JsonArray;->c:Ljava/util/ArrayList;

    .line 243
    .line 244
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 245
    .line 246
    .line 247
    move-result v10

    .line 248
    if-nez v10, :cond_17

    .line 249
    .line 250
    if-eqz p3, :cond_1c

    .line 251
    .line 252
    goto :goto_6

    .line 253
    :cond_17
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    const-string v7, "index_segment"

    .line 257
    .line 258
    invoke-virtual {v5, v7}, Lcom/google/gson/JsonObject;->r(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 259
    .line 260
    .line 261
    move-result-object v5

    .line 262
    if-eqz v5, :cond_18

    .line 263
    .line 264
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->p()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v5

    .line 268
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 269
    .line 270
    .line 271
    move-result v7

    .line 272
    if-nez v7, :cond_18

    .line 273
    .line 274
    new-instance v7, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v5

    .line 292
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 293
    .line 294
    .line 295
    :cond_18
    :goto_4
    if-ge v3, v10, :cond_1c

    .line 296
    .line 297
    :try_start_2
    invoke-virtual {v9, v3}, Lcom/google/gson/JsonArray;->q(I)Lcom/google/gson/JsonElement;

    .line 298
    .line 299
    .line 300
    move-result-object p0

    .line 301
    check-cast p0, Lcom/google/gson/JsonObject;

    .line 302
    .line 303
    if-nez p0, :cond_19

    .line 304
    .line 305
    goto :goto_5

    .line 306
    :cond_19
    const-string p1, "url"

    .line 307
    .line 308
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->r(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 309
    .line 310
    .line 311
    move-result-object p0

    .line 312
    if-nez p0, :cond_1a

    .line 313
    .line 314
    goto :goto_5

    .line 315
    :cond_1a
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->p()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object p0

    .line 319
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 320
    .line 321
    .line 322
    move-result p1

    .line 323
    if-eqz p1, :cond_1b

    .line 324
    .line 325
    goto :goto_5

    .line 326
    :cond_1b
    new-instance p1, Ljava/lang/StringBuilder;

    .line 327
    .line 328
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .line 330
    .line 331
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object p0

    .line 344
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 345
    .line 346
    .line 347
    :catch_0
    :goto_5
    add-int/lit8 v3, v3, 0x1

    .line 348
    .line 349
    goto :goto_4

    .line 350
    :catch_1
    :goto_6
    add-int/lit8 v4, v4, 0x1

    .line 351
    .line 352
    goto/16 :goto_1

    .line 353
    .line 354
    :cond_1c
    return-object v2

    .line 355
    :catch_2
    :cond_1d
    :goto_7
    return-object v0
.end method

.method public static e(Ljava/lang/String;)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    return v0

    .line 12
    :cond_1
    move v2, v0

    .line 13
    :cond_2
    const-string v3, "../"

    .line 14
    .line 15
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_3

    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x3

    .line 22
    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    if-lt v0, v1, :cond_2

    .line 26
    .line 27
    :cond_3
    return v2
.end method
