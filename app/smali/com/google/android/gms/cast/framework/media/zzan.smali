.class final Lcom/google/android/gms/cast/framework/media/zzan;
.super Lcom/google/android/gms/cast/framework/media/zzbc;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lcom/google/android/gms/cast/MediaLoadRequestData;

.field public final synthetic e:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/cast/MediaLoadRequestData;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/zzan;->d:Lcom/google/android/gms/cast/MediaLoadRequestData;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzan;->e:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/cast/framework/media/zzbc;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzan;->e:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

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
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string v2, "requestId"

    .line 13
    .line 14
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/zzan;->d:Lcom/google/android/gms/cast/MediaLoadRequestData;

    .line 15
    .line 16
    iget-object v4, v3, Lcom/google/android/gms/cast/MediaLoadRequestData;->c:Lcom/google/android/gms/cast/MediaInfo;

    .line 17
    .line 18
    iget-object v5, v3, Lcom/google/android/gms/cast/MediaLoadRequestData;->f:Lcom/google/android/gms/cast/MediaQueueData;

    .line 19
    .line 20
    if-nez v4, :cond_1

    .line 21
    .line 22
    if-eqz v5, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    const-string v1, "MediaInfo and MediaQueueData should not be both null"

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0

    .line 33
    :cond_1
    :goto_0
    new-instance v4, Lorg/json/JSONObject;

    .line 34
    .line 35
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 36
    .line 37
    .line 38
    const/4 v6, 0x0

    .line 39
    :try_start_0
    iget-object v7, v3, Lcom/google/android/gms/cast/MediaLoadRequestData;->c:Lcom/google/android/gms/cast/MediaInfo;

    .line 40
    .line 41
    if-eqz v7, :cond_2

    .line 42
    .line 43
    const-string v8, "media"

    .line 44
    .line 45
    invoke-virtual {v7}, Lcom/google/android/gms/cast/MediaInfo;->G()Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    invoke-virtual {v4, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :catch_0
    move-exception v3

    .line 54
    goto :goto_3

    .line 55
    :cond_2
    :goto_1
    if-eqz v5, :cond_3

    .line 56
    .line 57
    const-string v7, "queueData"

    .line 58
    .line 59
    invoke-virtual {v5}, Lcom/google/android/gms/cast/MediaQueueData;->F()Lorg/json/JSONObject;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {v4, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    .line 65
    .line 66
    :cond_3
    const-string v5, "autoplay"

    .line 67
    .line 68
    iget-object v7, v3, Lcom/google/android/gms/cast/MediaLoadRequestData;->g:Ljava/lang/Boolean;

    .line 69
    .line 70
    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    .line 72
    .line 73
    iget-wide v7, v3, Lcom/google/android/gms/cast/MediaLoadRequestData;->h:J

    .line 74
    .line 75
    const-wide/16 v9, -0x1

    .line 76
    .line 77
    cmp-long v5, v7, v9

    .line 78
    .line 79
    if-eqz v5, :cond_4

    .line 80
    .line 81
    const-string v5, "currentTime"

    .line 82
    .line 83
    sget-object v9, Lcom/google/android/gms/cast/internal/CastUtils;->a:Ljava/util/regex/Pattern;

    .line 84
    .line 85
    long-to-double v7, v7

    .line 86
    const-wide v9, 0x408f400000000000L    # 1000.0

    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    div-double/2addr v7, v9

    .line 92
    invoke-virtual {v4, v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 93
    .line 94
    .line 95
    :cond_4
    const-string v5, "playbackRate"

    .line 96
    .line 97
    iget-wide v7, v3, Lcom/google/android/gms/cast/MediaLoadRequestData;->i:D

    .line 98
    .line 99
    invoke-virtual {v4, v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 100
    .line 101
    .line 102
    const-string v5, "credentials"

    .line 103
    .line 104
    iget-object v7, v3, Lcom/google/android/gms/cast/MediaLoadRequestData;->m:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    .line 108
    .line 109
    const-string v5, "credentialsType"

    .line 110
    .line 111
    iget-object v7, v3, Lcom/google/android/gms/cast/MediaLoadRequestData;->n:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    .line 115
    .line 116
    const-string v5, "atvCredentials"

    .line 117
    .line 118
    iget-object v7, v3, Lcom/google/android/gms/cast/MediaLoadRequestData;->o:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    .line 122
    .line 123
    const-string v5, "atvCredentialsType"

    .line 124
    .line 125
    iget-object v7, v3, Lcom/google/android/gms/cast/MediaLoadRequestData;->p:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    .line 129
    .line 130
    iget-object v5, v3, Lcom/google/android/gms/cast/MediaLoadRequestData;->j:[J

    .line 131
    .line 132
    if-eqz v5, :cond_6

    .line 133
    .line 134
    new-instance v7, Lorg/json/JSONArray;

    .line 135
    .line 136
    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 137
    .line 138
    .line 139
    move v8, v6

    .line 140
    :goto_2
    array-length v9, v5

    .line 141
    if-ge v8, v9, :cond_5

    .line 142
    .line 143
    aget-wide v9, v5, v8

    .line 144
    .line 145
    invoke-virtual {v7, v8, v9, v10}, Lorg/json/JSONArray;->put(IJ)Lorg/json/JSONArray;

    .line 146
    .line 147
    .line 148
    add-int/lit8 v8, v8, 0x1

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_5
    const-string v5, "activeTrackIds"

    .line 152
    .line 153
    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    .line 155
    .line 156
    :cond_6
    const-string v5, "customData"

    .line 157
    .line 158
    iget-object v7, v3, Lcom/google/android/gms/cast/MediaLoadRequestData;->l:Lorg/json/JSONObject;

    .line 159
    .line 160
    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    .line 162
    .line 163
    iget-wide v7, v3, Lcom/google/android/gms/cast/MediaLoadRequestData;->q:J

    .line 164
    .line 165
    invoke-virtual {v4, v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .line 167
    .line 168
    goto :goto_4

    .line 169
    :goto_3
    sget-object v4, Lcom/google/android/gms/cast/MediaLoadRequestData;->r:Lcom/google/android/gms/cast/internal/Logger;

    .line 170
    .line 171
    const/4 v5, 0x1

    .line 172
    new-array v5, v5, [Ljava/lang/Object;

    .line 173
    .line 174
    aput-object v3, v5, v6

    .line 175
    .line 176
    iget-object v3, v4, Lcom/google/android/gms/cast/internal/Logger;->a:Ljava/lang/String;

    .line 177
    .line 178
    const-string v6, "Error transforming MediaLoadRequestData into JSONObject"

    .line 179
    .line 180
    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    new-instance v4, Lorg/json/JSONObject;

    .line 188
    .line 189
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 190
    .line 191
    .line 192
    :goto_4
    invoke-virtual {v0}, Lcom/google/android/gms/cast/internal/zzq;->b()J

    .line 193
    .line 194
    .line 195
    move-result-wide v5

    .line 196
    :try_start_1
    invoke-virtual {v4, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 197
    .line 198
    .line 199
    const-string v2, "type"

    .line 200
    .line 201
    const-string v3, "LOAD"

    .line 202
    .line 203
    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 204
    .line 205
    .line 206
    :catch_1
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    invoke-virtual {v0, v5, v6, v2}, Lcom/google/android/gms/cast/internal/zzq;->a(JLjava/lang/String;)V

    .line 211
    .line 212
    .line 213
    iget-object v0, v0, Lcom/google/android/gms/cast/internal/zzar;->j:Lcom/google/android/gms/cast/internal/zzav;

    .line 214
    .line 215
    invoke-virtual {v0, v5, v6, v1}, Lcom/google/android/gms/cast/internal/zzav;->a(JLcom/google/android/gms/cast/internal/zzat;)V

    .line 216
    .line 217
    .line 218
    return-void
.end method
