.class public final Lcom/google/android/gms/internal/drive/zzhm;
.super Lcom/google/android/gms/internal/drive/zzhh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/drive/zzhh<",
        "Lcom/google/android/gms/drive/TransferPreferences;",
        ">;"
    }
.end annotation


# virtual methods
.method public final L0(Lcom/google/android/gms/internal/drive/zzga;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzhh;->c:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/drive/zzga;->c:Lcom/google/android/gms/internal/drive/zzgo;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->b(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final d3(Lcom/google/android/gms/internal/drive/zzfj;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/drive/TransferPreferencesBuilder;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/drive/zzfj;->c:Lcom/google/android/gms/internal/drive/zzei;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iget v1, p1, Lcom/google/android/gms/internal/drive/zzei;->c:I

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eq v1, v2, :cond_0

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    if-eq v1, v2, :cond_0

    .line 16
    .line 17
    move v1, v3

    .line 18
    :cond_0
    iput v1, v0, Lcom/google/android/gms/drive/TransferPreferencesBuilder;->a:I

    .line 19
    .line 20
    iget-boolean v1, p1, Lcom/google/android/gms/internal/drive/zzei;->g:Z

    .line 21
    .line 22
    iput-boolean v1, v0, Lcom/google/android/gms/drive/TransferPreferencesBuilder;->b:Z

    .line 23
    .line 24
    iget p1, p1, Lcom/google/android/gms/internal/drive/zzei;->f:I

    .line 25
    .line 26
    const/16 v1, 0x100

    .line 27
    .line 28
    if-eq p1, v1, :cond_1

    .line 29
    .line 30
    const/16 v1, 0x101

    .line 31
    .line 32
    if-eq p1, v1, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move v3, p1

    .line 36
    :goto_0
    iput v3, v0, Lcom/google/android/gms/drive/TransferPreferencesBuilder;->c:I

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/google/android/gms/drive/TransferPreferencesBuilder;->a()Lcom/google/android/gms/drive/TransferPreferences;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzhh;->c:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
