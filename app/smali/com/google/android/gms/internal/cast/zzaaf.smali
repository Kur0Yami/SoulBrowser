.class final Lcom/google/android/gms/internal/cast/zzaaf;
.super Lcom/google/android/gms/internal/cast/zzaad;
.source "SourceFile"


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/cast/zzyd;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/zzyd;->zzc:Lcom/google/android/gms/internal/cast/zzaae;

    .line 4
    .line 5
    iget-boolean v0, p1, Lcom/google/android/gms/internal/cast/zzaae;->d:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p1, Lcom/google/android/gms/internal/cast/zzaae;->d:Z

    .line 11
    .line 12
    :cond_0
    return-void
.end method
