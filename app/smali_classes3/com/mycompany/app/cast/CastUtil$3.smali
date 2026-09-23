.class Lcom/mycompany/app/cast/CastUtil$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/cast/CastUtil;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/cast/CastUtil;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/cast/CastUtil$3;->c:Lcom/mycompany/app/cast/CastUtil;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/cast/CastUtil$3;->c:Lcom/mycompany/app/cast/CastUtil;

    .line 4
    .line 5
    iget-object v6, v1, Lcom/mycompany/app/cast/CastUtil;->e:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/mycompany/app/cast/CastUtil;->f:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v5, v1, Lcom/mycompany/app/cast/CastUtil;->g:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v3, v1, Lcom/mycompany/app/cast/CastUtil;->h:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v4, v1, Lcom/mycompany/app/cast/CastUtil;->b:Lcom/google/android/gms/cast/framework/CastSession;

    .line 14
    .line 15
    if-nez v4, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/mycompany/app/cast/CastUtil;->g()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-static {v2}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    const/4 v11, 0x0

    .line 26
    const-string v7, "image/*"

    .line 27
    .line 28
    if-nez v4, :cond_4

    .line 29
    .line 30
    invoke-static {}, Lcom/mycompany/app/cast/CastLocal;->a()Lcom/mycompany/app/cast/CastLocal;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    iget-object v8, v1, Lcom/mycompany/app/cast/CastUtil;->a:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {v4, v8}, Lcom/mycompany/app/cast/CastLocal;->b(Landroid/content/Context;)Z

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lcom/mycompany/app/cast/CastLocal;->a()Lcom/mycompany/app/cast/CastLocal;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    iget-object v4, v4, Lcom/mycompany/app/cast/CastLocal;->a:Lcom/mycompany/app/cast/CastServer;

    .line 44
    .line 45
    if-nez v4, :cond_1

    .line 46
    .line 47
    :goto_0
    move-object v2, v11

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v8

    .line 53
    if-eqz v8, :cond_2

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    new-instance v8, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;

    .line 57
    .line 58
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v8, v2}, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    invoke-virtual {v4, v2, v3, v8}, Lcom/mycompany/app/cast/CastServer;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-eqz v4, :cond_3

    .line 74
    .line 75
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->u2(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_3

    .line 84
    .line 85
    :goto_2
    move-object v3, v2

    .line 86
    move-object v9, v7

    .line 87
    goto :goto_3

    .line 88
    :cond_3
    move-object v9, v3

    .line 89
    move-object v3, v2

    .line 90
    goto :goto_3

    .line 91
    :cond_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-eqz v4, :cond_3

    .line 96
    .line 97
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->v2(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-eqz v4, :cond_3

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :goto_3
    iget-object v2, v1, Lcom/mycompany/app/cast/CastUtil;->a:Landroid/content/Context;

    .line 109
    .line 110
    const-wide/16 v7, 0x0

    .line 111
    .line 112
    const/4 v10, 0x0

    .line 113
    move-object v4, v3

    .line 114
    invoke-static/range {v2 .. v10}, Lcom/mycompany/app/cast/CastUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/ArrayList;)Lcom/google/android/gms/cast/MediaInfo;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    if-nez v2, :cond_5

    .line 119
    .line 120
    invoke-static {}, Lcom/mycompany/app/cast/CastLocal;->a()Lcom/mycompany/app/cast/CastLocal;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v2}, Lcom/mycompany/app/cast/CastLocal;->c()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Lcom/mycompany/app/cast/CastUtil;->g()V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :cond_5
    :try_start_0
    new-instance v3, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;

    .line 132
    .line 133
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 134
    .line 135
    .line 136
    const-wide/16 v4, -0x1

    .line 137
    .line 138
    iput-wide v4, v3, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->b:J

    .line 139
    .line 140
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 141
    .line 142
    iput-wide v4, v3, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->c:D

    .line 143
    .line 144
    iput-object v2, v3, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->a:Lcom/google/android/gms/cast/MediaInfo;

    .line 145
    .line 146
    new-instance v12, Lcom/google/android/gms/cast/MediaLoadRequestData;

    .line 147
    .line 148
    iget-object v13, v3, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->a:Lcom/google/android/gms/cast/MediaInfo;

    .line 149
    .line 150
    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 151
    .line 152
    iget-wide v4, v3, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->b:J

    .line 153
    .line 154
    iget-wide v2, v3, Lcom/google/android/gms/cast/MediaLoadRequestData$Builder;->c:D

    .line 155
    .line 156
    const/16 v25, 0x0

    .line 157
    .line 158
    const-wide/16 v26, 0x0

    .line 159
    .line 160
    const/4 v14, 0x0

    .line 161
    const/16 v20, 0x0

    .line 162
    .line 163
    const/16 v21, 0x0

    .line 164
    .line 165
    const/16 v22, 0x0

    .line 166
    .line 167
    const/16 v23, 0x0

    .line 168
    .line 169
    const/16 v24, 0x0

    .line 170
    .line 171
    move-wide/from16 v18, v2

    .line 172
    .line 173
    move-wide/from16 v16, v4

    .line 174
    .line 175
    invoke-direct/range {v12 .. v27}, Lcom/google/android/gms/cast/MediaLoadRequestData;-><init>(Lcom/google/android/gms/cast/MediaInfo;Lcom/google/android/gms/cast/MediaQueueData;Ljava/lang/Boolean;JD[JLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .line 177
    .line 178
    move-object v11, v12

    .line 179
    :catch_0
    if-nez v11, :cond_6

    .line 180
    .line 181
    invoke-static {}, Lcom/mycompany/app/cast/CastLocal;->a()Lcom/mycompany/app/cast/CastLocal;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-virtual {v2}, Lcom/mycompany/app/cast/CastLocal;->c()V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1}, Lcom/mycompany/app/cast/CastUtil;->g()V

    .line 189
    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_6
    iput-object v11, v1, Lcom/mycompany/app/cast/CastUtil;->o:Lcom/google/android/gms/cast/MediaLoadRequestData;

    .line 193
    .line 194
    iget-object v2, v1, Lcom/mycompany/app/cast/CastUtil;->c:Landroid/os/Handler;

    .line 195
    .line 196
    if-nez v2, :cond_7

    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_7
    new-instance v3, Lcom/mycompany/app/cast/CastUtil$4;

    .line 200
    .line 201
    invoke-direct {v3, v1}, Lcom/mycompany/app/cast/CastUtil$4;-><init>(Lcom/mycompany/app/cast/CastUtil;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 205
    .line 206
    .line 207
    :goto_4
    return-void
.end method
