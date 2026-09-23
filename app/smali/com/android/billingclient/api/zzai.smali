.class public final synthetic Lcom/android/billingclient/api/zzai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/android/billingclient/api/BillingClientImpl;

.field public final synthetic b:Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;

.field public final synthetic c:Lcom/android/billingclient/api/AcknowledgePurchaseParams;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;Lcom/android/billingclient/api/AcknowledgePurchaseParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzai;->a:Lcom/android/billingclient/api/BillingClientImpl;

    iput-object p2, p0, Lcom/android/billingclient/api/zzai;->b:Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;

    iput-object p3, p0, Lcom/android/billingclient/api/zzai;->c:Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/zzai;->a:Lcom/android/billingclient/api/BillingClientImpl;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/billingclient/api/zzai;->b:Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/billingclient/api/zzai;->c:Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_0
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClientImpl;->B()Z

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    const/4 v5, 0x3

    .line 13
    if-nez v4, :cond_0

    .line 14
    .line 15
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzje;->g:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 16
    .line 17
    sget-object v4, Lcom/android/billingclient/api/zzdb;->j:Lcom/android/billingclient/api/BillingResult;

    .line 18
    .line 19
    invoke-virtual {v0, v2, v5, v4}, Lcom/android/billingclient/api/BillingClientImpl;->F(Lcom/google/android/gms/internal/play_billing/zzje;ILcom/android/billingclient/api/BillingResult;)V

    .line 20
    .line 21
    .line 22
    return-object v3

    .line 23
    :catch_0
    move-exception v2

    .line 24
    goto :goto_0

    .line 25
    :catch_1
    move-exception v2

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    iget-object v4, v2, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->a:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    const-string v2, "BillingClient"

    .line 36
    .line 37
    const-string v4, "Please provide a valid purchase token."

    .line 38
    .line 39
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/play_billing/zzc;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzje;->E:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 43
    .line 44
    sget-object v4, Lcom/android/billingclient/api/zzdb;->g:Lcom/android/billingclient/api/BillingResult;

    .line 45
    .line 46
    invoke-virtual {v0, v2, v5, v4}, Lcom/android/billingclient/api/BillingClientImpl;->F(Lcom/google/android/gms/internal/play_billing/zzje;ILcom/android/billingclient/api/BillingResult;)V

    .line 47
    .line 48
    .line 49
    return-object v3

    .line 50
    :cond_1
    iget-boolean v4, v0, Lcom/android/billingclient/api/BillingClientImpl;->n:Z

    .line 51
    .line 52
    if-nez v4, :cond_2

    .line 53
    .line 54
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzje;->F:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 55
    .line 56
    sget-object v4, Lcom/android/billingclient/api/zzdb;->a:Lcom/android/billingclient/api/BillingResult;

    .line 57
    .line 58
    invoke-virtual {v0, v2, v5, v4}, Lcom/android/billingclient/api/BillingClientImpl;->F(Lcom/google/android/gms/internal/play_billing/zzje;ILcom/android/billingclient/api/BillingResult;)V

    .line 59
    .line 60
    .line 61
    return-object v3

    .line 62
    :cond_2
    iget-object v4, v0, Lcom/android/billingclient/api/BillingClientImpl;->a:Ljava/lang/Object;

    .line 63
    .line 64
    monitor-enter v4
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :try_start_1
    iget-object v5, v0, Lcom/android/billingclient/api/BillingClientImpl;->i:Lcom/google/android/gms/internal/play_billing/zzap;

    .line 66
    .line 67
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    if-nez v5, :cond_3

    .line 69
    .line 70
    :try_start_2
    sget-object v2, Lcom/android/billingclient/api/zzdb;->j:Lcom/android/billingclient/api/BillingResult;

    .line 71
    .line 72
    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzje;->h1:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 73
    .line 74
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/billingclient/api/BillingClientImpl;->m(Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzje;Ljava/lang/Exception;)V

    .line 75
    .line 76
    .line 77
    return-object v3

    .line 78
    :cond_3
    iget-object v4, v0, Lcom/android/billingclient/api/BillingClientImpl;->g:Landroid/content/Context;

    .line 79
    .line 80
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    iget-object v2, v2, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->a:Ljava/lang/String;

    .line 85
    .line 86
    iget-object v6, v0, Lcom/android/billingclient/api/BillingClientImpl;->c:Ljava/lang/String;

    .line 87
    .line 88
    iget-object v7, v0, Lcom/android/billingclient/api/BillingClientImpl;->d:Ljava/lang/String;

    .line 89
    .line 90
    iget-object v8, v0, Lcom/android/billingclient/api/BillingClientImpl;->B:Ljava/lang/Long;

    .line 91
    .line 92
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 93
    .line 94
    .line 95
    move-result-wide v8

    .line 96
    sget v10, Lcom/google/android/gms/internal/play_billing/zzc;->a:I

    .line 97
    .line 98
    new-instance v10, Landroid/os/Bundle;

    .line 99
    .line 100
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-static {v8, v9, v6, v7, v10}, Lcom/google/android/gms/internal/play_billing/zzc;->b(JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 104
    .line 105
    .line 106
    invoke-interface {v5, v4, v10, v2}, Lcom/google/android/gms/internal/play_billing/zzap;->Y(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    .line 107
    .line 108
    .line 109
    move-result-object v0
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 110
    const-string v1, "BillingClient"

    .line 111
    .line 112
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->a(Ljava/lang/String;Landroid/os/Bundle;)I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    const-string v2, "BillingClient"

    .line 117
    .line 118
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->f(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-static {v1, v0}, Lcom/android/billingclient/api/zzdb;->a(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    .line 123
    .line 124
    .line 125
    return-object v3

    .line 126
    :catchall_0
    move-exception v2

    .line 127
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 128
    :try_start_4
    throw v2
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 129
    :goto_0
    sget-object v4, Lcom/android/billingclient/api/zzdb;->h:Lcom/android/billingclient/api/BillingResult;

    .line 130
    .line 131
    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzje;->G:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 132
    .line 133
    invoke-virtual {v0, v1, v4, v5, v2}, Lcom/android/billingclient/api/BillingClientImpl;->m(Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzje;Ljava/lang/Exception;)V

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :goto_1
    sget-object v4, Lcom/android/billingclient/api/zzdb;->j:Lcom/android/billingclient/api/BillingResult;

    .line 138
    .line 139
    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzje;->G:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 140
    .line 141
    invoke-virtual {v0, v1, v4, v5, v2}, Lcom/android/billingclient/api/BillingClientImpl;->m(Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzje;Ljava/lang/Exception;)V

    .line 142
    .line 143
    .line 144
    :goto_2
    return-object v3
.end method
