.class final Lcom/google/android/gms/internal/drive/zzeg;
.super Lcom/google/android/gms/internal/drive/zzir;


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "EventCallback"

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    if-eq v0, v3, :cond_0

    .line 8
    .line 9
    sget-object p1, Lcom/google/android/gms/internal/drive/zzee;->c:Lcom/google/android/gms/common/internal/GmsLogger;

    .line 10
    .line 11
    new-array v0, v3, [Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    aput-object v3, v0, v1

    .line 15
    .line 16
    const-string v1, "Don\'t know how to handle this event in context %s"

    .line 17
    .line 18
    invoke-virtual {p1, v2, v1, v0}, Lcom/google/android/gms/common/internal/GmsLogger;->efmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p1, Landroid/util/Pair;

    .line 25
    .line 26
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Lcom/google/android/gms/drive/events/zzi;

    .line 29
    .line 30
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p1, Lcom/google/android/gms/drive/events/DriveEvent;

    .line 33
    .line 34
    invoke-interface {p1}, Lcom/google/android/gms/drive/events/DriveEvent;->getType()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eq v4, v3, :cond_7

    .line 39
    .line 40
    const/4 v5, 0x2

    .line 41
    if-eq v4, v5, :cond_6

    .line 42
    .line 43
    const/4 v5, 0x3

    .line 44
    if-eq v4, v5, :cond_3

    .line 45
    .line 46
    const/4 v5, 0x4

    .line 47
    if-eq v4, v5, :cond_2

    .line 48
    .line 49
    const/16 v5, 0x8

    .line 50
    .line 51
    if-eq v4, v5, :cond_1

    .line 52
    .line 53
    sget-object v0, Lcom/google/android/gms/internal/drive/zzee;->c:Lcom/google/android/gms/common/internal/GmsLogger;

    .line 54
    .line 55
    new-array v3, v3, [Ljava/lang/Object;

    .line 56
    .line 57
    aput-object p1, v3, v1

    .line 58
    .line 59
    const-string p1, "Unexpected event: %s"

    .line 60
    .line 61
    invoke-virtual {v0, v2, p1, v3}, Lcom/google/android/gms/common/internal/GmsLogger;->wfmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_1
    check-cast p1, Lcom/google/android/gms/drive/events/zzr;

    .line 66
    .line 67
    iget-object p1, p1, Lcom/google/android/gms/drive/events/zzr;->c:Lcom/google/android/gms/internal/drive/zzh;

    .line 68
    .line 69
    new-instance v1, Lcom/google/android/gms/internal/drive/zze;

    .line 70
    .line 71
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/drive/zze;-><init>(Lcom/google/android/gms/internal/drive/zzh;)V

    .line 72
    .line 73
    .line 74
    check-cast v0, Lcom/google/android/gms/drive/events/zzl;

    .line 75
    .line 76
    invoke-interface {v0}, Lcom/google/android/gms/drive/events/zzl;->zza()V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_2
    check-cast v0, Lcom/google/android/gms/drive/events/zzd;

    .line 81
    .line 82
    check-cast p1, Lcom/google/android/gms/drive/events/zzb;

    .line 83
    .line 84
    invoke-interface {v0, p1}, Lcom/google/android/gms/drive/events/zzd;->a(Lcom/google/android/gms/drive/events/zzb;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_3
    check-cast v0, Lcom/google/android/gms/drive/events/zzq;

    .line 89
    .line 90
    check-cast p1, Lcom/google/android/gms/drive/events/zzo;

    .line 91
    .line 92
    iget-object v1, p1, Lcom/google/android/gms/drive/events/zzo;->f:Lcom/google/android/gms/common/data/DataHolder;

    .line 93
    .line 94
    if-eqz v1, :cond_4

    .line 95
    .line 96
    new-instance v2, Lcom/google/android/gms/drive/MetadataBuffer;

    .line 97
    .line 98
    invoke-direct {v2, v1}, Lcom/google/android/gms/drive/MetadataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 99
    .line 100
    .line 101
    invoke-interface {v0}, Lcom/google/android/gms/drive/events/zzq;->c()V

    .line 102
    .line 103
    .line 104
    :cond_4
    iget-boolean p1, p1, Lcom/google/android/gms/drive/events/zzo;->g:Z

    .line 105
    .line 106
    if-eqz p1, :cond_5

    .line 107
    .line 108
    invoke-interface {v0}, Lcom/google/android/gms/drive/events/zzq;->zzc()V

    .line 109
    .line 110
    .line 111
    :cond_5
    return-void

    .line 112
    :cond_6
    check-cast v0, Lcom/google/android/gms/drive/events/CompletionListener;

    .line 113
    .line 114
    check-cast p1, Lcom/google/android/gms/drive/events/CompletionEvent;

    .line 115
    .line 116
    invoke-interface {v0, p1}, Lcom/google/android/gms/drive/events/CompletionListener;->b(Lcom/google/android/gms/drive/events/CompletionEvent;)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_7
    check-cast v0, Lcom/google/android/gms/drive/events/ChangeListener;

    .line 121
    .line 122
    check-cast p1, Lcom/google/android/gms/drive/events/ChangeEvent;

    .line 123
    .line 124
    invoke-interface {v0, p1}, Lcom/google/android/gms/drive/events/ChangeListener;->d(Lcom/google/android/gms/drive/events/ChangeEvent;)V

    .line 125
    .line 126
    .line 127
    return-void
.end method
