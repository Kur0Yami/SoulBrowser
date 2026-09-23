.class final Lcom/google/android/gms/internal/drive/zzan;
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
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzan;->c:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final Q1(Lcom/google/android/gms/internal/drive/zzfy;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/drive/zzao;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/google/android/gms/internal/drive/zzfy;->c:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    .line 6
    .line 7
    sget-object v2, Lcom/google/android/gms/internal/drive/zzhs;->a:Lcom/google/android/gms/internal/drive/zzim;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->c:Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-virtual {v2, p1}, Lcom/google/android/gms/drive/metadata/zza;->b(Landroid/os/Bundle;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/google/android/gms/drive/DriveId;

    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/drive/zzao;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/google/android/gms/internal/drive/zzan;->c:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    .line 21
    .line 22
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;->setResult(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final r3(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/drive/zzao;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/drive/zzao;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/drive/zzan;->c:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    .line 7
    .line 8
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;->setResult(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final s4(Lcom/google/android/gms/internal/drive/zzfn;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/drive/zzao;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/google/android/gms/internal/drive/zzfn;->c:Lcom/google/android/gms/drive/DriveId;

    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/drive/zzao;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/drive/zzan;->c:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    .line 11
    .line 12
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;->setResult(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
