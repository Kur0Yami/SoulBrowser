.class Lcom/mycompany/app/main/MainTransNews$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainTransNews;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainTransNews;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainTransNews$9;->c:Lcom/mycompany/app/main/MainTransNews;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTransNews$9;->c:Lcom/mycompany/app/main/MainTransNews;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainTransNews;->y:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/main/MainTransNews;->y:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    iput-boolean v3, v0, Lcom/mycompany/app/main/MainTransNews;->u:Z

    .line 10
    .line 11
    const/4 v4, 0x5

    .line 12
    const/4 v5, 0x1

    .line 13
    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    if-eqz v6, :cond_1

    .line 18
    .line 19
    :cond_0
    :goto_0
    move v1, v3

    .line 20
    goto/16 :goto_9

    .line 21
    .line 22
    :cond_1
    iget-object v6, v0, Lcom/mycompany/app/main/MainTransNews;->n:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1, v6}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    .line 25
    .line 26
    .line 27
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_1

    .line 29
    :catch_0
    move-object v1, v2

    .line 30
    :goto_1
    if-nez v1, :cond_2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    iget-object v6, v0, Lcom/mycompany/app/main/MainTransNews;->b:Landroid/content/Context;

    .line 34
    .line 35
    invoke-static {v6}, Lcom/mycompany/app/data/DataNews;->a(Landroid/content/Context;)Lcom/mycompany/app/data/DataNews;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    sget-object v7, Lcom/mycompany/app/pref/PrefZtwo;->P:Ljava/lang/String;

    .line 40
    .line 41
    iput-object v7, v6, Lcom/mycompany/app/data/DataNews;->b:Ljava/lang/String;

    .line 42
    .line 43
    const-string v6, "div"

    .line 44
    .line 45
    invoke-virtual {v1, v6}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-nez v6, :cond_3

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    iget-boolean v6, v0, Lcom/mycompany/app/main/MainTransNews;->t:Z

    .line 59
    .line 60
    if-nez v6, :cond_4

    .line 61
    .line 62
    iget v6, v0, Lcom/mycompany/app/main/MainTransNews;->p:I

    .line 63
    .line 64
    if-ge v6, v4, :cond_4

    .line 65
    .line 66
    move v6, v5

    .line 67
    goto :goto_2

    .line 68
    :cond_4
    move v6, v3

    .line 69
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    move v8, v3

    .line 74
    move v9, v8

    .line 75
    :cond_5
    :goto_3
    if-ge v9, v7, :cond_11

    .line 76
    .line 77
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v10

    .line 81
    add-int/lit8 v9, v9, 0x1

    .line 82
    .line 83
    check-cast v10, Lorg/jsoup/nodes/Element;

    .line 84
    .line 85
    if-nez v10, :cond_6

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_6
    invoke-virtual {v10}, Lorg/jsoup/nodes/Element;->id()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v11

    .line 92
    invoke-static {v11}, Lcom/mycompany/app/main/MainUtil;->H6(Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v11

    .line 96
    iget-object v12, v0, Lcom/mycompany/app/main/MainTransNews;->e:Ljava/util/List;

    .line 97
    .line 98
    if-eqz v12, :cond_8

    .line 99
    .line 100
    if-ltz v11, :cond_8

    .line 101
    .line 102
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 103
    .line 104
    .line 105
    move-result v13

    .line 106
    if-lt v11, v13, :cond_7

    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_7
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v11

    .line 113
    check-cast v11, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 114
    .line 115
    goto :goto_5

    .line 116
    :cond_8
    :goto_4
    move-object v11, v2

    .line 117
    :goto_5
    if-nez v11, :cond_9

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_9
    iget v12, v11, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->a:I

    .line 121
    .line 122
    const/4 v13, 0x7

    .line 123
    if-eq v12, v13, :cond_a

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_a
    const-string v12, "p"

    .line 127
    .line 128
    invoke-virtual {v10, v12}, Lorg/jsoup/nodes/Element;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 129
    .line 130
    .line 131
    move-result-object v12

    .line 132
    const/4 v13, 0x2

    .line 133
    if-nez v12, :cond_b

    .line 134
    .line 135
    goto :goto_7

    .line 136
    :cond_b
    const-string v14, "font"

    .line 137
    .line 138
    invoke-virtual {v12, v14}, Lorg/jsoup/nodes/Element;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 139
    .line 140
    .line 141
    move-result-object v14

    .line 142
    if-nez v14, :cond_c

    .line 143
    .line 144
    iput v5, v11, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->x:I

    .line 145
    .line 146
    goto :goto_7

    .line 147
    :cond_c
    invoke-virtual {v12}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v12

    .line 151
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 152
    .line 153
    .line 154
    move-result v14

    .line 155
    if-eqz v14, :cond_d

    .line 156
    .line 157
    iput v5, v11, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->x:I

    .line 158
    .line 159
    goto :goto_7

    .line 160
    :cond_d
    const-string v14, "h1"

    .line 161
    .line 162
    invoke-virtual {v10, v14}, Lorg/jsoup/nodes/Element;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 163
    .line 164
    .line 165
    move-result-object v10

    .line 166
    if-eqz v10, :cond_e

    .line 167
    .line 168
    invoke-virtual {v10}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v10

    .line 172
    goto :goto_6

    .line 173
    :cond_e
    move-object v10, v2

    .line 174
    :goto_6
    iget-object v14, v11, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->f:Ljava/lang/String;

    .line 175
    .line 176
    invoke-static {v14, v12}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v14

    .line 180
    if-eqz v14, :cond_f

    .line 181
    .line 182
    iget-object v14, v11, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->r:Ljava/lang/String;

    .line 183
    .line 184
    invoke-static {v14, v10}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v14

    .line 188
    if-eqz v14, :cond_f

    .line 189
    .line 190
    iput v5, v11, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->x:I

    .line 191
    .line 192
    goto :goto_7

    .line 193
    :cond_f
    iput v13, v11, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->x:I

    .line 194
    .line 195
    iput-object v12, v11, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->v:Ljava/lang/String;

    .line 196
    .line 197
    iput-object v10, v11, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->w:Ljava/lang/String;

    .line 198
    .line 199
    :goto_7
    iget v10, v11, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->x:I

    .line 200
    .line 201
    if-eq v10, v13, :cond_10

    .line 202
    .line 203
    move v8, v5

    .line 204
    if-eqz v6, :cond_5

    .line 205
    .line 206
    goto :goto_8

    .line 207
    :cond_10
    iput-boolean v5, v0, Lcom/mycompany/app/main/MainTransNews;->u:Z

    .line 208
    .line 209
    goto/16 :goto_3

    .line 210
    .line 211
    :cond_11
    :goto_8
    xor-int/lit8 v1, v8, 0x1

    .line 212
    .line 213
    :goto_9
    if-nez v1, :cond_15

    .line 214
    .line 215
    iget-boolean v1, v0, Lcom/mycompany/app/main/MainTransNews;->t:Z

    .line 216
    .line 217
    if-eqz v1, :cond_13

    .line 218
    .line 219
    iget-boolean v1, v0, Lcom/mycompany/app/main/MainTransNews;->u:Z

    .line 220
    .line 221
    if-eqz v1, :cond_13

    .line 222
    .line 223
    iput-boolean v3, v0, Lcom/mycompany/app/main/MainTransNews;->t:Z

    .line 224
    .line 225
    iget-object v1, v0, Lcom/mycompany/app/main/MainTransNews;->f:Lcom/mycompany/app/view/MyWebSafe;

    .line 226
    .line 227
    if-nez v1, :cond_12

    .line 228
    .line 229
    goto :goto_a

    .line 230
    :cond_12
    new-instance v2, Lcom/mycompany/app/main/MainTransNews$9$1;

    .line 231
    .line 232
    invoke-direct {v2, p0}, Lcom/mycompany/app/main/MainTransNews$9$1;-><init>(Lcom/mycompany/app/main/MainTransNews$9;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 236
    .line 237
    .line 238
    :cond_13
    iget v1, v0, Lcom/mycompany/app/main/MainTransNews;->p:I

    .line 239
    .line 240
    if-ge v1, v4, :cond_15

    .line 241
    .line 242
    add-int/2addr v1, v5

    .line 243
    iput v1, v0, Lcom/mycompany/app/main/MainTransNews;->p:I

    .line 244
    .line 245
    iget-object v0, v0, Lcom/mycompany/app/main/MainTransNews;->f:Lcom/mycompany/app/view/MyWebSafe;

    .line 246
    .line 247
    if-nez v0, :cond_14

    .line 248
    .line 249
    goto :goto_a

    .line 250
    :cond_14
    new-instance v1, Lcom/mycompany/app/main/MainTransNews$9$2;

    .line 251
    .line 252
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/MainTransNews$9$2;-><init>(Lcom/mycompany/app/main/MainTransNews$9;)V

    .line 253
    .line 254
    .line 255
    const-wide/16 v2, 0x64

    .line 256
    .line 257
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 258
    .line 259
    .line 260
    return-void

    .line 261
    :cond_15
    iget-object v0, v0, Lcom/mycompany/app/main/MainTransNews;->f:Lcom/mycompany/app/view/MyWebSafe;

    .line 262
    .line 263
    if-nez v0, :cond_16

    .line 264
    .line 265
    :goto_a
    return-void

    .line 266
    :cond_16
    new-instance v1, Lcom/mycompany/app/main/MainTransNews$9$3;

    .line 267
    .line 268
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/MainTransNews$9$3;-><init>(Lcom/mycompany/app/main/MainTransNews$9;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 272
    .line 273
    .line 274
    return-void
.end method
