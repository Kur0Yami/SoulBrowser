.class final Lcom/google/android/gms/internal/auth/zzbp;
.super Lcom/google/android/gms/internal/auth/zzbd;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/google/android/gms/internal/auth/zzbq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/auth/zzbq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzbp;->c:Lcom/google/android/gms/internal/auth/zzbq;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzbd;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final K(Lcom/google/android/gms/auth/api/proxy/ProxyResponse;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/auth/zzbu;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/google/android/gms/internal/auth/zzbu;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzbp;->c:Lcom/google/android/gms/internal/auth/zzbq;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
