.class public final Lcom/google/android/gms/auth/GoogleAuthUtil;
.super Lcom/google/android/gms/auth/zzl;
.source "SourceFile"


# direct methods
.method public static j(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "Calling this from your main thread can lead to deadlock"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotMainThread(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lcom/google/android/gms/auth/zzl;->e(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v0}, Lcom/google/android/gms/auth/zzl;->f(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Lcom/google/android/gms/internal/auth/zzdc;->c(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    sget-object v1, Lcom/google/android/gms/internal/auth/zzhw;->f:Lcom/google/android/gms/internal/auth/zzhw;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/google/android/gms/internal/auth/zzhw;->c:Lcom/google/android/gms/internal/auth/zzdj;

    .line 23
    .line 24
    invoke-interface {v1}, Lcom/google/android/gms/internal/auth/zzdj;->zza()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/google/android/gms/internal/auth/zzhx;

    .line 29
    .line 30
    invoke-interface {v1}, Lcom/google/android/gms/internal/auth/zzhx;->zzc()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-static {p0}, Lcom/google/android/gms/auth/zzl;->i(Landroid/content/Context;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    invoke-static {p0}, Lcom/google/android/gms/internal/auth/zzh;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/auth/zzg;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    new-instance v2, Lcom/google/android/gms/internal/auth/zzbw;

    .line 47
    .line 48
    invoke-direct {v2}, Lcom/google/android/gms/internal/auth/zzbw;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object p1, v2, Lcom/google/android/gms/internal/auth/zzbw;->f:Ljava/lang/String;

    .line 52
    .line 53
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/auth/zzg;->f(Lcom/google/android/gms/internal/auth/zzbw;)Lcom/google/android/gms/tasks/Task;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const-string v2, "clear token"

    .line 58
    .line 59
    :try_start_0
    invoke-static {v1, v2}, Lcom/google/android/gms/auth/zzl;->c(Lcom/google/android/gms/tasks/Task;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :catch_0
    move-exception v1

    .line 64
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    const/4 v3, 0x2

    .line 69
    new-array v3, v3, [Ljava/lang/Object;

    .line 70
    .line 71
    const/4 v4, 0x0

    .line 72
    aput-object v2, v3, v4

    .line 73
    .line 74
    const/4 v2, 0x1

    .line 75
    aput-object v1, v3, v2

    .line 76
    .line 77
    const-string v1, "%s failed via GoogleAuthServiceClient, falling back to previous approach:\n%s"

    .line 78
    .line 79
    sget-object v2, Lcom/google/android/gms/auth/zzl;->c:Lcom/google/android/gms/common/logging/Logger;

    .line 80
    .line 81
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/common/logging/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    :cond_0
    new-instance v1, Lcom/google/android/gms/auth/zzh;

    .line 85
    .line 86
    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/auth/zzh;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 87
    .line 88
    .line 89
    sget-object p1, Lcom/google/android/gms/auth/zzl;->b:Landroid/content/ComponentName;

    .line 90
    .line 91
    invoke-static {p0, p1, v1}, Lcom/google/android/gms/auth/zzl;->b(Landroid/content/Context;Landroid/content/ComponentName;Lcom/google/android/gms/auth/zzk;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public static k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Landroid/accounts/Account;

    .line 2
    .line 3
    const-string v1, "com.google"

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/google/android/gms/auth/zzl;->h(Landroid/accounts/Account;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "Calling this from your main thread can lead to deadlock"

    .line 17
    .line 18
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotMainThread(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v1, "Scope cannot be empty or null."

    .line 22
    .line 23
    invoke-static {p2, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lcom/google/android/gms/auth/zzl;->h(Landroid/accounts/Account;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p0}, Lcom/google/android/gms/auth/zzl;->e(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    new-instance v1, Landroid/os/Bundle;

    .line 33
    .line 34
    invoke-direct {v1, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p0, v1}, Lcom/google/android/gms/auth/zzl;->f(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p0}, Lcom/google/android/gms/internal/auth/zzdc;->c(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    sget-object p1, Lcom/google/android/gms/internal/auth/zzhw;->f:Lcom/google/android/gms/internal/auth/zzhw;

    .line 44
    .line 45
    iget-object p1, p1, Lcom/google/android/gms/internal/auth/zzhw;->c:Lcom/google/android/gms/internal/auth/zzdj;

    .line 46
    .line 47
    invoke-interface {p1}, Lcom/google/android/gms/internal/auth/zzdj;->zza()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Lcom/google/android/gms/internal/auth/zzhx;

    .line 52
    .line 53
    invoke-interface {p1}, Lcom/google/android/gms/internal/auth/zzhx;->zzc()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_0

    .line 58
    .line 59
    invoke-static {p0}, Lcom/google/android/gms/auth/zzl;->i(Landroid/content/Context;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_0

    .line 64
    .line 65
    invoke-static {p0}, Lcom/google/android/gms/internal/auth/zzh;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/auth/zzg;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-interface {p1, v0, p2, v1}, Lcom/google/android/gms/internal/auth/zzg;->c(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const-string v2, "token retrieval"

    .line 74
    .line 75
    :try_start_0
    invoke-static {p1, v2}, Lcom/google/android/gms/auth/zzl;->c(Lcom/google/android/gms/tasks/Task;Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Landroid/os/Bundle;

    .line 80
    .line 81
    invoke-static {p1}, Lcom/google/android/gms/auth/zzl;->d(Landroid/os/Parcelable;)V

    .line 82
    .line 83
    .line 84
    invoke-static {p0, p1}, Lcom/google/android/gms/auth/zzl;->a(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/gms/auth/TokenData;

    .line 85
    .line 86
    .line 87
    move-result-object p0
    :try_end_0
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    goto :goto_0

    .line 89
    :catch_0
    move-exception p1

    .line 90
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    const/4 v3, 0x2

    .line 95
    new-array v3, v3, [Ljava/lang/Object;

    .line 96
    .line 97
    const/4 v4, 0x0

    .line 98
    aput-object v2, v3, v4

    .line 99
    .line 100
    const/4 v2, 0x1

    .line 101
    aput-object p1, v3, v2

    .line 102
    .line 103
    const-string p1, "%s failed via GoogleAuthServiceClient, falling back to previous approach:\n%s"

    .line 104
    .line 105
    sget-object v2, Lcom/google/android/gms/auth/zzl;->c:Lcom/google/android/gms/common/logging/Logger;

    .line 106
    .line 107
    invoke-virtual {v2, p1, v3}, Lcom/google/android/gms/common/logging/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    :cond_0
    new-instance p1, Lcom/google/android/gms/auth/zzg;

    .line 111
    .line 112
    invoke-direct {p1, v0, p2, v1, p0}, Lcom/google/android/gms/auth/zzg;-><init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 113
    .line 114
    .line 115
    sget-object p2, Lcom/google/android/gms/auth/zzl;->b:Landroid/content/ComponentName;

    .line 116
    .line 117
    invoke-static {p0, p2, p1}, Lcom/google/android/gms/auth/zzl;->b(Landroid/content/Context;Landroid/content/ComponentName;Lcom/google/android/gms/auth/zzk;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    check-cast p0, Lcom/google/android/gms/auth/TokenData;

    .line 122
    .line 123
    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/auth/TokenData;->f:Ljava/lang/String;

    .line 124
    .line 125
    return-object p0
.end method
