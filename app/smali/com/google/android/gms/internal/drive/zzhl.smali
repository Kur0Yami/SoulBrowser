.class public final Lcom/google/android/gms/internal/drive/zzhl;
.super Lcom/google/android/gms/internal/drive/zzhh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/drive/zzhh<",
        "Lcom/google/android/gms/drive/DriveId;",
        ">;"
    }
.end annotation


# virtual methods
.method public final Q1(Lcom/google/android/gms/internal/drive/zzfy;)V
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/internal/drive/zzfy;->c:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    .line 2
    .line 3
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->a:Lcom/google/android/gms/internal/drive/zzim;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->c:Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/drive/metadata/zza;->b(Landroid/os/Bundle;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/google/android/gms/drive/DriveId;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzhh;->c:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final s4(Lcom/google/android/gms/internal/drive/zzfn;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzhh;->c:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/drive/zzfn;->c:Lcom/google/android/gms/drive/DriveId;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->b(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
