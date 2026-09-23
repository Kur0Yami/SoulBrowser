.class public Lcom/mycompany/app/main/MainUtil$SortChildTime;
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
    name = "SortChildTime"
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
    iput p1, p0, Lcom/mycompany/app/main/MainUtil$SortChildTime;->c:I

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/mycompany/app/main/MainUtil$SortChildTime;->f:Z

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
    iget-boolean v2, p0, Lcom/mycompany/app/main/MainUtil$SortChildTime;->f:Z

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
    iget-wide v0, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 45
    .line 46
    iget-wide v3, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 47
    .line 48
    invoke-static {v0, v1, v3, v4, v2}, Lcom/mycompany/app/main/MainUtil;->o(JJZ)I

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
    iget-object v0, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->n:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v1, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->n:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/main/MainUtil;->m(Ljava/lang/String;Ljava/lang/String;Z)I

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
    iget-object p1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 67
    .line 68
    iget-object p2, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {p1, p2, v2}, Lcom/mycompany/app/main/MainUtil;->n(Ljava/lang/String;Ljava/lang/String;Z)I

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
    if-eq v1, v0, :cond_1a

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
    if-eq v1, v4, :cond_16

    .line 87
    .line 88
    if-ne v3, v4, :cond_a

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_a
    const/4 v5, 0x4

    .line 92
    if-eq v1, v5, :cond_12

    .line 93
    .line 94
    if-ne v3, v5, :cond_b

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_b
    iget v1, p0, Lcom/mycompany/app/main/MainUtil$SortChildTime;->c:I

    .line 98
    .line 99
    if-eqz v1, :cond_e

    .line 100
    .line 101
    iget-object v3, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->m:Ljava/lang/String;

    .line 102
    .line 103
    iget-object v5, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->m:Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {v3, v5, v2}, Lcom/mycompany/app/main/MainUtil;->m(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-eqz v3, :cond_c

    .line 110
    .line 111
    return v3

    .line 112
    :cond_c
    if-eq v1, v0, :cond_d

    .line 113
    .line 114
    if-ne v1, v4, :cond_e

    .line 115
    .line 116
    :cond_d
    iget-object v0, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 117
    .line 118
    iget-object v1, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 119
    .line 120
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/main/MainUtil;->n(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_e

    .line 125
    .line 126
    return v0

    .line 127
    :cond_e
    iget-wide v0, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 128
    .line 129
    iget-wide v3, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 130
    .line 131
    invoke-static {v0, v1, v3, v4, v2}, Lcom/mycompany/app/main/MainUtil;->o(JJZ)I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-eqz v0, :cond_f

    .line 136
    .line 137
    return v0

    .line 138
    :cond_f
    iget-object v0, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->n:Ljava/lang/String;

    .line 139
    .line 140
    iget-object v1, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->n:Ljava/lang/String;

    .line 141
    .line 142
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/main/MainUtil;->m(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_10

    .line 147
    .line 148
    return v0

    .line 149
    :cond_10
    iget-object v0, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->o:Ljava/lang/String;

    .line 150
    .line 151
    iget-object v1, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->o:Ljava/lang/String;

    .line 152
    .line 153
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/main/MainUtil;->n(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-eqz v0, :cond_11

    .line 158
    .line 159
    return v0

    .line 160
    :cond_11
    iget-object p1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 161
    .line 162
    iget-object p2, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 163
    .line 164
    invoke-static {p1, p2, v2}, Lcom/mycompany/app/main/MainUtil;->n(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    return p1

    .line 169
    :cond_12
    :goto_0
    if-eq v3, v5, :cond_13

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_13
    if-eq v1, v5, :cond_14

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_14
    iget-wide v0, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 176
    .line 177
    iget-wide v3, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 178
    .line 179
    invoke-static {v0, v1, v3, v4, v2}, Lcom/mycompany/app/main/MainUtil;->o(JJZ)I

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-eqz v0, :cond_15

    .line 184
    .line 185
    return v0

    .line 186
    :cond_15
    iget-object p1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->n:Ljava/lang/String;

    .line 187
    .line 188
    iget-object p2, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->n:Ljava/lang/String;

    .line 189
    .line 190
    invoke-static {p1, p2, v2}, Lcom/mycompany/app/main/MainUtil;->m(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    return p1

    .line 195
    :cond_16
    :goto_1
    if-eq v3, v4, :cond_17

    .line 196
    .line 197
    goto :goto_3

    .line 198
    :cond_17
    if-eq v1, v4, :cond_18

    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_18
    iget-wide v0, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 202
    .line 203
    iget-wide v3, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 204
    .line 205
    invoke-static {v0, v1, v3, v4, v2}, Lcom/mycompany/app/main/MainUtil;->o(JJZ)I

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    if-eqz v0, :cond_19

    .line 210
    .line 211
    return v0

    .line 212
    :cond_19
    iget-object p1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->n:Ljava/lang/String;

    .line 213
    .line 214
    iget-object p2, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->n:Ljava/lang/String;

    .line 215
    .line 216
    invoke-static {p1, p2, v2}, Lcom/mycompany/app/main/MainUtil;->m(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 217
    .line 218
    .line 219
    move-result p1

    .line 220
    return p1

    .line 221
    :cond_1a
    :goto_2
    iget v3, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->d:I

    .line 222
    .line 223
    if-eq v3, v0, :cond_1b

    .line 224
    .line 225
    :goto_3
    const/4 p1, -0x1

    .line 226
    return p1

    .line 227
    :cond_1b
    if-eq v1, v0, :cond_1c

    .line 228
    .line 229
    :goto_4
    return v0

    .line 230
    :cond_1c
    iget-wide v0, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 231
    .line 232
    iget-wide v3, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 233
    .line 234
    invoke-static {v0, v1, v3, v4, v2}, Lcom/mycompany/app/main/MainUtil;->o(JJZ)I

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    if-eqz v0, :cond_1d

    .line 239
    .line 240
    return v0

    .line 241
    :cond_1d
    iget-object p1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->n:Ljava/lang/String;

    .line 242
    .line 243
    iget-object p2, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->n:Ljava/lang/String;

    .line 244
    .line 245
    invoke-static {p1, p2, v2}, Lcom/mycompany/app/main/MainUtil;->m(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 246
    .line 247
    .line 248
    move-result p1

    .line 249
    return p1
.end method
