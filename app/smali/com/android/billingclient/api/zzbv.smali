.class final Lcom/android/billingclient/api/zzbv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final c:Lcom/android/billingclient/api/BillingClientStateListener;

.field public final f:Lcom/google/android/gms/internal/play_billing/zzbl;

.field public final g:Lcom/google/android/gms/internal/play_billing/zzbl;

.field public final synthetic h:Lcom/android/billingclient/api/BillingClientImpl;


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingClientStateListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/billingclient/api/zzbv;->h:Lcom/android/billingclient/api/BillingClientImpl;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/android/billingclient/api/BillingClientImpl;->C:Lcom/google/android/gms/internal/play_billing/zzbo;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzbl;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzbl;-><init>(Lcom/google/android/gms/internal/play_billing/zzbo;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/billingclient/api/zzbv;->f:Lcom/google/android/gms/internal/play_billing/zzbl;

    .line 14
    .line 15
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzbl;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzbl;-><init>(Lcom/google/android/gms/internal/play_billing/zzbo;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/billingclient/api/zzbv;->g:Lcom/google/android/gms/internal/play_billing/zzbl;

    .line 21
    .line 22
    iput-object p2, p0, Lcom/android/billingclient/api/zzbv;->c:Lcom/android/billingclient/api/BillingClientStateListener;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/zzbv;->h:Lcom/android/billingclient/api/BillingClientImpl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/billingclient/api/BillingClientImpl;->a:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/billingclient/api/zzbv;->f:Lcom/google/android/gms/internal/play_billing/zzbl;

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    iput-wide v2, v1, Lcom/google/android/gms/internal/play_billing/zzbl;->c:J

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    iput-boolean v2, v1, Lcom/google/android/gms/internal/play_billing/zzbl;->b:Z

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzbl;->a()V

    .line 16
    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw v1
.end method

.method public final b(Z)Ljava/lang/Long;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    :try_start_0
    iget-object p1, p0, Lcom/android/billingclient/api/zzbv;->h:Lcom/android/billingclient/api/BillingClientImpl;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/android/billingclient/api/BillingClientImpl;->a:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    iget-object v2, p0, Lcom/android/billingclient/api/zzbv;->f:Lcom/google/android/gms/internal/play_billing/zzbl;

    .line 11
    .line 12
    iget-boolean v3, v2, Lcom/google/android/gms/internal/play_billing/zzbl;->b:Z

    .line 13
    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    iget-object v3, v2, Lcom/google/android/gms/internal/play_billing/zzbl;->a:Lcom/google/android/gms/internal/play_billing/zzbo;

    .line 17
    .line 18
    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/zzbo;->a()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    iget-boolean v5, v2, Lcom/google/android/gms/internal/play_billing/zzbl;->b:Z

    .line 23
    .line 24
    const-string v6, "This stopwatch is already stopped."

    .line 25
    .line 26
    if-eqz v5, :cond_0

    .line 27
    .line 28
    iput-boolean v0, v2, Lcom/google/android/gms/internal/play_billing/zzbl;->b:Z

    .line 29
    .line 30
    iget-wide v5, v2, Lcom/google/android/gms/internal/play_billing/zzbl;->c:J

    .line 31
    .line 32
    iget-wide v7, v2, Lcom/google/android/gms/internal/play_billing/zzbl;->d:J

    .line 33
    .line 34
    sub-long/2addr v3, v7

    .line 35
    add-long/2addr v3, v5

    .line 36
    iput-wide v3, v2, Lcom/google/android/gms/internal/play_billing/zzbl;->c:J

    .line 37
    .line 38
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 39
    .line 40
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 41
    .line 42
    invoke-virtual {v0, v3, v4, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 43
    .line 44
    .line 45
    move-result-wide v2

    .line 46
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    monitor-exit p1

    .line 51
    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v0

    .line 60
    :cond_1
    monitor-exit p1

    .line 61
    return-object v1

    .line 62
    :goto_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    :try_start_2
    throw v0

    .line 64
    :catchall_1
    move-exception p1

    .line 65
    goto :goto_2

    .line 66
    :cond_2
    iget-object p1, p0, Lcom/android/billingclient/api/zzbv;->h:Lcom/android/billingclient/api/BillingClientImpl;

    .line 67
    .line 68
    iget-object p1, p1, Lcom/android/billingclient/api/BillingClientImpl;->a:Ljava/lang/Object;

    .line 69
    .line 70
    monitor-enter p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 71
    :try_start_3
    iget-object v2, p0, Lcom/android/billingclient/api/zzbv;->g:Lcom/google/android/gms/internal/play_billing/zzbl;

    .line 72
    .line 73
    iget-boolean v3, v2, Lcom/google/android/gms/internal/play_billing/zzbl;->b:Z

    .line 74
    .line 75
    if-eqz v3, :cond_4

    .line 76
    .line 77
    iget-object v3, v2, Lcom/google/android/gms/internal/play_billing/zzbl;->a:Lcom/google/android/gms/internal/play_billing/zzbo;

    .line 78
    .line 79
    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/zzbo;->a()J

    .line 80
    .line 81
    .line 82
    move-result-wide v3

    .line 83
    iget-boolean v5, v2, Lcom/google/android/gms/internal/play_billing/zzbl;->b:Z

    .line 84
    .line 85
    const-string v6, "This stopwatch is already stopped."

    .line 86
    .line 87
    if-eqz v5, :cond_3

    .line 88
    .line 89
    iput-boolean v0, v2, Lcom/google/android/gms/internal/play_billing/zzbl;->b:Z

    .line 90
    .line 91
    iget-wide v5, v2, Lcom/google/android/gms/internal/play_billing/zzbl;->c:J

    .line 92
    .line 93
    iget-wide v7, v2, Lcom/google/android/gms/internal/play_billing/zzbl;->d:J

    .line 94
    .line 95
    sub-long/2addr v3, v7

    .line 96
    add-long/2addr v3, v5

    .line 97
    iput-wide v3, v2, Lcom/google/android/gms/internal/play_billing/zzbl;->c:J

    .line 98
    .line 99
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 100
    .line 101
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 102
    .line 103
    invoke-virtual {v0, v3, v4, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 104
    .line 105
    .line 106
    move-result-wide v2

    .line 107
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    monitor-exit p1

    .line 112
    return-object v0

    .line 113
    :catchall_2
    move-exception v0

    .line 114
    goto :goto_1

    .line 115
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 116
    .line 117
    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw v0

    .line 121
    :cond_4
    monitor-exit p1

    .line 122
    return-object v1

    .line 123
    :goto_1
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 124
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 125
    :goto_2
    const-string v0, "BillingClient"

    .line 126
    .line 127
    const-string v2, "Exception getting connection establishment duration."

    .line 128
    .line 129
    invoke-static {v0, v2, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    .line 131
    .line 132
    return-object v1
.end method

.method public final c(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzje;Ljava/lang/String;Z)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjg;->q()Lcom/google/android/gms/internal/play_billing/zzjc;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p1, Lcom/android/billingclient/api/BillingResult;->a:I

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    .line 8
    .line 9
    .line 10
    iget-object v2, v0, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 11
    .line 12
    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzjg;

    .line 13
    .line 14
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/play_billing/zzjg;->v(Lcom/google/android/gms/internal/play_billing/zzjg;I)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p1, Lcom/android/billingclient/api/BillingResult;->c:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    .line 20
    .line 21
    .line 22
    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 23
    .line 24
    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzjg;

    .line 25
    .line 26
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzjg;->s(Lcom/google/android/gms/internal/play_billing/zzjg;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/play_billing/zzjc;->g(Lcom/google/android/gms/internal/play_billing/zzje;)V

    .line 30
    .line 31
    .line 32
    if-eqz p3, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    .line 35
    .line 36
    .line 37
    iget-object p1, v0, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 38
    .line 39
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzjg;

    .line 40
    .line 41
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/play_billing/zzjg;->r(Lcom/google/android/gms/internal/play_billing/zzjg;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual {p0, p4}, Lcom/android/billingclient/api/zzbv;->b(Z)Ljava/lang/Long;

    .line 45
    .line 46
    .line 47
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    iget-object p2, p0, Lcom/android/billingclient/api/zzbv;->h:Lcom/android/billingclient/api/BillingClientImpl;

    .line 49
    .line 50
    if-eqz p4, :cond_2

    .line 51
    .line 52
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzkv;->q()Lcom/google/android/gms/internal/play_billing/zzkt;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    const/4 p4, 0x0

    .line 57
    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/play_billing/zzkt;->g(Z)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3}, Lcom/google/android/gms/internal/play_billing/zzkt;->h()V

    .line 61
    .line 62
    .line 63
    if-eqz p1, :cond_1

    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 66
    .line 67
    .line 68
    move-result-wide v1

    .line 69
    invoke-virtual {p3}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    .line 70
    .line 71
    .line 72
    iget-object p1, p3, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 73
    .line 74
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzkv;

    .line 75
    .line 76
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzkv;->t(Lcom/google/android/gms/internal/play_billing/zzkv;J)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception p1

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzix;->t()Lcom/google/android/gms/internal/play_billing/zziv;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/play_billing/zziv;->g(Lcom/google/android/gms/internal/play_billing/zzjc;)V

    .line 87
    .line 88
    .line 89
    const/4 p4, 0x6

    .line 90
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/play_billing/zziv;->i(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/zziv;->h(Lcom/google/android/gms/internal/play_billing/zzkt;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzfr;->c()Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzix;

    .line 101
    .line 102
    invoke-virtual {p2, p1}, Lcom/android/billingclient/api/BillingClientImpl;->u(Lcom/google/android/gms/internal/play_billing/zzix;)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzko;->q()Lcom/google/android/gms/internal/play_billing/zzkm;

    .line 107
    .line 108
    .line 109
    move-result-object p3

    .line 110
    invoke-virtual {p3}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    .line 111
    .line 112
    .line 113
    iget-object p4, p3, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 114
    .line 115
    check-cast p4, Lcom/google/android/gms/internal/play_billing/zzko;

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfr;->c()Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzjg;

    .line 122
    .line 123
    invoke-static {p4, v0}, Lcom/google/android/gms/internal/play_billing/zzko;->r(Lcom/google/android/gms/internal/play_billing/zzko;Lcom/google/android/gms/internal/play_billing/zzjg;)V

    .line 124
    .line 125
    .line 126
    if-eqz p1, :cond_3

    .line 127
    .line 128
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 129
    .line 130
    .line 131
    move-result-wide v0

    .line 132
    invoke-virtual {p3}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    .line 133
    .line 134
    .line 135
    iget-object p1, p3, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 136
    .line 137
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzko;

    .line 138
    .line 139
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzko;->s(Lcom/google/android/gms/internal/play_billing/zzko;J)V

    .line 140
    .line 141
    .line 142
    :cond_3
    iget-object p1, p2, Lcom/android/billingclient/api/BillingClientImpl;->h:Lcom/android/billingclient/api/zzdh;

    .line 143
    .line 144
    invoke-virtual {p3}, Lcom/google/android/gms/internal/play_billing/zzfr;->c()Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzko;

    .line 149
    .line 150
    invoke-virtual {p1, p2}, Lcom/android/billingclient/api/zzdh;->j(Lcom/google/android/gms/internal/play_billing/zzko;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :goto_1
    const-string p2, "BillingClient"

    .line 155
    .line 156
    const-string p3, "Unable to log."

    .line 157
    .line 158
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    .line 160
    .line 161
    return-void
.end method

.method public final d(Lcom/android/billingclient/api/BillingResult;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/zzbv;->h:Lcom/android/billingclient/api/BillingClientImpl;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/billingclient/api/BillingClientImpl;->a:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget v0, v0, Lcom/android/billingclient/api/BillingClientImpl;->b:I

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    if-ne v0, v2, :cond_0

    .line 10
    .line 11
    monitor-exit v1

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :try_start_1
    iget-object v0, p0, Lcom/android/billingclient/api/zzbv;->c:Lcom/android/billingclient/api/BillingClientStateListener;

    .line 17
    .line 18
    invoke-interface {v0, p1}, Lcom/android/billingclient/api/BillingClientStateListener;->d(Lcom/android/billingclient/api/BillingResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catchall_1
    move-exception p1

    .line 23
    const-string v0, "BillingClient"

    .line 24
    .line 25
    const-string v1, "Exception while calling onBillingSetupFinished."

    .line 26
    .line 27
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    throw p1
.end method

.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 4

    .line 1
    const-string p1, "BillingClient"

    .line 2
    .line 3
    const-string v0, "Billing service died."

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/zzbv;->h:Lcom/android/billingclient/api/BillingClientImpl;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->p(Lcom/android/billingclient/api/BillingClientImpl;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/billingclient/api/BillingClientImpl;->h:Lcom/android/billingclient/api/zzdh;

    .line 18
    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzix;->t()Lcom/google/android/gms/internal/play_billing/zziv;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x6

    .line 24
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/zziv;->i(I)V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjg;->q()Lcom/google/android/gms/internal/play_billing/zzjc;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzje;->k1:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzjc;->g(Lcom/google/android/gms/internal/play_billing/zzje;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/zziv;->g(Lcom/google/android/gms/internal/play_billing/zzjc;)V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzkv;->q()Lcom/google/android/gms/internal/play_billing/zzkt;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/play_billing/zzkt;->g(Z)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_billing/zzkt;->h()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/zziv;->h(Lcom/google/android/gms/internal/play_billing/zzkt;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzfr;->c()Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzix;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/zzdh;->a(Lcom/google/android/gms/internal/play_billing/zzix;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, v0, Lcom/android/billingclient/api/BillingClientImpl;->h:Lcom/android/billingclient/api/zzdh;

    .line 65
    .line 66
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjj;->q()Lcom/google/android/gms/internal/play_billing/zzjj;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/zzdh;->i(Lcom/google/android/gms/internal/play_billing/zzjj;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :goto_0
    const-string v1, "BillingClient"

    .line 75
    .line 76
    const-string v2, "Unable to log."

    .line 77
    .line 78
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    :goto_1
    iget-object v0, p0, Lcom/android/billingclient/api/zzbv;->h:Lcom/android/billingclient/api/BillingClientImpl;

    .line 82
    .line 83
    iget-object v1, v0, Lcom/android/billingclient/api/BillingClientImpl;->a:Ljava/lang/Object;

    .line 84
    .line 85
    monitor-enter v1

    .line 86
    :try_start_1
    iget v2, v0, Lcom/android/billingclient/api/BillingClientImpl;->b:I

    .line 87
    .line 88
    const/4 v3, 0x3

    .line 89
    if-eq v2, v3, :cond_2

    .line 90
    .line 91
    iget v2, v0, Lcom/android/billingclient/api/BillingClientImpl;->b:I

    .line 92
    .line 93
    if-nez v2, :cond_1

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->x(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClientImpl;->A()V

    .line 100
    .line 101
    .line 102
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 103
    :try_start_2
    iget-object p1, p0, Lcom/android/billingclient/api/zzbv;->c:Lcom/android/billingclient/api/BillingClientStateListener;

    .line 104
    .line 105
    invoke-interface {p1}, Lcom/android/billingclient/api/BillingClientStateListener;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 106
    .line 107
    .line 108
    goto :goto_3

    .line 109
    :catchall_1
    move-exception p1

    .line 110
    const-string v0, "BillingClient"

    .line 111
    .line 112
    const-string v1, "Exception while calling onBillingServiceDisconnected."

    .line 113
    .line 114
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :catchall_2
    move-exception p1

    .line 119
    goto :goto_4

    .line 120
    :cond_2
    :goto_2
    :try_start_3
    monitor-exit v1

    .line 121
    :goto_3
    return-void

    .line 122
    :goto_4
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 123
    throw p1
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8

    .line 1
    const-string p1, "BillingClient"

    .line 2
    .line 3
    const-string v0, "Billing service connected."

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/billingclient/api/zzbv;->h:Lcom/android/billingclient/api/BillingClientImpl;

    .line 9
    .line 10
    iget-object v1, p1, Lcom/android/billingclient/api/BillingClientImpl;->a:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    iget v0, p1, Lcom/android/billingclient/api/BillingClientImpl;->b:I

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    if-ne v0, v2, :cond_0

    .line 17
    .line 18
    monitor-exit v1

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    move-object p1, v0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    sget v0, Lcom/google/android/gms/internal/play_billing/zzao;->c:I

    .line 24
    .line 25
    const-string v0, "com.android.vending.billing.IInAppBillingService"

    .line 26
    .line 27
    if-nez p2, :cond_1

    .line 28
    .line 29
    const/4 p2, 0x0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    instance-of v3, v2, Lcom/google/android/gms/internal/play_billing/zzap;

    .line 36
    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    move-object p2, v2

    .line 40
    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzap;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    new-instance v2, Lcom/google/android/gms/internal/play_billing/zzan;

    .line 44
    .line 45
    invoke-direct {v2, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzas;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    move-object p2, v2

    .line 49
    :goto_0
    iput-object p2, p1, Lcom/android/billingclient/api/BillingClientImpl;->i:Lcom/google/android/gms/internal/play_billing/zzap;

    .line 50
    .line 51
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    new-instance v2, Lcom/android/billingclient/api/zzbt;

    .line 53
    .line 54
    invoke-direct {v2, p0}, Lcom/android/billingclient/api/zzbt;-><init>(Lcom/android/billingclient/api/zzbv;)V

    .line 55
    .line 56
    .line 57
    new-instance v5, Lcom/android/billingclient/api/zzbu;

    .line 58
    .line 59
    invoke-direct {v5, p0}, Lcom/android/billingclient/api/zzbu;-><init>(Lcom/android/billingclient/api/zzbv;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClientImpl;->q()Landroid/os/Handler;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClientImpl;->i()Ljava/util/concurrent/ExecutorService;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    const-wide/16 v3, 0x7530

    .line 71
    .line 72
    invoke-static/range {v2 .. v7}, Lcom/android/billingclient/api/BillingClientImpl;->j(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    if-nez p2, :cond_3

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClientImpl;->t()Lcom/android/billingclient/api/BillingResult;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzje;->D:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 83
    .line 84
    invoke-virtual {p1, p2, v0}, Lcom/android/billingclient/api/BillingClientImpl;->w(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzje;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p2}, Lcom/android/billingclient/api/zzbv;->d(Lcom/android/billingclient/api/BillingResult;)V

    .line 88
    .line 89
    .line 90
    :cond_3
    return-void

    .line 91
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5

    .line 1
    const-string p1, "BillingClient"

    .line 2
    .line 3
    const-string v0, "Billing service disconnected."

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/zzbv;->h:Lcom/android/billingclient/api/BillingClientImpl;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->p(Lcom/android/billingclient/api/BillingClientImpl;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/billingclient/api/BillingClientImpl;->h:Lcom/android/billingclient/api/zzdh;

    .line 18
    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzix;->t()Lcom/google/android/gms/internal/play_billing/zziv;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x6

    .line 24
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/zziv;->i(I)V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjg;->q()Lcom/google/android/gms/internal/play_billing/zzjc;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzje;->j1:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzjc;->g(Lcom/google/android/gms/internal/play_billing/zzje;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/zziv;->g(Lcom/google/android/gms/internal/play_billing/zzjc;)V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzkv;->q()Lcom/google/android/gms/internal/play_billing/zzkt;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/play_billing/zzkt;->g(Z)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_billing/zzkt;->h()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/zziv;->h(Lcom/google/android/gms/internal/play_billing/zzkt;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzfr;->c()Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzix;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/zzdh;->a(Lcom/google/android/gms/internal/play_billing/zzix;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, v0, Lcom/android/billingclient/api/BillingClientImpl;->h:Lcom/android/billingclient/api/zzdh;

    .line 65
    .line 66
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzks;->q()Lcom/google/android/gms/internal/play_billing/zzks;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/zzdh;->k(Lcom/google/android/gms/internal/play_billing/zzks;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :goto_0
    const-string v1, "BillingClient"

    .line 75
    .line 76
    const-string v2, "Unable to log."

    .line 77
    .line 78
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    :goto_1
    iget-object v0, p0, Lcom/android/billingclient/api/zzbv;->h:Lcom/android/billingclient/api/BillingClientImpl;

    .line 82
    .line 83
    iget-object v1, v0, Lcom/android/billingclient/api/BillingClientImpl;->a:Ljava/lang/Object;

    .line 84
    .line 85
    monitor-enter v1

    .line 86
    :try_start_1
    iget-object v2, p0, Lcom/android/billingclient/api/zzbv;->g:Lcom/google/android/gms/internal/play_billing/zzbl;

    .line 87
    .line 88
    const-wide/16 v3, 0x0

    .line 89
    .line 90
    iput-wide v3, v2, Lcom/google/android/gms/internal/play_billing/zzbl;->c:J

    .line 91
    .line 92
    iput-boolean p1, v2, Lcom/google/android/gms/internal/play_billing/zzbl;->b:Z

    .line 93
    .line 94
    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_billing/zzbl;->a()V

    .line 95
    .line 96
    .line 97
    iget v2, v0, Lcom/android/billingclient/api/BillingClientImpl;->b:I

    .line 98
    .line 99
    const/4 v3, 0x3

    .line 100
    if-ne v2, v3, :cond_1

    .line 101
    .line 102
    monitor-exit v1

    .line 103
    goto :goto_2

    .line 104
    :catchall_1
    move-exception p1

    .line 105
    goto :goto_3

    .line 106
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->x(I)V

    .line 107
    .line 108
    .line 109
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 110
    :try_start_2
    iget-object p1, p0, Lcom/android/billingclient/api/zzbv;->c:Lcom/android/billingclient/api/BillingClientStateListener;

    .line 111
    .line 112
    invoke-interface {p1}, Lcom/android/billingclient/api/BillingClientStateListener;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 113
    .line 114
    .line 115
    :goto_2
    return-void

    .line 116
    :catchall_2
    move-exception p1

    .line 117
    const-string v0, "BillingClient"

    .line 118
    .line 119
    const-string v1, "Exception while calling onBillingServiceDisconnected."

    .line 120
    .line 121
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :goto_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 126
    throw p1
.end method
