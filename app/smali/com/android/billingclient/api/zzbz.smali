.class final Lcom/android/billingclient/api/zzbz;
.super Lcom/google/android/gms/internal/play_billing/zzaf;
.source "SourceFile"


# virtual methods
.method public final b(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjl;->f:Lcom/google/android/gms/internal/play_billing/zzjl;

    .line 2
    .line 3
    const/16 v1, 0xd

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    const-string v3, "BillingClient"

    .line 9
    .line 10
    invoke-static {v3, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->a(Ljava/lang/String;Landroid/os/Bundle;)I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    invoke-static {v3, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->f(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->a()Lcom/android/billingclient/api/BillingResult$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    iput v4, v6, Lcom/android/billingclient/api/BillingResult$Builder;->a:I

    .line 23
    .line 24
    iput-object v5, v6, Lcom/android/billingclient/api/BillingResult$Builder;->c:Ljava/lang/String;

    .line 25
    .line 26
    if-nez v4, :cond_1

    .line 27
    .line 28
    const-string v4, "BILLING_CONFIG"

    .line 29
    .line 30
    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-nez v5, :cond_0

    .line 35
    .line 36
    const-string p1, "getBillingConfig() returned a bundle with neither an error nor a billing config response"

    .line 37
    .line 38
    invoke-static {v3, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 p1, 0x6

    .line 42
    iput p1, v6, Lcom/android/billingclient/api/BillingResult$Builder;->a:I

    .line 43
    .line 44
    invoke-virtual {v6}, Lcom/android/billingclient/api/BillingResult$Builder;->a()Lcom/android/billingclient/api/BillingResult;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzje;->q0:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 49
    .line 50
    invoke-static {v3, v1, p1, v2, v0}, Lcom/android/billingclient/api/zzcx;->b(Lcom/google/android/gms/internal/play_billing/zzje;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjl;)Lcom/google/android/gms/internal/play_billing/zzix;

    .line 51
    .line 52
    .line 53
    throw v2

    .line 54
    :cond_0
    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    .line 59
    .line 60
    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string p1, "countryCode"

    .line 64
    .line 65
    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v6}, Lcom/android/billingclient/api/BillingResult$Builder;->a()Lcom/android/billingclient/api/BillingResult;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    throw v2

    .line 72
    :catch_0
    move-exception p1

    .line 73
    const-string v4, "Got a JSON exception trying to decode BillingConfig. \n Exception: "

    .line 74
    .line 75
    invoke-static {v3, v4, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzje;->r0:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 79
    .line 80
    sget-object v3, Lcom/android/billingclient/api/zzdb;->h:Lcom/android/billingclient/api/BillingResult;

    .line 81
    .line 82
    invoke-static {p1, v1, v3, v2, v0}, Lcom/android/billingclient/api/zzcx;->b(Lcom/google/android/gms/internal/play_billing/zzje;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjl;)Lcom/google/android/gms/internal/play_billing/zzix;

    .line 83
    .line 84
    .line 85
    throw v2

    .line 86
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v5, "getBillingConfig() failed. Response code: "

    .line 89
    .line 90
    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-static {v3, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v6}, Lcom/android/billingclient/api/BillingResult$Builder;->a()Lcom/android/billingclient/api/BillingResult;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzje;->B:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 108
    .line 109
    invoke-static {v3, v1, p1, v2, v0}, Lcom/android/billingclient/api/zzcx;->b(Lcom/google/android/gms/internal/play_billing/zzje;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjl;)Lcom/google/android/gms/internal/play_billing/zzix;

    .line 110
    .line 111
    .line 112
    throw v2

    .line 113
    :cond_2
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzje;->p0:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 114
    .line 115
    sget-object v3, Lcom/android/billingclient/api/zzdb;->h:Lcom/android/billingclient/api/BillingResult;

    .line 116
    .line 117
    invoke-static {p1, v1, v3, v2, v0}, Lcom/android/billingclient/api/zzcx;->b(Lcom/google/android/gms/internal/play_billing/zzje;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjl;)Lcom/google/android/gms/internal/play_billing/zzix;

    .line 118
    .line 119
    .line 120
    throw v2
.end method
