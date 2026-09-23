.class public abstract Landroidx/work/WorkRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/WorkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Landroidx/work/WorkRequest$Builder<",
        "**>;W:",
        "Landroidx/work/WorkRequest;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/UUID;

.field public b:Landroidx/work/impl/model/WorkSpec;

.field public c:Ljava/util/HashSet;


# virtual methods
.method public final a()Landroidx/work/WorkRequest;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/work/WorkRequest$Builder;->b()Landroidx/work/WorkRequest;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/work/WorkRequest$Builder;->b:Landroidx/work/impl/model/WorkSpec;

    .line 6
    .line 7
    iget-object v1, v1, Landroidx/work/impl/model/WorkSpec;->j:Landroidx/work/Constraints;

    .line 8
    .line 9
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v3, 0x18

    .line 12
    .line 13
    if-lt v2, v3, :cond_0

    .line 14
    .line 15
    iget-object v2, v1, Landroidx/work/Constraints;->h:Landroidx/work/ContentUriTriggers;

    .line 16
    .line 17
    iget-object v2, v2, Landroidx/work/ContentUriTriggers;->a:Ljava/util/HashSet;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-lez v2, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-boolean v2, v1, Landroidx/work/Constraints;->d:Z

    .line 27
    .line 28
    if-nez v2, :cond_2

    .line 29
    .line 30
    iget-boolean v2, v1, Landroidx/work/Constraints;->b:Z

    .line 31
    .line 32
    if-nez v2, :cond_2

    .line 33
    .line 34
    iget-boolean v1, v1, Landroidx/work/Constraints;->c:Z

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v1, 0x0

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 42
    :goto_1
    iget-object v2, p0, Landroidx/work/WorkRequest$Builder;->b:Landroidx/work/impl/model/WorkSpec;

    .line 43
    .line 44
    iget-boolean v2, v2, Landroidx/work/impl/model/WorkSpec;->q:Z

    .line 45
    .line 46
    if-eqz v2, :cond_4

    .line 47
    .line 48
    if-nez v1, :cond_3

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 52
    .line 53
    const-string v1, "Expedited jobs only support network and storage constraints"

    .line 54
    .line 55
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v0

    .line 59
    :cond_4
    :goto_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    iput-object v1, p0, Landroidx/work/WorkRequest$Builder;->a:Ljava/util/UUID;

    .line 64
    .line 65
    new-instance v1, Landroidx/work/impl/model/WorkSpec;

    .line 66
    .line 67
    iget-object v2, p0, Landroidx/work/WorkRequest$Builder;->b:Landroidx/work/impl/model/WorkSpec;

    .line 68
    .line 69
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 70
    .line 71
    .line 72
    sget-object v3, Landroidx/work/WorkInfo$State;->c:Landroidx/work/WorkInfo$State;

    .line 73
    .line 74
    iput-object v3, v1, Landroidx/work/impl/model/WorkSpec;->b:Landroidx/work/WorkInfo$State;

    .line 75
    .line 76
    sget-object v3, Landroidx/work/Data;->c:Landroidx/work/Data;

    .line 77
    .line 78
    iput-object v3, v1, Landroidx/work/impl/model/WorkSpec;->e:Landroidx/work/Data;

    .line 79
    .line 80
    iput-object v3, v1, Landroidx/work/impl/model/WorkSpec;->f:Landroidx/work/Data;

    .line 81
    .line 82
    sget-object v3, Landroidx/work/Constraints;->i:Landroidx/work/Constraints;

    .line 83
    .line 84
    iput-object v3, v1, Landroidx/work/impl/model/WorkSpec;->j:Landroidx/work/Constraints;

    .line 85
    .line 86
    sget-object v3, Landroidx/work/BackoffPolicy;->c:Landroidx/work/BackoffPolicy;

    .line 87
    .line 88
    iput-object v3, v1, Landroidx/work/impl/model/WorkSpec;->l:Landroidx/work/BackoffPolicy;

    .line 89
    .line 90
    const-wide/16 v3, 0x7530

    .line 91
    .line 92
    iput-wide v3, v1, Landroidx/work/impl/model/WorkSpec;->m:J

    .line 93
    .line 94
    const-wide/16 v3, -0x1

    .line 95
    .line 96
    iput-wide v3, v1, Landroidx/work/impl/model/WorkSpec;->p:J

    .line 97
    .line 98
    sget-object v5, Landroidx/work/OutOfQuotaPolicy;->c:Landroidx/work/OutOfQuotaPolicy;

    .line 99
    .line 100
    iput-object v5, v1, Landroidx/work/impl/model/WorkSpec;->r:Landroidx/work/OutOfQuotaPolicy;

    .line 101
    .line 102
    iget-object v5, v2, Landroidx/work/impl/model/WorkSpec;->a:Ljava/lang/String;

    .line 103
    .line 104
    iput-object v5, v1, Landroidx/work/impl/model/WorkSpec;->a:Ljava/lang/String;

    .line 105
    .line 106
    iget-object v5, v2, Landroidx/work/impl/model/WorkSpec;->c:Ljava/lang/String;

    .line 107
    .line 108
    iput-object v5, v1, Landroidx/work/impl/model/WorkSpec;->c:Ljava/lang/String;

    .line 109
    .line 110
    iget-object v5, v2, Landroidx/work/impl/model/WorkSpec;->b:Landroidx/work/WorkInfo$State;

    .line 111
    .line 112
    iput-object v5, v1, Landroidx/work/impl/model/WorkSpec;->b:Landroidx/work/WorkInfo$State;

    .line 113
    .line 114
    iget-object v5, v2, Landroidx/work/impl/model/WorkSpec;->d:Ljava/lang/String;

    .line 115
    .line 116
    iput-object v5, v1, Landroidx/work/impl/model/WorkSpec;->d:Ljava/lang/String;

    .line 117
    .line 118
    new-instance v5, Landroidx/work/Data;

    .line 119
    .line 120
    iget-object v6, v2, Landroidx/work/impl/model/WorkSpec;->e:Landroidx/work/Data;

    .line 121
    .line 122
    invoke-direct {v5, v6}, Landroidx/work/Data;-><init>(Landroidx/work/Data;)V

    .line 123
    .line 124
    .line 125
    iput-object v5, v1, Landroidx/work/impl/model/WorkSpec;->e:Landroidx/work/Data;

    .line 126
    .line 127
    new-instance v5, Landroidx/work/Data;

    .line 128
    .line 129
    iget-object v6, v2, Landroidx/work/impl/model/WorkSpec;->f:Landroidx/work/Data;

    .line 130
    .line 131
    invoke-direct {v5, v6}, Landroidx/work/Data;-><init>(Landroidx/work/Data;)V

    .line 132
    .line 133
    .line 134
    iput-object v5, v1, Landroidx/work/impl/model/WorkSpec;->f:Landroidx/work/Data;

    .line 135
    .line 136
    iget-wide v5, v2, Landroidx/work/impl/model/WorkSpec;->g:J

    .line 137
    .line 138
    iput-wide v5, v1, Landroidx/work/impl/model/WorkSpec;->g:J

    .line 139
    .line 140
    iget-wide v5, v2, Landroidx/work/impl/model/WorkSpec;->h:J

    .line 141
    .line 142
    iput-wide v5, v1, Landroidx/work/impl/model/WorkSpec;->h:J

    .line 143
    .line 144
    iget-wide v5, v2, Landroidx/work/impl/model/WorkSpec;->i:J

    .line 145
    .line 146
    iput-wide v5, v1, Landroidx/work/impl/model/WorkSpec;->i:J

    .line 147
    .line 148
    new-instance v5, Landroidx/work/Constraints;

    .line 149
    .line 150
    iget-object v6, v2, Landroidx/work/impl/model/WorkSpec;->j:Landroidx/work/Constraints;

    .line 151
    .line 152
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 153
    .line 154
    .line 155
    sget-object v7, Landroidx/work/NetworkType;->c:Landroidx/work/NetworkType;

    .line 156
    .line 157
    iput-object v7, v5, Landroidx/work/Constraints;->a:Landroidx/work/NetworkType;

    .line 158
    .line 159
    iput-wide v3, v5, Landroidx/work/Constraints;->f:J

    .line 160
    .line 161
    iput-wide v3, v5, Landroidx/work/Constraints;->g:J

    .line 162
    .line 163
    new-instance v3, Landroidx/work/ContentUriTriggers;

    .line 164
    .line 165
    invoke-direct {v3}, Landroidx/work/ContentUriTriggers;-><init>()V

    .line 166
    .line 167
    .line 168
    iput-object v3, v5, Landroidx/work/Constraints;->h:Landroidx/work/ContentUriTriggers;

    .line 169
    .line 170
    iget-boolean v3, v6, Landroidx/work/Constraints;->b:Z

    .line 171
    .line 172
    iput-boolean v3, v5, Landroidx/work/Constraints;->b:Z

    .line 173
    .line 174
    iget-boolean v3, v6, Landroidx/work/Constraints;->c:Z

    .line 175
    .line 176
    iput-boolean v3, v5, Landroidx/work/Constraints;->c:Z

    .line 177
    .line 178
    iget-object v3, v6, Landroidx/work/Constraints;->a:Landroidx/work/NetworkType;

    .line 179
    .line 180
    iput-object v3, v5, Landroidx/work/Constraints;->a:Landroidx/work/NetworkType;

    .line 181
    .line 182
    iget-boolean v3, v6, Landroidx/work/Constraints;->d:Z

    .line 183
    .line 184
    iput-boolean v3, v5, Landroidx/work/Constraints;->d:Z

    .line 185
    .line 186
    iget-boolean v3, v6, Landroidx/work/Constraints;->e:Z

    .line 187
    .line 188
    iput-boolean v3, v5, Landroidx/work/Constraints;->e:Z

    .line 189
    .line 190
    iget-object v3, v6, Landroidx/work/Constraints;->h:Landroidx/work/ContentUriTriggers;

    .line 191
    .line 192
    iput-object v3, v5, Landroidx/work/Constraints;->h:Landroidx/work/ContentUriTriggers;

    .line 193
    .line 194
    iput-object v5, v1, Landroidx/work/impl/model/WorkSpec;->j:Landroidx/work/Constraints;

    .line 195
    .line 196
    iget v3, v2, Landroidx/work/impl/model/WorkSpec;->k:I

    .line 197
    .line 198
    iput v3, v1, Landroidx/work/impl/model/WorkSpec;->k:I

    .line 199
    .line 200
    iget-object v3, v2, Landroidx/work/impl/model/WorkSpec;->l:Landroidx/work/BackoffPolicy;

    .line 201
    .line 202
    iput-object v3, v1, Landroidx/work/impl/model/WorkSpec;->l:Landroidx/work/BackoffPolicy;

    .line 203
    .line 204
    iget-wide v3, v2, Landroidx/work/impl/model/WorkSpec;->m:J

    .line 205
    .line 206
    iput-wide v3, v1, Landroidx/work/impl/model/WorkSpec;->m:J

    .line 207
    .line 208
    iget-wide v3, v2, Landroidx/work/impl/model/WorkSpec;->n:J

    .line 209
    .line 210
    iput-wide v3, v1, Landroidx/work/impl/model/WorkSpec;->n:J

    .line 211
    .line 212
    iget-wide v3, v2, Landroidx/work/impl/model/WorkSpec;->o:J

    .line 213
    .line 214
    iput-wide v3, v1, Landroidx/work/impl/model/WorkSpec;->o:J

    .line 215
    .line 216
    iget-wide v3, v2, Landroidx/work/impl/model/WorkSpec;->p:J

    .line 217
    .line 218
    iput-wide v3, v1, Landroidx/work/impl/model/WorkSpec;->p:J

    .line 219
    .line 220
    iget-boolean v3, v2, Landroidx/work/impl/model/WorkSpec;->q:Z

    .line 221
    .line 222
    iput-boolean v3, v1, Landroidx/work/impl/model/WorkSpec;->q:Z

    .line 223
    .line 224
    iget-object v2, v2, Landroidx/work/impl/model/WorkSpec;->r:Landroidx/work/OutOfQuotaPolicy;

    .line 225
    .line 226
    iput-object v2, v1, Landroidx/work/impl/model/WorkSpec;->r:Landroidx/work/OutOfQuotaPolicy;

    .line 227
    .line 228
    iput-object v1, p0, Landroidx/work/WorkRequest$Builder;->b:Landroidx/work/impl/model/WorkSpec;

    .line 229
    .line 230
    iget-object v2, p0, Landroidx/work/WorkRequest$Builder;->a:Ljava/util/UUID;

    .line 231
    .line 232
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    iput-object v2, v1, Landroidx/work/impl/model/WorkSpec;->a:Ljava/lang/String;

    .line 237
    .line 238
    return-object v0
.end method

.method public abstract b()Landroidx/work/WorkRequest;
.end method
