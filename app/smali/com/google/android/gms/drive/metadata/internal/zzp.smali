.class final Lcom/google/android/gms/drive/metadata/internal/zzp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/metadata/internal/zzg;


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "parentsExtraHolder"

    .line 2
    .line 3
    return-object v0
.end method

.method public final b(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getMetadata()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    monitor-enter p1

    .line 9
    :try_start_0
    const-string v1, "parentsExtraHolder"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/google/android/gms/common/data/DataHolder;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    .line 20
    .line 21
    .line 22
    const-string v1, "parentsExtraHolder"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    monitor-exit p1

    .line 31
    return-void

    .line 32
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw v0
.end method
