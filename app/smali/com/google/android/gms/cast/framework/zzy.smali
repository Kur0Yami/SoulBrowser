.class final Lcom/google/android/gms/cast/framework/zzy;
.super Lcom/google/android/gms/cast/zzp;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/cast/framework/CastSession;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/CastSession;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/zzy;->a:Lcom/google/android/gms/cast/framework/CastSession;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzy;->a:Lcom/google/android/gms/cast/framework/CastSession;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/CastSession;->e:Lcom/google/android/gms/cast/framework/zzak;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_3

    .line 8
    :cond_0
    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/CastSession;->j:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->C()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/CastSession;->e:Lcom/google/android/gms/cast/framework/zzak;

    .line 19
    .line 20
    invoke-interface {v1}, Lcom/google/android/gms/cast/framework/zzak;->z3()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_2

    .line 24
    :goto_1
    const/4 v2, 0x2

    .line 25
    new-array v2, v2, [Ljava/lang/Object;

    .line 26
    .line 27
    const-string v3, "onConnected"

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    aput-object v3, v2, v4

    .line 31
    .line 32
    const-string v3, "zzak"

    .line 33
    .line 34
    const/4 v4, 0x1

    .line 35
    aput-object v3, v2, v4

    .line 36
    .line 37
    const-string v3, "Unable to call %s on %s."

    .line 38
    .line 39
    sget-object v4, Lcom/google/android/gms/cast/framework/CastSession;->n:Lcom/google/android/gms/cast/internal/Logger;

    .line 40
    .line 41
    invoke-virtual {v4, v1, v3, v2}, Lcom/google/android/gms/cast/internal/Logger;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :goto_2
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/CastSession;->m:Lcom/google/android/gms/cast/framework/zzr;

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/zzr;->zza()V

    .line 49
    .line 50
    .line 51
    :cond_2
    :goto_3
    return-void
.end method

.method public final b(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzy;->a:Lcom/google/android/gms/cast/framework/CastSession;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/CastSession;->e:Lcom/google/android/gms/cast/framework/zzak;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    .line 9
    .line 10
    invoke-direct {v1, p1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Lcom/google/android/gms/cast/framework/zzak;->n1(Lcom/google/android/gms/common/ConnectionResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catch_0
    move-exception p1

    .line 18
    const/4 v0, 0x2

    .line 19
    new-array v0, v0, [Ljava/lang/Object;

    .line 20
    .line 21
    const-string v1, "onConnectionFailed"

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    aput-object v1, v0, v2

    .line 25
    .line 26
    const-string v1, "zzak"

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    aput-object v1, v0, v2

    .line 30
    .line 31
    const-string v1, "Unable to call %s on %s."

    .line 32
    .line 33
    sget-object v2, Lcom/google/android/gms/cast/framework/CastSession;->n:Lcom/google/android/gms/cast/internal/Logger;

    .line 34
    .line 35
    invoke-virtual {v2, p1, v1, v0}, Lcom/google/android/gms/cast/internal/Logger;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final c(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzy;->a:Lcom/google/android/gms/cast/framework/CastSession;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/CastSession;->e:Lcom/google/android/gms/cast/framework/zzak;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/google/android/gms/cast/framework/zzak;->zzf(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catch_0
    move-exception p1

    .line 13
    const/4 v0, 0x2

    .line 14
    new-array v0, v0, [Ljava/lang/Object;

    .line 15
    .line 16
    const-string v1, "onConnectionSuspended"

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    aput-object v1, v0, v2

    .line 20
    .line 21
    const-string v1, "zzak"

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    aput-object v1, v0, v2

    .line 25
    .line 26
    const-string v1, "Unable to call %s on %s."

    .line 27
    .line 28
    sget-object v2, Lcom/google/android/gms/cast/framework/CastSession;->n:Lcom/google/android/gms/cast/internal/Logger;

    .line 29
    .line 30
    invoke-virtual {v2, p1, v1, v0}, Lcom/google/android/gms/cast/internal/Logger;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final d(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzy;->a:Lcom/google/android/gms/cast/framework/CastSession;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/CastSession;->e:Lcom/google/android/gms/cast/framework/zzak;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    .line 9
    .line 10
    invoke-direct {v1, p1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Lcom/google/android/gms/cast/framework/zzak;->n1(Lcom/google/android/gms/common/ConnectionResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catch_0
    move-exception p1

    .line 18
    const/4 v0, 0x2

    .line 19
    new-array v0, v0, [Ljava/lang/Object;

    .line 20
    .line 21
    const-string v1, "onDisconnected"

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    aput-object v1, v0, v2

    .line 25
    .line 26
    const-string v1, "zzak"

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    aput-object v1, v0, v2

    .line 30
    .line 31
    const-string v1, "Unable to call %s on %s."

    .line 32
    .line 33
    sget-object v2, Lcom/google/android/gms/cast/framework/CastSession;->n:Lcom/google/android/gms/cast/internal/Logger;

    .line 34
    .line 35
    invoke-virtual {v2, p1, v1, v0}, Lcom/google/android/gms/cast/internal/Logger;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
