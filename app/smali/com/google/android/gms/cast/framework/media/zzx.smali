.class final Lcom/google/android/gms/cast/framework/media/zzx;
.super Lcom/google/android/gms/cast/framework/media/zzbc;
.source "SourceFile"


# instance fields
.field public final synthetic d:[Lcom/google/android/gms/cast/MediaQueueItem;

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:J

.field public final synthetic h:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;[Lcom/google/android/gms/cast/MediaQueueItem;IIJ)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/zzx;->d:[Lcom/google/android/gms/cast/MediaQueueItem;

    .line 2
    .line 3
    iput p3, p0, Lcom/google/android/gms/cast/framework/media/zzx;->e:I

    .line 4
    .line 5
    iput p4, p0, Lcom/google/android/gms/cast/framework/media/zzx;->f:I

    .line 6
    .line 7
    iput-wide p5, p0, Lcom/google/android/gms/cast/framework/media/zzx;->g:J

    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzx;->h:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/cast/framework/media/zzbc;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzx;->h:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->c:Lcom/google/android/gms/cast/internal/zzar;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/zzbc;->b()Lcom/google/android/gms/cast/internal/zzat;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget v2, p0, Lcom/google/android/gms/cast/framework/media/zzx;->f:I

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string v3, "Invalid repeat mode: "

    .line 15
    .line 16
    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/zzx;->d:[Lcom/google/android/gms/cast/MediaQueueItem;

    .line 17
    .line 18
    if-eqz v4, :cond_7

    .line 19
    .line 20
    array-length v5, v4

    .line 21
    if-eqz v5, :cond_7

    .line 22
    .line 23
    iget v6, p0, Lcom/google/android/gms/cast/framework/media/zzx;->e:I

    .line 24
    .line 25
    if-ltz v6, :cond_6

    .line 26
    .line 27
    if-ge v6, v5, :cond_6

    .line 28
    .line 29
    const-wide/16 v7, -0x1

    .line 30
    .line 31
    iget-wide v9, p0, Lcom/google/android/gms/cast/framework/media/zzx;->g:J

    .line 32
    .line 33
    cmp-long v5, v9, v7

    .line 34
    .line 35
    if-eqz v5, :cond_1

    .line 36
    .line 37
    const-wide/16 v7, 0x0

    .line 38
    .line 39
    cmp-long v7, v9, v7

    .line 40
    .line 41
    if-ltz v7, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    add-int/lit8 v1, v1, 0x22

    .line 57
    .line 58
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 59
    .line 60
    .line 61
    const-string v1, "playPosition can not be negative: "

    .line 62
    .line 63
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw v0

    .line 77
    :cond_1
    :goto_0
    new-instance v7, Lorg/json/JSONObject;

    .line 78
    .line 79
    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/google/android/gms/cast/internal/zzq;->b()J

    .line 83
    .line 84
    .line 85
    move-result-wide v11

    .line 86
    iget-object v8, v0, Lcom/google/android/gms/cast/internal/zzar;->j:Lcom/google/android/gms/cast/internal/zzav;

    .line 87
    .line 88
    invoke-virtual {v8, v11, v12, v1}, Lcom/google/android/gms/cast/internal/zzav;->a(JLcom/google/android/gms/cast/internal/zzat;)V

    .line 89
    .line 90
    .line 91
    :try_start_0
    const-string v1, "requestId"

    .line 92
    .line 93
    invoke-virtual {v7, v1, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 94
    .line 95
    .line 96
    const-string v1, "type"

    .line 97
    .line 98
    const-string v8, "QUEUE_LOAD"

    .line 99
    .line 100
    invoke-virtual {v7, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    .line 102
    .line 103
    new-instance v1, Lorg/json/JSONArray;

    .line 104
    .line 105
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 106
    .line 107
    .line 108
    const/4 v8, 0x0

    .line 109
    :goto_1
    array-length v13, v4

    .line 110
    if-ge v8, v13, :cond_2

    .line 111
    .line 112
    aget-object v13, v4, v8

    .line 113
    .line 114
    invoke-virtual {v13}, Lcom/google/android/gms/cast/MediaQueueItem;->toJson()Lorg/json/JSONObject;

    .line 115
    .line 116
    .line 117
    move-result-object v13

    .line 118
    invoke-virtual {v1, v8, v13}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 119
    .line 120
    .line 121
    add-int/lit8 v8, v8, 0x1

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_2
    const-string v4, "items"

    .line 125
    .line 126
    invoke-virtual {v7, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    .line 128
    .line 129
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-static {v1}, Lcom/google/android/gms/cast/internal/media/MediaCommon;->b(Ljava/lang/Integer;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    if-eqz v1, :cond_4

    .line 138
    .line 139
    const-string v2, "repeatMode"

    .line 140
    .line 141
    invoke-virtual {v7, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    .line 143
    .line 144
    const-string v1, "startIndex"

    .line 145
    .line 146
    invoke-virtual {v7, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 147
    .line 148
    .line 149
    if-eqz v5, :cond_3

    .line 150
    .line 151
    const-string v1, "currentTime"

    .line 152
    .line 153
    sget-object v2, Lcom/google/android/gms/cast/internal/CastUtils;->a:Ljava/util/regex/Pattern;

    .line 154
    .line 155
    long-to-double v2, v9

    .line 156
    const-wide v4, 0x408f400000000000L    # 1000.0

    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    div-double/2addr v2, v4

    .line 162
    invoke-virtual {v7, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 163
    .line 164
    .line 165
    :cond_3
    iget v1, v0, Lcom/google/android/gms/cast/internal/zzar;->i:I

    .line 166
    .line 167
    const/4 v2, -0x1

    .line 168
    if-eq v1, v2, :cond_5

    .line 169
    .line 170
    const-string v2, "sequenceNumber"

    .line 171
    .line 172
    invoke-virtual {v7, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 173
    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 177
    .line 178
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    add-int/lit8 v4, v4, 0x15

    .line 187
    .line 188
    new-instance v5, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    throw v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :catch_0
    :cond_5
    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-virtual {v0, v11, v12, v1}, Lcom/google/android/gms/cast/internal/zzq;->a(JLjava/lang/String;)V

    .line 212
    .line 213
    .line 214
    return-void

    .line 215
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 216
    .line 217
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    add-int/lit8 v1, v1, 0x14

    .line 228
    .line 229
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 230
    .line 231
    .line 232
    const-string v1, "Invalid startIndex: "

    .line 233
    .line 234
    invoke-static {v6, v1, v2}, Landroidx/work/impl/workers/a;->r(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    throw v0

    .line 242
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 243
    .line 244
    const-string v1, "items must not be null or empty."

    .line 245
    .line 246
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    throw v0
.end method
