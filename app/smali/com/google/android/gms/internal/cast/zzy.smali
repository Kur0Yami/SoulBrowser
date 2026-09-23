.class public final Lcom/google/android/gms/internal/cast/zzy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/MainThread;
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/internal/cast/zzj;

.field public final b:Lcom/google/android/gms/internal/cast/zzax;

.field public final c:Ljava/lang/String;

.field public d:Lcom/google/android/gms/internal/cast/zzaa;

.field public final e:Lcom/google/android/gms/internal/cast/zzv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cast/zzj;Lcom/google/android/gms/internal/cast/zzax;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzy;->a:Lcom/google/android/gms/internal/cast/zzj;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzy;->b:Lcom/google/android/gms/internal/cast/zzax;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzy;->c:Ljava/lang/String;

    .line 9
    .line 10
    new-instance p1, Lcom/google/android/gms/internal/cast/zzv;

    .line 11
    .line 12
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/cast/zzv;-><init>(Lcom/google/android/gms/internal/cast/zzy;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzy;->e:Lcom/google/android/gms/internal/cast/zzv;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/cast/zzcs;)V
    .locals 3

    .line 1
    iget v0, p1, Lcom/google/android/gms/internal/cast/zzcs;->e:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzy;->d:Lcom/google/android/gms/internal/cast/zzaa;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzy;->c()V

    .line 11
    .line 12
    .line 13
    :cond_0
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    new-instance v0, Lcom/google/android/gms/internal/cast/zzaa;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzy;->a:Lcom/google/android/gms/internal/cast/zzj;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzy;->c:Ljava/lang/String;

    .line 20
    .line 21
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/cast/zzaa;-><init>(Lcom/google/android/gms/internal/cast/zzj;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzy;->d:Lcom/google/android/gms/internal/cast/zzaa;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzy;->b()Lcom/google/android/gms/internal/cast/zzaa;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzy;->d:Lcom/google/android/gms/internal/cast/zzaa;

    .line 32
    .line 33
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzy;->d:Lcom/google/android/gms/internal/cast/zzaa;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/google/android/gms/internal/cast/zzaa;

    .line 40
    .line 41
    iget-wide v1, v0, Lcom/google/android/gms/internal/cast/zzaa;->h:J

    .line 42
    .line 43
    iput-wide v1, p1, Lcom/google/android/gms/internal/cast/zzcs;->d:J

    .line 44
    .line 45
    iget-object v0, v0, Lcom/google/android/gms/internal/cast/zzaa;->b:Ljava/util/List;

    .line 46
    .line 47
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final b()Lcom/google/android/gms/internal/cast/zzaa;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzy;->d:Lcom/google/android/gms/internal/cast/zzaa;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/gms/internal/cast/zzaa;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzy;->a:Lcom/google/android/gms/internal/cast/zzj;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzy;->c:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/cast/zzaa;-><init>(Lcom/google/android/gms/internal/cast/zzj;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzy;->d:Lcom/google/android/gms/internal/cast/zzaa;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cast/zzaa;->b(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzy;->d:Lcom/google/android/gms/internal/cast/zzaa;

    .line 21
    .line 22
    return-object v0
.end method

.method public final c()V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v2, v1, Lcom/google/android/gms/internal/cast/zzy;->d:Lcom/google/android/gms/internal/cast/zzaa;

    .line 4
    .line 5
    if-eqz v2, :cond_1f

    .line 6
    .line 7
    iget-object v0, v2, Lcom/google/android/gms/internal/cast/zzaa;->j:Lcom/google/android/gms/cast/framework/CastSession;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iput-object v3, v0, Lcom/google/android/gms/cast/framework/CastSession;->m:Lcom/google/android/gms/cast/framework/zzr;

    .line 13
    .line 14
    iput-object v3, v2, Lcom/google/android/gms/internal/cast/zzaa;->j:Lcom/google/android/gms/cast/framework/CastSession;

    .line 15
    .line 16
    :cond_0
    iget-wide v4, v2, Lcom/google/android/gms/internal/cast/zzaa;->i:J

    .line 17
    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzqr;->o()Lcom/google/android/gms/internal/cast/zzqq;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    invoke-virtual {v6}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 23
    .line 24
    .line 25
    iget-object v0, v6, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 26
    .line 27
    check-cast v0, Lcom/google/android/gms/internal/cast/zzqr;

    .line 28
    .line 29
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/cast/zzqr;->q(J)V

    .line 30
    .line 31
    .line 32
    iget-object v0, v2, Lcom/google/android/gms/internal/cast/zzaa;->l:Ljava/lang/String;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v6}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 37
    .line 38
    .line 39
    iget-object v4, v6, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 40
    .line 41
    check-cast v4, Lcom/google/android/gms/internal/cast/zzqr;

    .line 42
    .line 43
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/cast/zzqr;->v(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzus;->n()Lcom/google/android/gms/internal/cast/zzur;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v4, v2, Lcom/google/android/gms/internal/cast/zzaa;->n:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-nez v4, :cond_2

    .line 57
    .line 58
    iget-object v4, v2, Lcom/google/android/gms/internal/cast/zzaa;->n:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v6}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 61
    .line 62
    .line 63
    iget-object v5, v6, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 64
    .line 65
    check-cast v5, Lcom/google/android/gms/internal/cast/zzqr;

    .line 66
    .line 67
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/cast/zzqr;->r(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v4, v2, Lcom/google/android/gms/internal/cast/zzaa;->n:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 73
    .line 74
    .line 75
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 76
    .line 77
    check-cast v5, Lcom/google/android/gms/internal/cast/zzus;

    .line 78
    .line 79
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/cast/zzus;->o(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    iget-object v4, v2, Lcom/google/android/gms/internal/cast/zzaa;->o:Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-nez v4, :cond_3

    .line 89
    .line 90
    iget-object v4, v2, Lcom/google/android/gms/internal/cast/zzaa;->o:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 93
    .line 94
    .line 95
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 96
    .line 97
    check-cast v5, Lcom/google/android/gms/internal/cast/zzus;

    .line 98
    .line 99
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/cast/zzus;->p(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_3
    iget-object v4, v2, Lcom/google/android/gms/internal/cast/zzaa;->p:Ljava/lang/String;

    .line 103
    .line 104
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-nez v4, :cond_4

    .line 109
    .line 110
    iget-object v4, v2, Lcom/google/android/gms/internal/cast/zzaa;->p:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 113
    .line 114
    .line 115
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 116
    .line 117
    check-cast v5, Lcom/google/android/gms/internal/cast/zzus;

    .line 118
    .line 119
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/cast/zzus;->q(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    :cond_4
    iget-object v4, v2, Lcom/google/android/gms/internal/cast/zzaa;->q:Ljava/lang/String;

    .line 123
    .line 124
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    if-nez v4, :cond_5

    .line 129
    .line 130
    iget-object v4, v2, Lcom/google/android/gms/internal/cast/zzaa;->q:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 133
    .line 134
    .line 135
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 136
    .line 137
    check-cast v5, Lcom/google/android/gms/internal/cast/zzus;

    .line 138
    .line 139
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/cast/zzus;->r(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    :cond_5
    iget-object v4, v2, Lcom/google/android/gms/internal/cast/zzaa;->r:Ljava/lang/String;

    .line 143
    .line 144
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    if-nez v4, :cond_6

    .line 149
    .line 150
    iget-object v4, v2, Lcom/google/android/gms/internal/cast/zzaa;->r:Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 153
    .line 154
    .line 155
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 156
    .line 157
    check-cast v5, Lcom/google/android/gms/internal/cast/zzus;

    .line 158
    .line 159
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/cast/zzus;->s(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    :cond_6
    iget-object v4, v2, Lcom/google/android/gms/internal/cast/zzaa;->s:Ljava/lang/String;

    .line 163
    .line 164
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 165
    .line 166
    .line 167
    move-result v4

    .line 168
    if-nez v4, :cond_7

    .line 169
    .line 170
    iget-object v4, v2, Lcom/google/android/gms/internal/cast/zzaa;->s:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 173
    .line 174
    .line 175
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 176
    .line 177
    check-cast v5, Lcom/google/android/gms/internal/cast/zzus;

    .line 178
    .line 179
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/cast/zzus;->t(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    :cond_7
    iget v4, v2, Lcom/google/android/gms/internal/cast/zzaa;->t:I

    .line 183
    .line 184
    const/4 v7, 0x3

    .line 185
    const/4 v8, 0x2

    .line 186
    const/4 v9, 0x1

    .line 187
    const/4 v10, 0x4

    .line 188
    const/4 v11, 0x5

    .line 189
    if-eq v4, v9, :cond_c

    .line 190
    .line 191
    if-eq v4, v8, :cond_b

    .line 192
    .line 193
    if-eq v4, v7, :cond_a

    .line 194
    .line 195
    if-eq v4, v10, :cond_9

    .line 196
    .line 197
    if-eq v4, v11, :cond_8

    .line 198
    .line 199
    move v4, v9

    .line 200
    goto :goto_0

    .line 201
    :cond_8
    const/4 v4, 0x6

    .line 202
    goto :goto_0

    .line 203
    :cond_9
    move v4, v11

    .line 204
    goto :goto_0

    .line 205
    :cond_a
    move v4, v10

    .line 206
    goto :goto_0

    .line 207
    :cond_b
    move v4, v7

    .line 208
    goto :goto_0

    .line 209
    :cond_c
    move v4, v8

    .line 210
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 211
    .line 212
    .line 213
    iget-object v12, v0, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 214
    .line 215
    check-cast v12, Lcom/google/android/gms/internal/cast/zzus;

    .line 216
    .line 217
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/cast/zzus;->u(I)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzya;->e()Lcom/google/android/gms/internal/cast/zzyd;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    check-cast v0, Lcom/google/android/gms/internal/cast/zzus;

    .line 225
    .line 226
    invoke-virtual {v6}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 227
    .line 228
    .line 229
    iget-object v4, v6, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 230
    .line 231
    check-cast v4, Lcom/google/android/gms/internal/cast/zzqr;

    .line 232
    .line 233
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/cast/zzqr;->B(Lcom/google/android/gms/internal/cast/zzus;)V

    .line 234
    .line 235
    .line 236
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzqc;->n()Lcom/google/android/gms/internal/cast/zzqb;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    sget-object v4, Lcom/google/android/gms/internal/cast/zzaa;->w:Ljava/lang/String;

    .line 241
    .line 242
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 243
    .line 244
    .line 245
    iget-object v12, v0, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 246
    .line 247
    check-cast v12, Lcom/google/android/gms/internal/cast/zzqc;

    .line 248
    .line 249
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/cast/zzqc;->p(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    iget-object v4, v2, Lcom/google/android/gms/internal/cast/zzaa;->g:Ljava/lang/String;

    .line 253
    .line 254
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 255
    .line 256
    .line 257
    iget-object v12, v0, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 258
    .line 259
    check-cast v12, Lcom/google/android/gms/internal/cast/zzqc;

    .line 260
    .line 261
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/cast/zzqc;->o(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzya;->e()Lcom/google/android/gms/internal/cast/zzyd;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    check-cast v0, Lcom/google/android/gms/internal/cast/zzqc;

    .line 269
    .line 270
    invoke-virtual {v6}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 271
    .line 272
    .line 273
    iget-object v4, v6, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 274
    .line 275
    check-cast v4, Lcom/google/android/gms/internal/cast/zzqr;

    .line 276
    .line 277
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/cast/zzqr;->z(Lcom/google/android/gms/internal/cast/zzqc;)V

    .line 278
    .line 279
    .line 280
    iget-object v0, v2, Lcom/google/android/gms/internal/cast/zzaa;->a:Lcom/google/android/gms/internal/cast/zzhg;

    .line 281
    .line 282
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzqz;->n()Lcom/google/android/gms/internal/cast/zzqy;

    .line 283
    .line 284
    .line 285
    move-result-object v4

    .line 286
    check-cast v0, Lcom/google/android/gms/internal/cast/zzhi;

    .line 287
    .line 288
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzhi;->zza()Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    check-cast v0, Ljava/lang/String;

    .line 293
    .line 294
    if-eqz v0, :cond_d

    .line 295
    .line 296
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzrp;->n()Lcom/google/android/gms/internal/cast/zzro;

    .line 297
    .line 298
    .line 299
    move-result-object v12

    .line 300
    invoke-virtual {v12}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 301
    .line 302
    .line 303
    iget-object v13, v12, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 304
    .line 305
    check-cast v13, Lcom/google/android/gms/internal/cast/zzrp;

    .line 306
    .line 307
    invoke-virtual {v13, v0}, Lcom/google/android/gms/internal/cast/zzrp;->o(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v12}, Lcom/google/android/gms/internal/cast/zzya;->e()Lcom/google/android/gms/internal/cast/zzyd;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    check-cast v0, Lcom/google/android/gms/internal/cast/zzrp;

    .line 315
    .line 316
    invoke-virtual {v4}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 317
    .line 318
    .line 319
    iget-object v12, v4, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 320
    .line 321
    check-cast v12, Lcom/google/android/gms/internal/cast/zzqz;

    .line 322
    .line 323
    invoke-virtual {v12, v0}, Lcom/google/android/gms/internal/cast/zzqz;->o(Lcom/google/android/gms/internal/cast/zzrp;)V

    .line 324
    .line 325
    .line 326
    :cond_d
    iget-object v12, v2, Lcom/google/android/gms/internal/cast/zzaa;->k:Ljava/lang/String;

    .line 327
    .line 328
    const/16 v15, 0x10

    .line 329
    .line 330
    if-eqz v12, :cond_e

    .line 331
    .line 332
    const/4 v5, 0x0

    .line 333
    :try_start_0
    const-string v0, "-"

    .line 334
    .line 335
    const-string v11, ""

    .line 336
    .line 337
    invoke-virtual {v12, v0, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 342
    .line 343
    .line 344
    move-result v11

    .line 345
    invoke-static {v15, v11}, Ljava/lang/Math;->min(II)I

    .line 346
    .line 347
    .line 348
    move-result v11

    .line 349
    invoke-virtual {v0, v5, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    new-instance v11, Ljava/math/BigInteger;

    .line 354
    .line 355
    invoke-direct {v11, v0, v15}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v11}, Ljava/math/BigInteger;->longValue()J

    .line 359
    .line 360
    .line 361
    move-result-wide v11
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    const-wide/16 v16, 0x0

    .line 363
    .line 364
    goto :goto_1

    .line 365
    :catch_0
    move-exception v0

    .line 366
    sget-object v11, Lcom/google/android/gms/internal/cast/zzaa;->v:Lcom/google/android/gms/cast/internal/Logger;

    .line 367
    .line 368
    move/from16 v16, v5

    .line 369
    .line 370
    new-array v5, v9, [Ljava/lang/Object;

    .line 371
    .line 372
    aput-object v12, v5, v16

    .line 373
    .line 374
    iget-object v12, v11, Lcom/google/android/gms/cast/internal/Logger;->a:Ljava/lang/String;

    .line 375
    .line 376
    const-wide/16 v16, 0x0

    .line 377
    .line 378
    const-string v13, "receiverSessionId %s is not valid for hash"

    .line 379
    .line 380
    invoke-virtual {v11, v13, v5}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v5

    .line 384
    invoke-static {v12, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 385
    .line 386
    .line 387
    move-wide/from16 v11, v16

    .line 388
    .line 389
    :goto_1
    invoke-virtual {v4}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 390
    .line 391
    .line 392
    iget-object v0, v4, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 393
    .line 394
    check-cast v0, Lcom/google/android/gms/internal/cast/zzqz;

    .line 395
    .line 396
    invoke-virtual {v0, v11, v12}, Lcom/google/android/gms/internal/cast/zzqz;->p(J)V

    .line 397
    .line 398
    .line 399
    goto :goto_2

    .line 400
    :cond_e
    const-wide/16 v16, 0x0

    .line 401
    .line 402
    :goto_2
    iget-object v0, v2, Lcom/google/android/gms/internal/cast/zzaa;->b:Ljava/util/List;

    .line 403
    .line 404
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 405
    .line 406
    .line 407
    move-result v5

    .line 408
    if-nez v5, :cond_12

    .line 409
    .line 410
    new-instance v5, Ljava/util/ArrayList;

    .line 411
    .line 412
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 413
    .line 414
    .line 415
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 420
    .line 421
    .line 422
    move-result v11

    .line 423
    if-eqz v11, :cond_11

    .line 424
    .line 425
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v11

    .line 429
    check-cast v11, Lcom/google/android/gms/internal/cast/zzcs;

    .line 430
    .line 431
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 432
    .line 433
    .line 434
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzqx;->n()Lcom/google/android/gms/internal/cast/zzqw;

    .line 435
    .line 436
    .line 437
    move-result-object v12

    .line 438
    iget v13, v11, Lcom/google/android/gms/internal/cast/zzcs;->e:I

    .line 439
    .line 440
    invoke-virtual {v12}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 441
    .line 442
    .line 443
    iget-object v14, v12, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 444
    .line 445
    check-cast v14, Lcom/google/android/gms/internal/cast/zzqx;

    .line 446
    .line 447
    invoke-virtual {v14, v13}, Lcom/google/android/gms/internal/cast/zzqx;->s(I)V

    .line 448
    .line 449
    .line 450
    iget-wide v13, v11, Lcom/google/android/gms/internal/cast/zzcs;->b:J

    .line 451
    .line 452
    iget-wide v7, v11, Lcom/google/android/gms/internal/cast/zzcs;->d:J

    .line 453
    .line 454
    sub-long/2addr v13, v7

    .line 455
    long-to-int v7, v13

    .line 456
    int-to-long v13, v7

    .line 457
    invoke-virtual {v12}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 458
    .line 459
    .line 460
    iget-object v8, v12, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 461
    .line 462
    check-cast v8, Lcom/google/android/gms/internal/cast/zzqx;

    .line 463
    .line 464
    invoke-virtual {v8, v13, v14}, Lcom/google/android/gms/internal/cast/zzqx;->r(J)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v12}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 468
    .line 469
    .line 470
    iget-object v8, v12, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 471
    .line 472
    check-cast v8, Lcom/google/android/gms/internal/cast/zzqx;

    .line 473
    .line 474
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/cast/zzqx;->o(I)V

    .line 475
    .line 476
    .line 477
    iget-object v7, v11, Lcom/google/android/gms/internal/cast/zzcs;->a:Ljava/lang/Integer;

    .line 478
    .line 479
    if-eqz v7, :cond_f

    .line 480
    .line 481
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 482
    .line 483
    .line 484
    move-result v7

    .line 485
    invoke-virtual {v12}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 486
    .line 487
    .line 488
    iget-object v8, v12, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 489
    .line 490
    check-cast v8, Lcom/google/android/gms/internal/cast/zzqx;

    .line 491
    .line 492
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/cast/zzqx;->p(I)V

    .line 493
    .line 494
    .line 495
    :cond_f
    iget-object v7, v11, Lcom/google/android/gms/internal/cast/zzcs;->c:Ljava/lang/Boolean;

    .line 496
    .line 497
    if-eqz v7, :cond_10

    .line 498
    .line 499
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 500
    .line 501
    .line 502
    move-result v7

    .line 503
    invoke-virtual {v12}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 504
    .line 505
    .line 506
    iget-object v8, v12, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 507
    .line 508
    check-cast v8, Lcom/google/android/gms/internal/cast/zzqx;

    .line 509
    .line 510
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/cast/zzqx;->q(Z)V

    .line 511
    .line 512
    .line 513
    :cond_10
    invoke-virtual {v12}, Lcom/google/android/gms/internal/cast/zzya;->e()Lcom/google/android/gms/internal/cast/zzyd;

    .line 514
    .line 515
    .line 516
    move-result-object v7

    .line 517
    check-cast v7, Lcom/google/android/gms/internal/cast/zzqx;

    .line 518
    .line 519
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    .line 521
    .line 522
    const/4 v7, 0x3

    .line 523
    const/4 v8, 0x2

    .line 524
    goto :goto_3

    .line 525
    :cond_11
    invoke-virtual {v4}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 526
    .line 527
    .line 528
    iget-object v0, v4, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 529
    .line 530
    check-cast v0, Lcom/google/android/gms/internal/cast/zzqz;

    .line 531
    .line 532
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/cast/zzqz;->q(Ljava/util/ArrayList;)V

    .line 533
    .line 534
    .line 535
    :cond_12
    iget-object v0, v2, Lcom/google/android/gms/internal/cast/zzaa;->c:Ljava/util/List;

    .line 536
    .line 537
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 538
    .line 539
    .line 540
    move-result v5

    .line 541
    if-nez v5, :cond_14

    .line 542
    .line 543
    new-instance v5, Ljava/util/ArrayList;

    .line 544
    .line 545
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 546
    .line 547
    .line 548
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 549
    .line 550
    .line 551
    move-result-object v0

    .line 552
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 553
    .line 554
    .line 555
    move-result v7

    .line 556
    if-eqz v7, :cond_13

    .line 557
    .line 558
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    move-result-object v7

    .line 562
    check-cast v7, Lcom/google/android/gms/internal/cast/zzac;

    .line 563
    .line 564
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 565
    .line 566
    .line 567
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzrd;->n()Lcom/google/android/gms/internal/cast/zzrc;

    .line 568
    .line 569
    .line 570
    move-result-object v7

    .line 571
    sub-long v13, v16, v16

    .line 572
    .line 573
    long-to-int v8, v13

    .line 574
    invoke-virtual {v7}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 575
    .line 576
    .line 577
    iget-object v11, v7, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 578
    .line 579
    check-cast v11, Lcom/google/android/gms/internal/cast/zzrd;

    .line 580
    .line 581
    invoke-virtual {v11, v8}, Lcom/google/android/gms/internal/cast/zzrd;->o(I)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v7}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 585
    .line 586
    .line 587
    iget-object v8, v7, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 588
    .line 589
    check-cast v8, Lcom/google/android/gms/internal/cast/zzrd;

    .line 590
    .line 591
    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/cast/zzrd;->p(I)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {v7}, Lcom/google/android/gms/internal/cast/zzya;->e()Lcom/google/android/gms/internal/cast/zzyd;

    .line 595
    .line 596
    .line 597
    move-result-object v7

    .line 598
    check-cast v7, Lcom/google/android/gms/internal/cast/zzrd;

    .line 599
    .line 600
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    .line 602
    .line 603
    goto :goto_4

    .line 604
    :cond_13
    invoke-virtual {v4}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 605
    .line 606
    .line 607
    iget-object v0, v4, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 608
    .line 609
    check-cast v0, Lcom/google/android/gms/internal/cast/zzqz;

    .line 610
    .line 611
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/cast/zzqz;->s(Ljava/util/ArrayList;)V

    .line 612
    .line 613
    .line 614
    :cond_14
    iget-object v0, v2, Lcom/google/android/gms/internal/cast/zzaa;->d:Ljava/util/List;

    .line 615
    .line 616
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 617
    .line 618
    .line 619
    move-result v5

    .line 620
    if-nez v5, :cond_17

    .line 621
    .line 622
    new-instance v5, Ljava/util/ArrayList;

    .line 623
    .line 624
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 625
    .line 626
    .line 627
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 628
    .line 629
    .line 630
    move-result-object v0

    .line 631
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 632
    .line 633
    .line 634
    move-result v7

    .line 635
    if-eqz v7, :cond_16

    .line 636
    .line 637
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 638
    .line 639
    .line 640
    move-result-object v7

    .line 641
    check-cast v7, Lcom/google/android/gms/internal/cast/zzcq;

    .line 642
    .line 643
    iget-object v8, v7, Lcom/google/android/gms/internal/cast/zzcq;->a:Ljava/lang/String;

    .line 644
    .line 645
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzqt;->n()Lcom/google/android/gms/internal/cast/zzqs;

    .line 646
    .line 647
    .line 648
    move-result-object v11

    .line 649
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 650
    .line 651
    .line 652
    move-result v12

    .line 653
    sparse-switch v12, :sswitch_data_0

    .line 654
    .line 655
    .line 656
    goto/16 :goto_6

    .line 657
    .line 658
    :sswitch_0
    const-string v12, "queueFetchItemIds"

    .line 659
    .line 660
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 661
    .line 662
    .line 663
    move-result v8

    .line 664
    if-eqz v8, :cond_15

    .line 665
    .line 666
    const/16 v8, 0x11

    .line 667
    .line 668
    goto/16 :goto_7

    .line 669
    .line 670
    :sswitch_1
    const-string v12, "activeTracks"

    .line 671
    .line 672
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 673
    .line 674
    .line 675
    move-result v8

    .line 676
    if-eqz v8, :cond_15

    .line 677
    .line 678
    const/16 v8, 0xb

    .line 679
    .line 680
    goto/16 :goto_7

    .line 681
    .line 682
    :sswitch_2
    const-string v12, "trackStyle"

    .line 683
    .line 684
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 685
    .line 686
    .line 687
    move-result v8

    .line 688
    if-eqz v8, :cond_15

    .line 689
    .line 690
    const/16 v8, 0xc

    .line 691
    .line 692
    goto/16 :goto_7

    .line 693
    .line 694
    :sswitch_3
    const-string v12, "queueReorder"

    .line 695
    .line 696
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 697
    .line 698
    .line 699
    move-result v8

    .line 700
    if-eqz v8, :cond_15

    .line 701
    .line 702
    move v8, v15

    .line 703
    goto/16 :goto_7

    .line 704
    .line 705
    :sswitch_4
    const-string v12, "queueFetchItemRange"

    .line 706
    .line 707
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 708
    .line 709
    .line 710
    move-result v8

    .line 711
    if-eqz v8, :cond_15

    .line 712
    .line 713
    const/16 v8, 0x12

    .line 714
    .line 715
    goto/16 :goto_7

    .line 716
    .line 717
    :sswitch_5
    const-string v12, "pause"

    .line 718
    .line 719
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 720
    .line 721
    .line 722
    move-result v8

    .line 723
    if-eqz v8, :cond_15

    .line 724
    .line 725
    move v8, v10

    .line 726
    goto/16 :goto_7

    .line 727
    .line 728
    :sswitch_6
    const-string v12, "stop"

    .line 729
    .line 730
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 731
    .line 732
    .line 733
    move-result v8

    .line 734
    if-eqz v8, :cond_15

    .line 735
    .line 736
    const/4 v8, 0x5

    .line 737
    goto/16 :goto_7

    .line 738
    .line 739
    :sswitch_7
    const-string v12, "seek"

    .line 740
    .line 741
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 742
    .line 743
    .line 744
    move-result v8

    .line 745
    if-eqz v8, :cond_15

    .line 746
    .line 747
    const/4 v8, 0x6

    .line 748
    goto/16 :goto_7

    .line 749
    .line 750
    :sswitch_8
    const-string v12, "play"

    .line 751
    .line 752
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 753
    .line 754
    .line 755
    move-result v8

    .line 756
    if-eqz v8, :cond_15

    .line 757
    .line 758
    const/4 v8, 0x3

    .line 759
    goto/16 :goto_7

    .line 760
    .line 761
    :sswitch_9
    const-string v12, "mute"

    .line 762
    .line 763
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 764
    .line 765
    .line 766
    move-result v8

    .line 767
    if-eqz v8, :cond_15

    .line 768
    .line 769
    const/16 v8, 0x8

    .line 770
    .line 771
    goto/16 :goto_7

    .line 772
    .line 773
    :sswitch_a
    const-string v12, "load"

    .line 774
    .line 775
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 776
    .line 777
    .line 778
    move-result v8

    .line 779
    if-eqz v8, :cond_15

    .line 780
    .line 781
    const/4 v8, 0x2

    .line 782
    goto/16 :goto_7

    .line 783
    .line 784
    :sswitch_b
    const-string v12, "setPlaybackRate"

    .line 785
    .line 786
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 787
    .line 788
    .line 789
    move-result v8

    .line 790
    if-eqz v8, :cond_15

    .line 791
    .line 792
    const/16 v8, 0x14

    .line 793
    .line 794
    goto/16 :goto_7

    .line 795
    .line 796
    :sswitch_c
    const-string v12, "volume"

    .line 797
    .line 798
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 799
    .line 800
    .line 801
    move-result v8

    .line 802
    if-eqz v8, :cond_15

    .line 803
    .line 804
    const/4 v8, 0x7

    .line 805
    goto/16 :goto_7

    .line 806
    .line 807
    :sswitch_d
    const-string v12, "queueUpdate"

    .line 808
    .line 809
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 810
    .line 811
    .line 812
    move-result v8

    .line 813
    if-eqz v8, :cond_15

    .line 814
    .line 815
    const/16 v8, 0xe

    .line 816
    .line 817
    goto :goto_7

    .line 818
    :sswitch_e
    const-string v12, "status"

    .line 819
    .line 820
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 821
    .line 822
    .line 823
    move-result v8

    .line 824
    if-eqz v8, :cond_15

    .line 825
    .line 826
    const/16 v8, 0xa

    .line 827
    .line 828
    goto :goto_7

    .line 829
    :sswitch_f
    const-string v12, "skipAd"

    .line 830
    .line 831
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 832
    .line 833
    .line 834
    move-result v8

    .line 835
    if-eqz v8, :cond_15

    .line 836
    .line 837
    const/16 v8, 0x15

    .line 838
    .line 839
    goto :goto_7

    .line 840
    :sswitch_10
    const-string v12, "volume-mute"

    .line 841
    .line 842
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 843
    .line 844
    .line 845
    move-result v8

    .line 846
    if-eqz v8, :cond_15

    .line 847
    .line 848
    const/16 v8, 0x9

    .line 849
    .line 850
    goto :goto_7

    .line 851
    :sswitch_11
    const-string v12, "setPlaybackDevices"

    .line 852
    .line 853
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 854
    .line 855
    .line 856
    move-result v8

    .line 857
    if-eqz v8, :cond_15

    .line 858
    .line 859
    const/16 v8, 0x17

    .line 860
    .line 861
    goto :goto_7

    .line 862
    :sswitch_12
    const-string v12, "queueFetchItems"

    .line 863
    .line 864
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 865
    .line 866
    .line 867
    move-result v8

    .line 868
    if-eqz v8, :cond_15

    .line 869
    .line 870
    const/16 v8, 0x13

    .line 871
    .line 872
    goto :goto_7

    .line 873
    :sswitch_13
    const-string v12, "queueRemove"

    .line 874
    .line 875
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 876
    .line 877
    .line 878
    move-result v8

    .line 879
    if-eqz v8, :cond_15

    .line 880
    .line 881
    const/16 v8, 0xf

    .line 882
    .line 883
    goto :goto_7

    .line 884
    :sswitch_14
    const-string v12, "launch"

    .line 885
    .line 886
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 887
    .line 888
    .line 889
    move-result v8

    .line 890
    if-eqz v8, :cond_15

    .line 891
    .line 892
    const/16 v8, 0x16

    .line 893
    .line 894
    goto :goto_7

    .line 895
    :sswitch_15
    const-string v12, "queueInsert"

    .line 896
    .line 897
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 898
    .line 899
    .line 900
    move-result v8

    .line 901
    if-eqz v8, :cond_15

    .line 902
    .line 903
    const/16 v8, 0xd

    .line 904
    .line 905
    goto :goto_7

    .line 906
    :cond_15
    :goto_6
    move v8, v9

    .line 907
    :goto_7
    invoke-virtual {v11}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 908
    .line 909
    .line 910
    iget-object v12, v11, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 911
    .line 912
    check-cast v12, Lcom/google/android/gms/internal/cast/zzqt;

    .line 913
    .line 914
    invoke-virtual {v12, v8}, Lcom/google/android/gms/internal/cast/zzqt;->s(I)V

    .line 915
    .line 916
    .line 917
    iget-wide v12, v7, Lcom/google/android/gms/internal/cast/zzcq;->b:J

    .line 918
    .line 919
    long-to-int v8, v12

    .line 920
    invoke-virtual {v11}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 921
    .line 922
    .line 923
    iget-object v12, v11, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 924
    .line 925
    check-cast v12, Lcom/google/android/gms/internal/cast/zzqt;

    .line 926
    .line 927
    invoke-virtual {v12, v8}, Lcom/google/android/gms/internal/cast/zzqt;->o(I)V

    .line 928
    .line 929
    .line 930
    iget v8, v7, Lcom/google/android/gms/internal/cast/zzcq;->c:I

    .line 931
    .line 932
    invoke-virtual {v11}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 933
    .line 934
    .line 935
    iget-object v12, v11, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 936
    .line 937
    check-cast v12, Lcom/google/android/gms/internal/cast/zzqt;

    .line 938
    .line 939
    invoke-virtual {v12, v8}, Lcom/google/android/gms/internal/cast/zzqt;->p(I)V

    .line 940
    .line 941
    .line 942
    iget-wide v12, v7, Lcom/google/android/gms/internal/cast/zzcq;->d:J

    .line 943
    .line 944
    iget-wide v9, v7, Lcom/google/android/gms/internal/cast/zzcq;->f:J

    .line 945
    .line 946
    sub-long/2addr v12, v9

    .line 947
    long-to-int v9, v12

    .line 948
    invoke-virtual {v11}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 949
    .line 950
    .line 951
    iget-object v10, v11, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 952
    .line 953
    check-cast v10, Lcom/google/android/gms/internal/cast/zzqt;

    .line 954
    .line 955
    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/cast/zzqt;->q(I)V

    .line 956
    .line 957
    .line 958
    iget-wide v9, v7, Lcom/google/android/gms/internal/cast/zzcq;->e:J

    .line 959
    .line 960
    iget-wide v12, v7, Lcom/google/android/gms/internal/cast/zzcq;->f:J

    .line 961
    .line 962
    sub-long/2addr v9, v12

    .line 963
    long-to-int v7, v9

    .line 964
    invoke-virtual {v11}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 965
    .line 966
    .line 967
    iget-object v9, v11, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 968
    .line 969
    check-cast v9, Lcom/google/android/gms/internal/cast/zzqt;

    .line 970
    .line 971
    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/cast/zzqt;->r(I)V

    .line 972
    .line 973
    .line 974
    invoke-virtual {v11}, Lcom/google/android/gms/internal/cast/zzya;->e()Lcom/google/android/gms/internal/cast/zzyd;

    .line 975
    .line 976
    .line 977
    move-result-object v7

    .line 978
    check-cast v7, Lcom/google/android/gms/internal/cast/zzqt;

    .line 979
    .line 980
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 981
    .line 982
    .line 983
    const/4 v9, 0x1

    .line 984
    const/4 v10, 0x4

    .line 985
    goto/16 :goto_5

    .line 986
    .line 987
    :cond_16
    invoke-virtual {v4}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 988
    .line 989
    .line 990
    iget-object v0, v4, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 991
    .line 992
    check-cast v0, Lcom/google/android/gms/internal/cast/zzqz;

    .line 993
    .line 994
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/cast/zzqz;->r(Ljava/util/ArrayList;)V

    .line 995
    .line 996
    .line 997
    :cond_17
    iget-object v0, v2, Lcom/google/android/gms/internal/cast/zzaa;->m:Lcom/google/android/gms/internal/cast/zzt;

    .line 998
    .line 999
    if-eqz v0, :cond_1c

    .line 1000
    .line 1001
    new-instance v0, Ljava/util/ArrayList;

    .line 1002
    .line 1003
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1004
    .line 1005
    .line 1006
    iget-object v5, v2, Lcom/google/android/gms/internal/cast/zzaa;->m:Lcom/google/android/gms/internal/cast/zzt;

    .line 1007
    .line 1008
    iget v7, v5, Lcom/google/android/gms/internal/cast/zzt;->a:I

    .line 1009
    .line 1010
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzqv;->n()Lcom/google/android/gms/internal/cast/zzqu;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v9

    .line 1014
    const/4 v8, 0x1

    .line 1015
    if-eq v7, v8, :cond_1b

    .line 1016
    .line 1017
    const/4 v10, 0x2

    .line 1018
    if-eq v7, v10, :cond_1a

    .line 1019
    .line 1020
    const/4 v10, 0x3

    .line 1021
    if-eq v7, v10, :cond_19

    .line 1022
    .line 1023
    const/4 v14, 0x4

    .line 1024
    if-eq v7, v14, :cond_18

    .line 1025
    .line 1026
    move v7, v8

    .line 1027
    goto :goto_9

    .line 1028
    :cond_18
    const/4 v7, 0x5

    .line 1029
    goto :goto_9

    .line 1030
    :cond_19
    const/4 v14, 0x4

    .line 1031
    move v7, v14

    .line 1032
    goto :goto_9

    .line 1033
    :cond_1a
    const/4 v10, 0x3

    .line 1034
    :goto_8
    move v7, v10

    .line 1035
    goto :goto_9

    .line 1036
    :cond_1b
    const/4 v10, 0x2

    .line 1037
    goto :goto_8

    .line 1038
    :goto_9
    invoke-virtual {v9}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 1039
    .line 1040
    .line 1041
    iget-object v8, v9, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 1042
    .line 1043
    check-cast v8, Lcom/google/android/gms/internal/cast/zzqv;

    .line 1044
    .line 1045
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/cast/zzqv;->p(I)V

    .line 1046
    .line 1047
    .line 1048
    iget-wide v7, v5, Lcom/google/android/gms/internal/cast/zzt;->b:J

    .line 1049
    .line 1050
    iget-wide v10, v5, Lcom/google/android/gms/internal/cast/zzt;->c:J

    .line 1051
    .line 1052
    sub-long/2addr v7, v10

    .line 1053
    long-to-int v5, v7

    .line 1054
    invoke-virtual {v9}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 1055
    .line 1056
    .line 1057
    iget-object v7, v9, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 1058
    .line 1059
    check-cast v7, Lcom/google/android/gms/internal/cast/zzqv;

    .line 1060
    .line 1061
    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/cast/zzqv;->o(I)V

    .line 1062
    .line 1063
    .line 1064
    invoke-virtual {v9}, Lcom/google/android/gms/internal/cast/zzya;->e()Lcom/google/android/gms/internal/cast/zzyd;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v5

    .line 1068
    check-cast v5, Lcom/google/android/gms/internal/cast/zzqv;

    .line 1069
    .line 1070
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1071
    .line 1072
    .line 1073
    invoke-virtual {v4}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 1074
    .line 1075
    .line 1076
    iget-object v5, v4, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 1077
    .line 1078
    check-cast v5, Lcom/google/android/gms/internal/cast/zzqz;

    .line 1079
    .line 1080
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/cast/zzqz;->u(Ljava/util/ArrayList;)V

    .line 1081
    .line 1082
    .line 1083
    :cond_1c
    iget-object v0, v2, Lcom/google/android/gms/internal/cast/zzaa;->e:Ljava/util/Map;

    .line 1084
    .line 1085
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 1086
    .line 1087
    .line 1088
    move-result v5

    .line 1089
    if-nez v5, :cond_1e

    .line 1090
    .line 1091
    new-instance v5, Ljava/util/ArrayList;

    .line 1092
    .line 1093
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1094
    .line 1095
    .line 1096
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v0

    .line 1100
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v0

    .line 1104
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1105
    .line 1106
    .line 1107
    move-result v7

    .line 1108
    if-eqz v7, :cond_1d

    .line 1109
    .line 1110
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v7

    .line 1114
    check-cast v7, Lcom/google/android/gms/internal/cast/zzae;

    .line 1115
    .line 1116
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1117
    .line 1118
    .line 1119
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzrb;->n()Lcom/google/android/gms/internal/cast/zzra;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v8

    .line 1123
    iget v9, v7, Lcom/google/android/gms/internal/cast/zzae;->e:I

    .line 1124
    .line 1125
    invoke-virtual {v8}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 1126
    .line 1127
    .line 1128
    iget-object v10, v8, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 1129
    .line 1130
    check-cast v10, Lcom/google/android/gms/internal/cast/zzrb;

    .line 1131
    .line 1132
    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/cast/zzrb;->r(I)V

    .line 1133
    .line 1134
    .line 1135
    iget-object v9, v7, Lcom/google/android/gms/internal/cast/zzae;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1136
    .line 1137
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 1138
    .line 1139
    .line 1140
    move-result v9

    .line 1141
    invoke-virtual {v8}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 1142
    .line 1143
    .line 1144
    iget-object v10, v8, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 1145
    .line 1146
    check-cast v10, Lcom/google/android/gms/internal/cast/zzrb;

    .line 1147
    .line 1148
    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/cast/zzrb;->o(I)V

    .line 1149
    .line 1150
    .line 1151
    iget-wide v9, v7, Lcom/google/android/gms/internal/cast/zzae;->a:J

    .line 1152
    .line 1153
    iget-wide v11, v7, Lcom/google/android/gms/internal/cast/zzae;->c:J

    .line 1154
    .line 1155
    sub-long/2addr v9, v11

    .line 1156
    long-to-int v9, v9

    .line 1157
    invoke-virtual {v8}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 1158
    .line 1159
    .line 1160
    iget-object v10, v8, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 1161
    .line 1162
    check-cast v10, Lcom/google/android/gms/internal/cast/zzrb;

    .line 1163
    .line 1164
    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/cast/zzrb;->p(I)V

    .line 1165
    .line 1166
    .line 1167
    iget-wide v9, v7, Lcom/google/android/gms/internal/cast/zzae;->b:J

    .line 1168
    .line 1169
    iget-wide v11, v7, Lcom/google/android/gms/internal/cast/zzae;->c:J

    .line 1170
    .line 1171
    sub-long/2addr v9, v11

    .line 1172
    long-to-int v7, v9

    .line 1173
    invoke-virtual {v8}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 1174
    .line 1175
    .line 1176
    iget-object v9, v8, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 1177
    .line 1178
    check-cast v9, Lcom/google/android/gms/internal/cast/zzrb;

    .line 1179
    .line 1180
    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/cast/zzrb;->q(I)V

    .line 1181
    .line 1182
    .line 1183
    invoke-virtual {v8}, Lcom/google/android/gms/internal/cast/zzya;->e()Lcom/google/android/gms/internal/cast/zzyd;

    .line 1184
    .line 1185
    .line 1186
    move-result-object v7

    .line 1187
    check-cast v7, Lcom/google/android/gms/internal/cast/zzrb;

    .line 1188
    .line 1189
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1190
    .line 1191
    .line 1192
    goto :goto_a

    .line 1193
    :cond_1d
    invoke-virtual {v4}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 1194
    .line 1195
    .line 1196
    iget-object v0, v4, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 1197
    .line 1198
    check-cast v0, Lcom/google/android/gms/internal/cast/zzqz;

    .line 1199
    .line 1200
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/cast/zzqz;->t(Ljava/util/ArrayList;)V

    .line 1201
    .line 1202
    .line 1203
    :cond_1e
    iget v0, v2, Lcom/google/android/gms/internal/cast/zzaa;->u:I

    .line 1204
    .line 1205
    invoke-virtual {v4}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 1206
    .line 1207
    .line 1208
    iget-object v5, v4, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 1209
    .line 1210
    check-cast v5, Lcom/google/android/gms/internal/cast/zzqz;

    .line 1211
    .line 1212
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/cast/zzqz;->v(I)V

    .line 1213
    .line 1214
    .line 1215
    invoke-virtual {v4}, Lcom/google/android/gms/internal/cast/zzya;->e()Lcom/google/android/gms/internal/cast/zzyd;

    .line 1216
    .line 1217
    .line 1218
    move-result-object v0

    .line 1219
    check-cast v0, Lcom/google/android/gms/internal/cast/zzqz;

    .line 1220
    .line 1221
    invoke-virtual {v6}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 1222
    .line 1223
    .line 1224
    iget-object v4, v6, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 1225
    .line 1226
    check-cast v4, Lcom/google/android/gms/internal/cast/zzqr;

    .line 1227
    .line 1228
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/cast/zzqr;->y(Lcom/google/android/gms/internal/cast/zzqz;)V

    .line 1229
    .line 1230
    .line 1231
    invoke-virtual {v6}, Lcom/google/android/gms/internal/cast/zzya;->e()Lcom/google/android/gms/internal/cast/zzyd;

    .line 1232
    .line 1233
    .line 1234
    move-result-object v0

    .line 1235
    check-cast v0, Lcom/google/android/gms/internal/cast/zzqr;

    .line 1236
    .line 1237
    iget-object v2, v2, Lcom/google/android/gms/internal/cast/zzaa;->f:Lcom/google/android/gms/internal/cast/zzj;

    .line 1238
    .line 1239
    const/16 v4, 0xe9

    .line 1240
    .line 1241
    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/internal/cast/zzj;->b(ILcom/google/android/gms/internal/cast/zzqr;)V

    .line 1242
    .line 1243
    .line 1244
    iput-object v3, v1, Lcom/google/android/gms/internal/cast/zzy;->d:Lcom/google/android/gms/internal/cast/zzaa;

    .line 1245
    .line 1246
    :cond_1f
    return-void

    .line 1247
    :sswitch_data_0
    .sparse-switch
        -0x46e808d6 -> :sswitch_15
        -0x4226dc4d -> :sswitch_14
        -0x380dd30b -> :sswitch_13
        -0x37d356e9 -> :sswitch_12
        -0x37752a80 -> :sswitch_11
        -0x36e71314 -> :sswitch_10
        -0x35ad75fe -> :sswitch_f
        -0x3532300e -> :sswitch_e
        -0x325892c6 -> :sswitch_d
        -0x305518e6 -> :sswitch_c
        -0x17fa60e3 -> :sswitch_b
        0x32c4e6 -> :sswitch_a
        0x335219 -> :sswitch_9
        0x348b34 -> :sswitch_8
        0x35ce78 -> :sswitch_7
        0x360802 -> :sswitch_6
        0x65825f6 -> :sswitch_5
        0x1f50ffc1 -> :sswitch_4
        0x3670baaa -> :sswitch_3
        0x447a5326 -> :sswitch_2
        0x5684c72e -> :sswitch_1
        0x6fa62e3c -> :sswitch_0
    .end sparse-switch
.end method
