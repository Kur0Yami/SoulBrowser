.class public Lcom/mycompany/app/main/MainUtil$SortChildData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/main/MainUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SortChildData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/mycompany/app/main/MainItem$ChildItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:I

.field public final f:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/mycompany/app/main/MainUtil$SortChildData;->c:I

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/mycompany/app/main/MainUtil$SortChildData;->f:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .line 1
    check-cast p1, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 2
    .line 3
    check-cast p2, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_0
    const/4 v0, 0x1

    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    goto/16 :goto_4

    .line 15
    .line 16
    :cond_1
    if-nez p2, :cond_2

    .line 17
    .line 18
    goto/16 :goto_3

    .line 19
    .line 20
    :cond_2
    iget-boolean v1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->k:Z

    .line 21
    .line 22
    iget-boolean v2, p0, Lcom/mycompany/app/main/MainUtil$SortChildData;->f:Z

    .line 23
    .line 24
    if-nez v1, :cond_3

    .line 25
    .line 26
    iget-boolean v3, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->k:Z

    .line 27
    .line 28
    if-eqz v3, :cond_8

    .line 29
    .line 30
    :cond_3
    sget-boolean v3, Lcom/mycompany/app/pref/PrefList;->G:Z

    .line 31
    .line 32
    if-eqz v3, :cond_8

    .line 33
    .line 34
    iget-boolean v3, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->k:Z

    .line 35
    .line 36
    if-nez v3, :cond_4

    .line 37
    .line 38
    goto/16 :goto_3

    .line 39
    .line 40
    :cond_4
    if-nez v1, :cond_5

    .line 41
    .line 42
    goto/16 :goto_4

    .line 43
    .line 44
    :cond_5
    iget-object v0, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->n:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v1, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->n:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/main/MainUtil;->m(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_6

    .line 53
    .line 54
    return v0

    .line 55
    :cond_6
    iget-object v0, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v1, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/main/MainUtil;->n(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_7

    .line 64
    .line 65
    return v0

    .line 66
    :cond_7
    iget-wide v0, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 67
    .line 68
    iget-wide p1, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 69
    .line 70
    invoke-static {v0, v1, p1, p2, v2}, Lcom/mycompany/app/main/MainUtil;->o(JJZ)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    return p1

    .line 75
    :cond_8
    iget v1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->d:I

    .line 76
    .line 77
    if-eq v1, v0, :cond_1b

    .line 78
    .line 79
    iget v3, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->d:I

    .line 80
    .line 81
    if-ne v3, v0, :cond_9

    .line 82
    .line 83
    goto/16 :goto_2

    .line 84
    .line 85
    :cond_9
    const/4 v4, 0x2

    .line 86
    if-eq v1, v4, :cond_17

    .line 87
    .line 88
    if-ne v3, v4, :cond_a

    .line 89
    .line 90
    goto/16 :goto_1

    .line 91
    .line 92
    :cond_a
    const/4 v5, 0x4

    .line 93
    if-eq v1, v5, :cond_13

    .line 94
    .line 95
    if-ne v3, v5, :cond_b

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_b
    iget v1, p0, Lcom/mycompany/app/main/MainUtil$SortChildData;->c:I

    .line 99
    .line 100
    if-eqz v1, :cond_e

    .line 101
    .line 102
    iget-object v3, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->m:Ljava/lang/String;

    .line 103
    .line 104
    iget-object v5, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->m:Ljava/lang/String;

    .line 105
    .line 106
    invoke-static {v3, v5, v2}, Lcom/mycompany/app/main/MainUtil;->m(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-eqz v3, :cond_c

    .line 111
    .line 112
    return v3

    .line 113
    :cond_c
    if-eq v1, v0, :cond_d

    .line 114
    .line 115
    if-ne v1, v4, :cond_e

    .line 116
    .line 117
    :cond_d
    iget-object v0, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 118
    .line 119
    iget-object v1, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 120
    .line 121
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/main/MainUtil;->n(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_e

    .line 126
    .line 127
    return v0

    .line 128
    :cond_e
    iget v0, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 129
    .line 130
    int-to-long v0, v0

    .line 131
    iget v3, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 132
    .line 133
    int-to-long v3, v3

    .line 134
    invoke-static {v0, v1, v3, v4, v2}, Lcom/mycompany/app/main/MainUtil;->o(JJZ)I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-eqz v0, :cond_f

    .line 139
    .line 140
    return v0

    .line 141
    :cond_f
    iget-object v0, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->o:Ljava/lang/String;

    .line 142
    .line 143
    iget-object v1, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->o:Ljava/lang/String;

    .line 144
    .line 145
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/main/MainUtil;->n(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_10

    .line 150
    .line 151
    return v0

    .line 152
    :cond_10
    iget-object v0, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->n:Ljava/lang/String;

    .line 153
    .line 154
    iget-object v1, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->n:Ljava/lang/String;

    .line 155
    .line 156
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/main/MainUtil;->m(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-eqz v0, :cond_11

    .line 161
    .line 162
    return v0

    .line 163
    :cond_11
    iget-object v0, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 164
    .line 165
    iget-object v1, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 166
    .line 167
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/main/MainUtil;->n(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-eqz v0, :cond_12

    .line 172
    .line 173
    return v0

    .line 174
    :cond_12
    iget-wide v0, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 175
    .line 176
    iget-wide p1, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 177
    .line 178
    invoke-static {v0, v1, p1, p2, v2}, Lcom/mycompany/app/main/MainUtil;->o(JJZ)I

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    return p1

    .line 183
    :cond_13
    :goto_0
    if-eq v3, v5, :cond_14

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_14
    if-eq v1, v5, :cond_15

    .line 187
    .line 188
    goto :goto_4

    .line 189
    :cond_15
    iget-object v0, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->n:Ljava/lang/String;

    .line 190
    .line 191
    iget-object v1, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->n:Ljava/lang/String;

    .line 192
    .line 193
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/main/MainUtil;->m(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-eqz v0, :cond_16

    .line 198
    .line 199
    return v0

    .line 200
    :cond_16
    iget-wide v0, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 201
    .line 202
    iget-wide p1, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 203
    .line 204
    invoke-static {v0, v1, p1, p2, v2}, Lcom/mycompany/app/main/MainUtil;->o(JJZ)I

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    return p1

    .line 209
    :cond_17
    :goto_1
    if-eq v3, v4, :cond_18

    .line 210
    .line 211
    goto :goto_3

    .line 212
    :cond_18
    if-eq v1, v4, :cond_19

    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_19
    iget-object v0, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->n:Ljava/lang/String;

    .line 216
    .line 217
    iget-object v1, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->n:Ljava/lang/String;

    .line 218
    .line 219
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/main/MainUtil;->m(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    if-eqz v0, :cond_1a

    .line 224
    .line 225
    return v0

    .line 226
    :cond_1a
    iget-wide v0, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 227
    .line 228
    iget-wide p1, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 229
    .line 230
    invoke-static {v0, v1, p1, p2, v2}, Lcom/mycompany/app/main/MainUtil;->o(JJZ)I

    .line 231
    .line 232
    .line 233
    move-result p1

    .line 234
    return p1

    .line 235
    :cond_1b
    :goto_2
    iget v3, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->d:I

    .line 236
    .line 237
    if-eq v3, v0, :cond_1c

    .line 238
    .line 239
    :goto_3
    const/4 p1, -0x1

    .line 240
    return p1

    .line 241
    :cond_1c
    if-eq v1, v0, :cond_1d

    .line 242
    .line 243
    :goto_4
    return v0

    .line 244
    :cond_1d
    iget-object v0, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->n:Ljava/lang/String;

    .line 245
    .line 246
    iget-object v1, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->n:Ljava/lang/String;

    .line 247
    .line 248
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/main/MainUtil;->m(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    if-eqz v0, :cond_1e

    .line 253
    .line 254
    return v0

    .line 255
    :cond_1e
    iget-wide v0, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 256
    .line 257
    iget-wide p1, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 258
    .line 259
    invoke-static {v0, v1, p1, p2, v2}, Lcom/mycompany/app/main/MainUtil;->o(JJZ)I

    .line 260
    .line 261
    .line 262
    move-result p1

    .line 263
    return p1
.end method
