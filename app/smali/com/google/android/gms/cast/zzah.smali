.class final Lcom/google/android/gms/cast/zzah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->p()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    new-array p1, v1, [Ljava/lang/Object;

    .line 10
    .line 11
    sget-object v2, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->c:Lcom/google/android/gms/cast/internal/Logger;

    .line 12
    .line 13
    const-string v3, "startRemoteDisplay successful"

    .line 14
    .line 15
    invoke-virtual {v2, v3, p1}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    sget-object p1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->f:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter p1

    .line 21
    :try_start_0
    const-string v3, "Remote Display started but session already cancelled"

    .line 22
    .line 23
    new-array v1, v1, [Ljava/lang/Object;

    .line 24
    .line 25
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    throw v0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw v0

    .line 32
    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    .line 33
    .line 34
    sget-object v1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->c:Lcom/google/android/gms/cast/internal/Logger;

    .line 35
    .line 36
    const-string v2, "Connection was not successful"

    .line 37
    .line 38
    iget-object v3, v1, Lcom/google/android/gms/cast/internal/Logger;->a:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    throw v0
.end method
