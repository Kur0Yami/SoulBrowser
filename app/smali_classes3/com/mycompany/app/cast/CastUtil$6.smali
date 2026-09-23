.class Lcom/mycompany/app/cast/CastUtil$6;
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
    iput-object p1, p0, Lcom/mycompany/app/cast/CastUtil$6;->c:Lcom/mycompany/app/cast/CastUtil;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/cast/CastUtil$6;->c:Lcom/mycompany/app/cast/CastUtil;

    .line 2
    .line 3
    iget-object v5, v0, Lcom/mycompany/app/cast/CastUtil;->e:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/cast/CastUtil;->f:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/cast/CastUtil;->i:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, v0, Lcom/mycompany/app/cast/CastUtil;->g:Ljava/lang/String;

    .line 10
    .line 11
    iget-wide v6, v0, Lcom/mycompany/app/cast/CastUtil;->m:J

    .line 12
    .line 13
    iget-wide v10, v0, Lcom/mycompany/app/cast/CastUtil;->n:J

    .line 14
    .line 15
    iget-object v3, v0, Lcom/mycompany/app/cast/CastUtil;->h:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v8, v0, Lcom/mycompany/app/cast/CastUtil;->b:Lcom/google/android/gms/cast/framework/CastSession;

    .line 18
    .line 19
    if-nez v8, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/mycompany/app/cast/CastUtil;->g()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-static {v1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v8

    .line 29
    const/4 v12, 0x0

    .line 30
    const-string v9, "video/*"

    .line 31
    .line 32
    if-nez v8, :cond_5

    .line 33
    .line 34
    invoke-static {}, Lcom/mycompany/app/cast/CastLocal;->a()Lcom/mycompany/app/cast/CastLocal;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iget-object v8, v0, Lcom/mycompany/app/cast/CastUtil;->a:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {v2, v8}, Lcom/mycompany/app/cast/CastLocal;->b(Landroid/content/Context;)Z

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcom/mycompany/app/cast/CastLocal;->a()Lcom/mycompany/app/cast/CastLocal;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    iget-object v2, v2, Lcom/mycompany/app/cast/CastLocal;->a:Lcom/mycompany/app/cast/CastServer;

    .line 48
    .line 49
    if-nez v2, :cond_1

    .line 50
    .line 51
    :goto_0
    move-object v1, v12

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    if-eqz v8, :cond_2

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    new-instance v8, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;

    .line 61
    .line 62
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v8, v1}, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    invoke-virtual {v2, v1, v3, v8}, Lcom/mycompany/app/cast/CastServer;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    :goto_1
    invoke-static {}, Lcom/mycompany/app/cast/CastLocal;->a()Lcom/mycompany/app/cast/CastLocal;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    iget-object v2, v2, Lcom/mycompany/app/cast/CastLocal;->a:Lcom/mycompany/app/cast/CastServer;

    .line 78
    .line 79
    if-nez v2, :cond_3

    .line 80
    .line 81
    move-object v2, v12

    .line 82
    goto :goto_2

    .line 83
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    iget-object v2, v2, Lcom/mycompany/app/cast/CastServer;->j:Ljava/lang/String;

    .line 89
    .line 90
    const-string v13, "icon"

    .line 91
    .line 92
    invoke-static {v8, v2, v13}, Landroid/support/v4/media/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 97
    .line 98
    .line 99
    move-result v8

    .line 100
    if-eqz v8, :cond_4

    .line 101
    .line 102
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->u2(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    if-eqz v8, :cond_4

    .line 111
    .line 112
    :goto_3
    move-object v3, v2

    .line 113
    move-object v8, v9

    .line 114
    :goto_4
    move-object v2, v1

    .line 115
    goto :goto_5

    .line 116
    :cond_4
    move-object v8, v3

    .line 117
    move-object v3, v2

    .line 118
    goto :goto_4

    .line 119
    :cond_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 120
    .line 121
    .line 122
    move-result v8

    .line 123
    if-eqz v8, :cond_4

    .line 124
    .line 125
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->v2(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 130
    .line 131
    .line 132
    move-result v8

    .line 133
    if-eqz v8, :cond_4

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :goto_5
    iget-object v1, v0, Lcom/mycompany/app/cast/CastUtil;->a:Landroid/content/Context;

    .line 137
    .line 138
    const/4 v9, 0x0

    .line 139
    invoke-static/range {v1 .. v9}, Lcom/mycompany/app/cast/CastUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/ArrayList;)Lcom/google/android/gms/cast/MediaInfo;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    if-nez v1, :cond_6

    .line 144
    .line 145
    invoke-static {}, Lcom/mycompany/app/cast/CastLocal;->a()Lcom/mycompany/app/cast/CastLocal;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {v1}, Lcom/mycompany/app/cast/CastLocal;->c()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/mycompany/app/cast/CastUtil;->g()V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :cond_6
    :try_start_0
    new-instance v2, Lcom/google/android/gms/cast/MediaQueueItem$Builder;

    .line 157
    .line 158
    invoke-direct {v2, v1}, Lcom/google/android/gms/cast/MediaQueueItem$Builder;-><init>(Lcom/google/android/gms/cast/MediaInfo;)V

    .line 159
    .line 160
    .line 161
    iget-object v1, v2, Lcom/google/android/gms/cast/MediaQueueItem$Builder;->a:Lcom/google/android/gms/cast/MediaQueueItem;

    .line 162
    .line 163
    iget-object v1, v1, Lcom/google/android/gms/cast/MediaQueueItem;->n:Lcom/google/android/gms/cast/MediaQueueItem$Writer;

    .line 164
    .line 165
    iget-object v1, v1, Lcom/google/android/gms/cast/MediaQueueItem$Writer;->a:Lcom/google/android/gms/cast/MediaQueueItem;

    .line 166
    .line 167
    const/4 v3, 0x1

    .line 168
    iput-boolean v3, v1, Lcom/google/android/gms/cast/MediaQueueItem;->g:Z

    .line 169
    .line 170
    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaQueueItem$Builder;->a()Lcom/google/android/gms/cast/MediaQueueItem;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    new-array v2, v3, [Lcom/google/android/gms/cast/MediaQueueItem;

    .line 175
    .line 176
    const/4 v3, 0x0

    .line 177
    aput-object v1, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .line 179
    move-object v12, v2

    .line 180
    :catch_0
    if-nez v12, :cond_7

    .line 181
    .line 182
    invoke-static {}, Lcom/mycompany/app/cast/CastLocal;->a()Lcom/mycompany/app/cast/CastLocal;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-virtual {v1}, Lcom/mycompany/app/cast/CastLocal;->c()V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0}, Lcom/mycompany/app/cast/CastUtil;->g()V

    .line 190
    .line 191
    .line 192
    goto :goto_6

    .line 193
    :cond_7
    iput-object v12, v0, Lcom/mycompany/app/cast/CastUtil;->p:[Lcom/google/android/gms/cast/MediaQueueItem;

    .line 194
    .line 195
    iput-wide v10, v0, Lcom/mycompany/app/cast/CastUtil;->n:J

    .line 196
    .line 197
    iget-object v1, v0, Lcom/mycompany/app/cast/CastUtil;->c:Landroid/os/Handler;

    .line 198
    .line 199
    if-nez v1, :cond_8

    .line 200
    .line 201
    goto :goto_6

    .line 202
    :cond_8
    new-instance v2, Lcom/mycompany/app/cast/CastUtil$7;

    .line 203
    .line 204
    invoke-direct {v2, v0}, Lcom/mycompany/app/cast/CastUtil$7;-><init>(Lcom/mycompany/app/cast/CastUtil;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 208
    .line 209
    .line 210
    :goto_6
    return-void
.end method
