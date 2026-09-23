.class public final Lcom/google/android/gms/internal/drive/zzgy;
.super Lcom/google/android/gms/internal/drive/zzl;


# instance fields
.field public final c:Lcom/google/android/gms/internal/drive/zzav;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/drive/zzav;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzl;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzgy;->c:Lcom/google/android/gms/internal/drive/zzav;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSuccess()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzgy;->c:Lcom/google/android/gms/internal/drive/zzav;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;->setResult(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final r3(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzgy;->c:Lcom/google/android/gms/internal/drive/zzav;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;->setResult(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
