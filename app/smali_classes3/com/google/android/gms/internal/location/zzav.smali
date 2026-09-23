.class public final Lcom/google/android/gms/internal/location/zzav;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/location/zzbg;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/util/HashMap;

.field public final d:Ljava/util/HashMap;

.field public final e:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/location/zzbg;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/location/zzav;->c:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/location/zzav;->d:Ljava/util/HashMap;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/google/android/gms/internal/location/zzav;->e:Ljava/util/HashMap;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/google/android/gms/internal/location/zzav;->b:Landroid/content/Context;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/google/android/gms/internal/location/zzav;->a:Lcom/google/android/gms/internal/location/zzbg;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/internal/location/zzai;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzav;->a:Lcom/google/android/gms/internal/location/zzbg;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/location/zzh;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/gms/internal/location/zzh;->a:Lcom/google/android/gms/internal/location/zzi;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->checkConnected()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->getListenerKey()Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    :goto_0
    move-object v6, p1

    .line 18
    goto :goto_2

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/location/zzav;->c:Ljava/util/HashMap;

    .line 20
    .line 21
    monitor-enter v1

    .line 22
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/location/zzav;->c:Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lcom/google/android/gms/internal/location/zzau;

    .line 29
    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    new-instance v2, Lcom/google/android/gms/internal/location/zzau;

    .line 33
    .line 34
    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/location/zzau;-><init>(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    move-object p1, v2

    .line 38
    goto :goto_1

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    move-object p1, v0

    .line 41
    goto :goto_3

    .line 42
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/location/zzav;->c:Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    goto :goto_0

    .line 49
    :goto_2
    if-nez v6, :cond_2

    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/location/zzav;->a:Lcom/google/android/gms/internal/location/zzbg;

    .line 53
    .line 54
    check-cast p1, Lcom/google/android/gms/internal/location/zzh;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/google/android/gms/internal/location/zzh;->a()Lcom/google/android/gms/internal/location/zzam;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {}, Lcom/google/android/gms/internal/location/zzba;->F()Lcom/google/android/gms/internal/location/zzba;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    new-instance v3, Lcom/google/android/gms/internal/location/zzbc;

    .line 65
    .line 66
    const/4 v7, 0x0

    .line 67
    const/4 v8, 0x0

    .line 68
    const/4 v4, 0x1

    .line 69
    move-object v9, p2

    .line 70
    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/location/zzbc;-><init>(ILcom/google/android/gms/internal/location/zzba;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 71
    .line 72
    .line 73
    invoke-interface {p1, v3}, Lcom/google/android/gms/internal/location/zzam;->f0(Lcom/google/android/gms/internal/location/zzbc;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    throw p1
.end method

.method public final b(Lcom/google/android/gms/internal/location/zzba;Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/internal/location/zzah;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzav;->a:Lcom/google/android/gms/internal/location/zzbg;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/location/zzh;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/gms/internal/location/zzh;->a:Lcom/google/android/gms/internal/location/zzi;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->checkConnected()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->getListenerKey()Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    :goto_0
    move-object v8, p2

    .line 18
    goto :goto_2

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/location/zzav;->e:Ljava/util/HashMap;

    .line 20
    .line 21
    monitor-enter v1

    .line 22
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/location/zzav;->e:Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lcom/google/android/gms/internal/location/zzar;

    .line 29
    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    new-instance v2, Lcom/google/android/gms/internal/location/zzar;

    .line 33
    .line 34
    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/location/zzar;-><init>(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    move-object p2, v2

    .line 38
    goto :goto_1

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    move-object p1, v0

    .line 41
    goto :goto_3

    .line 42
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/location/zzav;->e:Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    goto :goto_0

    .line 49
    :goto_2
    if-nez v8, :cond_2

    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/location/zzav;->a:Lcom/google/android/gms/internal/location/zzbg;

    .line 53
    .line 54
    check-cast p2, Lcom/google/android/gms/internal/location/zzh;

    .line 55
    .line 56
    invoke-virtual {p2}, Lcom/google/android/gms/internal/location/zzh;->a()Lcom/google/android/gms/internal/location/zzam;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    new-instance v3, Lcom/google/android/gms/internal/location/zzbc;

    .line 61
    .line 62
    const/4 v6, 0x0

    .line 63
    const/4 v7, 0x0

    .line 64
    const/4 v4, 0x1

    .line 65
    move-object v5, p1

    .line 66
    move-object v9, p3

    .line 67
    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/location/zzbc;-><init>(ILcom/google/android/gms/internal/location/zzba;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 68
    .line 69
    .line 70
    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/location/zzam;->f0(Lcom/google/android/gms/internal/location/zzbc;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    throw p1
.end method

.method public final c()V
    .locals 10

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/location/zzav;->c:Ljava/util/HashMap;

    .line 2
    .line 3
    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzav;->c:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    move-object v6, v2

    .line 25
    check-cast v6, Lcom/google/android/gms/internal/location/zzau;

    .line 26
    .line 27
    if-eqz v6, :cond_0

    .line 28
    .line 29
    iget-object v2, p0, Lcom/google/android/gms/internal/location/zzav;->a:Lcom/google/android/gms/internal/location/zzbg;

    .line 30
    .line 31
    check-cast v2, Lcom/google/android/gms/internal/location/zzh;

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/google/android/gms/internal/location/zzh;->a()Lcom/google/android/gms/internal/location/zzam;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    new-instance v3, Lcom/google/android/gms/internal/location/zzbc;

    .line 38
    .line 39
    const/4 v7, 0x0

    .line 40
    const/4 v8, 0x0

    .line 41
    const/4 v9, 0x0

    .line 42
    const/4 v4, 0x2

    .line 43
    const/4 v5, 0x0

    .line 44
    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/location/zzbc;-><init>(ILcom/google/android/gms/internal/location/zzba;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/location/zzam;->f0(Lcom/google/android/gms/internal/location/zzbc;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    goto/16 :goto_5

    .line 53
    .line 54
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzav;->c:Ljava/util/HashMap;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 57
    .line 58
    .line 59
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    iget-object v2, p0, Lcom/google/android/gms/internal/location/zzav;->e:Ljava/util/HashMap;

    .line 61
    .line 62
    monitor-enter v2

    .line 63
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzav;->e:Ljava/util/HashMap;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_3

    .line 78
    .line 79
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    move-object v8, v1

    .line 84
    check-cast v8, Lcom/google/android/gms/internal/location/zzar;

    .line 85
    .line 86
    if-eqz v8, :cond_2

    .line 87
    .line 88
    iget-object v1, p0, Lcom/google/android/gms/internal/location/zzav;->a:Lcom/google/android/gms/internal/location/zzbg;

    .line 89
    .line 90
    check-cast v1, Lcom/google/android/gms/internal/location/zzh;

    .line 91
    .line 92
    invoke-virtual {v1}, Lcom/google/android/gms/internal/location/zzh;->a()Lcom/google/android/gms/internal/location/zzam;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    new-instance v3, Lcom/google/android/gms/internal/location/zzbc;

    .line 97
    .line 98
    const/4 v6, 0x0

    .line 99
    const/4 v7, 0x0

    .line 100
    const/4 v9, 0x0

    .line 101
    const/4 v4, 0x2

    .line 102
    const/4 v5, 0x0

    .line 103
    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/location/zzbc;-><init>(ILcom/google/android/gms/internal/location/zzba;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 104
    .line 105
    .line 106
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/location/zzam;->f0(Lcom/google/android/gms/internal/location/zzbc;)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :catchall_1
    move-exception v0

    .line 111
    goto :goto_4

    .line 112
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzav;->e:Ljava/util/HashMap;

    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 115
    .line 116
    .line 117
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 118
    iget-object v1, p0, Lcom/google/android/gms/internal/location/zzav;->d:Ljava/util/HashMap;

    .line 119
    .line 120
    monitor-enter v1

    .line 121
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzav;->d:Ljava/util/HashMap;

    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-eqz v2, :cond_5

    .line 136
    .line 137
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    check-cast v2, Lcom/google/android/gms/internal/location/zzas;

    .line 142
    .line 143
    if-eqz v2, :cond_4

    .line 144
    .line 145
    iget-object v3, p0, Lcom/google/android/gms/internal/location/zzav;->a:Lcom/google/android/gms/internal/location/zzbg;

    .line 146
    .line 147
    check-cast v3, Lcom/google/android/gms/internal/location/zzh;

    .line 148
    .line 149
    invoke-virtual {v3}, Lcom/google/android/gms/internal/location/zzh;->a()Lcom/google/android/gms/internal/location/zzam;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    new-instance v4, Lcom/google/android/gms/internal/location/zzl;

    .line 154
    .line 155
    const/4 v5, 0x2

    .line 156
    const/4 v6, 0x0

    .line 157
    invoke-direct {v4, v5, v6, v2, v6}, Lcom/google/android/gms/internal/location/zzl;-><init>(ILcom/google/android/gms/internal/location/zzj;Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 158
    .line 159
    .line 160
    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/location/zzam;->l2(Lcom/google/android/gms/internal/location/zzl;)V

    .line 161
    .line 162
    .line 163
    goto :goto_2

    .line 164
    :catchall_2
    move-exception v0

    .line 165
    goto :goto_3

    .line 166
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzav;->d:Ljava/util/HashMap;

    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 169
    .line 170
    .line 171
    monitor-exit v1

    .line 172
    return-void

    .line 173
    :goto_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 174
    throw v0

    .line 175
    :goto_4
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 176
    throw v0

    .line 177
    :goto_5
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 178
    throw v0
.end method
