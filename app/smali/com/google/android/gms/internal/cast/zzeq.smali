.class public final Lcom/google/android/gms/internal/cast/zzeq;
.super Lcom/google/android/gms/internal/cast/zzeo;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/google/android/gms/internal/cast/zzen;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cast/zzen;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzeq;->c:Lcom/google/android/gms/internal/cast/zzen;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzex;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final B4(Lcom/google/android/gms/common/api/ApiMetadata;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/cast/zzet;->b:Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v1, "onDisconnected"

    .line 7
    .line 8
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzeq;->c:Lcom/google/android/gms/internal/cast/zzen;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    throw p1
.end method

.method public final V3(ILcom/google/android/gms/common/api/ApiMetadata;)V
    .locals 1

    .line 1
    sget-object p2, Lcom/google/android/gms/internal/cast/zzet;->b:Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 p2, 0x1

    .line 8
    new-array p2, p2, [Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    aput-object p1, p2, v0

    .line 12
    .line 13
    sget-object p1, Lcom/google/android/gms/internal/cast/zzet;->b:Lcom/google/android/gms/cast/internal/Logger;

    .line 14
    .line 15
    const-string v0, "onError: %d"

    .line 16
    .line 17
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzeq;->c:Lcom/google/android/gms/internal/cast/zzen;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    throw p1
.end method
