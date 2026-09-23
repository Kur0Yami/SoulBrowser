.class public Lcom/mycompany/app/subtitle/FormatVTT;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/mycompany/app/subtitle/Caption;Ljava/util/ArrayList;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Ljava/util/List;

    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    :goto_0
    return-void

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/subtitle/Caption;->a:Lcom/mycompany/app/subtitle/Time;

    .line 19
    .line 20
    iget v0, v0, Lcom/mycompany/app/subtitle/Time;->a:I

    .line 21
    .line 22
    iget-object v1, p0, Lcom/mycompany/app/subtitle/Caption;->b:Lcom/mycompany/app/subtitle/Time;

    .line 23
    .line 24
    iget v1, v1, Lcom/mycompany/app/subtitle/Time;->a:I

    .line 25
    .line 26
    if-ge v0, v1, :cond_3

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-lez v0, :cond_2

    .line 33
    .line 34
    add-int/lit8 v0, v0, -0x1

    .line 35
    .line 36
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/mycompany/app/subtitle/SubtitleItem;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    iget-wide v1, v0, Lcom/mycompany/app/subtitle/SubtitleItem;->a:J

    .line 45
    .line 46
    iget-object v3, p0, Lcom/mycompany/app/subtitle/Caption;->a:Lcom/mycompany/app/subtitle/Time;

    .line 47
    .line 48
    iget v3, v3, Lcom/mycompany/app/subtitle/Time;->a:I

    .line 49
    .line 50
    int-to-long v3, v3

    .line 51
    cmp-long v1, v1, v3

    .line 52
    .line 53
    if-nez v1, :cond_2

    .line 54
    .line 55
    iget-object v1, p0, Lcom/mycompany/app/subtitle/Caption;->c:Ljava/lang/String;

    .line 56
    .line 57
    iput-object v1, v0, Lcom/mycompany/app/subtitle/SubtitleItem;->b:Ljava/lang/String;

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    new-instance v0, Lcom/mycompany/app/subtitle/SubtitleItem;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/mycompany/app/subtitle/Caption;->a:Lcom/mycompany/app/subtitle/Time;

    .line 63
    .line 64
    iget v1, v1, Lcom/mycompany/app/subtitle/Time;->a:I

    .line 65
    .line 66
    int-to-long v1, v1

    .line 67
    iget-object v3, p0, Lcom/mycompany/app/subtitle/Caption;->c:Ljava/lang/String;

    .line 68
    .line 69
    invoke-direct {v0, v1, v2, v3}, Lcom/mycompany/app/subtitle/SubtitleItem;-><init>(JLjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    :cond_3
    :goto_1
    new-instance v0, Lcom/mycompany/app/subtitle/SubtitleItem;

    .line 76
    .line 77
    iget-object p0, p0, Lcom/mycompany/app/subtitle/Caption;->b:Lcom/mycompany/app/subtitle/Time;

    .line 78
    .line 79
    iget p0, p0, Lcom/mycompany/app/subtitle/Time;->a:I

    .line 80
    .line 81
    int-to-long v1, p0

    .line 82
    const/4 p0, 0x0

    .line 83
    invoke-direct {v0, v1, v2, p0}, Lcom/mycompany/app/subtitle/SubtitleItem;-><init>(JLjava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public static b(Ljava/io/InputStream;Ljava/lang/String;Lcom/mycompany/app/subtitle/Subtitle$SubtitleListener;)Ljava/util/ArrayList;
    .locals 11

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    .line 10
    .line 11
    new-instance v5, Ljava/io/InputStreamReader;

    .line 12
    .line 13
    invoke-direct {v5, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    move p0, v3

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-object v4, v1

    .line 22
    move p0, v2

    .line 23
    :goto_0
    if-eqz p0, :cond_2

    .line 24
    .line 25
    if-eqz v4, :cond_1

    .line 26
    .line 27
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 28
    .line 29
    .line 30
    :catch_1
    :cond_1
    :goto_1
    return-object v1

    .line 31
    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    new-instance p1, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    new-instance p1, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    const-string v6, "\ufeff"

    .line 54
    .line 55
    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    :goto_2
    if-eqz v5, :cond_c

    .line 60
    .line 61
    invoke-interface {p2}, Lcom/mycompany/app/subtitle/Subtitle$SubtitleListener;->a()Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-eqz v6, :cond_3

    .line 66
    .line 67
    goto/16 :goto_7

    .line 68
    .line 69
    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    if-nez v6, :cond_b

    .line 78
    .line 79
    if-eqz v2, :cond_5

    .line 80
    .line 81
    const-string v6, "WEBVTT"

    .line 82
    .line 83
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-eqz v5, :cond_4

    .line 88
    .line 89
    move v2, v3

    .line 90
    :cond_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    goto :goto_2

    .line 95
    :cond_5
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->H6(Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    const/4 v7, -0x1

    .line 100
    if-eq v6, v7, :cond_6

    .line 101
    .line 102
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 110
    :cond_6
    const/16 v6, 0xc

    .line 111
    .line 112
    :try_start_3
    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 117
    .line 118
    .line 119
    move-result v8

    .line 120
    sub-int/2addr v8, v6

    .line 121
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    new-instance v8, Lcom/mycompany/app/subtitle/Caption;

    .line 130
    .line 131
    invoke-direct {v8}, Lcom/mycompany/app/subtitle/Caption;-><init>()V

    .line 132
    .line 133
    .line 134
    new-instance v9, Lcom/mycompany/app/subtitle/Time;

    .line 135
    .line 136
    const/4 v10, 0x4

    .line 137
    invoke-direct {v9, v10, v7}, Lcom/mycompany/app/subtitle/Time;-><init>(ILjava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iput-object v9, v8, Lcom/mycompany/app/subtitle/Caption;->a:Lcom/mycompany/app/subtitle/Time;

    .line 141
    .line 142
    new-instance v7, Lcom/mycompany/app/subtitle/Time;

    .line 143
    .line 144
    invoke-direct {v7, v10, v6}, Lcom/mycompany/app/subtitle/Time;-><init>(ILjava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iput-object v7, v8, Lcom/mycompany/app/subtitle/Caption;->b:Lcom/mycompany/app/subtitle/Time;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :catch_2
    move-object v8, v1

    .line 151
    :goto_3
    if-eqz v8, :cond_a

    .line 152
    .line 153
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    move-object v6, v0

    .line 162
    :goto_4
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 163
    .line 164
    .line 165
    move-result v7

    .line 166
    if-nez v7, :cond_8

    .line 167
    .line 168
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 169
    .line 170
    .line 171
    move-result v7

    .line 172
    if-nez v7, :cond_7

    .line 173
    .line 174
    new-instance v7, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string v6, "<br />"

    .line 183
    .line 184
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v6

    .line 206
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    goto :goto_4

    .line 215
    :cond_8
    iput-object v6, v8, Lcom/mycompany/app/subtitle/Caption;->c:Ljava/lang/String;

    .line 216
    .line 217
    iget-object v6, v8, Lcom/mycompany/app/subtitle/Caption;->a:Lcom/mycompany/app/subtitle/Time;

    .line 218
    .line 219
    iget v6, v6, Lcom/mycompany/app/subtitle/Time;->a:I

    .line 220
    .line 221
    :goto_5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 222
    .line 223
    .line 224
    move-result-object v7

    .line 225
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v7

    .line 229
    if-eqz v7, :cond_9

    .line 230
    .line 231
    add-int/lit8 v6, v6, 0x1

    .line 232
    .line 233
    goto :goto_5

    .line 234
    :cond_9
    iget-object v7, v8, Lcom/mycompany/app/subtitle/Caption;->a:Lcom/mycompany/app/subtitle/Time;

    .line 235
    .line 236
    iput v6, v7, Lcom/mycompany/app/subtitle/Time;->a:I

    .line 237
    .line 238
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 239
    .line 240
    .line 241
    move-result-object v6

    .line 242
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    invoke-static {v8, p0}, Lcom/mycompany/app/subtitle/FormatVTT;->a(Lcom/mycompany/app/subtitle/Caption;Ljava/util/ArrayList;)V

    .line 246
    .line 247
    .line 248
    :cond_a
    :goto_6
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 249
    .line 250
    .line 251
    move-result v5

    .line 252
    if-nez v5, :cond_b

    .line 253
    .line 254
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v5

    .line 258
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v5

    .line 262
    goto :goto_6

    .line 263
    :cond_b
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 267
    goto/16 :goto_2

    .line 268
    .line 269
    :catch_3
    :cond_c
    :goto_7
    if-eqz v4, :cond_d

    .line 270
    .line 271
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 272
    .line 273
    .line 274
    :catch_4
    :cond_d
    return-object p0
.end method
