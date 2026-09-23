.class public final Lcom/google/android/gms/cast/internal/zzx;
.super Lcom/google/android/gms/common/internal/GmsClient;
.source "SourceFile"


# static fields
.field public static final B:Lcom/google/android/gms/cast/internal/Logger;

.field public static final C:Ljava/lang/Object;

.field public static final D:Ljava/lang/Object;


# instance fields
.field public A:Lcom/google/android/gms/cast/internal/zzae;

.field public c:Lcom/google/android/gms/cast/ApplicationMetadata;

.field public final f:Lcom/google/android/gms/cast/CastDevice;

.field public final g:Lcom/google/android/gms/cast/Cast$Listener;

.field public final h:Ljava/util/HashMap;

.field public final i:J

.field public final j:Landroid/os/Bundle;

.field public k:Lcom/google/android/gms/cast/internal/zzw;

.field public l:Ljava/lang/String;

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:D

.field public r:Lcom/google/android/gms/cast/zzao;

.field public s:I

.field public t:I

.field public final u:Ljava/util/concurrent/atomic/AtomicLong;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Landroid/os/Bundle;

.field public final y:Ljava/util/HashMap;

.field public z:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const-string v1, "CastClientImpl"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/gms/cast/internal/zzx;->B:Lcom/google/android/gms/cast/internal/Logger;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/google/android/gms/cast/internal/zzx;->C:Ljava/lang/Object;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/google/android/gms/cast/internal/zzx;->D:Ljava/lang/Object;

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/cast/CastDevice;JLcom/google/android/gms/cast/Cast$Listener;Landroid/os/Bundle;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 7

    .line 1
    const/16 v3, 0xa

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v4, p3

    .line 7
    move-object/from16 v5, p9

    .line 8
    .line 9
    move-object/from16 v6, p10

    .line 10
    .line 11
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/GmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;)V

    .line 12
    .line 13
    .line 14
    iput-object p4, p0, Lcom/google/android/gms/cast/internal/zzx;->f:Lcom/google/android/gms/cast/CastDevice;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/google/android/gms/cast/internal/zzx;->g:Lcom/google/android/gms/cast/Cast$Listener;

    .line 17
    .line 18
    iput-wide p5, p0, Lcom/google/android/gms/cast/internal/zzx;->i:J

    .line 19
    .line 20
    iput-object p8, p0, Lcom/google/android/gms/cast/internal/zzx;->j:Landroid/os/Bundle;

    .line 21
    .line 22
    new-instance p1, Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzx;->h:Ljava/util/HashMap;

    .line 28
    .line 29
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 30
    .line 31
    const-wide/16 p2, 0x0

    .line 32
    .line 33
    invoke-direct {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzx;->u:Ljava/util/concurrent/atomic/AtomicLong;

    .line 37
    .line 38
    new-instance p1, Ljava/util/HashMap;

    .line 39
    .line 40
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzx;->y:Ljava/util/HashMap;

    .line 44
    .line 45
    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lcom/google/android/gms/cast/internal/zzx;->p:Z

    .line 47
    .line 48
    const/4 p2, -0x1

    .line 49
    iput p2, p0, Lcom/google/android/gms/cast/internal/zzx;->s:I

    .line 50
    .line 51
    iput p2, p0, Lcom/google/android/gms/cast/internal/zzx;->t:I

    .line 52
    .line 53
    const/4 p2, 0x0

    .line 54
    iput-object p2, p0, Lcom/google/android/gms/cast/internal/zzx;->c:Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 55
    .line 56
    iput-object p2, p0, Lcom/google/android/gms/cast/internal/zzx;->l:Ljava/lang/String;

    .line 57
    .line 58
    const-wide/16 p3, 0x0

    .line 59
    .line 60
    iput-wide p3, p0, Lcom/google/android/gms/cast/internal/zzx;->q:D

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzx;->e()V

    .line 63
    .line 64
    .line 65
    iput-boolean p1, p0, Lcom/google/android/gms/cast/internal/zzx;->m:Z

    .line 66
    .line 67
    iput-object p2, p0, Lcom/google/android/gms/cast/internal/zzx;->r:Lcom/google/android/gms/cast/zzao;

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzx;->e()V

    .line 70
    .line 71
    .line 72
    return-void
.end method


# virtual methods
.method public final synthetic createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    .line 6
    .line 7
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v1, v0, Lcom/google/android/gms/cast/internal/zzah;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    check-cast v0, Lcom/google/android/gms/cast/internal/zzah;

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_1
    new-instance v0, Lcom/google/android/gms/cast/internal/zzah;

    .line 19
    .line 20
    invoke-direct {v0, p1}, Lcom/google/android/gms/cast/internal/zzah;-><init>(Landroid/os/IBinder;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/cast/internal/zzx;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzx;->k:Lcom/google/android/gms/cast/internal/zzw;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, v0, Lcom/google/android/gms/cast/internal/zzw;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x1

    .line 19
    return v0

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 21
    return v0
.end method

.method public final disconnect()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzx;->k:Lcom/google/android/gms/cast/internal/zzw;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnected()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x2

    .line 12
    new-array v2, v2, [Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object v0, v2, v3

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    aput-object v1, v2, v0

    .line 19
    .line 20
    const-string v1, "disconnect(); ServiceListener=%s, isConnected=%b"

    .line 21
    .line 22
    sget-object v4, Lcom/google/android/gms/cast/internal/zzx;->B:Lcom/google/android/gms/cast/internal/Logger;

    .line 23
    .line 24
    invoke-virtual {v4, v1, v2}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzx;->k:Lcom/google/android/gms/cast/internal/zzw;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    iput-object v2, p0, Lcom/google/android/gms/cast/internal/zzx;->k:Lcom/google/android/gms/cast/internal/zzw;

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    iget-object v1, v1, Lcom/google/android/gms/cast/internal/zzw;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lcom/google/android/gms/cast/internal/zzx;

    .line 41
    .line 42
    if-nez v1, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iput-boolean v3, v1, Lcom/google/android/gms/cast/internal/zzx;->p:Z

    .line 46
    .line 47
    const/4 v5, -0x1

    .line 48
    iput v5, v1, Lcom/google/android/gms/cast/internal/zzx;->s:I

    .line 49
    .line 50
    iput v5, v1, Lcom/google/android/gms/cast/internal/zzx;->t:I

    .line 51
    .line 52
    iput-object v2, v1, Lcom/google/android/gms/cast/internal/zzx;->c:Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 53
    .line 54
    iput-object v2, v1, Lcom/google/android/gms/cast/internal/zzx;->l:Ljava/lang/String;

    .line 55
    .line 56
    const-wide/16 v5, 0x0

    .line 57
    .line 58
    iput-wide v5, v1, Lcom/google/android/gms/cast/internal/zzx;->q:D

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/google/android/gms/cast/internal/zzx;->e()V

    .line 61
    .line 62
    .line 63
    iput-boolean v3, v1, Lcom/google/android/gms/cast/internal/zzx;->m:Z

    .line 64
    .line 65
    iput-object v2, v1, Lcom/google/android/gms/cast/internal/zzx;->r:Lcom/google/android/gms/cast/zzao;

    .line 66
    .line 67
    move-object v2, v1

    .line 68
    :goto_0
    if-nez v2, :cond_1

    .line 69
    .line 70
    goto :goto_4

    .line 71
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzx;->i()V

    .line 72
    .line 73
    .line 74
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Lcom/google/android/gms/cast/internal/zzah;

    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getContext()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-static {v2}, Lcom/google/android/gms/internal/cast/zzff;->a(Landroid/content/Context;)Lcom/google/android/gms/common/api/ApiMetadata;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/zza;->I1()Landroid/os/Parcel;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-static {v5, v2}, Lcom/google/android/gms/internal/cast/zzc;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v0, v5}, Lcom/google/android/gms/internal/cast/zza;->v2(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :catchall_0
    move-exception v0

    .line 100
    goto :goto_3

    .line 101
    :catch_0
    move-exception v0

    .line 102
    goto :goto_1

    .line 103
    :catch_1
    move-exception v0

    .line 104
    :goto_1
    :try_start_1
    const-string v1, "Error while disconnecting the controller interface"

    .line 105
    .line 106
    new-array v2, v3, [Ljava/lang/Object;

    .line 107
    .line 108
    invoke-virtual {v4, v0, v1, v2}, Lcom/google/android/gms/cast/internal/Logger;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    .line 110
    .line 111
    :goto_2
    invoke-super {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->disconnect()V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :goto_3
    invoke-super {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->disconnect()V

    .line 116
    .line 117
    .line 118
    throw v0

    .line 119
    :cond_2
    :goto_4
    new-array v0, v3, [Ljava/lang/Object;

    .line 120
    .line 121
    const-string v1, "already disposed, so short-circuiting"

    .line 122
    .line 123
    invoke-virtual {v4, v1, v0}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    const-string v0, "device should not be null"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzx;->f:Lcom/google/android/gms/cast/CastDevice;

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iget-object v0, v1, Lcom/google/android/gms/cast/CastDevice;->m:Lcom/google/android/gms/cast/internal/zzp;

    .line 9
    .line 10
    const/16 v2, 0x800

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/internal/zzp;->a(I)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v2, 0x4

    .line 20
    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/internal/zzp;->a(I)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/internal/zzp;->a(I)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    iget-object v0, v1, Lcom/google/android/gms/cast/CastDevice;->i:Ljava/lang/String;

    .line 34
    .line 35
    const-string v1, "Chromecast Audio"

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_0
    return-void
.end method

.method public final f(I)V
    .locals 8

    .line 1
    sget-object v1, Lcom/google/android/gms/cast/internal/zzx;->C:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzx;->z:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v2, Lcom/google/android/gms/cast/internal/zzr;

    .line 9
    .line 10
    new-instance v3, Lcom/google/android/gms/common/api/Status;

    .line 11
    .line 12
    invoke-direct {v3, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 13
    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    const/4 v7, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/cast/internal/zzr;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v2}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;->setResult(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzx;->z:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    move-object p1, v0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    monitor-exit v1

    .line 33
    return-void

    .line 34
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p1
.end method

.method public final g(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    .locals 8

    .line 1
    sget-object v1, Lcom/google/android/gms/cast/internal/zzx;->C:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzx;->z:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v2, Lcom/google/android/gms/cast/internal/zzr;

    .line 9
    .line 10
    new-instance v3, Lcom/google/android/gms/common/api/Status;

    .line 11
    .line 12
    const/16 v4, 0x9ad

    .line 13
    .line 14
    invoke-direct {v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 15
    .line 16
    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v7, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x0

    .line 21
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/cast/internal/zzr;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v2}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;->setResult(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    move-object p1, v0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzx;->z:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    .line 32
    .line 33
    monitor-exit v1

    .line 34
    return-void

    .line 35
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p1
.end method

.method public final getConnectionHint()Landroid/os/Bundle;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzx;->x:Landroid/os/Bundle;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/google/android/gms/cast/internal/zzx;->x:Landroid/os/Bundle;

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getConnectionHint()Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public final getGetServiceRequestExtraArgs()Landroid/os/Bundle;
    .locals 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzx;->v:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/google/android/gms/cast/internal/zzx;->w:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v3, 0x2

    .line 11
    new-array v3, v3, [Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    aput-object v1, v3, v4

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    aput-object v2, v3, v1

    .line 18
    .line 19
    const-string v1, "getRemoteService(): mLastApplicationId=%s, mLastSessionId=%s"

    .line 20
    .line 21
    sget-object v2, Lcom/google/android/gms/cast/internal/zzx;->B:Lcom/google/android/gms/cast/internal/Logger;

    .line 22
    .line 23
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzx;->f:Lcom/google/android/gms/cast/CastDevice;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    const-string v2, "com.google.android.gms.cast.EXTRA_CAST_DEVICE"

    .line 32
    .line 33
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 34
    .line 35
    .line 36
    const-string v1, "com.google.android.gms.cast.EXTRA_CAST_FLAGS"

    .line 37
    .line 38
    iget-wide v2, p0, Lcom/google/android/gms/cast/internal/zzx;->i:J

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzx;->j:Landroid/os/Bundle;

    .line 44
    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    new-instance v1, Lcom/google/android/gms/cast/internal/zzw;

    .line 51
    .line 52
    invoke-direct {v1, p0}, Lcom/google/android/gms/cast/internal/zzw;-><init>(Lcom/google/android/gms/cast/internal/zzx;)V

    .line 53
    .line 54
    .line 55
    iput-object v1, p0, Lcom/google/android/gms/cast/internal/zzx;->k:Lcom/google/android/gms/cast/internal/zzw;

    .line 56
    .line 57
    new-instance v1, Lcom/google/android/gms/common/internal/BinderWrapper;

    .line 58
    .line 59
    iget-object v2, p0, Lcom/google/android/gms/cast/internal/zzx;->k:Lcom/google/android/gms/cast/internal/zzw;

    .line 60
    .line 61
    invoke-direct {v1, v2}, Lcom/google/android/gms/common/internal/BinderWrapper;-><init>(Landroid/os/IBinder;)V

    .line 62
    .line 63
    .line 64
    const-string v2, "listener"

    .line 65
    .line 66
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzx;->v:Ljava/lang/String;

    .line 70
    .line 71
    if-eqz v1, :cond_1

    .line 72
    .line 73
    const-string v2, "last_application_id"

    .line 74
    .line 75
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzx;->w:Ljava/lang/String;

    .line 79
    .line 80
    if-eqz v1, :cond_1

    .line 81
    .line 82
    const-string v2, "last_session_id"

    .line 83
    .line 84
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_1
    return-object v0
.end method

.method public final getMinApkVersion()I
    .locals 1

    const v0, 0xc35000

    return v0
.end method

.method public final getServiceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    return-object v0
.end method

.method public final getStartServiceAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.cast.service.BIND_CAST_DEVICE_CONTROLLER_SERVICE"

    return-object v0
.end method

.method public final h(Lcom/google/android/gms/cast/internal/zzae;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/cast/internal/zzx;->D:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzx;->A:Lcom/google/android/gms/cast/internal/zzae;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/google/android/gms/common/api/Status;

    .line 9
    .line 10
    const/16 v2, 0x7d1

    .line 11
    .line 12
    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;->setResult(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzx;->A:Lcom/google/android/gms/cast/internal/zzae;

    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p1
.end method

.method public final i()V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/cast/internal/zzx;->B:Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const-string v1, "removing all MessageReceivedCallbacks"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzx;->h:Ljava/util/HashMap;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw v1
.end method

.method public final j(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzx;->y:Ljava/util/HashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    check-cast p2, Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    .line 13
    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    new-instance p3, Lcom/google/android/gms/common/api/Status;

    .line 18
    .line 19
    invoke-direct {p3, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p2, p3}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;->setResult(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw p1
.end method

.method public final k(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/cast/internal/zzx;->D:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzx;->A:Lcom/google/android/gms/cast/internal/zzae;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    new-instance v2, Lcom/google/android/gms/common/api/Status;

    .line 9
    .line 10
    invoke-direct {v2, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, v2}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;->setResult(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzx;->A:Lcom/google/android/gms/cast/internal/zzae;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p1
.end method

.method public final l(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzx;->y:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_2

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/high16 v2, 0x80000

    .line 14
    .line 15
    if-gt v1, v2, :cond_1

    .line 16
    .line 17
    invoke-static {p1}, Lcom/google/android/gms/cast/internal/CastUtils;->b(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzx;->u:Ljava/util/concurrent/atomic/AtomicLong;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v0, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    check-cast p3, Lcom/google/android/gms/cast/internal/zzah;

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzx;->d()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-static {v3}, Lcom/google/android/gms/internal/cast/zzff;->a(Landroid/content/Context;)Lcom/google/android/gms/common/api/ApiMetadata;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {p3}, Lcom/google/android/gms/internal/cast/zza;->I1()Landroid/os/Parcel;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v4, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 64
    .line 65
    .line 66
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/cast/zzc;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 67
    .line 68
    .line 69
    const/16 p1, 0x9

    .line 70
    .line 71
    invoke-virtual {p3, p1, v4}, Lcom/google/android/gms/internal/cast/zza;->v2(ILandroid/os/Parcel;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :catchall_0
    move-exception p1

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    const/16 p1, 0x7e0

    .line 78
    .line 79
    invoke-virtual {p0, p1, v1, v2}, Lcom/google/android/gms/cast/internal/zzx;->j(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    throw p1

    .line 91
    :cond_1
    const/4 p1, 0x0

    .line 92
    new-array p1, p1, [Ljava/lang/Object;

    .line 93
    .line 94
    sget-object p2, Lcom/google/android/gms/cast/internal/zzx;->B:Lcom/google/android/gms/cast/internal/Logger;

    .line 95
    .line 96
    iget-object p3, p2, Lcom/google/android/gms/cast/internal/Logger;->a:Ljava/lang/String;

    .line 97
    .line 98
    const-string v0, "Message send failed. Message exceeds maximum size"

    .line 99
    .line 100
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 108
    .line 109
    const-string p2, "Message exceeds maximum size"

    .line 110
    .line 111
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw p1

    .line 115
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 116
    .line 117
    const-string p2, "The message payload cannot be null or empty"

    .line 118
    .line 119
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p1
.end method

.method public final m(Lcom/google/android/gms/cast/LaunchOptions;Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p2}, Lcom/google/android/gms/cast/internal/zzx;->g(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    check-cast p2, Lcom/google/android/gms/cast/internal/zzah;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzx;->d()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzff;->a(Landroid/content/Context;)Lcom/google/android/gms/common/api/ApiMetadata;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p2}, Lcom/google/android/gms/internal/cast/zza;->I1()Landroid/os/Parcel;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/cast/zzc;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/cast/zzc;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 36
    .line 37
    .line 38
    const/16 p1, 0xd

    .line 39
    .line 40
    invoke-virtual {p2, p1, v1}, Lcom/google/android/gms/internal/cast/zza;->v2(ILandroid/os/Parcel;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    const/16 p1, 0x7e0

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/internal/zzx;->f(I)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final n(Ljava/lang/String;Lcom/google/android/gms/cast/internal/zzae;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p2}, Lcom/google/android/gms/cast/internal/zzx;->h(Lcom/google/android/gms/cast/internal/zzae;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    check-cast p2, Lcom/google/android/gms/cast/internal/zzah;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzx;->d()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzff;->a(Landroid/content/Context;)Lcom/google/android/gms/common/api/ApiMetadata;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p2}, Lcom/google/android/gms/internal/cast/zza;->I1()Landroid/os/Parcel;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/cast/zzc;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x5

    .line 35
    invoke-virtual {p2, p1, v1}, Lcom/google/android/gms/internal/cast/zza;->v2(ILandroid/os/Parcel;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    const/16 p1, 0x7e0

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/internal/zzx;->k(I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzx;->i()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onPostInitHandler(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 5

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v2, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v0, v2, v3

    .line 10
    .line 11
    const-string v0, "in onPostInitHandler; statusCode=%d"

    .line 12
    .line 13
    sget-object v4, Lcom/google/android/gms/cast/internal/zzx;->B:Lcom/google/android/gms/cast/internal/Logger;

    .line 14
    .line 15
    invoke-virtual {v4, v0, v2}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    const/16 v0, 0x8fc

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    if-ne p1, v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iput-boolean v3, p0, Lcom/google/android/gms/cast/internal/zzx;->p:Z

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/google/android/gms/cast/internal/zzx;->p:Z

    .line 29
    .line 30
    iput-boolean v1, p0, Lcom/google/android/gms/cast/internal/zzx;->n:Z

    .line 31
    .line 32
    iput-boolean v1, p0, Lcom/google/android/gms/cast/internal/zzx;->o:Z

    .line 33
    .line 34
    :goto_1
    if-ne p1, v0, :cond_2

    .line 35
    .line 36
    new-instance p1, Landroid/os/Bundle;

    .line 37
    .line 38
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzx;->x:Landroid/os/Bundle;

    .line 42
    .line 43
    const-string v0, "com.google.android.gms.cast.EXTRA_APP_NO_LONGER_RUNNING"

    .line 44
    .line 45
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 46
    .line 47
    .line 48
    move p1, v3

    .line 49
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onPostInitHandler(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
