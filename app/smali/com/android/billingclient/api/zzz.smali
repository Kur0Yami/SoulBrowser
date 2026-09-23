.class final Lcom/android/billingclient/api/zzz;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation


# instance fields
.field public a:Z

.field public final b:Z

.field public final synthetic c:Lcom/android/billingclient/api/zzaa;


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/zzaa;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/zzz;->c:Lcom/android/billingclient/api/zzaa;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/billingclient/api/zzz;->b:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;Landroid/content/IntentFilter;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/billingclient/api/zzz;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 v1, 0x21

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    if-lt v0, v1, :cond_2

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/android/billingclient/api/zzz;->b:Z

    .line 16
    .line 17
    if-eq v2, v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x4

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v0, 0x2

    .line 22
    :goto_0
    invoke-virtual {p1, p0, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_2

    .line 28
    :cond_2
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    :goto_1
    iput-boolean v2, p0, Lcom/android/billingclient/api/zzz;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    monitor-exit p0

    .line 34
    return-void

    .line 35
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    throw p1
.end method

.method public final declared-synchronized b(Landroid/content/Context;Landroid/content/IntentFilter;)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/billingclient/api/zzz;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const-string v4, "com.google.android.finsky.permission.PLAY_BILLING_LIBRARY_BROADCAST"

    .line 11
    .line 12
    const/16 v1, 0x21

    .line 13
    .line 14
    const/4 v7, 0x1

    .line 15
    if-lt v0, v1, :cond_2

    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/android/billingclient/api/zzz;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18
    .line 19
    if-eq v7, v0, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x4

    .line 22
    :goto_0
    move v6, v0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const/4 v0, 0x2

    .line 25
    goto :goto_0

    .line 26
    :goto_1
    const/4 v5, 0x0

    .line 27
    move-object v2, p0

    .line 28
    move-object v1, p1

    .line 29
    move-object v3, p2

    .line 30
    :try_start_2
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    goto :goto_3

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    :goto_2
    move-object p1, v0

    .line 36
    goto :goto_4

    .line 37
    :catchall_1
    move-exception v0

    .line 38
    move-object v2, p0

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    move-object v2, p0

    .line 41
    move-object v1, p1

    .line 42
    move-object v3, p2

    .line 43
    const/4 p1, 0x0

    .line 44
    invoke-virtual {v1, p0, v3, v4, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    :goto_3
    iput-boolean v7, v2, Lcom/android/billingclient/api/zzz;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    .line 49
    monitor-exit p0

    .line 50
    return-void

    .line 51
    :goto_4
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 52
    throw p1
.end method

.method public final declared-synchronized c(Landroid/content/Context;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/billingclient/api/zzz;->a:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/android/billingclient/api/zzz;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    :try_start_1
    const-string p1, "BillingBroadcastManager"

    .line 17
    .line 18
    const-string v0, "Receiver is not registered."

    .line 19
    .line 20
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    .line 22
    .line 23
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    throw p1
.end method

.method public final d(Landroid/os/Bundle;Lcom/android/billingclient/api/BillingResult;ILcom/google/android/gms/internal/play_billing/zzjl;JZ)V
    .locals 3

    .line 1
    const-string v0, "FAILURE_LOGGING_PAYLOAD"

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v2, p0, Lcom/android/billingclient/api/zzz;->c:Lcom/android/billingclient/api/zzaa;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    :try_start_1
    iget-object p2, v2, Lcom/android/billingclient/api/zzaa;->c:Lcom/android/billingclient/api/zzcy;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzfh;->a()Lcom/google/android/gms/internal/play_billing/zzfh;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/play_billing/zzix;->u([BLcom/google/android/gms/internal/play_billing/zzfh;)Lcom/google/android/gms/internal/play_billing/zzix;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {p2, p1, p5, p6, p7}, Lcom/android/billingclient/api/zzcy;->c(Lcom/google/android/gms/internal/play_billing/zzix;JZ)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iget-object p1, v2, Lcom/android/billingclient/api/zzaa;->c:Lcom/android/billingclient/api/zzcy;

    .line 30
    .line 31
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzje;->B:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-static {v0, p3, p2, v1, p4}, Lcom/android/billingclient/api/zzcx;->b(Lcom/google/android/gms/internal/play_billing/zzje;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjl;)Lcom/google/android/gms/internal/play_billing/zzix;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-interface {p1, p2, p5, p6, p7}, Lcom/android/billingclient/api/zzcy;->c(Lcom/google/android/gms/internal/play_billing/zzix;JZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catchall_0
    const-string p1, "BillingBroadcastManager"

    .line 43
    .line 44
    const-string p2, "Failed parsing Api failure."

    .line 45
    .line 46
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzc;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    .line 1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const v2, -0x58756162

    .line 10
    .line 11
    .line 12
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzjl;->h:Lcom/google/android/gms/internal/play_billing/zzjl;

    .line 13
    .line 14
    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzjl;->g:Lcom/google/android/gms/internal/play_billing/zzjl;

    .line 15
    .line 16
    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzjl;->i:Lcom/google/android/gms/internal/play_billing/zzjl;

    .line 17
    .line 18
    if-eq v1, v2, :cond_2

    .line 19
    .line 20
    const v2, -0x141f9074

    .line 21
    .line 22
    .line 23
    if-eq v1, v2, :cond_1

    .line 24
    .line 25
    const v2, 0x14937179

    .line 26
    .line 27
    .line 28
    if-eq v1, v2, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string v1, "com.android.vending.billing.ALTERNATIVE_BILLING"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    move-object v10, v5

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const-string v1, "com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    move-object v10, v3

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    const-string v1, "com.android.vending.billing.PURCHASES_UPDATED"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    move-object v10, v4

    .line 60
    goto :goto_1

    .line 61
    :cond_3
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjl;->f:Lcom/google/android/gms/internal/play_billing/zzjl;

    .line 62
    .line 63
    move-object v10, v0

    .line 64
    :goto_1
    invoke-virtual {v10, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    const/4 v1, 0x2

    .line 69
    if-nez v0, :cond_4

    .line 70
    .line 71
    invoke-virtual {v10, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_5

    .line 76
    .line 77
    :cond_4
    move v9, v1

    .line 78
    goto :goto_3

    .line 79
    :cond_5
    invoke-virtual {v10, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_6

    .line 84
    .line 85
    const/16 v0, 0x20

    .line 86
    .line 87
    :goto_2
    move v9, v0

    .line 88
    goto :goto_3

    .line 89
    :cond_6
    const/4 v0, 0x1

    .line 90
    goto :goto_2

    .line 91
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    const/4 v0, 0x0

    .line 96
    move-object/from16 v6, p0

    .line 97
    .line 98
    iget-object v2, v6, Lcom/android/billingclient/api/zzz;->c:Lcom/android/billingclient/api/zzaa;

    .line 99
    .line 100
    const-string v14, "BillingBroadcastManager"

    .line 101
    .line 102
    if-nez v7, :cond_7

    .line 103
    .line 104
    const-string v1, "Bundle is null."

    .line 105
    .line 106
    invoke-static {v14, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-object v1, v2, Lcom/android/billingclient/api/zzaa;->c:Lcom/android/billingclient/api/zzcy;

    .line 110
    .line 111
    sget-object v3, Lcom/android/billingclient/api/zzdb;->h:Lcom/android/billingclient/api/BillingResult;

    .line 112
    .line 113
    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzje;->p:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 114
    .line 115
    invoke-static {v4, v9, v3, v0, v10}, Lcom/android/billingclient/api/zzcx;->b(Lcom/google/android/gms/internal/play_billing/zzje;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjl;)Lcom/google/android/gms/internal/play_billing/zzix;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-interface {v1, v4}, Lcom/android/billingclient/api/zzcy;->a(Lcom/google/android/gms/internal/play_billing/zzix;)V

    .line 120
    .line 121
    .line 122
    iget-object v1, v2, Lcom/android/billingclient/api/zzaa;->b:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    .line 123
    .line 124
    if-eqz v1, :cond_e

    .line 125
    .line 126
    invoke-interface {v1, v3, v0}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->b(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :cond_7
    const/4 v8, 0x0

    .line 131
    if-ne v9, v1, :cond_b

    .line 132
    .line 133
    sget v1, Lcom/google/android/gms/internal/play_billing/zzc;->a:I

    .line 134
    .line 135
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->a()Lcom/android/billingclient/api/BillingResult$Builder;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 140
    .line 141
    .line 142
    move-result-object v11

    .line 143
    invoke-static {v14, v11}, Lcom/google/android/gms/internal/play_billing/zzc;->a(Ljava/lang/String;Landroid/os/Bundle;)I

    .line 144
    .line 145
    .line 146
    move-result v11

    .line 147
    iput v11, v1, Lcom/android/billingclient/api/BillingResult$Builder;->a:I

    .line 148
    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 150
    .line 151
    .line 152
    move-result-object v11

    .line 153
    if-nez v11, :cond_8

    .line 154
    .line 155
    const-string v11, "Unexpected null bundle received!"

    .line 156
    .line 157
    invoke-static {v14, v11}, Lcom/google/android/gms/internal/play_billing/zzc;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    :goto_4
    move v11, v8

    .line 161
    goto :goto_5

    .line 162
    :cond_8
    const-string v12, "SUB_RESPONSE_CODE"

    .line 163
    .line 164
    invoke-virtual {v11, v12}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v11

    .line 168
    if-nez v11, :cond_9

    .line 169
    .line 170
    const-string v11, "getOnPurchasesUpdatedSubResponseCodeFromBundle() got null response code, assuming OK"

    .line 171
    .line 172
    invoke-static {v14, v11}, Lcom/google/android/gms/internal/play_billing/zzc;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    goto :goto_4

    .line 176
    :cond_9
    instance-of v12, v11, Ljava/lang/Integer;

    .line 177
    .line 178
    if-eqz v12, :cond_a

    .line 179
    .line 180
    check-cast v11, Ljava/lang/Integer;

    .line 181
    .line 182
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 183
    .line 184
    .line 185
    move-result v11

    .line 186
    goto :goto_5

    .line 187
    :cond_a
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    move-result-object v11

    .line 191
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v11

    .line 195
    const-string v12, "Unexpected type for bundle sub response code: "

    .line 196
    .line 197
    invoke-virtual {v12, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v11

    .line 201
    invoke-static {v14, v11}, Lcom/google/android/gms/internal/play_billing/zzc;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    goto :goto_4

    .line 205
    :goto_5
    iput v11, v1, Lcom/android/billingclient/api/BillingResult$Builder;->b:I

    .line 206
    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 208
    .line 209
    .line 210
    move-result-object v11

    .line 211
    invoke-static {v14, v11}, Lcom/google/android/gms/internal/play_billing/zzc;->f(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v11

    .line 215
    iput-object v11, v1, Lcom/android/billingclient/api/BillingResult$Builder;->c:Ljava/lang/String;

    .line 216
    .line 217
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingResult$Builder;->a()Lcom/android/billingclient/api/BillingResult;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    goto :goto_6

    .line 222
    :cond_b
    move-object/from16 v1, p2

    .line 223
    .line 224
    invoke-static {v14, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->e(Ljava/lang/String;Landroid/content/Intent;)Lcom/android/billingclient/api/BillingResult;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    :goto_6
    const-string v11, "billingClientTransactionId"

    .line 229
    .line 230
    const-wide/16 v12, 0x0

    .line 231
    .line 232
    invoke-virtual {v7, v11, v12, v13}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 233
    .line 234
    .line 235
    move-result-wide v11

    .line 236
    const-string v13, "wasServiceAutoReconnected"

    .line 237
    .line 238
    invoke-virtual {v7, v13, v8}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 239
    .line 240
    .line 241
    move-result v13

    .line 242
    invoke-virtual {v10, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v4

    .line 246
    if-nez v4, :cond_f

    .line 247
    .line 248
    invoke-virtual {v10, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v3

    .line 252
    if-eqz v3, :cond_c

    .line 253
    .line 254
    goto :goto_7

    .line 255
    :cond_c
    invoke-virtual {v10, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v3

    .line 259
    if-eqz v3, :cond_e

    .line 260
    .line 261
    iget v3, v1, Lcom/android/billingclient/api/BillingResult;->a:I

    .line 262
    .line 263
    if-eqz v3, :cond_d

    .line 264
    .line 265
    move-object v8, v1

    .line 266
    invoke-virtual/range {v6 .. v13}, Lcom/android/billingclient/api/zzz;->d(Landroid/os/Bundle;Lcom/android/billingclient/api/BillingResult;ILcom/google/android/gms/internal/play_billing/zzjl;JZ)V

    .line 267
    .line 268
    .line 269
    iget-object v0, v2, Lcom/android/billingclient/api/zzaa;->b:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    .line 270
    .line 271
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbw;->t()Lcom/google/android/gms/internal/play_billing/zzbw;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    invoke-interface {v0, v1, v2}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->b(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 276
    .line 277
    .line 278
    return-void

    .line 279
    :cond_d
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 280
    .line 281
    .line 282
    iget-object v1, v2, Lcom/android/billingclient/api/zzaa;->b:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    .line 283
    .line 284
    iget-object v2, v2, Lcom/android/billingclient/api/zzaa;->c:Lcom/android/billingclient/api/zzcy;

    .line 285
    .line 286
    const-string v3, "AlternativeBillingListener and UserChoiceBillingListener is null."

    .line 287
    .line 288
    invoke-static {v14, v3}, Lcom/google/android/gms/internal/play_billing/zzc;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    sget-object v3, Lcom/android/billingclient/api/zzdb;->h:Lcom/android/billingclient/api/BillingResult;

    .line 292
    .line 293
    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzje;->D0:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 294
    .line 295
    invoke-static {v4, v9, v3, v0, v10}, Lcom/android/billingclient/api/zzcx;->b(Lcom/google/android/gms/internal/play_billing/zzje;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjl;)Lcom/google/android/gms/internal/play_billing/zzix;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-interface {v2, v0, v11, v12, v13}, Lcom/android/billingclient/api/zzcy;->c(Lcom/google/android/gms/internal/play_billing/zzix;JZ)V

    .line 300
    .line 301
    .line 302
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbw;->t()Lcom/google/android/gms/internal/play_billing/zzbw;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    invoke-interface {v1, v3, v0}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->b(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 307
    .line 308
    .line 309
    :cond_e
    return-void

    .line 310
    :cond_f
    :goto_7
    const-string v3, "INAPP_PURCHASE_DATA_LIST"

    .line 311
    .line 312
    invoke-virtual {v7, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    const-string v4, "INAPP_DATA_SIGNATURE_LIST"

    .line 317
    .line 318
    invoke-virtual {v7, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 319
    .line 320
    .line 321
    move-result-object v4

    .line 322
    new-instance v5, Ljava/util/ArrayList;

    .line 323
    .line 324
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .line 326
    .line 327
    const-string v6, "BillingHelper"

    .line 328
    .line 329
    if-eqz v3, :cond_13

    .line 330
    .line 331
    if-nez v4, :cond_10

    .line 332
    .line 333
    goto :goto_a

    .line 334
    :cond_10
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 335
    .line 336
    .line 337
    move-result v0

    .line 338
    new-instance v14, Ljava/lang/StringBuilder;

    .line 339
    .line 340
    const-string v15, "Found purchase list of "

    .line 341
    .line 342
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    const-string v0, " items"

    .line 349
    .line 350
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    invoke-static {v6, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    :goto_8
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 361
    .line 362
    .line 363
    move-result v0

    .line 364
    if-ge v8, v0, :cond_12

    .line 365
    .line 366
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 367
    .line 368
    .line 369
    move-result v0

    .line 370
    if-ge v8, v0, :cond_12

    .line 371
    .line 372
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    check-cast v0, Ljava/lang/String;

    .line 377
    .line 378
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v6

    .line 382
    check-cast v6, Ljava/lang/String;

    .line 383
    .line 384
    invoke-static {v0, v6}, Lcom/google/android/gms/internal/play_billing/zzc;->k(Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/Purchase;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    if-eqz v0, :cond_11

    .line 389
    .line 390
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    :cond_11
    add-int/lit8 v8, v8, 0x1

    .line 394
    .line 395
    goto :goto_8

    .line 396
    :cond_12
    :goto_9
    move-object v0, v5

    .line 397
    goto :goto_b

    .line 398
    :cond_13
    :goto_a
    const-string v3, "INAPP_PURCHASE_DATA"

    .line 399
    .line 400
    invoke-virtual {v7, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v3

    .line 404
    const-string v4, "INAPP_DATA_SIGNATURE"

    .line 405
    .line 406
    invoke-virtual {v7, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v4

    .line 410
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzc;->k(Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/Purchase;

    .line 411
    .line 412
    .line 413
    move-result-object v3

    .line 414
    if-nez v3, :cond_14

    .line 415
    .line 416
    const-string v3, "Couldn\'t find single purchase data as well."

    .line 417
    .line 418
    invoke-static {v6, v3}, Lcom/google/android/gms/internal/play_billing/zzc;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    goto :goto_b

    .line 422
    :cond_14
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    .line 424
    .line 425
    goto :goto_9

    .line 426
    :goto_b
    iget v3, v1, Lcom/android/billingclient/api/BillingResult;->a:I

    .line 427
    .line 428
    if-nez v3, :cond_15

    .line 429
    .line 430
    iget-object v3, v2, Lcom/android/billingclient/api/zzaa;->c:Lcom/android/billingclient/api/zzcy;

    .line 431
    .line 432
    invoke-static {v9, v10}, Lcom/android/billingclient/api/zzcx;->c(ILcom/google/android/gms/internal/play_billing/zzjl;)Lcom/google/android/gms/internal/play_billing/zzjb;

    .line 433
    .line 434
    .line 435
    move-result-object v4

    .line 436
    invoke-interface {v3, v4, v11, v12, v13}, Lcom/android/billingclient/api/zzcy;->b(Lcom/google/android/gms/internal/play_billing/zzjb;JZ)V

    .line 437
    .line 438
    .line 439
    move-object v8, v1

    .line 440
    goto :goto_c

    .line 441
    :cond_15
    move-object/from16 v6, p0

    .line 442
    .line 443
    move-object v8, v1

    .line 444
    invoke-virtual/range {v6 .. v13}, Lcom/android/billingclient/api/zzz;->d(Landroid/os/Bundle;Lcom/android/billingclient/api/BillingResult;ILcom/google/android/gms/internal/play_billing/zzjl;JZ)V

    .line 445
    .line 446
    .line 447
    :goto_c
    iget-object v1, v2, Lcom/android/billingclient/api/zzaa;->b:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    .line 448
    .line 449
    invoke-interface {v1, v8, v0}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->b(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 450
    .line 451
    .line 452
    return-void
.end method
