.class public final synthetic Lcom/android/billingclient/api/zzaz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/android/billingclient/api/BillingClientImpl;

.field public final synthetic b:Lcom/android/billingclient/api/ConsumeResponseListener;

.field public final synthetic c:Lcom/android/billingclient/api/ConsumeParams;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/ConsumeResponseListener;Lcom/android/billingclient/api/ConsumeParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzaz;->a:Lcom/android/billingclient/api/BillingClientImpl;

    iput-object p2, p0, Lcom/android/billingclient/api/zzaz;->b:Lcom/android/billingclient/api/ConsumeResponseListener;

    iput-object p3, p0, Lcom/android/billingclient/api/zzaz;->c:Lcom/android/billingclient/api/ConsumeParams;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 12

    .line 1
    iget-object v1, p0, Lcom/android/billingclient/api/zzaz;->a:Lcom/android/billingclient/api/BillingClientImpl;

    .line 2
    .line 3
    iget-object v2, p0, Lcom/android/billingclient/api/zzaz;->b:Lcom/android/billingclient/api/ConsumeResponseListener;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/billingclient/api/zzaz;->c:Lcom/android/billingclient/api/ConsumeParams;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingClientImpl;->B()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzje;->g:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 14
    .line 15
    sget-object v2, Lcom/android/billingclient/api/zzdb;->j:Lcom/android/billingclient/api/BillingResult;

    .line 16
    .line 17
    const/4 v3, 0x4

    .line 18
    invoke-virtual {v1, v0, v3, v2}, Lcom/android/billingclient/api/BillingClientImpl;->F(Lcom/google/android/gms/internal/play_billing/zzje;ILcom/android/billingclient/api/BillingResult;)V

    .line 19
    .line 20
    .line 21
    goto/16 :goto_9

    .line 22
    .line 23
    :cond_0
    const-string v3, "Error consuming purchase with token. Response code: "

    .line 24
    .line 25
    const-string v4, "Consuming purchase with token: "

    .line 26
    .line 27
    iget-object v5, v0, Lcom/android/billingclient/api/ConsumeParams;->a:Ljava/lang/String;

    .line 28
    .line 29
    :try_start_0
    const-string v0, "BillingClient"

    .line 30
    .line 31
    new-instance v6, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/play_billing/zzc;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v4, v1, Lcom/android/billingclient/api/BillingClientImpl;->a:Ljava/lang/Object;

    .line 47
    .line 48
    monitor-enter v4
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a

    .line 49
    :try_start_1
    iget-object v0, v1, Lcom/android/billingclient/api/BillingClientImpl;->i:Lcom/google/android/gms/internal/play_billing/zzap;

    .line 50
    .line 51
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    if-nez v0, :cond_1

    .line 53
    .line 54
    :try_start_2
    sget-object v4, Lcom/android/billingclient/api/zzdb;->j:Lcom/android/billingclient/api/BillingResult;
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 55
    .line 56
    move-object v3, v5

    .line 57
    :try_start_3
    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzje;->h1:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 58
    .line 59
    const-string v6, "Service has been reset to null."

    .line 60
    .line 61
    const/4 v7, 0x0

    .line 62
    invoke-virtual/range {v1 .. v7}, Lcom/android/billingclient/api/BillingClientImpl;->n(Lcom/android/billingclient/api/ConsumeResponseListener;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzje;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catch Landroid/os/DeadObjectException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 63
    .line 64
    .line 65
    goto/16 :goto_9

    .line 66
    .line 67
    :catch_0
    move-exception v0

    .line 68
    move-object v4, v3

    .line 69
    :goto_0
    move-object v7, v0

    .line 70
    goto/16 :goto_7

    .line 71
    .line 72
    :catch_1
    move-exception v0

    .line 73
    move-object v4, v3

    .line 74
    :goto_1
    move-object v7, v0

    .line 75
    goto/16 :goto_8

    .line 76
    .line 77
    :catch_2
    move-exception v0

    .line 78
    move-object v4, v5

    .line 79
    :goto_2
    move-object v7, v0

    .line 80
    move-object v3, v4

    .line 81
    goto/16 :goto_7

    .line 82
    .line 83
    :catch_3
    move-exception v0

    .line 84
    move-object v4, v5

    .line 85
    :goto_3
    move-object v7, v0

    .line 86
    move-object v3, v4

    .line 87
    goto/16 :goto_8

    .line 88
    .line 89
    :cond_1
    move-object v4, v5

    .line 90
    :try_start_4
    iget-boolean v5, v1, Lcom/android/billingclient/api/BillingClientImpl;->n:Z
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    .line 91
    .line 92
    if-eqz v5, :cond_3

    .line 93
    .line 94
    :try_start_5
    iget-object v5, v1, Lcom/android/billingclient/api/BillingClientImpl;->g:Landroid/content/Context;

    .line 95
    .line 96
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    iget-boolean v6, v1, Lcom/android/billingclient/api/BillingClientImpl;->n:Z

    .line 101
    .line 102
    iget-object v7, v1, Lcom/android/billingclient/api/BillingClientImpl;->c:Ljava/lang/String;

    .line 103
    .line 104
    iget-object v8, v1, Lcom/android/billingclient/api/BillingClientImpl;->d:Ljava/lang/String;

    .line 105
    .line 106
    iget-object v9, v1, Lcom/android/billingclient/api/BillingClientImpl;->B:Ljava/lang/Long;

    .line 107
    .line 108
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 109
    .line 110
    .line 111
    move-result-wide v9

    .line 112
    new-instance v11, Landroid/os/Bundle;

    .line 113
    .line 114
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 115
    .line 116
    .line 117
    if-eqz v6, :cond_2

    .line 118
    .line 119
    invoke-static {v9, v10, v7, v8, v11}, Lcom/google/android/gms/internal/play_billing/zzc;->b(JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 120
    .line 121
    .line 122
    goto :goto_4

    .line 123
    :catch_4
    move-exception v0

    .line 124
    goto :goto_2

    .line 125
    :catch_5
    move-exception v0

    .line 126
    goto :goto_3

    .line 127
    :cond_2
    :goto_4
    invoke-interface {v0, v5, v11, v4}, Lcom/google/android/gms/internal/play_billing/zzap;->P0(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    const-string v5, "RESPONSE_CODE"

    .line 132
    .line 133
    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    const-string v6, "BillingClient"

    .line 138
    .line 139
    invoke-static {v6, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->f(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0
    :try_end_5
    .catch Landroid/os/DeadObjectException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 143
    goto :goto_5

    .line 144
    :cond_3
    :try_start_6
    iget-object v5, v1, Lcom/android/billingclient/api/BillingClientImpl;->g:Landroid/content/Context;

    .line 145
    .line 146
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    invoke-interface {v0, v5, v4}, Lcom/google/android/gms/internal/play_billing/zzap;->B(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    const-string v0, ""

    .line 155
    .line 156
    :goto_5
    invoke-static {v5, v0}, Lcom/android/billingclient/api/zzdb;->a(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    .line 157
    .line 158
    .line 159
    move-result-object v0
    :try_end_6
    .catch Landroid/os/DeadObjectException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    .line 160
    if-nez v5, :cond_4

    .line 161
    .line 162
    :try_start_7
    const-string v0, "BillingClient"

    .line 163
    .line 164
    const-string v3, "Successfully consumed purchase."

    .line 165
    .line 166
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/zzc;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/DeadObjectException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 167
    .line 168
    .line 169
    goto :goto_9

    .line 170
    :cond_4
    move v6, v5

    .line 171
    :try_start_8
    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzje;->B:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 172
    .line 173
    new-instance v7, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v6
    :try_end_8
    .catch Landroid/os/DeadObjectException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 185
    const/4 v7, 0x0

    .line 186
    move-object v3, v4

    .line 187
    move-object v4, v0

    .line 188
    :try_start_9
    invoke-virtual/range {v1 .. v7}, Lcom/android/billingclient/api/BillingClientImpl;->n(Lcom/android/billingclient/api/ConsumeResponseListener;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzje;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_9
    .catch Landroid/os/DeadObjectException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 189
    .line 190
    .line 191
    goto :goto_9

    .line 192
    :catch_6
    move-exception v0

    .line 193
    goto :goto_0

    .line 194
    :catch_7
    move-exception v0

    .line 195
    goto :goto_1

    .line 196
    :catch_8
    move-exception v0

    .line 197
    move-object v3, v4

    .line 198
    goto/16 :goto_0

    .line 199
    .line 200
    :catch_9
    move-exception v0

    .line 201
    move-object v3, v4

    .line 202
    goto/16 :goto_1

    .line 203
    .line 204
    :catchall_0
    move-exception v0

    .line 205
    move-object v3, v5

    .line 206
    :goto_6
    :try_start_a
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 207
    :try_start_b
    throw v0
    :try_end_b
    .catch Landroid/os/DeadObjectException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 208
    :catchall_1
    move-exception v0

    .line 209
    goto :goto_6

    .line 210
    :catch_a
    move-exception v0

    .line 211
    move-object v3, v5

    .line 212
    goto/16 :goto_0

    .line 213
    .line 214
    :catch_b
    move-exception v0

    .line 215
    move-object v3, v5

    .line 216
    goto/16 :goto_1

    .line 217
    .line 218
    :goto_7
    sget-object v4, Lcom/android/billingclient/api/zzdb;->h:Lcom/android/billingclient/api/BillingResult;

    .line 219
    .line 220
    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzje;->H:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 221
    .line 222
    const-string v6, "Error consuming purchase!"

    .line 223
    .line 224
    invoke-virtual/range {v1 .. v7}, Lcom/android/billingclient/api/BillingClientImpl;->n(Lcom/android/billingclient/api/ConsumeResponseListener;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzje;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 225
    .line 226
    .line 227
    goto :goto_9

    .line 228
    :goto_8
    sget-object v4, Lcom/android/billingclient/api/zzdb;->j:Lcom/android/billingclient/api/BillingResult;

    .line 229
    .line 230
    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzje;->H:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 231
    .line 232
    const-string v6, "Error consuming purchase!"

    .line 233
    .line 234
    invoke-virtual/range {v1 .. v7}, Lcom/android/billingclient/api/BillingClientImpl;->n(Lcom/android/billingclient/api/ConsumeResponseListener;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzje;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 235
    .line 236
    .line 237
    :goto_9
    const/4 v0, 0x0

    .line 238
    return-object v0
.end method
