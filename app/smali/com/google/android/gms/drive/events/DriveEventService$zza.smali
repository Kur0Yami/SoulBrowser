.class final Lcom/google/android/gms/drive/events/DriveEventService$zza;
.super Lcom/google/android/gms/internal/drive/zzir;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/events/DriveEventService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# static fields
.field public static final synthetic b:I


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/drive/events/DriveEventService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/drive/events/DriveEventService$zza;->a:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "DriveEventService"

    .line 5
    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x1

    .line 8
    if-eq v0, v4, :cond_1

    .line 9
    .line 10
    if-eq v0, v3, :cond_0

    .line 11
    .line 12
    sget-object p1, Lcom/google/android/gms/drive/events/DriveEventService;->i:Lcom/google/android/gms/common/internal/GmsLogger;

    .line 13
    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-array v3, v4, [Ljava/lang/Object;

    .line 19
    .line 20
    aput-object v0, v3, v1

    .line 21
    .line 22
    const-string v0, "Unexpected message type: %s"

    .line 23
    .line 24
    invoke-virtual {p1, v2, v0, v3}, Lcom/google/android/gms/common/internal/GmsLogger;->wfmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/drive/events/DriveEventService$zza;->a:Ljava/lang/ref/WeakReference;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/google/android/gms/drive/events/DriveEventService;

    .line 43
    .line 44
    if-eqz v0, :cond_6

    .line 45
    .line 46
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p1, Lcom/google/android/gms/internal/drive/zzfp;

    .line 49
    .line 50
    sget-object v5, Lcom/google/android/gms/drive/events/DriveEventService;->i:Lcom/google/android/gms/common/internal/GmsLogger;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzfp;->F()Lcom/google/android/gms/drive/events/DriveEvent;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/drive/events/DriveEvent;->getType()I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-eq v6, v4, :cond_5

    .line 61
    .line 62
    if-eq v6, v3, :cond_4

    .line 63
    .line 64
    const/4 v7, 0x4

    .line 65
    if-eq v6, v7, :cond_3

    .line 66
    .line 67
    const/4 v0, 0x7

    .line 68
    if-eq v6, v0, :cond_2

    .line 69
    .line 70
    const-string v0, "Unhandled event: %s"

    .line 71
    .line 72
    new-array v3, v4, [Ljava/lang/Object;

    .line 73
    .line 74
    aput-object p1, v3, v1

    .line 75
    .line 76
    invoke-virtual {v5, v2, v0, v3}, Lcom/google/android/gms/common/internal/GmsLogger;->wfmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :catch_0
    move-exception p1

    .line 81
    goto :goto_0

    .line 82
    :cond_2
    check-cast p1, Lcom/google/android/gms/drive/events/zzv;

    .line 83
    .line 84
    const-string v0, "Unhandled transfer state event in %s: %s"

    .line 85
    .line 86
    new-array v3, v3, [Ljava/lang/Object;

    .line 87
    .line 88
    const/4 v6, 0x0

    .line 89
    aput-object v6, v3, v1

    .line 90
    .line 91
    aput-object p1, v3, v4

    .line 92
    .line 93
    invoke-virtual {v5, v2, v0, v3}, Lcom/google/android/gms/common/internal/GmsLogger;->wfmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_3
    check-cast p1, Lcom/google/android/gms/drive/events/zzb;

    .line 98
    .line 99
    invoke-virtual {v0, p1}, Lcom/google/android/gms/drive/events/DriveEventService;->a(Lcom/google/android/gms/drive/events/zzb;)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_4
    check-cast p1, Lcom/google/android/gms/drive/events/CompletionEvent;

    .line 104
    .line 105
    invoke-virtual {v0, p1}, Lcom/google/android/gms/drive/events/DriveEventService;->b(Lcom/google/android/gms/drive/events/CompletionEvent;)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_5
    check-cast p1, Lcom/google/android/gms/drive/events/ChangeEvent;

    .line 110
    .line 111
    invoke-virtual {v0, p1}, Lcom/google/android/gms/drive/events/DriveEventService;->d(Lcom/google/android/gms/drive/events/ChangeEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :goto_0
    const-string v0, "Error handling event in null"

    .line 116
    .line 117
    invoke-virtual {v5, v2, v0, p1}, Lcom/google/android/gms/common/internal/GmsLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_6
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    .line 126
    .line 127
    .line 128
    return-void
.end method
