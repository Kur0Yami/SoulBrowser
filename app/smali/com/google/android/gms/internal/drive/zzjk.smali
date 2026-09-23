.class final Lcom/google/android/gms/internal/drive/zzjk;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/google/android/gms/internal/drive/zzjr;

.field public final b:[B


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-array v0, p1, [B

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/drive/zzjk;->b:[B

    .line 7
    .line 8
    sget-object v1, Lcom/google/android/gms/internal/drive/zzjr;->b:Ljava/util/logging/Logger;

    .line 9
    .line 10
    new-instance v1, Lcom/google/android/gms/internal/drive/zzjr$zza;

    .line 11
    .line 12
    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/drive/zzjr$zza;-><init>([BI)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/google/android/gms/internal/drive/zzjk;->a:Lcom/google/android/gms/internal/drive/zzjr;

    .line 16
    .line 17
    return-void
.end method
