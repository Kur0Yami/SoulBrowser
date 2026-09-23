.class public Lcom/google/android/gms/cast/framework/ReconnectionService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final f:Lcom/google/android/gms/cast/internal/Logger;


# instance fields
.field public c:Lcom/google/android/gms/cast/framework/zzar;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const-string v1, "ReconnectionService"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/gms/cast/framework/ReconnectionService;->f:Lcom/google/android/gms/cast/internal/Logger;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/ReconnectionService;->c:Lcom/google/android/gms/cast/framework/zzar;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-interface {v0, p1}, Lcom/google/android/gms/cast/framework/zzar;->f1(Landroid/content/Intent;)Landroid/os/IBinder;

    .line 7
    .line 8
    .line 9
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-object p1

    .line 11
    :catch_0
    move-exception p1

    .line 12
    const/4 v0, 0x2

    .line 13
    new-array v0, v0, [Ljava/lang/Object;

    .line 14
    .line 15
    const-string v2, "onBind"

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    aput-object v2, v0, v3

    .line 19
    .line 20
    const-string v2, "zzar"

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    aput-object v2, v0, v3

    .line 24
    .line 25
    const-string v2, "Unable to call %s on %s."

    .line 26
    .line 27
    sget-object v3, Lcom/google/android/gms/cast/framework/ReconnectionService;->f:Lcom/google/android/gms/cast/internal/Logger;

    .line 28
    .line 29
    invoke-virtual {v3, p1, v2, v0}, Lcom/google/android/gms/cast/internal/Logger;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-object v1
.end method

.method public final onCreate()V
    .locals 11

    .line 1
    const-string v0, "getWrappedThis"

    .line 2
    .line 3
    const-string v1, "Unable to call %s on %s."

    .line 4
    .line 5
    invoke-static {p0}, Lcom/google/android/gms/cast/framework/CastContext;->e(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/CastContext;->d()Lcom/google/android/gms/cast/framework/SessionManager;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v6, 0x2

    .line 19
    const/4 v7, 0x0

    .line 20
    :try_start_0
    iget-object v3, v3, Lcom/google/android/gms/cast/framework/SessionManager;->a:Lcom/google/android/gms/cast/framework/zzaw;

    .line 21
    .line 22
    invoke-interface {v3}, Lcom/google/android/gms/cast/framework/zzaw;->zzk()Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 23
    .line 24
    .line 25
    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v3

    .line 28
    sget-object v8, Lcom/google/android/gms/cast/framework/SessionManager;->c:Lcom/google/android/gms/cast/internal/Logger;

    .line 29
    .line 30
    new-array v9, v6, [Ljava/lang/Object;

    .line 31
    .line 32
    aput-object v0, v9, v5

    .line 33
    .line 34
    const-string v10, "zzaw"

    .line 35
    .line 36
    aput-object v10, v9, v4

    .line 37
    .line 38
    invoke-virtual {v8, v3, v1, v9}, Lcom/google/android/gms/cast/internal/Logger;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    move-object v3, v7

    .line 42
    :goto_0
    const-string v8, "Must be called from the main thread."

    .line 43
    .line 44
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v2, v2, Lcom/google/android/gms/cast/framework/CastContext;->d:Lcom/google/android/gms/cast/framework/zzaa;

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    :try_start_1
    iget-object v2, v2, Lcom/google/android/gms/cast/framework/zzaa;->a:Lcom/google/android/gms/cast/framework/zzao;

    .line 53
    .line 54
    invoke-interface {v2}, Lcom/google/android/gms/cast/framework/zzao;->zze()Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 55
    .line 56
    .line 57
    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 58
    goto :goto_1

    .line 59
    :catch_1
    move-exception v2

    .line 60
    sget-object v8, Lcom/google/android/gms/cast/framework/zzaa;->b:Lcom/google/android/gms/cast/internal/Logger;

    .line 61
    .line 62
    new-array v9, v6, [Ljava/lang/Object;

    .line 63
    .line 64
    aput-object v0, v9, v5

    .line 65
    .line 66
    const-string v0, "zzao"

    .line 67
    .line 68
    aput-object v0, v9, v4

    .line 69
    .line 70
    invoke-virtual {v8, v2, v1, v9}, Lcom/google/android/gms/cast/internal/Logger;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    move-object v0, v7

    .line 74
    :goto_1
    sget-object v2, Lcom/google/android/gms/internal/cast/zzay;->a:Lcom/google/android/gms/cast/internal/Logger;

    .line 75
    .line 76
    if-eqz v3, :cond_1

    .line 77
    .line 78
    if-nez v0, :cond_0

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-static {v2}, Lcom/google/android/gms/internal/cast/zzay;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/cast/zzbc;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    new-instance v8, Lcom/google/android/gms/dynamic/ObjectWrapper;

    .line 90
    .line 91
    invoke-direct {v8, p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    invoke-interface {v2, v8, v3, v0}, Lcom/google/android/gms/internal/cast/zzbc;->F1(Lcom/google/android/gms/dynamic/ObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/cast/framework/zzar;

    .line 95
    .line 96
    .line 97
    move-result-object v7
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/google/android/gms/cast/framework/ModuleUnavailableException; {:try_start_2 .. :try_end_2} :catch_2

    .line 98
    goto :goto_3

    .line 99
    :catch_2
    move-exception v0

    .line 100
    goto :goto_2

    .line 101
    :catch_3
    move-exception v0

    .line 102
    :goto_2
    sget-object v2, Lcom/google/android/gms/internal/cast/zzay;->a:Lcom/google/android/gms/cast/internal/Logger;

    .line 103
    .line 104
    new-array v3, v6, [Ljava/lang/Object;

    .line 105
    .line 106
    const-string v8, "newReconnectionServiceImpl"

    .line 107
    .line 108
    aput-object v8, v3, v5

    .line 109
    .line 110
    const-string v8, "zzbc"

    .line 111
    .line 112
    aput-object v8, v3, v4

    .line 113
    .line 114
    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/gms/cast/internal/Logger;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    :cond_1
    :goto_3
    iput-object v7, p0, Lcom/google/android/gms/cast/framework/ReconnectionService;->c:Lcom/google/android/gms/cast/framework/zzar;

    .line 118
    .line 119
    if-eqz v7, :cond_2

    .line 120
    .line 121
    :try_start_3
    invoke-interface {v7}, Lcom/google/android/gms/cast/framework/zzar;->y4()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4

    .line 122
    .line 123
    .line 124
    goto :goto_4

    .line 125
    :catch_4
    move-exception v0

    .line 126
    new-array v2, v6, [Ljava/lang/Object;

    .line 127
    .line 128
    const-string v3, "onCreate"

    .line 129
    .line 130
    aput-object v3, v2, v5

    .line 131
    .line 132
    const-string v3, "zzar"

    .line 133
    .line 134
    aput-object v3, v2, v4

    .line 135
    .line 136
    sget-object v3, Lcom/google/android/gms/cast/framework/ReconnectionService;->f:Lcom/google/android/gms/cast/internal/Logger;

    .line 137
    .line 138
    invoke-virtual {v3, v0, v1, v2}, Lcom/google/android/gms/cast/internal/Logger;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    :goto_4
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 142
    .line 143
    .line 144
    :cond_2
    return-void
.end method

.method public final onDestroy()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/ReconnectionService;->c:Lcom/google/android/gms/cast/framework/zzar;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/zzar;->zzh()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    const/4 v1, 0x2

    .line 11
    new-array v1, v1, [Ljava/lang/Object;

    .line 12
    .line 13
    const-string v2, "onDestroy"

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    aput-object v2, v1, v3

    .line 17
    .line 18
    const-string v2, "zzar"

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    aput-object v2, v1, v3

    .line 22
    .line 23
    const-string v2, "Unable to call %s on %s."

    .line 24
    .line 25
    sget-object v3, Lcom/google/android/gms/cast/framework/ReconnectionService;->f:Lcom/google/android/gms/cast/internal/Logger;

    .line 26
    .line 27
    invoke-virtual {v3, v0, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/ReconnectionService;->c:Lcom/google/android/gms/cast/framework/zzar;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-interface {v0, p2, p3, p1}, Lcom/google/android/gms/cast/framework/zzar;->J(IILandroid/content/Intent;)I

    .line 7
    .line 8
    .line 9
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return p1

    .line 11
    :catch_0
    move-exception p1

    .line 12
    new-array p2, v1, [Ljava/lang/Object;

    .line 13
    .line 14
    const-string p3, "onStartCommand"

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    aput-object p3, p2, v0

    .line 18
    .line 19
    const-string p3, "zzar"

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    aput-object p3, p2, v0

    .line 23
    .line 24
    const-string p3, "Unable to call %s on %s."

    .line 25
    .line 26
    sget-object v0, Lcom/google/android/gms/cast/framework/ReconnectionService;->f:Lcom/google/android/gms/cast/internal/Logger;

    .line 27
    .line 28
    invoke-virtual {v0, p1, p3, p2}, Lcom/google/android/gms/cast/internal/Logger;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return v1
.end method
