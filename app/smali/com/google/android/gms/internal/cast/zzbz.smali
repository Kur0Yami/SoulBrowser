.class final Lcom/google/android/gms/internal/cast/zzbz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/cast/framework/SessionManagerListener;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/cast/zzce;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/cast/zzce;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzbz;->a:Lcom/google/android/gms/internal/cast/zzce;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final bridge synthetic d(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 2
    .line 3
    return-void
.end method

.method public final bridge synthetic e(Lcom/google/android/gms/cast/framework/Session;Ljava/lang/String;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 2
    .line 3
    return-void
.end method

.method public final synthetic f(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 6

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 2
    .line 3
    sget-object p1, Lcom/google/android/gms/internal/cast/zzce;->i:Lcom/google/android/gms/cast/internal/Logger;

    .line 4
    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 p2, 0x1

    .line 10
    new-array v0, p2, [Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    aput-object p1, v0, v1

    .line 14
    .line 15
    sget-object p1, Lcom/google/android/gms/internal/cast/zzce;->i:Lcom/google/android/gms/cast/internal/Logger;

    .line 16
    .line 17
    const-string v2, "onSessionEnded with error = %d"

    .line 18
    .line 19
    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbz;->a:Lcom/google/android/gms/internal/cast/zzce;

    .line 23
    .line 24
    iget v2, v0, Lcom/google/android/gms/internal/cast/zzce;->e:I

    .line 25
    .line 26
    const/4 v3, 0x2

    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    new-array p2, v1, [Ljava/lang/Object;

    .line 30
    .line 31
    const-string v1, "No need to notify transferred if the transfer type is unknown"

    .line 32
    .line 33
    invoke-virtual {p1, v1, p2}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    iget-object v4, v0, Lcom/google/android/gms/internal/cast/zzce;->h:Lcom/google/android/gms/cast/SessionState;

    .line 38
    .line 39
    if-nez v4, :cond_1

    .line 40
    .line 41
    new-array p2, v1, [Ljava/lang/Object;

    .line 42
    .line 43
    const-string v1, "No need to notify with null sessionState"

    .line 44
    .line 45
    invoke-virtual {p1, v1, p2}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    iget-object v4, v0, Lcom/google/android/gms/internal/cast/zzce;->h:Lcom/google/android/gms/cast/SessionState;

    .line 54
    .line 55
    new-array v5, v3, [Ljava/lang/Object;

    .line 56
    .line 57
    aput-object v2, v5, v1

    .line 58
    .line 59
    aput-object v4, v5, p2

    .line 60
    .line 61
    const-string p2, "notify transferred with type = %d, sessionState = %s"

    .line 62
    .line 63
    invoke-virtual {p1, p2, v5}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, v0, Lcom/google/android/gms/internal/cast/zzce;->b:Ljava/util/Set;

    .line 67
    .line 68
    new-instance p2, Ljava/util/HashSet;

    .line 69
    .line 70
    invoke-direct {p2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    if-eqz p2, :cond_2

    .line 82
    .line 83
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    check-cast p2, Lcom/google/android/gms/cast/framework/SessionTransferCallback;

    .line 88
    .line 89
    iget v1, v0, Lcom/google/android/gms/internal/cast/zzce;->e:I

    .line 90
    .line 91
    invoke-virtual {p2, v1}, Lcom/google/android/gms/cast/framework/SessionTransferCallback;->b(I)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_2
    :goto_1
    iget p1, v0, Lcom/google/android/gms/internal/cast/zzce;->e:I

    .line 96
    .line 97
    if-ne p1, v3, :cond_3

    .line 98
    .line 99
    return-void

    .line 100
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzce;->b()V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public final h(Lcom/google/android/gms/cast/framework/Session;Ljava/lang/String;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzbz;->a:Lcom/google/android/gms/internal/cast/zzce;

    .line 4
    .line 5
    iget p2, p1, Lcom/google/android/gms/internal/cast/zzce;->e:I

    .line 6
    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const/4 v0, 0x1

    .line 12
    new-array v0, v0, [Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    aput-object p2, v0, v1

    .line 16
    .line 17
    sget-object p2, Lcom/google/android/gms/internal/cast/zzce;->i:Lcom/google/android/gms/cast/internal/Logger;

    .line 18
    .line 19
    const-string v2, "onSessionStarted with transferType = %d"

    .line 20
    .line 21
    invoke-virtual {p2, v2, v0}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-boolean v0, p1, Lcom/google/android/gms/internal/cast/zzce;->f:Z

    .line 25
    .line 26
    if-eqz v0, :cond_5

    .line 27
    .line 28
    iget-object v0, p1, Lcom/google/android/gms/internal/cast/zzce;->a:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 29
    .line 30
    iget-boolean v0, v0, Lcom/google/android/gms/cast/framework/CastOptions;->u:Z

    .line 31
    .line 32
    if-eqz v0, :cond_5

    .line 33
    .line 34
    iget v0, p1, Lcom/google/android/gms/internal/cast/zzce;->e:I

    .line 35
    .line 36
    const/4 v2, 0x2

    .line 37
    if-ne v0, v2, :cond_5

    .line 38
    .line 39
    iget-object v0, p1, Lcom/google/android/gms/internal/cast/zzce;->h:Lcom/google/android/gms/cast/SessionState;

    .line 40
    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    new-array v0, v1, [Ljava/lang/Object;

    .line 44
    .line 45
    const-string v1, "skip restoring session state due to null SessionState"

    .line 46
    .line 47
    invoke-virtual {p2, v1, v0}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/cast/zzce;->g:Lcom/google/android/gms/cast/framework/SessionManager;

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    new-array v0, v1, [Ljava/lang/Object;

    .line 57
    .line 58
    const-string v3, "skip transferring as SessionManager is null"

    .line 59
    .line 60
    invoke-virtual {p2, v3, v0}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/SessionManager;->c()Lcom/google/android/gms/cast/framework/CastSession;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    if-nez v0, :cond_2

    .line 69
    .line 70
    new-array v0, v1, [Ljava/lang/Object;

    .line 71
    .line 72
    const-string v3, "skip transferring as CastSession is null"

    .line 73
    .line 74
    invoke-virtual {p2, v3, v0}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastSession;->j()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    :goto_0
    if-nez v2, :cond_3

    .line 83
    .line 84
    new-array v0, v1, [Ljava/lang/Object;

    .line 85
    .line 86
    const-string v1, "skip restoring session state due to null RemoteMediaClient"

    .line 87
    .line 88
    invoke-virtual {p2, v1, v0}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_3
    new-array v0, v1, [Ljava/lang/Object;

    .line 93
    .line 94
    const-string v3, "resume SessionState to current session"

    .line 95
    .line 96
    invoke-virtual {p2, v3, v0}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    iget-object p2, p1, Lcom/google/android/gms/internal/cast/zzce;->h:Lcom/google/android/gms/cast/SessionState;

    .line 100
    .line 101
    if-nez p2, :cond_4

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    iget-object p2, p2, Lcom/google/android/gms/cast/SessionState;->c:Lcom/google/android/gms/cast/MediaLoadRequestData;

    .line 105
    .line 106
    if-eqz p2, :cond_5

    .line 107
    .line 108
    sget-object v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->k:Lcom/google/android/gms/cast/internal/Logger;

    .line 109
    .line 110
    const-string v3, "resume SessionState"

    .line 111
    .line 112
    new-array v1, v1, [Ljava/lang/Object;

    .line 113
    .line 114
    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, p2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->q(Lcom/google/android/gms/cast/MediaLoadRequestData;)V

    .line 118
    .line 119
    .line 120
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzce;->b()V

    .line 121
    .line 122
    .line 123
    return-void
.end method

.method public final bridge synthetic j(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 2
    .line 3
    return-void
.end method

.method public final bridge synthetic k(Lcom/google/android/gms/cast/framework/Session;Z)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 2
    .line 3
    return-void
.end method

.method public final bridge synthetic m(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 2
    .line 3
    return-void
.end method

.method public final bridge synthetic n(Lcom/google/android/gms/cast/framework/Session;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 2
    .line 3
    return-void
.end method

.method public final bridge synthetic o(Lcom/google/android/gms/cast/framework/Session;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 2
    .line 3
    return-void
.end method
