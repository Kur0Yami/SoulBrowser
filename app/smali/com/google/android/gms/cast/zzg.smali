.class final Lcom/google/android/gms/cast/zzg;
.super Lcom/google/android/gms/cast/zzo;
.source "SourceFile"


# virtual methods
.method public final b(Lcom/google/android/gms/cast/internal/zzx;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/cast/LaunchOptions;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/cast/LaunchOptions;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-boolean v1, v0, Lcom/google/android/gms/cast/LaunchOptions;->c:Z

    .line 8
    .line 9
    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/cast/internal/zzx;->m(Lcom/google/android/gms/cast/LaunchOptions;Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catch_0
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzc;->a()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final bridge synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/internal/zzx;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/zzg;->b(Lcom/google/android/gms/cast/internal/zzx;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
