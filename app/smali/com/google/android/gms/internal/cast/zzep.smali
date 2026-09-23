.class public final Lcom/google/android/gms/internal/cast/zzep;
.super Lcom/google/android/gms/internal/cast/zzeo;
.source "SourceFile"


# instance fields
.field public final c:Lcom/google/android/gms/internal/cast/zzew;

.field public final synthetic f:Lcom/google/android/gms/internal/cast/zzem;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cast/zzem;Lcom/google/android/gms/internal/cast/zzew;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzep;->f:Lcom/google/android/gms/internal/cast/zzem;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzex;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzep;->c:Lcom/google/android/gms/internal/cast/zzew;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final C4(IILandroid/view/Surface;Lcom/google/android/gms/common/api/ApiMetadata;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/cast/zzet;->b:Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    new-array p3, p2, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string p4, "onConnected"

    .line 7
    .line 8
    invoke-virtual {p1, p4, p3}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p3, p0, Lcom/google/android/gms/internal/cast/zzep;->c:Lcom/google/android/gms/internal/cast/zzew;

    .line 12
    .line 13
    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    const-string p4, "display"

    .line 18
    .line 19
    invoke-virtual {p3, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    check-cast p3, Landroid/hardware/display/DisplayManager;

    .line 24
    .line 25
    iget-object p4, p0, Lcom/google/android/gms/internal/cast/zzep;->f:Lcom/google/android/gms/internal/cast/zzem;

    .line 26
    .line 27
    if-nez p3, :cond_0

    .line 28
    .line 29
    new-array p2, p2, [Ljava/lang/Object;

    .line 30
    .line 31
    iget-object p3, p1, Lcom/google/android/gms/cast/internal/Logger;->a:Ljava/lang/String;

    .line 32
    .line 33
    const-string v0, "Unable to get the display manager"

    .line 34
    .line 35
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    new-instance p1, Lcom/google/android/gms/internal/cast/zzes;

    .line 43
    .line 44
    sget-object p2, Lcom/google/android/gms/common/api/Status;->RESULT_INTERNAL_ERROR:Lcom/google/android/gms/common/api/Status;

    .line 45
    .line 46
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/cast/zzes;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p4, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_0
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    const/4 p1, 0x0

    .line 57
    throw p1
.end method

.method public final H3(Lcom/google/android/gms/common/api/ApiMetadata;)V
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
    const-string v1, "onConnectedWithDisplay"

    .line 7
    .line 8
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzep;->f:Lcom/google/android/gms/internal/cast/zzem;

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
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzep;->f:Lcom/google/android/gms/internal/cast/zzem;

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
