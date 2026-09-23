.class final Lcom/android/billingclient/api/zzcv;
.super Lcom/android/billingclient/api/BillingClientImpl;
.source "SourceFile"


# instance fields
.field public final D:Landroid/content/Context;

.field public volatile E:I

.field public volatile F:Lcom/google/android/gms/internal/play_billing/zzay;

.field public volatile G:Lcom/android/billingclient/api/zzct;

.field public volatile H:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/PendingPurchasesParams;Landroid/content/Context;Lcom/android/billingclient/api/BillingClient$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/billingclient/api/BillingClientImpl;-><init>(Lcom/android/billingclient/api/PendingPurchasesParams;Landroid/content/Context;Lcom/android/billingclient/api/BillingClient$Builder;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/billingclient/api/zzcv;->E:I

    iput-object p2, p0, Lcom/android/billingclient/api/zzcv;->D:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Lcom/android/billingclient/api/PendingPurchasesParams;Landroid/content/Context;Lcom/mycompany/app/help/PayHelper;Lcom/android/billingclient/api/BillingClient$Builder;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/billingclient/api/BillingClientImpl;-><init>(Lcom/android/billingclient/api/PendingPurchasesParams;Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/BillingClient$Builder;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/billingclient/api/zzcv;->E:I

    iput-object p2, p0, Lcom/android/billingclient/api/zzcv;->D:Landroid/content/Context;

    return-void
.end method

.method public static synthetic Q(Lcom/android/billingclient/api/zzcv;Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/billingclient/api/BillingClientImpl;->e(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic R(Lcom/android/billingclient/api/zzcv;Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/billingclient/api/BillingClientImpl;->a(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic S(Lcom/android/billingclient/api/zzcv;Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/billingclient/api/BillingClientImpl;->b(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic T(Lcom/android/billingclient/api/zzcv;Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/billingclient/api/BillingClientImpl;->f(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final declared-synchronized L()Z
    .locals 2

    .line 1
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/billingclient/api/zzcv;->E:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/billingclient/api/zzcv;->F:Lcom/google/android/gms/internal/play_billing/zzay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/billingclient/api/zzcv;->G:Lcom/android/billingclient/api/zzct;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final M(I)Lcom/google/android/gms/internal/play_billing/zzdc;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/billingclient/api/zzcv;->L()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p1, "BillingClientTesting"

    .line 8
    .line 9
    const-string v0, "Billing Override Service is not ready."

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, -0x1

    .line 15
    const-string v0, "Billing Override Service connection is disconnected."

    .line 16
    .line 17
    invoke-static {p1, v0}, Lcom/android/billingclient/api/zzdb;->a(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzje;->U0:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 22
    .line 23
    const/16 v1, 0x1c

    .line 24
    .line 25
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/billingclient/api/zzcv;->N(Lcom/google/android/gms/internal/play_billing/zzje;ILcom/android/billingclient/api/BillingResult;)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzcx;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzdc;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1

    .line 38
    :cond_0
    new-instance v0, Lcom/android/billingclient/api/zzcm;

    .line 39
    .line 40
    invoke-direct {v0, p0, p1}, Lcom/android/billingclient/api/zzcm;-><init>(Lcom/android/billingclient/api/zzcv;I)V

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzu;->a(Lcom/android/billingclient/api/zzcm;)Lcom/google/android/gms/internal/play_billing/zzdc;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1
.end method

.method public final N(Lcom/google/android/gms/internal/play_billing/zzje;ILcom/android/billingclient/api/BillingResult;)V
    .locals 2

    .line 1
    sget v0, Lcom/android/billingclient/api/zzcx;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjl;->f:Lcom/google/android/gms/internal/play_billing/zzjl;

    .line 5
    .line 6
    invoke-static {p1, p2, p3, v0, v1}, Lcom/android/billingclient/api/zzcx;->b(Lcom/google/android/gms/internal/play_billing/zzje;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjl;)Lcom/google/android/gms/internal/play_billing/zzix;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string p2, "ApiFailure should not be null"

    .line 11
    .line 12
    invoke-static {p1, p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/android/billingclient/api/BillingClientImpl;->h:Lcom/android/billingclient/api/zzdh;

    .line 16
    .line 17
    invoke-virtual {p2, p1}, Lcom/android/billingclient/api/zzdh;->a(Lcom/google/android/gms/internal/play_billing/zzix;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final O(I)V
    .locals 1

    .line 1
    sget v0, Lcom/android/billingclient/api/zzcx;->a:I

    .line 2
    .line 3
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjl;->f:Lcom/google/android/gms/internal/play_billing/zzjl;

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/android/billingclient/api/zzcx;->c(ILcom/google/android/gms/internal/play_billing/zzjl;)Lcom/google/android/gms/internal/play_billing/zzjb;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "ApiSuccess should not be null"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->h:Lcom/android/billingclient/api/zzdh;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/zzdh;->g(Lcom/google/android/gms/internal/play_billing/zzjb;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final P(ILandroidx/core/util/Consumer;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/zzcv;->M(I)Lcom/google/android/gms/internal/play_billing/zzdc;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/android/billingclient/api/zzcv;->H:Ljava/util/concurrent/ScheduledExecutorService;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, p0, Lcom/android/billingclient/api/zzcv;->H:Ljava/util/concurrent/ScheduledExecutorService;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/billingclient/api/zzcv;->H:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    monitor-exit p0

    .line 24
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzcx;->b(Lcom/google/android/gms/internal/play_billing/zzdc;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/play_billing/zzdc;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Lcom/android/billingclient/api/zzcr;

    .line 29
    .line 30
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/billingclient/api/zzcr;-><init>(Lcom/android/billingclient/api/zzcv;ILandroidx/core/util/Consumer;Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->i()Ljava/util/concurrent/ExecutorService;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/zzcx;->c(Lcom/google/android/gms/internal/play_billing/zzdc;Lcom/google/android/gms/internal/play_billing/zzcv;Ljava/util/concurrent/ExecutorService;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    throw p1
.end method

.method public final a(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/billingclient/api/zzcn;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Lcom/android/billingclient/api/zzcn;-><init>(Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/android/billingclient/api/zzco;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1, p2}, Lcom/android/billingclient/api/zzco;-><init>(Lcom/android/billingclient/api/zzcv;Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x3

    .line 12
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/billingclient/api/zzcv;->P(ILandroidx/core/util/Consumer;Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final b(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/billingclient/api/zzck;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/android/billingclient/api/zzck;-><init>(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/android/billingclient/api/zzcl;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1, p2}, Lcom/android/billingclient/api/zzcl;-><init>(Lcom/android/billingclient/api/zzcv;Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x4

    .line 12
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/billingclient/api/zzcv;->P(ILandroidx/core/util/Consumer;Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final c()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    const/16 v0, 0x1b

    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/billingclient/api/zzcv;->O(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    :try_start_1
    iget-object v1, p0, Lcom/android/billingclient/api/zzcv;->G:Lcom/android/billingclient/api/zzct;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/billingclient/api/zzcv;->F:Lcom/google/android/gms/internal/play_billing/zzay;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const-string v1, "BillingClientTesting"

    .line 17
    .line 18
    const-string v2, "Unbinding from Billing Override Service."

    .line 19
    .line 20
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/billingclient/api/zzcv;->D:Landroid/content/Context;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/billingclient/api/zzcv;->G:Lcom/android/billingclient/api/zzct;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 28
    .line 29
    .line 30
    new-instance v1, Lcom/android/billingclient/api/zzct;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/android/billingclient/api/zzct;-><init>(Lcom/android/billingclient/api/zzcv;)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/android/billingclient/api/zzcv;->G:Lcom/android/billingclient/api/zzct;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v1

    .line 39
    goto :goto_3

    .line 40
    :catch_0
    move-exception v1

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 43
    iput-object v1, p0, Lcom/android/billingclient/api/zzcv;->F:Lcom/google/android/gms/internal/play_billing/zzay;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/android/billingclient/api/zzcv;->H:Ljava/util/concurrent/ScheduledExecutorService;

    .line 46
    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    iget-object v2, p0, Lcom/android/billingclient/api/zzcv;->H:Ljava/util/concurrent/ScheduledExecutorService;

    .line 50
    .line 51
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    iput-object v1, p0, Lcom/android/billingclient/api/zzcv;->H:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :goto_1
    :try_start_2
    const-string v2, "BillingClientTesting"

    .line 58
    .line 59
    const-string v3, "There was an exception while ending Billing Override Service connection!"

    .line 60
    .line 61
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    .line 63
    .line 64
    :cond_1
    :goto_2
    :try_start_3
    iput v0, p0, Lcom/android/billingclient/api/zzcv;->E:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 65
    .line 66
    monitor-exit p0

    .line 67
    invoke-super {p0}, Lcom/android/billingclient/api/BillingClientImpl;->c()V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :catchall_1
    move-exception v0

    .line 72
    goto :goto_4

    .line 73
    :goto_3
    :try_start_4
    iput v0, p0, Lcom/android/billingclient/api/zzcv;->E:I

    .line 74
    .line 75
    throw v1

    .line 76
    :goto_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 77
    throw v0
.end method

.method public final e(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;
    .locals 8

    .line 1
    new-instance v0, Lcom/android/billingclient/api/zzcp;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/billingclient/api/zzcp;-><init>(Lcom/android/billingclient/api/zzcv;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/android/billingclient/api/zzcq;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1, p2}, Lcom/android/billingclient/api/zzcq;-><init>(Lcom/android/billingclient/api/zzcv;Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/zzcv;->M(I)Lcom/google/android/gms/internal/play_billing/zzdc;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const-string v2, "BillingClientTesting"

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    const/16 v4, 0x1c

    .line 20
    .line 21
    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 22
    .line 23
    const-wide/16 v6, 0x6f54

    .line 24
    .line 25
    invoke-interface {p2, v6, v7, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    check-cast p2, Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v3
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    goto :goto_2

    .line 36
    :catch_0
    move-exception p2

    .line 37
    goto :goto_0

    .line 38
    :catch_1
    move-exception p2

    .line 39
    goto :goto_1

    .line 40
    :goto_0
    instance-of v5, p2, Ljava/lang/InterruptedException;

    .line 41
    .line 42
    if-eqz v5, :cond_0

    .line 43
    .line 44
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 49
    .line 50
    .line 51
    :cond_0
    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzje;->V0:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 52
    .line 53
    sget-object v6, Lcom/android/billingclient/api/zzdb;->r:Lcom/android/billingclient/api/BillingResult;

    .line 54
    .line 55
    invoke-virtual {p0, v5, v4, v6}, Lcom/android/billingclient/api/zzcv;->N(Lcom/google/android/gms/internal/play_billing/zzje;ILcom/android/billingclient/api/BillingResult;)V

    .line 56
    .line 57
    .line 58
    const-string v4, "An error occurred while retrieving billing override."

    .line 59
    .line 60
    invoke-static {v2, v4, p2}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :goto_1
    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzje;->c1:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 65
    .line 66
    sget-object v6, Lcom/android/billingclient/api/zzdb;->r:Lcom/android/billingclient/api/BillingResult;

    .line 67
    .line 68
    invoke-virtual {p0, v5, v4, v6}, Lcom/android/billingclient/api/zzcv;->N(Lcom/google/android/gms/internal/play_billing/zzje;ILcom/android/billingclient/api/BillingResult;)V

    .line 69
    .line 70
    .line 71
    const-string v4, "Asynchronous call to Billing Override Service timed out."

    .line 72
    .line 73
    invoke-static {v2, v4, p2}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    :goto_2
    if-lez v3, :cond_1

    .line 77
    .line 78
    const-string p2, "Billing override value was set by a license tester."

    .line 79
    .line 80
    invoke-static {v3, p2}, Lcom/android/billingclient/api/zzdb;->a(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzje;->T0:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 85
    .line 86
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/billingclient/api/zzcv;->N(Lcom/google/android/gms/internal/play_billing/zzje;ILcom/android/billingclient/api/BillingResult;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p2}, Lcom/android/billingclient/api/zzcp;->accept(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/android/billingclient/api/zzcq;->call()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    check-cast p2, Lcom/android/billingclient/api/BillingResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :catch_2
    move-exception p2

    .line 101
    sget-object v0, Lcom/android/billingclient/api/zzdb;->h:Lcom/android/billingclient/api/BillingResult;

    .line 102
    .line 103
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzje;->d1:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 104
    .line 105
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/billingclient/api/zzcv;->N(Lcom/google/android/gms/internal/play_billing/zzje;ILcom/android/billingclient/api/BillingResult;)V

    .line 106
    .line 107
    .line 108
    const-string p1, "An internal error occurred."

    .line 109
    .line 110
    invoke-static {v2, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    .line 112
    .line 113
    move-object p2, v0

    .line 114
    :goto_3
    return-object p2
.end method

.method public final f(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/billingclient/api/zzci;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Lcom/android/billingclient/api/zzci;-><init>(Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/android/billingclient/api/zzcj;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1, p2}, Lcom/android/billingclient/api/zzcj;-><init>(Lcom/android/billingclient/api/zzcv;Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x7

    .line 12
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/billingclient/api/zzcv;->P(ILandroidx/core/util/Consumer;Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final h(Lcom/mycompany/app/help/PayHelper;)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/billingclient/api/zzcv;->L()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/16 v1, 0x1a

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "BillingClientTesting"

    .line 11
    .line 12
    const-string v2, "Billing Override Service connection is valid. No need to re-initialize."

    .line 13
    .line 14
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/android/billingclient/api/zzcv;->O(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    monitor-exit p0

    .line 21
    goto/16 :goto_1

    .line 22
    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto/16 :goto_2

    .line 25
    .line 26
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/android/billingclient/api/zzcv;->E:I

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    if-ne v0, v2, :cond_1

    .line 30
    .line 31
    const-string v0, "BillingClientTesting"

    .line 32
    .line 33
    const-string v1, "Client is already in the process of connecting to Billing Override Service."

    .line 34
    .line 35
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .line 37
    .line 38
    monitor-exit p0

    .line 39
    goto/16 :goto_1

    .line 40
    .line 41
    :cond_1
    :try_start_2
    iget v0, p0, Lcom/android/billingclient/api/zzcv;->E:I

    .line 42
    .line 43
    const/4 v3, 0x3

    .line 44
    if-ne v0, v3, :cond_2

    .line 45
    .line 46
    const-string v0, "BillingClientTesting"

    .line 47
    .line 48
    const-string v2, "Billing Override Service Client was already closed and can\'t be reused. Please create another instance."

    .line 49
    .line 50
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string v0, "Billing Override Service connection is disconnected."

    .line 54
    .line 55
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzje;->Q:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 56
    .line 57
    const/4 v3, -0x1

    .line 58
    invoke-static {v3, v0}, Lcom/android/billingclient/api/zzdb;->a(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p0, v2, v1, v0}, Lcom/android/billingclient/api/zzcv;->N(Lcom/google/android/gms/internal/play_billing/zzje;ILcom/android/billingclient/api/BillingResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    .line 64
    .line 65
    monitor-exit p0

    .line 66
    goto/16 :goto_1

    .line 67
    .line 68
    :cond_2
    :try_start_3
    iput v2, p0, Lcom/android/billingclient/api/zzcv;->E:I

    .line 69
    .line 70
    const-string v0, "BillingClientTesting"

    .line 71
    .line 72
    const-string v3, "Starting Billing Override Service setup."

    .line 73
    .line 74
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/zzc;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    new-instance v0, Lcom/android/billingclient/api/zzct;

    .line 78
    .line 79
    invoke-direct {v0, p0}, Lcom/android/billingclient/api/zzct;-><init>(Lcom/android/billingclient/api/zzcv;)V

    .line 80
    .line 81
    .line 82
    iput-object v0, p0, Lcom/android/billingclient/api/zzcv;->G:Lcom/android/billingclient/api/zzct;

    .line 83
    .line 84
    new-instance v0, Landroid/content/Intent;

    .line 85
    .line 86
    const-string v3, "com.google.android.apps.play.billingtestcompanion.BillingOverrideService.BIND"

    .line 87
    .line 88
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string v3, "com.google.android.apps.play.billingtestcompanion"

    .line 92
    .line 93
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    .line 95
    .line 96
    iget-object v3, p0, Lcom/android/billingclient/api/zzcv;->D:Landroid/content/Context;

    .line 97
    .line 98
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    const/4 v5, 0x0

    .line 103
    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    sget-object v6, Lcom/google/android/gms/internal/play_billing/zzje;->f:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 108
    .line 109
    if-eqz v4, :cond_5

    .line 110
    .line 111
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 112
    .line 113
    .line 114
    move-result v7

    .line 115
    if-nez v7, :cond_5

    .line 116
    .line 117
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 122
    .line 123
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 124
    .line 125
    if-eqz v4, :cond_6

    .line 126
    .line 127
    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 128
    .line 129
    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 130
    .line 131
    const-string v7, "com.google.android.apps.play.billingtestcompanion"

    .line 132
    .line 133
    invoke-static {v6, v7}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v7

    .line 137
    if-eqz v7, :cond_4

    .line 138
    .line 139
    if-eqz v4, :cond_4

    .line 140
    .line 141
    new-instance v7, Landroid/content/ComponentName;

    .line 142
    .line 143
    invoke-direct {v7, v6, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    new-instance v4, Landroid/content/Intent;

    .line 147
    .line 148
    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v4, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 152
    .line 153
    .line 154
    iget-object v0, p0, Lcom/android/billingclient/api/zzcv;->G:Lcom/android/billingclient/api/zzct;

    .line 155
    .line 156
    invoke-virtual {v3, v4, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-eqz v0, :cond_3

    .line 161
    .line 162
    const-string v0, "BillingClientTesting"

    .line 163
    .line 164
    const-string v1, "Billing Override Service was bonded successfully."

    .line 165
    .line 166
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 167
    .line 168
    .line 169
    monitor-exit p0

    .line 170
    goto :goto_1

    .line 171
    :cond_3
    :try_start_4
    const-string v0, "BillingClientTesting"

    .line 172
    .line 173
    const-string v2, "Connection to Billing Override Service is blocked."

    .line 174
    .line 175
    sget-object v6, Lcom/google/android/gms/internal/play_billing/zzje;->R:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 176
    .line 177
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    goto :goto_0

    .line 181
    :cond_4
    const-string v0, "BillingClientTesting"

    .line 182
    .line 183
    const-string v2, "The device doesn\'t have valid Play Billing Lab."

    .line 184
    .line 185
    sget-object v6, Lcom/google/android/gms/internal/play_billing/zzje;->R:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 186
    .line 187
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    goto :goto_0

    .line 191
    :cond_5
    sget-object v6, Lcom/google/android/gms/internal/play_billing/zzje;->T:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 192
    .line 193
    :cond_6
    :goto_0
    iput v5, p0, Lcom/android/billingclient/api/zzcv;->E:I

    .line 194
    .line 195
    const-string v0, "BillingClientTesting"

    .line 196
    .line 197
    const-string v2, "Billing Override Service unavailable on device."

    .line 198
    .line 199
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    const-string v0, "Billing Override Service unavailable on device."

    .line 203
    .line 204
    const/4 v2, 0x2

    .line 205
    invoke-static {v2, v0}, Lcom/android/billingclient/api/zzdb;->a(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {p0, v6, v1, v0}, Lcom/android/billingclient/api/zzcv;->N(Lcom/google/android/gms/internal/play_billing/zzje;ILcom/android/billingclient/api/BillingResult;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 210
    .line 211
    .line 212
    monitor-exit p0

    .line 213
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->z(Lcom/android/billingclient/api/BillingClientStateListener;)V

    .line 214
    .line 215
    .line 216
    return-void

    .line 217
    :goto_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 218
    throw p1
.end method
