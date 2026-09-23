.class final Lcom/google/android/gms/internal/cast/zzwv;
.super Lcom/google/android/gms/internal/cast/zzwm;
.source "SourceFile"


# instance fields
.field public final g:Ljava/util/concurrent/Callable;

.field public final synthetic h:Lcom/google/android/gms/internal/cast/zzww;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cast/zzww;Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzwv;->h:Lcom/google/android/gms/internal/cast/zzww;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzwv;->g:Ljava/util/concurrent/Callable;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzwv;->h:Lcom/google/android/gms/internal/cast/zzww;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzwa;->isDone()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzwv;->g:Ljava/util/concurrent/Callable;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzwv;->h:Lcom/google/android/gms/internal/cast/zzww;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    sget-object p1, Lcom/google/android/gms/internal/cast/zzwb;->h:Ljava/lang/Object;

    .line 9
    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    sget-object v2, Lcom/google/android/gms/internal/cast/zzwb;->k:Lcom/google/android/gms/internal/cast/zzwb$zza;

    .line 12
    .line 13
    invoke-virtual {v2, v0, v1, p1}, Lcom/google/android/gms/internal/cast/zzwb$zza;->g(Lcom/google/android/gms/internal/cast/zzwb;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzwa;->g(Lcom/google/android/gms/internal/cast/zzwa;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method public final d(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzwv;->h:Lcom/google/android/gms/internal/cast/zzww;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/internal/cast/zzwa$zzc;

    .line 7
    .line 8
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/cast/zzwa$zzc;-><init>(Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/google/android/gms/internal/cast/zzwb;->k:Lcom/google/android/gms/internal/cast/zzwb$zza;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/gms/internal/cast/zzwb$zza;->g(Lcom/google/android/gms/internal/cast/zzwb;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzwa;->g(Lcom/google/android/gms/internal/cast/zzwa;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzwv;->g:Ljava/util/concurrent/Callable;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
