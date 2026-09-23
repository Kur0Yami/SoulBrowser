.class final Lcom/google/android/gms/internal/cast/zzev;
.super Lcom/google/android/gms/internal/cast/zzfa;
.source "SourceFile"


# virtual methods
.method public final D2(ILcom/google/android/gms/common/api/ApiMetadata;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/cast/zzew;->c:Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    new-array p2, p2, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v0, "onRemoteDisplayEnded"

    .line 7
    .line 8
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    throw p1
.end method
