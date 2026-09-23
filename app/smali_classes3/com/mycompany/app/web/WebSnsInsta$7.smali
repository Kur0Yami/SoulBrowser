.class Lcom/mycompany/app/web/WebSnsInsta$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebSnsInsta;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebSnsInsta;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebSnsInsta$7;->c:Lcom/mycompany/app/web/WebSnsInsta;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebSnsInsta$7;->c:Lcom/mycompany/app/web/WebSnsInsta;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebSnsInsta;->t:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/web/WebSnsInsta;->t:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v3, v0, Lcom/mycompany/app/web/WebSnsInsta;->e:Lcom/mycompany/app/view/MyWebSafe;

    .line 9
    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    goto/16 :goto_b

    .line 13
    .line 14
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    goto/16 :goto_a

    .line 21
    .line 22
    :cond_1
    :try_start_0
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->B0(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    goto/16 :goto_a

    .line 29
    .line 30
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 34
    if-nez v3, :cond_3

    .line 35
    .line 36
    :try_start_1
    const-string v3, "reels"

    .line 37
    .line 38
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-object v1, v2

    .line 48
    :goto_0
    if-nez v1, :cond_3

    .line 49
    .line 50
    goto/16 :goto_a

    .line 51
    .line 52
    :cond_3
    :try_start_2
    const-string v3, "items"

    .line 53
    .line 54
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 55
    .line 56
    .line 57
    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 58
    goto :goto_1

    .line 59
    :catch_1
    move-object v1, v2

    .line 60
    :goto_1
    if-nez v1, :cond_4

    .line 61
    .line 62
    goto/16 :goto_a

    .line 63
    .line 64
    :cond_4
    :try_start_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 65
    .line 66
    .line 67
    move-result v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 68
    const/4 v4, 0x0

    .line 69
    move-object v6, v2

    .line 70
    move v5, v4

    .line 71
    :goto_2
    if-ge v5, v3, :cond_d

    .line 72
    .line 73
    :try_start_4
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    const-string v8, "carousel_media"

    .line 78
    .line 79
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 80
    .line 81
    .line 82
    move-result-object v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 83
    goto :goto_3

    .line 84
    :catch_2
    move-object v7, v2

    .line 85
    :goto_3
    const/4 v8, 0x2

    .line 86
    const/4 v9, 0x1

    .line 87
    if-eqz v7, :cond_9

    .line 88
    .line 89
    :try_start_5
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    .line 90
    .line 91
    .line 92
    move-result v10

    .line 93
    move v11, v4

    .line 94
    :goto_4
    if-ge v11, v10, :cond_c

    .line 95
    .line 96
    invoke-static {v7, v11}, Lcom/mycompany/app/web/WebSnsTask;->f(Lorg/json/JSONArray;I)Ljava/util/ArrayList;

    .line 97
    .line 98
    .line 99
    move-result-object v12

    .line 100
    if-eqz v12, :cond_8

    .line 101
    .line 102
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    .line 103
    .line 104
    .line 105
    move-result v13

    .line 106
    if-eqz v13, :cond_5

    .line 107
    .line 108
    goto :goto_6

    .line 109
    :cond_5
    if-nez v6, :cond_7

    .line 110
    .line 111
    new-instance v13, Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .line 115
    .line 116
    move-object v6, v13

    .line 117
    goto :goto_5

    .line 118
    :catch_3
    :cond_6
    move-object v2, v6

    .line 119
    goto/16 :goto_a

    .line 120
    .line 121
    :cond_7
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 122
    .line 123
    .line 124
    move-result v13

    .line 125
    sub-int/2addr v13, v9

    .line 126
    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v13

    .line 130
    check-cast v13, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 131
    .line 132
    iput v8, v13, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->k:I

    .line 133
    .line 134
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v13

    .line 138
    check-cast v13, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 139
    .line 140
    iput v9, v13, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->k:I

    .line 141
    .line 142
    :goto_5
    invoke-interface {v6, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 143
    .line 144
    .line 145
    :cond_8
    :goto_6
    add-int/lit8 v11, v11, 0x1

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_9
    invoke-static {v1, v5}, Lcom/mycompany/app/web/WebSnsTask;->f(Lorg/json/JSONArray;I)Ljava/util/ArrayList;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    if-eqz v7, :cond_c

    .line 153
    .line 154
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 155
    .line 156
    .line 157
    move-result v10

    .line 158
    if-eqz v10, :cond_a

    .line 159
    .line 160
    goto :goto_8

    .line 161
    :cond_a
    if-nez v6, :cond_b

    .line 162
    .line 163
    new-instance v8, Ljava/util/ArrayList;

    .line 164
    .line 165
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .line 167
    .line 168
    move-object v6, v8

    .line 169
    goto :goto_7

    .line 170
    :cond_b
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 171
    .line 172
    .line 173
    move-result v10

    .line 174
    sub-int/2addr v10, v9

    .line 175
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v10

    .line 179
    check-cast v10, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 180
    .line 181
    iput v8, v10, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->k:I

    .line 182
    .line 183
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v8

    .line 187
    check-cast v8, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 188
    .line 189
    iput v9, v8, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->k:I

    .line 190
    .line 191
    :goto_7
    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 192
    .line 193
    .line 194
    :cond_c
    :goto_8
    add-int/lit8 v5, v5, 0x1

    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_d
    if-eqz v6, :cond_11

    .line 198
    .line 199
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    if-eqz v1, :cond_e

    .line 204
    .line 205
    goto :goto_a

    .line 206
    :cond_e
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    move v2, v4

    .line 211
    :goto_9
    if-ge v2, v1, :cond_6

    .line 212
    .line 213
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    add-int/lit8 v2, v2, 0x1

    .line 218
    .line 219
    check-cast v3, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 220
    .line 221
    if-nez v3, :cond_f

    .line 222
    .line 223
    goto :goto_9

    .line 224
    :cond_f
    iput v4, v3, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->a:I

    .line 225
    .line 226
    iget-object v5, v3, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->c:Ljava/lang/String;

    .line 227
    .line 228
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 229
    .line 230
    .line 231
    move-result v5

    .line 232
    if-eqz v5, :cond_10

    .line 233
    .line 234
    new-instance v5, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .line 238
    .line 239
    const-string v7, ""

    .line 240
    .line 241
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v5

    .line 251
    iput-object v5, v3, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->c:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 252
    .line 253
    :cond_10
    add-int/lit8 v4, v4, 0x1

    .line 254
    .line 255
    goto :goto_9

    .line 256
    :catch_4
    :cond_11
    :goto_a
    iget-object v0, v0, Lcom/mycompany/app/web/WebSnsInsta;->c:Lcom/mycompany/app/web/WebSnsTask$SnsTaskListener;

    .line 257
    .line 258
    if-eqz v0, :cond_12

    .line 259
    .line 260
    check-cast v0, Lcom/mycompany/app/web/WebSnsLoad$10;

    .line 261
    .line 262
    invoke-virtual {v0, v2}, Lcom/mycompany/app/web/WebSnsLoad$10;->a(Ljava/util/List;)V

    .line 263
    .line 264
    .line 265
    :cond_12
    :goto_b
    return-void
.end method
