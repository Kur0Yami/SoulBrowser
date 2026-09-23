.class final Lcom/google/android/gms/cast/zzda;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/cast/internal/zzat;


# virtual methods
.method public final a(JJJLjava/lang/String;)V
    .locals 0

    .line 1
    :try_start_0
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    .line 2
    .line 3
    const/16 p2, 0x837

    .line 4
    .line 5
    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance p2, Lcom/google/android/gms/cast/zzdb;

    .line 9
    .line 10
    const/4 p3, 0x0

    .line 11
    invoke-direct {p2, p3, p1}, Lcom/google/android/gms/cast/zzdb;-><init>(Lcom/google/android/gms/cast/zzdc;Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    throw p1

    .line 16
    :catch_0
    move-exception p1

    .line 17
    const-string p2, "RemoteMediaPlayer"

    .line 18
    .line 19
    const-string p3, "Result already set when calling onRequestReplaced"

    .line 20
    .line 21
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final b(Ljava/lang/String;JILjava/lang/Object;JJ)V
    .locals 0

    .line 1
    :try_start_0
    new-instance p1, Lcom/google/android/gms/cast/zzdd;

    .line 2
    .line 3
    new-instance p2, Lcom/google/android/gms/common/api/Status;

    .line 4
    .line 5
    invoke-direct {p2, p4}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p1, p2}, Lcom/google/android/gms/cast/zzdd;-><init>(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    throw p1

    .line 13
    :catch_0
    move-exception p1

    .line 14
    const-string p2, "RemoteMediaPlayer"

    .line 15
    .line 16
    const-string p3, "Result already set when calling onRequestCompleted"

    .line 17
    .line 18
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    .line 20
    .line 21
    return-void
.end method
