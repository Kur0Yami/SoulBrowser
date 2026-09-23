.class final Lcom/google/android/gms/drive/events/DriveEventService$zzb;
.super Lcom/google/android/gms/internal/drive/zzet;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/events/DriveEventService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "zzb"
.end annotation


# instance fields
.field public final synthetic c:Lcom/google/android/gms/drive/events/DriveEventService;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/drive/events/DriveEventService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/drive/events/DriveEventService$zzb;->c:Lcom/google/android/gms/drive/events/DriveEventService;

    .line 2
    .line 3
    const-string p1, "com.google.android.gms.drive.internal.IEventCallback"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/drive/zzb;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final u1(Lcom/google/android/gms/internal/drive/zzfp;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/drive/events/DriveEventService$zzb;->c:Lcom/google/android/gms/drive/events/DriveEventService;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/drive/events/DriveEventService$zzb;->c:Lcom/google/android/gms/drive/events/DriveEventService;

    .line 5
    .line 6
    sget-object v2, Lcom/google/android/gms/drive/events/DriveEventService;->i:Lcom/google/android/gms/common/internal/GmsLogger;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget v3, v1, Lcom/google/android/gms/drive/events/DriveEventService;->h:I

    .line 16
    .line 17
    if-ne v2, v3, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {v1, v2}, Lcom/google/android/gms/common/util/UidVerifier;->isGooglePlayServicesUid(Landroid/content/Context;I)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_2

    .line 25
    .line 26
    iput v2, v1, Lcom/google/android/gms/drive/events/DriveEventService;->h:I

    .line 27
    .line 28
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/drive/events/DriveEventService$zzb;->c:Lcom/google/android/gms/drive/events/DriveEventService;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/google/android/gms/drive/events/DriveEventService;->f:Lcom/google/android/gms/drive/events/DriveEventService$zza;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    sget v2, Lcom/google/android/gms/drive/events/DriveEventService$zza;->b:I

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object v1, p0, Lcom/google/android/gms/drive/events/DriveEventService$zzb;->c:Lcom/google/android/gms/drive/events/DriveEventService;

    .line 42
    .line 43
    iget-object v1, v1, Lcom/google/android/gms/drive/events/DriveEventService;->f:Lcom/google/android/gms/drive/events/DriveEventService$zza;

    .line 44
    .line 45
    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    goto :goto_2

    .line 51
    :cond_1
    sget-object p1, Lcom/google/android/gms/drive/events/DriveEventService;->i:Lcom/google/android/gms/common/internal/GmsLogger;

    .line 52
    .line 53
    const-string v1, "DriveEventService"

    .line 54
    .line 55
    const-string v2, "Receiving event before initialize is completed."

    .line 56
    .line 57
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :goto_1
    monitor-exit v0

    .line 61
    return-void

    .line 62
    :cond_2
    new-instance p1, Ljava/lang/SecurityException;

    .line 63
    .line 64
    const-string v1, "Caller is not GooglePlayServices"

    .line 65
    .line 66
    invoke-direct {p1, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p1

    .line 70
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    throw p1
.end method
