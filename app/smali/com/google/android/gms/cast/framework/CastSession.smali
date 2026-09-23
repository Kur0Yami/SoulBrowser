.class public Lcom/google/android/gms/cast/framework/CastSession;
.super Lcom/google/android/gms/cast/framework/Session;
.source "SourceFile"


# static fields
.field public static final n:Lcom/google/android/gms/cast/internal/Logger;


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:Ljava/util/HashSet;

.field public final e:Lcom/google/android/gms/cast/framework/zzak;

.field public final f:Lcom/google/android/gms/cast/framework/CastOptions;

.field public final g:Lcom/google/android/gms/internal/cast/zzbx;

.field public final h:Lcom/google/android/gms/cast/framework/media/internal/zzs;

.field public i:Lcom/google/android/gms/cast/zzbm;

.field public j:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

.field public k:Lcom/google/android/gms/cast/CastDevice;

.field public l:Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;

.field public m:Lcom/google/android/gms/cast/framework/zzr;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const-string v1, "CastSession"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/gms/cast/framework/CastSession;->n:Lcom/google/android/gms/cast/internal/Logger;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/internal/cast/zzbx;Lcom/google/android/gms/cast/framework/media/internal/zzs;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/cast/framework/Session;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/google/android/gms/cast/framework/CastSession;->d:Ljava/util/HashSet;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    iput-object p2, p0, Lcom/google/android/gms/cast/framework/CastSession;->c:Landroid/content/Context;

    .line 16
    .line 17
    iput-object p4, p0, Lcom/google/android/gms/cast/framework/CastSession;->f:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 18
    .line 19
    iput-object p5, p0, Lcom/google/android/gms/cast/framework/CastSession;->g:Lcom/google/android/gms/internal/cast/zzbx;

    .line 20
    .line 21
    iput-object p6, p0, Lcom/google/android/gms/cast/framework/CastSession;->h:Lcom/google/android/gms/cast/framework/media/internal/zzs;

    .line 22
    .line 23
    iget-object p2, p0, Lcom/google/android/gms/cast/framework/Session;->a:Lcom/google/android/gms/cast/framework/zzau;

    .line 24
    .line 25
    const/4 p3, 0x1

    .line 26
    const/4 p5, 0x0

    .line 27
    const/4 p6, 0x2

    .line 28
    const-string v0, "Unable to call %s on %s."

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    if-eqz p2, :cond_0

    .line 32
    .line 33
    :try_start_0
    invoke-interface {p2}, Lcom/google/android/gms/cast/framework/zzau;->zzf()Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 34
    .line 35
    .line 36
    move-result-object p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p2

    .line 39
    new-array v2, p6, [Ljava/lang/Object;

    .line 40
    .line 41
    const-string v3, "getWrappedObject"

    .line 42
    .line 43
    aput-object v3, v2, p5

    .line 44
    .line 45
    const-string v3, "zzau"

    .line 46
    .line 47
    aput-object v3, v2, p3

    .line 48
    .line 49
    sget-object v3, Lcom/google/android/gms/cast/framework/Session;->b:Lcom/google/android/gms/cast/internal/Logger;

    .line 50
    .line 51
    invoke-virtual {v3, p2, v0, v2}, Lcom/google/android/gms/cast/internal/Logger;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    move-object p2, v1

    .line 55
    :goto_0
    new-instance v2, Lcom/google/android/gms/cast/framework/zzu;

    .line 56
    .line 57
    invoke-direct {v2, p0}, Lcom/google/android/gms/cast/framework/zzu;-><init>(Lcom/google/android/gms/cast/framework/CastSession;)V

    .line 58
    .line 59
    .line 60
    sget-object v3, Lcom/google/android/gms/internal/cast/zzay;->a:Lcom/google/android/gms/cast/internal/Logger;

    .line 61
    .line 62
    if-nez p2, :cond_1

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzay;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/cast/zzbc;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-interface {p1, p4, p2, v2}, Lcom/google/android/gms/internal/cast/zzbc;->H(Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/cast/framework/zzae;)Lcom/google/android/gms/cast/framework/zzak;

    .line 70
    .line 71
    .line 72
    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/android/gms/cast/framework/ModuleUnavailableException; {:try_start_1 .. :try_end_1} :catch_1

    .line 73
    goto :goto_2

    .line 74
    :catch_1
    move-exception p1

    .line 75
    goto :goto_1

    .line 76
    :catch_2
    move-exception p1

    .line 77
    :goto_1
    sget-object p2, Lcom/google/android/gms/internal/cast/zzay;->a:Lcom/google/android/gms/cast/internal/Logger;

    .line 78
    .line 79
    new-array p4, p6, [Ljava/lang/Object;

    .line 80
    .line 81
    const-string p6, "newCastSessionImpl"

    .line 82
    .line 83
    aput-object p6, p4, p5

    .line 84
    .line 85
    const-string p5, "zzbc"

    .line 86
    .line 87
    aput-object p5, p4, p3

    .line 88
    .line 89
    invoke-virtual {p2, p1, v0, p4}, Lcom/google/android/gms/cast/internal/Logger;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    :goto_2
    iput-object v1, p0, Lcom/google/android/gms/cast/framework/CastSession;->e:Lcom/google/android/gms/cast/framework/zzak;

    .line 93
    .line 94
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 6

    .line 1
    const-string v0, "Unable to call %s on %s."

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/CastSession;->e:Lcom/google/android/gms/cast/framework/zzak;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x0

    .line 10
    :try_start_0
    invoke-interface {v1, p1}, Lcom/google/android/gms/cast/framework/zzak;->a1(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p1

    .line 15
    new-array v1, v3, [Ljava/lang/Object;

    .line 16
    .line 17
    const-string v5, "disconnectFromDevice"

    .line 18
    .line 19
    aput-object v5, v1, v4

    .line 20
    .line 21
    const-string v5, "zzak"

    .line 22
    .line 23
    aput-object v5, v1, v2

    .line 24
    .line 25
    sget-object v5, Lcom/google/android/gms/cast/framework/CastSession;->n:Lcom/google/android/gms/cast/internal/Logger;

    .line 26
    .line 27
    invoke-virtual {v5, p1, v0, v1}, Lcom/google/android/gms/cast/internal/Logger;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/Session;->a:Lcom/google/android/gms/cast/framework/zzau;

    .line 31
    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    :try_start_1
    invoke-interface {p1, v4}, Lcom/google/android/gms/cast/framework/zzau;->l(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :catch_1
    move-exception p1

    .line 40
    new-array v1, v3, [Ljava/lang/Object;

    .line 41
    .line 42
    const-string v3, "notifySessionEnded"

    .line 43
    .line 44
    aput-object v3, v1, v4

    .line 45
    .line 46
    const-string v3, "zzau"

    .line 47
    .line 48
    aput-object v3, v1, v2

    .line 49
    .line 50
    sget-object v2, Lcom/google/android/gms/cast/framework/Session;->b:Lcom/google/android/gms/cast/internal/Logger;

    .line 51
    .line 52
    invoke-virtual {v2, p1, v0, v1}, Lcom/google/android/gms/cast/internal/Logger;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_1
    return-void
.end method

.method public final b()J
    .locals 4

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->j:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    return-wide v0

    .line 13
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->i()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/CastSession;->j:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->d()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    sub-long/2addr v0, v2

    .line 24
    return-wide v0
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/cast/CastDevice;->F(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/CastSession;->k:Lcom/google/android/gms/cast/CastDevice;

    .line 6
    .line 7
    return-void
.end method

.method public final e(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/cast/CastDevice;->F(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/CastSession;->k:Lcom/google/android/gms/cast/CastDevice;

    .line 6
    .line 7
    return-void
.end method

.method public final f(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/framework/CastSession;->m(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final g(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/framework/CastSession;->m(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final h(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/cast/CastDevice;->F(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_5

    .line 6
    .line 7
    iget-object v0, p1, Lcom/google/android/gms/cast/CastDevice;->h:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/CastSession;->k:Lcom/google/android/gms/cast/CastDevice;

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Lcom/google/android/gms/cast/CastDevice;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_5

    .line 16
    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/CastSession;->k:Lcom/google/android/gms/cast/CastDevice;

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    iget-object v1, v1, Lcom/google/android/gms/cast/CastDevice;->h:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    :cond_0
    move v0, v3

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v0, v2

    .line 40
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/CastSession;->k:Lcom/google/android/gms/cast/CastDevice;

    .line 41
    .line 42
    if-eq v3, v0, :cond_2

    .line 43
    .line 44
    const-string v1, "unchanged"

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    const-string v1, "changed"

    .line 48
    .line 49
    :goto_1
    const/4 v4, 0x2

    .line 50
    new-array v4, v4, [Ljava/lang/Object;

    .line 51
    .line 52
    aput-object p1, v4, v2

    .line 53
    .line 54
    aput-object v1, v4, v3

    .line 55
    .line 56
    const-string p1, "update to device (%s) with name %s"

    .line 57
    .line 58
    sget-object v1, Lcom/google/android/gms/cast/framework/CastSession;->n:Lcom/google/android/gms/cast/internal/Logger;

    .line 59
    .line 60
    invoke-virtual {v1, p1, v4}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    if-eqz v0, :cond_5

    .line 64
    .line 65
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/CastSession;->k:Lcom/google/android/gms/cast/CastDevice;

    .line 66
    .line 67
    if-eqz p1, :cond_5

    .line 68
    .line 69
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->h:Lcom/google/android/gms/cast/framework/media/internal/zzs;

    .line 70
    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    sget-object v1, Lcom/google/android/gms/cast/framework/media/internal/zzs;->v:Lcom/google/android/gms/cast/internal/Logger;

    .line 74
    .line 75
    new-array v3, v3, [Ljava/lang/Object;

    .line 76
    .line 77
    aput-object p1, v3, v2

    .line 78
    .line 79
    iget-object v2, v1, Lcom/google/android/gms/cast/internal/Logger;->a:Ljava/lang/String;

    .line 80
    .line 81
    const-string v4, "update Cast device to %s"

    .line 82
    .line 83
    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    iput-object p1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->o:Lcom/google/android/gms/cast/CastDevice;

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/internal/zzs;->b()V

    .line 93
    .line 94
    .line 95
    :cond_3
    new-instance p1, Ljava/util/HashSet;

    .line 96
    .line 97
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->d:Ljava/util/HashSet;

    .line 98
    .line 99
    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_4

    .line 111
    .line 112
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Lcom/google/android/gms/cast/Cast$Listener;

    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/google/android/gms/cast/Cast$Listener;->e()V

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/CastSession;->m:Lcom/google/android/gms/cast/framework/zzr;

    .line 123
    .line 124
    if-eqz p1, :cond_5

    .line 125
    .line 126
    invoke-interface {p1}, Lcom/google/android/gms/cast/framework/zzr;->zzd()V

    .line 127
    .line 128
    .line 129
    :cond_5
    return-void
.end method

.method public final j()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;
    .locals 1

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->j:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 7
    .line 8
    return-object v0
.end method

.method public final k(Lcom/google/android/gms/tasks/Task;Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/cast/framework/CastSession;->n:Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/CastSession;->e:Lcom/google/android/gms/cast/framework/zzak;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->p()Z

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    if-eqz v4, :cond_2

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->m()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/CastSession;->l:Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;

    .line 23
    .line 24
    invoke-interface {p1}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    if-eqz v4, :cond_1

    .line 29
    .line 30
    invoke-interface {p1}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v4}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    const-string v4, "%s() -> success result"

    .line 41
    .line 42
    new-array v5, v3, [Ljava/lang/Object;

    .line 43
    .line 44
    aput-object p2, v5, v2

    .line 45
    .line 46
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    new-instance p2, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 50
    .line 51
    new-instance v4, Lcom/google/android/gms/cast/internal/zzar;

    .line 52
    .line 53
    invoke-direct {v4}, Lcom/google/android/gms/cast/internal/zzar;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-direct {p2, v4}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;-><init>(Lcom/google/android/gms/cast/internal/zzar;)V

    .line 57
    .line 58
    .line 59
    iput-object p2, p0, Lcom/google/android/gms/cast/framework/CastSession;->j:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 60
    .line 61
    iget-object v4, p0, Lcom/google/android/gms/cast/framework/CastSession;->i:Lcom/google/android/gms/cast/zzbm;

    .line 62
    .line 63
    invoke-virtual {p2, v4}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->B(Lcom/google/android/gms/cast/zzbm;)V

    .line 64
    .line 65
    .line 66
    iget-object p2, p0, Lcom/google/android/gms/cast/framework/CastSession;->j:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 67
    .line 68
    new-instance v4, Lcom/google/android/gms/cast/framework/zzq;

    .line 69
    .line 70
    invoke-direct {v4, p0}, Lcom/google/android/gms/cast/framework/zzq;-><init>(Lcom/google/android/gms/cast/framework/CastSession;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, v4}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->u(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;)V

    .line 74
    .line 75
    .line 76
    iget-object p2, p0, Lcom/google/android/gms/cast/framework/CastSession;->j:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 77
    .line 78
    invoke-virtual {p2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->C()V

    .line 79
    .line 80
    .line 81
    iget-object p2, p0, Lcom/google/android/gms/cast/framework/CastSession;->h:Lcom/google/android/gms/cast/framework/media/internal/zzs;

    .line 82
    .line 83
    iget-object v4, p0, Lcom/google/android/gms/cast/framework/CastSession;->j:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 84
    .line 85
    const-string v5, "Must be called from the main thread."

    .line 86
    .line 87
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object v5, p0, Lcom/google/android/gms/cast/framework/CastSession;->k:Lcom/google/android/gms/cast/CastDevice;

    .line 91
    .line 92
    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/cast/framework/media/internal/zzs;->a(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/cast/CastDevice;)V

    .line 93
    .line 94
    .line 95
    invoke-interface {p1}, Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;->m()Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    check-cast p2, Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 104
    .line 105
    invoke-interface {p1}, Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;->k()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-interface {p1}, Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;->B()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    check-cast v5, Ljava/lang/String;

    .line 118
    .line 119
    invoke-interface {p1}, Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;->a()Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    invoke-interface {v1, p2, v4, v5, p1}, Lcom/google/android/gms/cast/framework/zzak;->s0(Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :catch_0
    move-exception p1

    .line 128
    goto :goto_0

    .line 129
    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    if-eqz v4, :cond_3

    .line 134
    .line 135
    const-string v4, "%s() -> failure result"

    .line 136
    .line 137
    new-array v5, v3, [Ljava/lang/Object;

    .line 138
    .line 139
    aput-object p2, v5, v2

    .line 140
    .line 141
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    invoke-interface {p1}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    invoke-interface {v1, p1}, Lcom/google/android/gms/cast/framework/zzak;->d(I)V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->l()Ljava/lang/Exception;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    instance-of p2, p1, Lcom/google/android/gms/common/api/ApiException;

    .line 161
    .line 162
    if-eqz p2, :cond_3

    .line 163
    .line 164
    check-cast p1, Lcom/google/android/gms/common/api/ApiException;

    .line 165
    .line 166
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    invoke-interface {v1, p1}, Lcom/google/android/gms/cast/framework/zzak;->d(I)V

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :cond_3
    const/16 p1, 0x9ac

    .line 175
    .line 176
    invoke-interface {v1, p1}, Lcom/google/android/gms/cast/framework/zzak;->d(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .line 178
    .line 179
    return-void

    .line 180
    :goto_0
    const/4 p2, 0x2

    .line 181
    new-array p2, p2, [Ljava/lang/Object;

    .line 182
    .line 183
    const-string v1, "methods"

    .line 184
    .line 185
    aput-object v1, p2, v2

    .line 186
    .line 187
    const-string v1, "zzak"

    .line 188
    .line 189
    aput-object v1, p2, v3

    .line 190
    .line 191
    const-string v1, "Unable to call %s on %s."

    .line 192
    .line 193
    invoke-virtual {v0, p1, v1, p2}, Lcom/google/android/gms/cast/internal/Logger;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    return-void
.end method

.method public final l(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->h:Lcom/google/android/gms/cast/framework/media/internal/zzs;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->q:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->q:Z

    .line 11
    .line 12
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->n:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 13
    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    iget-object v4, v0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->m:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;

    .line 17
    .line 18
    const-string v5, "Must be called from the main thread."

    .line 19
    .line 20
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    iget-object v3, v3, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->a:Landroid/content/Context;

    .line 31
    .line 32
    const-string v4, "audio"

    .line 33
    .line 34
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Landroid/media/AudioManager;

    .line 39
    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 43
    .line 44
    .line 45
    :cond_2
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->c:Lcom/google/android/gms/internal/cast/zzbx;

    .line 46
    .line 47
    iget-object v3, v3, Lcom/google/android/gms/internal/cast/zzbx;->c:Landroidx/mediarouter/media/MediaRouter;

    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-static {v2}, Landroidx/mediarouter/media/MediaRouter;->r(Landroid/support/v4/media/session/MediaSessionCompat;)V

    .line 53
    .line 54
    .line 55
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->h:Lcom/google/android/gms/cast/framework/media/internal/zzb;

    .line 56
    .line 57
    if-eqz v3, :cond_3

    .line 58
    .line 59
    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/internal/zzb;->b()V

    .line 60
    .line 61
    .line 62
    iput-object v2, v3, Lcom/google/android/gms/cast/framework/media/internal/zzb;->e:Lcom/google/android/gms/cast/framework/media/internal/zza;

    .line 63
    .line 64
    :cond_3
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->i:Lcom/google/android/gms/cast/framework/media/internal/zzb;

    .line 65
    .line 66
    if-eqz v3, :cond_4

    .line 67
    .line 68
    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/internal/zzb;->b()V

    .line 69
    .line 70
    .line 71
    iput-object v2, v3, Lcom/google/android/gms/cast/framework/media/internal/zzb;->e:Lcom/google/android/gms/cast/framework/media/internal/zza;

    .line 72
    .line 73
    :cond_4
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->p:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 74
    .line 75
    if-eqz v3, :cond_5

    .line 76
    .line 77
    invoke-virtual {v3, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    .line 78
    .line 79
    .line 80
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->p:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 81
    .line 82
    new-instance v4, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 83
    .line 84
    invoke-direct {v4}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-virtual {v3, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/framework/media/internal/zzs;->d(ILcom/google/android/gms/cast/MediaInfo;)V

    .line 95
    .line 96
    .line 97
    :cond_5
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->p:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 98
    .line 99
    if-eqz v3, :cond_6

    .line 100
    .line 101
    invoke-virtual {v3, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    .line 102
    .line 103
    .line 104
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->p:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 105
    .line 106
    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->release()V

    .line 107
    .line 108
    .line 109
    iput-object v2, v0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->p:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 110
    .line 111
    :cond_6
    iput-object v2, v0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->n:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 112
    .line 113
    iput-object v2, v0, Lcom/google/android/gms/cast/framework/media/internal/zzs;->o:Lcom/google/android/gms/cast/CastDevice;

    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/internal/zzs;->h()V

    .line 116
    .line 117
    .line 118
    if-nez p1, :cond_7

    .line 119
    .line 120
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/internal/zzs;->j()V

    .line 121
    .line 122
    .line 123
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/CastSession;->i:Lcom/google/android/gms/cast/zzbm;

    .line 124
    .line 125
    if-eqz p1, :cond_8

    .line 126
    .line 127
    invoke-virtual {p1}, Lcom/google/android/gms/cast/zzbm;->n()Lcom/google/android/gms/tasks/Task;

    .line 128
    .line 129
    .line 130
    iput-object v2, p0, Lcom/google/android/gms/cast/framework/CastSession;->i:Lcom/google/android/gms/cast/zzbm;

    .line 131
    .line 132
    :cond_8
    iput-object v2, p0, Lcom/google/android/gms/cast/framework/CastSession;->k:Lcom/google/android/gms/cast/CastDevice;

    .line 133
    .line 134
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/CastSession;->j:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 135
    .line 136
    if-eqz p1, :cond_9

    .line 137
    .line 138
    invoke-virtual {p1, v2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->B(Lcom/google/android/gms/cast/zzbm;)V

    .line 139
    .line 140
    .line 141
    iput-object v2, p0, Lcom/google/android/gms/cast/framework/CastSession;->j:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 142
    .line 143
    :cond_9
    return-void
.end method

.method public final m(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/cast/CastDevice;->F(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/CastSession;->k:Lcom/google/android/gms/cast/CastDevice;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez p1, :cond_4

    .line 10
    .line 11
    const-string p1, "Must be called from the main thread."

    .line 12
    .line 13
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x2

    .line 17
    const-string v2, "Unable to call %s on %s."

    .line 18
    .line 19
    const-string v3, "zzau"

    .line 20
    .line 21
    sget-object v4, Lcom/google/android/gms/cast/framework/Session;->b:Lcom/google/android/gms/cast/internal/Logger;

    .line 22
    .line 23
    iget-object v5, p0, Lcom/google/android/gms/cast/framework/Session;->a:Lcom/google/android/gms/cast/framework/zzau;

    .line 24
    .line 25
    if-eqz v5, :cond_0

    .line 26
    .line 27
    :try_start_0
    invoke-interface {v5}, Lcom/google/android/gms/cast/framework/zzau;->zzm()Z

    .line 28
    .line 29
    .line 30
    move-result v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception v6

    .line 33
    new-array v7, p1, [Ljava/lang/Object;

    .line 34
    .line 35
    const-string v8, "isResuming"

    .line 36
    .line 37
    aput-object v8, v7, v1

    .line 38
    .line 39
    aput-object v3, v7, v0

    .line 40
    .line 41
    invoke-virtual {v4, v6, v2, v7}, Lcom/google/android/gms/cast/internal/Logger;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    move v6, v1

    .line 45
    :goto_0
    if-eqz v6, :cond_2

    .line 46
    .line 47
    if-nez v5, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    :try_start_1
    invoke-interface {v5}, Lcom/google/android/gms/cast/framework/zzau;->zzt()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :catch_1
    move-exception v5

    .line 55
    new-array p1, p1, [Ljava/lang/Object;

    .line 56
    .line 57
    const-string v6, "notifyFailedToResumeSession"

    .line 58
    .line 59
    aput-object v6, p1, v1

    .line 60
    .line 61
    aput-object v3, p1, v0

    .line 62
    .line 63
    invoke-virtual {v4, v5, v2, p1}, Lcom/google/android/gms/cast/internal/Logger;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    if-nez v5, :cond_3

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    :try_start_2
    invoke-interface {v5}, Lcom/google/android/gms/cast/framework/zzau;->zzq()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :catch_2
    move-exception v5

    .line 75
    new-array p1, p1, [Ljava/lang/Object;

    .line 76
    .line 77
    const-string v6, "notifyFailedToStartSession"

    .line 78
    .line 79
    aput-object v6, p1, v1

    .line 80
    .line 81
    aput-object v3, p1, v0

    .line 82
    .line 83
    invoke-virtual {v4, v5, v2, p1}, Lcom/google/android/gms/cast/internal/Logger;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :goto_1
    return-void

    .line 87
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/CastSession;->i:Lcom/google/android/gms/cast/zzbm;

    .line 88
    .line 89
    const/4 v2, 0x0

    .line 90
    if-eqz p1, :cond_5

    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/google/android/gms/cast/zzbm;->n()Lcom/google/android/gms/tasks/Task;

    .line 93
    .line 94
    .line 95
    iput-object v2, p0, Lcom/google/android/gms/cast/framework/CastSession;->i:Lcom/google/android/gms/cast/zzbm;

    .line 96
    .line 97
    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/CastSession;->k:Lcom/google/android/gms/cast/CastDevice;

    .line 98
    .line 99
    new-array v3, v0, [Ljava/lang/Object;

    .line 100
    .line 101
    aput-object p1, v3, v1

    .line 102
    .line 103
    const-string p1, "Acquiring a connection to Google Play Services for %s"

    .line 104
    .line 105
    sget-object v4, Lcom/google/android/gms/cast/framework/CastSession;->n:Lcom/google/android/gms/cast/internal/Logger;

    .line 106
    .line 107
    invoke-virtual {v4, p1, v3}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/CastSession;->k:Lcom/google/android/gms/cast/CastDevice;

    .line 111
    .line 112
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    check-cast p1, Lcom/google/android/gms/cast/CastDevice;

    .line 117
    .line 118
    new-instance v3, Landroid/os/Bundle;

    .line 119
    .line 120
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 121
    .line 122
    .line 123
    iget-object v4, p0, Lcom/google/android/gms/cast/framework/CastSession;->f:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 124
    .line 125
    if-nez v4, :cond_6

    .line 126
    .line 127
    move-object v4, v2

    .line 128
    goto :goto_2

    .line 129
    :cond_6
    iget-object v4, v4, Lcom/google/android/gms/cast/framework/CastOptions;->j:Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    .line 130
    .line 131
    :goto_2
    if-nez v4, :cond_7

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_7
    iget-object v2, v4, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->h:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 135
    .line 136
    :goto_3
    if-eqz v4, :cond_8

    .line 137
    .line 138
    iget-boolean v4, v4, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->i:Z

    .line 139
    .line 140
    if-eqz v4, :cond_8

    .line 141
    .line 142
    move v4, v0

    .line 143
    goto :goto_4

    .line 144
    :cond_8
    move v4, v1

    .line 145
    :goto_4
    if-eqz v2, :cond_9

    .line 146
    .line 147
    goto :goto_5

    .line 148
    :cond_9
    move v0, v1

    .line 149
    :goto_5
    const-string v1, "com.google.android.gms.cast.EXTRA_CAST_FRAMEWORK_NOTIFICATION_ENABLED"

    .line 150
    .line 151
    invoke-virtual {v3, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 152
    .line 153
    .line 154
    const-string v0, "com.google.android.gms.cast.EXTRA_CAST_REMOTE_CONTROL_NOTIFICATION_ENABLED"

    .line 155
    .line 156
    invoke-virtual {v3, v0, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 157
    .line 158
    .line 159
    const-string v0, "com.google.android.gms.cast.EXTRA_CAST_ALWAYS_FOLLOW_SESSION_ENABLED"

    .line 160
    .line 161
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/CastSession;->g:Lcom/google/android/gms/internal/cast/zzbx;

    .line 162
    .line 163
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/zzbx;->zzo()Z

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    invoke-virtual {v3, v0, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 168
    .line 169
    .line 170
    const-string v0, "com.google.android.gms.cast.EXTRA_USE_ROUTE_CONNECTION"

    .line 171
    .line 172
    iget-boolean v1, v1, Lcom/google/android/gms/internal/cast/zzbx;->k:Z

    .line 173
    .line 174
    invoke-virtual {v3, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 175
    .line 176
    .line 177
    new-instance v0, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;

    .line 178
    .line 179
    new-instance v1, Lcom/google/android/gms/cast/framework/zzv;

    .line 180
    .line 181
    invoke-direct {v1, p0}, Lcom/google/android/gms/cast/framework/zzv;-><init>(Lcom/google/android/gms/cast/framework/CastSession;)V

    .line 182
    .line 183
    .line 184
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;-><init>(Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/Cast$Listener;)V

    .line 185
    .line 186
    .line 187
    iput-object v3, v0, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->c:Landroid/os/Bundle;

    .line 188
    .line 189
    new-instance p1, Lcom/google/android/gms/cast/Cast$CastOptions;

    .line 190
    .line 191
    invoke-direct {p1, v0}, Lcom/google/android/gms/cast/Cast$CastOptions;-><init>(Lcom/google/android/gms/cast/Cast$CastOptions$Builder;)V

    .line 192
    .line 193
    .line 194
    sget v0, Lcom/google/android/gms/cast/Cast;->a:I

    .line 195
    .line 196
    new-instance v0, Lcom/google/android/gms/cast/zzbm;

    .line 197
    .line 198
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/CastSession;->c:Landroid/content/Context;

    .line 199
    .line 200
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/cast/zzbm;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/Cast$CastOptions;)V

    .line 201
    .line 202
    .line 203
    new-instance p1, Lcom/google/android/gms/cast/framework/zzy;

    .line 204
    .line 205
    invoke-direct {p1, p0}, Lcom/google/android/gms/cast/framework/zzy;-><init>(Lcom/google/android/gms/cast/framework/CastSession;)V

    .line 206
    .line 207
    .line 208
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    iget-object v1, v0, Lcom/google/android/gms/cast/zzbm;->u:Ljava/util/List;

    .line 212
    .line 213
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/CastSession;->i:Lcom/google/android/gms/cast/zzbm;

    .line 217
    .line 218
    invoke-virtual {v0}, Lcom/google/android/gms/cast/zzbm;->m()Lcom/google/android/gms/tasks/Task;

    .line 219
    .line 220
    .line 221
    return-void
.end method
