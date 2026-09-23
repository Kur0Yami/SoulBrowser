.class Lcom/mycompany/app/dialog/DialogViewIp$WebAppInterface$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mycompany/app/dialog/DialogViewIp$WebAppInterface;->onIpDet(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewIp$WebAppInterface;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewIp$WebAppInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewIp$WebAppInterface$1;->c:Lcom/mycompany/app/dialog/DialogViewIp$WebAppInterface;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewIp$WebAppInterface$1;->c:Lcom/mycompany/app/dialog/DialogViewIp$WebAppInterface;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewIp$WebAppInterface;->a:Lcom/mycompany/app/dialog/DialogViewIp;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->K0:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogViewIp;->K0:Ljava/lang/String;

    .line 9
    .line 10
    iget-boolean v3, v0, Lcom/mycompany/app/dialog/DialogViewIp;->f0:Z

    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    goto/16 :goto_6

    .line 15
    .line 16
    :cond_0
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogViewIp;->E0:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogViewIp;->F0:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogViewIp;->G0:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogViewIp;->H0:Ljava/lang/String;

    .line 23
    .line 24
    :try_start_0
    new-instance v3, Ljava/util/Scanner;

    .line 25
    .line 26
    invoke-direct {v3, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    const/4 v4, 0x1

    .line 31
    move v9, v1

    .line 32
    move v11, v9

    .line 33
    move-object v5, v2

    .line 34
    move-object v6, v5

    .line 35
    move-object v7, v6

    .line 36
    move-object v8, v7

    .line 37
    move v10, v4

    .line 38
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/util/Scanner;->hasNextLine()Z

    .line 39
    .line 40
    .line 41
    move-result v12

    .line 42
    if-eqz v12, :cond_10

    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v12

    .line 48
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v13

    .line 52
    if-eqz v13, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v12

    .line 59
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v13

    .line 63
    if-eqz v13, :cond_3

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    const-string v13, "ip:"

    .line 67
    .line 68
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v13

    .line 72
    if-eqz v13, :cond_4

    .line 73
    .line 74
    invoke-static {v12}, Lcom/mycompany/app/dialog/DialogViewIp;->J(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v12

    .line 78
    iget-object v13, v0, Lcom/mycompany/app/dialog/DialogViewIp;->d0:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {v12, v13}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v12

    .line 84
    if-eqz v12, :cond_10

    .line 85
    .line 86
    iput-boolean v4, v0, Lcom/mycompany/app/dialog/DialogViewIp;->f0:Z

    .line 87
    .line 88
    goto/16 :goto_3

    .line 89
    .line 90
    :cond_4
    const-string v13, "city:"

    .line 91
    .line 92
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v13

    .line 96
    if-eqz v13, :cond_5

    .line 97
    .line 98
    invoke-static {v12}, Lcom/mycompany/app/dialog/DialogViewIp;->J(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    :goto_1
    add-int/lit8 v9, v9, 0x1

    .line 103
    .line 104
    goto/16 :goto_3

    .line 105
    .line 106
    :cond_5
    const-string v13, "region:"

    .line 107
    .line 108
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    move-result v13

    .line 112
    if-eqz v13, :cond_a

    .line 113
    .line 114
    invoke-static {v12}, Lcom/mycompany/app/dialog/DialogViewIp;->J(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v12

    .line 118
    if-nez v12, :cond_6

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_6
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 122
    .line 123
    .line 124
    move-result v13

    .line 125
    const/16 v14, 0xe

    .line 126
    .line 127
    if-ge v13, v14, :cond_7

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_7
    const-string v14, " Special City"

    .line 131
    .line 132
    invoke-virtual {v12, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 133
    .line 134
    .line 135
    move-result v14

    .line 136
    if-eqz v14, :cond_8

    .line 137
    .line 138
    add-int/lit8 v13, v13, -0xd

    .line 139
    .line 140
    invoke-virtual {v12, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v12

    .line 144
    goto :goto_2

    .line 145
    :cond_8
    const-string v14, " Metropolitan City"

    .line 146
    .line 147
    invoke-virtual {v12, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 148
    .line 149
    .line 150
    move-result v14

    .line 151
    if-eqz v14, :cond_9

    .line 152
    .line 153
    add-int/lit8 v13, v13, -0x12

    .line 154
    .line 155
    invoke-virtual {v12, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v12

    .line 159
    :cond_9
    :goto_2
    add-int/lit8 v9, v9, 0x1

    .line 160
    .line 161
    move-object v7, v12

    .line 162
    goto :goto_3

    .line 163
    :cond_a
    const-string v13, "country_name:"

    .line 164
    .line 165
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 166
    .line 167
    .line 168
    move-result v13

    .line 169
    if-eqz v13, :cond_b

    .line 170
    .line 171
    invoke-static {v12}, Lcom/mycompany/app/dialog/DialogViewIp;->J(Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    goto :goto_1

    .line 176
    :cond_b
    const-string v13, "emoji_flag:"

    .line 177
    .line 178
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 179
    .line 180
    .line 181
    move-result v13

    .line 182
    if-eqz v13, :cond_c

    .line 183
    .line 184
    invoke-static {v12}, Lcom/mycompany/app/dialog/DialogViewIp;->J(Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    goto :goto_1

    .line 189
    :cond_c
    if-eqz v10, :cond_f

    .line 190
    .line 191
    if-nez v11, :cond_e

    .line 192
    .line 193
    const-string v13, "asn:"

    .line 194
    .line 195
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 196
    .line 197
    .line 198
    move-result v13

    .line 199
    if-nez v13, :cond_d

    .line 200
    .line 201
    const-string v13, "company:"

    .line 202
    .line 203
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 204
    .line 205
    .line 206
    move-result v12

    .line 207
    if-eqz v12, :cond_f

    .line 208
    .line 209
    :cond_d
    move v11, v4

    .line 210
    goto :goto_3

    .line 211
    :cond_e
    const-string v13, "name:"

    .line 212
    .line 213
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 214
    .line 215
    .line 216
    move-result v13

    .line 217
    if-eqz v13, :cond_f

    .line 218
    .line 219
    invoke-static {v12}, Lcom/mycompany/app/dialog/DialogViewIp;->I(Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    add-int/lit8 v9, v9, 0x1

    .line 224
    .line 225
    move v10, v1

    .line 226
    :cond_f
    :goto_3
    const/4 v12, 0x5

    .line 227
    if-lt v9, v12, :cond_1

    .line 228
    .line 229
    :cond_10
    invoke-virtual {v3}, Ljava/util/Scanner;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 230
    .line 231
    .line 232
    goto :goto_4

    .line 233
    :catch_0
    move-object v5, v2

    .line 234
    move-object v6, v5

    .line 235
    move-object v7, v6

    .line 236
    move-object v8, v7

    .line 237
    :catch_1
    :goto_4
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->f0:Z

    .line 238
    .line 239
    if-nez v1, :cond_11

    .line 240
    .line 241
    goto :goto_5

    .line 242
    :cond_11
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    if-nez v1, :cond_12

    .line 247
    .line 248
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    if-nez v1, :cond_12

    .line 253
    .line 254
    const-string v1, "  "

    .line 255
    .line 256
    invoke-static {v5, v1, v6}, Landroid/support/v4/media/a;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    :cond_12
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogViewIp;->E0:Ljava/lang/String;

    .line 261
    .line 262
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogViewIp;->F0:Ljava/lang/String;

    .line 263
    .line 264
    iput-object v7, v0, Lcom/mycompany/app/dialog/DialogViewIp;->G0:Ljava/lang/String;

    .line 265
    .line 266
    iput-object v8, v0, Lcom/mycompany/app/dialog/DialogViewIp;->H0:Ljava/lang/String;

    .line 267
    .line 268
    :goto_5
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->f0:Z

    .line 269
    .line 270
    if-nez v1, :cond_13

    .line 271
    .line 272
    goto :goto_6

    .line 273
    :cond_13
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 274
    .line 275
    if-nez v0, :cond_14

    .line 276
    .line 277
    :goto_6
    return-void

    .line 278
    :cond_14
    new-instance v1, Lcom/mycompany/app/dialog/DialogViewIp$WebAppInterface$1$1;

    .line 279
    .line 280
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogViewIp$WebAppInterface$1$1;-><init>(Lcom/mycompany/app/dialog/DialogViewIp$WebAppInterface$1;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 284
    .line 285
    .line 286
    return-void
.end method
