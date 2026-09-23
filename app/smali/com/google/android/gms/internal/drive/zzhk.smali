.class public final Lcom/google/android/gms/internal/drive/zzhk;
.super Lcom/google/android/gms/internal/drive/zzhh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/drive/zzhh<",
        "Lcom/google/android/gms/drive/DriveFolder;",
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
    if-eqz p1, :cond_0

    .line 6
    .line 7
    new-instance p1, Lcom/google/android/gms/internal/drive/zzbs;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzhh;->c:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->b(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v0, "This DriveId corresponds to a file. Call asDriveFile instead."

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method
