.class final Lcom/google/android/gms/internal/drive/zzak;
.super Lcom/google/android/gms/internal/drive/zzl;


# instance fields
.field public final c:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzl;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzak;->c:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final S1(Lcom/google/android/gms/internal/drive/zzfh;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/drive/zzal;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    .line 4
    .line 5
    new-instance v2, Lcom/google/android/gms/internal/drive/zzbi;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/google/android/gms/internal/drive/zzfh;->c:Lcom/google/android/gms/drive/Contents;

    .line 8
    .line 9
    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/drive/zzbi;-><init>(Lcom/google/android/gms/drive/Contents;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/drive/zzal;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/internal/drive/zzbi;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/drive/zzak;->c:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    .line 16
    .line 17
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;->setResult(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final r3(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/drive/zzal;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/drive/zzal;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/internal/drive/zzbi;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/drive/zzak;->c:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    .line 8
    .line 9
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;->setResult(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
