.class public final Lcom/google/android/gms/internal/drive/zzhj;
.super Lcom/google/android/gms/internal/drive/zzhh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/drive/zzhh<",
        "Lcom/google/android/gms/drive/DriveFile;",
        ">;"
    }
.end annotation


# virtual methods
.method public final s4(Lcom/google/android/gms/internal/drive/zzfn;)V
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/internal/drive/zzfn;->c:Lcom/google/android/gms/drive/DriveId;

    .line 2
    .line 3
    iget p1, p1, Lcom/google/android/gms/drive/DriveId;->h:I

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    new-instance p1, Lcom/google/android/gms/internal/drive/zzbn;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 11
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

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "This DriveId corresponds to a folder. Call asDriveFolder instead."

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1
.end method
