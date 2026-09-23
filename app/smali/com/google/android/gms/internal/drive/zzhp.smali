.class public final Lcom/google/android/gms/internal/drive/zzhp;
.super Lcom/google/android/gms/internal/drive/zzhh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/drive/zzhh<",
        "Lcom/google/android/gms/drive/Metadata;",
        ">;"
    }
.end annotation


# virtual methods
.method public final Q1(Lcom/google/android/gms/internal/drive/zzfy;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/drive/zzaa;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/drive/zzfy;->c:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/drive/zzaa;-><init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/drive/zzhh;->c:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->b(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
