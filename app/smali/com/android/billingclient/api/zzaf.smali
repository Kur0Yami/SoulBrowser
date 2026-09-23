.class public final synthetic Lcom/android/billingclient/api/zzaf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/android/billingclient/api/BillingClientImpl;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzaf;->a:Lcom/android/billingclient/api/BillingClientImpl;

    iput-object p2, p0, Lcom/android/billingclient/api/zzaf;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/billingclient/api/zzaf;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/zzaf;->a:Lcom/android/billingclient/api/BillingClientImpl;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/billingclient/api/zzaf;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/billingclient/api/zzaf;->c:Ljava/lang/String;

    .line 6
    .line 7
    :try_start_0
    iget-object v3, v0, Lcom/android/billingclient/api/BillingClientImpl;->a:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v3
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :try_start_1
    iget-object v4, v0, Lcom/android/billingclient/api/BillingClientImpl;->i:Lcom/google/android/gms/internal/play_billing/zzap;

    .line 11
    .line 12
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    if-nez v4, :cond_0

    .line 14
    .line 15
    :try_start_2
    sget-object v0, Lcom/android/billingclient/api/zzdb;->j:Lcom/android/billingclient/api/BillingResult;

    .line 16
    .line 17
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzje;->h1:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->c(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzje;)Landroid/os/Bundle;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    goto :goto_0

    .line 26
    :catch_1
    move-exception v0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    iget-object v0, v0, Lcom/android/billingclient/api/BillingClientImpl;->g:Landroid/content/Context;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v4, v0, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzap;->w4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 35
    .line 36
    .line 37
    move-result-object v0
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 38
    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 41
    :try_start_4
    throw v0
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 42
    :goto_0
    sget-object v1, Lcom/android/billingclient/api/zzdb;->h:Lcom/android/billingclient/api/BillingResult;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/android/billingclient/api/zzcx;->a(Ljava/lang/Exception;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzje;->j:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 49
    .line 50
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->c(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzje;)Landroid/os/Bundle;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    const-string v2, "ADDITIONAL_LOG_DETAILS"

    .line 57
    .line 58
    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :goto_1
    sget-object v1, Lcom/android/billingclient/api/zzdb;->j:Lcom/android/billingclient/api/BillingResult;

    .line 63
    .line 64
    invoke-static {v0}, Lcom/android/billingclient/api/zzcx;->a(Ljava/lang/Exception;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzje;->j:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 69
    .line 70
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->c(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzje;)Landroid/os/Bundle;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    const-string v2, "ADDITIONAL_LOG_DETAILS"

    .line 77
    .line 78
    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_1
    :goto_2
    return-object v1
.end method
