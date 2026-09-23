.class final Lcom/google/android/gms/internal/cast/zzel;
.super Lcom/google/android/gms/internal/cast/zzfa;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/google/android/gms/internal/cast/zzet;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cast/zzet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzel;->c:Lcom/google/android/gms/internal/cast/zzet;

    .line 2
    .line 3
    const-string p1, "com.google.android.gms.cast.remote_display.ICastRemoteDisplaySessionCallbacks"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cast/zzb;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final D2(ILcom/google/android/gms/common/api/ApiMetadata;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/cast/zzet;->b:Lcom/google/android/gms/cast/internal/Logger;

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
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzel;->c:Lcom/google/android/gms/internal/cast/zzet;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    return-void
.end method
