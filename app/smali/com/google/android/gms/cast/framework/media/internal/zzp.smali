.class final Lcom/google/android/gms/cast/framework/media/internal/zzp;
.super Landroid/support/v4/media/session/MediaSessionCompat$Callback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/cast/framework/media/internal/zzs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/media/internal/zzs;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzp;->a:Lcom/google/android/gms/cast/framework/media/internal/zzs;

    .line 5
    .line 6
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    .line 1
    const/4 p2, 0x1

    .line 2
    new-array v0, p2, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 6
    .line 7
    sget-object v2, Lcom/google/android/gms/cast/framework/media/internal/zzs;->v:Lcom/google/android/gms/cast/internal/Logger;

    .line 8
    .line 9
    const-string v3, "onCustomAction with action = %s"

    .line 10
    .line 11
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/internal/zzp;->a:Lcom/google/android/gms/cast/framework/media/internal/zzs;

    .line 21
    .line 22
    sparse-switch v0, :sswitch_data_0

    .line 23
    .line 24
    .line 25
    goto/16 :goto_1

    .line 26
    .line 27
    :sswitch_0
    const-string v0, "com.google.android.gms.cast.framework.action.FORWARD"

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_5

    .line 34
    .line 35
    iget-object p1, v4, Lcom/google/android/gms/cast/framework/media/internal/zzs;->e:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 36
    .line 37
    iget-wide p1, p1, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->g:J

    .line 38
    .line 39
    iget-object v0, v4, Lcom/google/android/gms/cast/framework/media/internal/zzs;->n:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 40
    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->d()J

    .line 45
    .line 46
    .line 47
    move-result-wide v5

    .line 48
    add-long/2addr v5, p1

    .line 49
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 50
    .line 51
    .line 52
    move-result-wide p1

    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->i()J

    .line 54
    .line 55
    .line 56
    move-result-wide v0

    .line 57
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 58
    .line 59
    .line 60
    move-result-wide p1

    .line 61
    iget-object v0, v4, Lcom/google/android/gms/cast/framework/media/internal/zzs;->n:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 62
    .line 63
    if-nez v0, :cond_1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    new-instance v1, Lcom/google/android/gms/cast/MediaSeekOptions$Builder;

    .line 67
    .line 68
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-wide p1, v1, Lcom/google/android/gms/cast/MediaSeekOptions$Builder;->a:J

    .line 72
    .line 73
    new-instance v2, Lcom/google/android/gms/cast/MediaSeekOptions;

    .line 74
    .line 75
    iget-boolean v1, v1, Lcom/google/android/gms/cast/MediaSeekOptions$Builder;->b:Z

    .line 76
    .line 77
    invoke-direct {v2, p1, p2, v1}, Lcom/google/android/gms/cast/MediaSeekOptions;-><init>(JZ)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->w(Lcom/google/android/gms/cast/MediaSeekOptions;)Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :sswitch_1
    const-string v0, "com.google.android.gms.cast.framework.action.DISCONNECT"

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_5

    .line 91
    .line 92
    iget-object p1, v4, Lcom/google/android/gms/cast/framework/media/internal/zzs;->d:Lcom/google/android/gms/cast/framework/SessionManager;

    .line 93
    .line 94
    if-eqz p1, :cond_3

    .line 95
    .line 96
    invoke-virtual {p1, v1}, Lcom/google/android/gms/cast/framework/SessionManager;->b(Z)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :sswitch_2
    const-string v0, "com.google.android.gms.cast.framework.action.STOP_CASTING"

    .line 101
    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_5

    .line 107
    .line 108
    iget-object p1, v4, Lcom/google/android/gms/cast/framework/media/internal/zzs;->d:Lcom/google/android/gms/cast/framework/SessionManager;

    .line 109
    .line 110
    if-eqz p1, :cond_3

    .line 111
    .line 112
    invoke-virtual {p1, p2}, Lcom/google/android/gms/cast/framework/SessionManager;->b(Z)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :sswitch_3
    const-string v0, "com.google.android.gms.cast.framework.action.REWIND"

    .line 117
    .line 118
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_5

    .line 123
    .line 124
    iget-object p1, v4, Lcom/google/android/gms/cast/framework/media/internal/zzs;->e:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 125
    .line 126
    iget-wide p1, p1, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->g:J

    .line 127
    .line 128
    neg-long p1, p1

    .line 129
    iget-object v0, v4, Lcom/google/android/gms/cast/framework/media/internal/zzs;->n:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 130
    .line 131
    if-nez v0, :cond_2

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->d()J

    .line 135
    .line 136
    .line 137
    move-result-wide v5

    .line 138
    add-long/2addr v5, p1

    .line 139
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 140
    .line 141
    .line 142
    move-result-wide p1

    .line 143
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->i()J

    .line 144
    .line 145
    .line 146
    move-result-wide v0

    .line 147
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 148
    .line 149
    .line 150
    move-result-wide p1

    .line 151
    iget-object v0, v4, Lcom/google/android/gms/cast/framework/media/internal/zzs;->n:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 152
    .line 153
    if-nez v0, :cond_4

    .line 154
    .line 155
    :cond_3
    :goto_0
    return-void

    .line 156
    :cond_4
    new-instance v1, Lcom/google/android/gms/cast/MediaSeekOptions$Builder;

    .line 157
    .line 158
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 159
    .line 160
    .line 161
    iput-wide p1, v1, Lcom/google/android/gms/cast/MediaSeekOptions$Builder;->a:J

    .line 162
    .line 163
    new-instance v2, Lcom/google/android/gms/cast/MediaSeekOptions;

    .line 164
    .line 165
    iget-boolean v1, v1, Lcom/google/android/gms/cast/MediaSeekOptions$Builder;->b:Z

    .line 166
    .line 167
    invoke-direct {v2, p1, p2, v1}, Lcom/google/android/gms/cast/MediaSeekOptions;-><init>(JZ)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->w(Lcom/google/android/gms/cast/MediaSeekOptions;)Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :cond_5
    :goto_1
    new-instance v0, Landroid/content/Intent;

    .line 175
    .line 176
    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iget-object p1, v4, Lcom/google/android/gms/cast/framework/media/internal/zzs;->g:Landroid/content/ComponentName;

    .line 180
    .line 181
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 182
    .line 183
    .line 184
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 185
    .line 186
    iget-object v1, v4, Lcom/google/android/gms/cast/framework/media/internal/zzs;->a:Landroid/content/Context;

    .line 187
    .line 188
    const/16 v2, 0x22

    .line 189
    .line 190
    if-ge p1, v2, :cond_6

    .line 191
    .line 192
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    :cond_6
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-virtual {p1, p2}, Landroid/app/BroadcastOptions;->setShareIdentityEnabled(Z)Landroid/app/BroadcastOptions;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    const/4 p2, 0x0

    .line 209
    invoke-virtual {v1, v0, p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 210
    .line 211
    .line 212
    return-void

    .line 213
    :sswitch_data_0
    .sparse-switch
        -0x655132e4 -> :sswitch_3
        -0x27d32f79 -> :sswitch_2
        -0x76b6783 -> :sswitch_1
        0x51303e64 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->v:Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v2, "onMediaButtonEvent"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "android.intent.extra.KEY_EVENT"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/view/KeyEvent;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/16 v1, 0x7f

    .line 26
    .line 27
    if-eq v0, v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/16 v0, 0x7e

    .line 34
    .line 35
    if-ne p1, v0, :cond_1

    .line 36
    .line 37
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzp;->a:Lcom/google/android/gms/cast/framework/media/internal/zzs;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/google/android/gms/cast/framework/media/internal/zzs;->n:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->A()V

    .line 44
    .line 45
    .line 46
    :cond_1
    const/4 p1, 0x1

    .line 47
    return p1
.end method

.method public final onPause()V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->v:Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v2, "onPause"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzp;->a:Lcom/google/android/gms/cast/framework/media/internal/zzs;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->n:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->A()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final onPlay()V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->v:Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v2, "onPlay"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzp;->a:Lcom/google/android/gms/cast/framework/media/internal/zzs;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->n:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->A()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final onSeekTo(J)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->v:Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v0, v1, v2

    .line 12
    .line 13
    sget-object v0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->v:Lcom/google/android/gms/cast/internal/Logger;

    .line 14
    .line 15
    const-string v2, "onSeekTo %d"

    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzp;->a:Lcom/google/android/gms/cast/framework/media/internal/zzs;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->n:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    new-instance v1, Lcom/google/android/gms/cast/MediaSeekOptions$Builder;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-wide p1, v1, Lcom/google/android/gms/cast/MediaSeekOptions$Builder;->a:J

    .line 33
    .line 34
    new-instance v2, Lcom/google/android/gms/cast/MediaSeekOptions;

    .line 35
    .line 36
    iget-boolean v1, v1, Lcom/google/android/gms/cast/MediaSeekOptions$Builder;->b:Z

    .line 37
    .line 38
    invoke-direct {v2, p1, p2, v1}, Lcom/google/android/gms/cast/MediaSeekOptions;-><init>(JZ)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->w(Lcom/google/android/gms/cast/MediaSeekOptions;)Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final onSkipToNext()V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->v:Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v2, "onSkipToNext"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzp;->a:Lcom/google/android/gms/cast/framework/media/internal/zzs;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->n:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->s()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final onSkipToPrevious()V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->v:Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v2, "onSkipToPrevious"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzp;->a:Lcom/google/android/gms/cast/framework/media/internal/zzs;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->n:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->t()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
