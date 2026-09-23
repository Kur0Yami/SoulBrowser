.class Lcom/android/billingclient/api/BillingClientImpl;
.super Lcom/android/billingclient/api/BillingClient;
.source "SourceFile"


# instance fields
.field public A:Ljava/util/concurrent/ExecutorService;

.field public final B:Ljava/lang/Long;

.field public final C:Lcom/google/android/gms/internal/play_billing/zzbo;

.field public final a:Ljava/lang/Object;

.field public volatile b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Landroid/os/Handler;

.field public volatile f:Lcom/android/billingclient/api/zzaa;

.field public final g:Landroid/content/Context;

.field public final h:Lcom/android/billingclient/api/zzdh;

.field public volatile i:Lcom/google/android/gms/internal/play_billing/zzap;

.field public volatile j:Lcom/android/billingclient/api/zzbv;

.field public k:Z

.field public l:I

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public final x:Lcom/android/billingclient/api/PendingPurchasesParams;

.field public final y:Z

.field public volatile z:Lcom/android/billingclient/api/BillingClientStateListener;


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/PendingPurchasesParams;Landroid/content/Context;Lcom/android/billingclient/api/BillingClient$Builder;)V
    .locals 6

    .line 41
    const-string p3, "BillingClient"

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->b:I

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->e:Landroid/os/Handler;

    iput v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->l:I

    new-instance v1, Ljava/util/Random;

    .line 44
    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->B:Ljava/lang/Long;

    .line 45
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzbd;->a:Lcom/google/android/gms/internal/play_billing/zzbo;

    .line 46
    iput-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->C:Lcom/google/android/gms/internal/play_billing/zzbo;

    const-string v3, "8.2.0"

    iput-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->c:Ljava/lang/String;

    .line 47
    invoke-static {}, Lcom/android/billingclient/api/BillingClientImpl;->l()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->d:Ljava/lang/String;

    .line 48
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->g:Landroid/content/Context;

    .line 49
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjs;->A()Lcom/google/android/gms/internal/play_billing/zzjq;

    move-result-object v4

    .line 50
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    .line 51
    iget-object v5, v4, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 52
    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzjs;->y(Lcom/google/android/gms/internal/play_billing/zzjs;)V

    if-eqz v3, :cond_0

    .line 53
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    iget-object v5, v4, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 54
    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-static {v5, v3}, Lcom/google/android/gms/internal/play_billing/zzjs;->z(Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/String;)V

    .line 55
    :cond_0
    iget-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->g:Landroid/content/Context;

    .line 56
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 57
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    iget-object v5, v4, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 58
    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-static {v5, v3}, Lcom/google/android/gms/internal/play_billing/zzjs;->r(Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    iget-object v3, v4, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 60
    check-cast v3, Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzjs;->E(Lcom/google/android/gms/internal/play_billing/zzjs;J)V

    .line 61
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    iget-object v1, v4, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 62
    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzjs;->x(Lcom/google/android/gms/internal/play_billing/zzjs;)V

    .line 63
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 64
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    iget-object v2, v4, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 65
    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/play_billing/zzjs;->B(Lcom/google/android/gms/internal/play_billing/zzjs;I)V

    .line 66
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzjq;->g()V

    .line 67
    invoke-static {v4, p2}, Lcom/android/billingclient/api/BillingClientImpl;->D(Lcom/google/android/gms/internal/play_billing/zzjq;Landroid/content/Context;)V

    :try_start_0
    iget-object p2, p0, Lcom/android/billingclient/api/BillingClientImpl;->g:Landroid/content/Context;

    .line 68
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->g:Landroid/content/Context;

    .line 69
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-virtual {p2, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 71
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    iget-object v0, v4, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 72
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/play_billing/zzjs;->C(Lcom/google/android/gms/internal/play_billing/zzjs;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 73
    const-string v0, "Error getting app version code."

    .line 74
    invoke-static {p3, v0, p2}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    :goto_0
    iget-object p2, p0, Lcom/android/billingclient/api/BillingClientImpl;->g:Landroid/content/Context;

    .line 76
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzfr;->c()Lcom/google/android/gms/internal/play_billing/zzfv;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzjs;

    new-instance v1, Lcom/android/billingclient/api/zzdh;

    .line 77
    invoke-direct {v1, p2, v0}, Lcom/android/billingclient/api/zzdh;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/play_billing/zzjs;)V

    iput-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->h:Lcom/android/billingclient/api/zzdh;

    const-string p2, "Billing client should have a valid listener but the provided is null."

    .line 78
    invoke-static {p3, p2}, Lcom/google/android/gms/internal/play_billing/zzc;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/android/billingclient/api/zzaa;

    iget-object p3, p0, Lcom/android/billingclient/api/BillingClientImpl;->g:Landroid/content/Context;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->h:Lcom/android/billingclient/api/zzdh;

    .line 79
    invoke-direct {p2, p3, v0, v1}, Lcom/android/billingclient/api/zzaa;-><init>(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/zzdh;)V

    iput-object p2, p0, Lcom/android/billingclient/api/BillingClientImpl;->f:Lcom/android/billingclient/api/zzaa;

    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->x:Lcom/android/billingclient/api/PendingPurchasesParams;

    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->g:Landroid/content/Context;

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/billingclient/api/PendingPurchasesParams;Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/BillingClient$Builder;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p4, Ljava/lang/Object;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/android/billingclient/api/BillingClientImpl;->a:Ljava/lang/Object;

    const/4 p4, 0x0

    iput p4, p0, Lcom/android/billingclient/api/BillingClientImpl;->b:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->e:Landroid/os/Handler;

    iput p4, p0, Lcom/android/billingclient/api/BillingClientImpl;->l:I

    new-instance v0, Ljava/util/Random;

    .line 3
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->B:Ljava/lang/Long;

    .line 4
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzbd;->a:Lcom/google/android/gms/internal/play_billing/zzbo;

    .line 5
    iput-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->C:Lcom/google/android/gms/internal/play_billing/zzbo;

    const-string v2, "8.2.0"

    iput-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->c:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/android/billingclient/api/BillingClientImpl;->l()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->d:Ljava/lang/String;

    .line 7
    const-string v3, "BillingClient"

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->g:Landroid/content/Context;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjs;->A()Lcom/google/android/gms/internal/play_billing/zzjq;

    move-result-object v4

    .line 9
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    .line 10
    iget-object v5, v4, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 11
    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzjs;->y(Lcom/google/android/gms/internal/play_billing/zzjs;)V

    if-eqz v2, :cond_0

    .line 12
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    iget-object v5, v4, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 13
    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/play_billing/zzjs;->z(Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/String;)V

    .line 14
    :cond_0
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->g:Landroid/content/Context;

    .line 15
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    iget-object v5, v4, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 17
    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/play_billing/zzjs;->r(Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    iget-object v2, v4, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 19
    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzjs;->E(Lcom/google/android/gms/internal/play_billing/zzjs;J)V

    .line 20
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    iget-object v0, v4, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 21
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzjs;->x(Lcom/google/android/gms/internal/play_billing/zzjs;)V

    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 23
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    iget-object v1, v4, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 24
    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzjs;->B(Lcom/google/android/gms/internal/play_billing/zzjs;I)V

    .line 25
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzjq;->g()V

    .line 26
    invoke-static {v4, p2}, Lcom/android/billingclient/api/BillingClientImpl;->D(Lcom/google/android/gms/internal/play_billing/zzjq;Landroid/content/Context;)V

    :try_start_0
    iget-object p2, p0, Lcom/android/billingclient/api/BillingClientImpl;->g:Landroid/content/Context;

    .line 27
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->g:Landroid/content/Context;

    .line 28
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-virtual {p2, v0, p4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 30
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    iget-object v0, v4, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 31
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/play_billing/zzjs;->C(Lcom/google/android/gms/internal/play_billing/zzjs;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 32
    const-string v0, "Error getting app version code."

    .line 33
    invoke-static {v3, v0, p2}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    :goto_0
    iget-object p2, p0, Lcom/android/billingclient/api/BillingClientImpl;->g:Landroid/content/Context;

    .line 35
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzfr;->c()Lcom/google/android/gms/internal/play_billing/zzfv;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzjs;

    new-instance v1, Lcom/android/billingclient/api/zzdh;

    .line 36
    invoke-direct {v1, p2, v0}, Lcom/android/billingclient/api/zzdh;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/play_billing/zzjs;)V

    iput-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->h:Lcom/android/billingclient/api/zzdh;

    if-nez p3, :cond_1

    .line 37
    const-string p2, "Billing client should have a valid listener but the provided is null."

    .line 38
    invoke-static {v3, p2}, Lcom/google/android/gms/internal/play_billing/zzc;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance p2, Lcom/android/billingclient/api/zzaa;

    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->h:Lcom/android/billingclient/api/zzdh;

    .line 39
    invoke-direct {p2, v0, p3, v1}, Lcom/android/billingclient/api/zzaa;-><init>(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/zzdh;)V

    iput-object p2, p0, Lcom/android/billingclient/api/BillingClientImpl;->f:Lcom/android/billingclient/api/zzaa;

    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->x:Lcom/android/billingclient/api/PendingPurchasesParams;

    iput-boolean p4, p0, Lcom/android/billingclient/api/BillingClientImpl;->y:Z

    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->g:Landroid/content/Context;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    return-void
.end method

.method public static final D(Lcom/google/android/gms/internal/play_billing/zzjq;Landroid/content/Context;)V
    .locals 4

    .line 1
    :try_start_0
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/app/ActivityManager;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 17
    .line 18
    .line 19
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 20
    .line 21
    const-wide/32 v2, 0x100000

    .line 22
    .line 23
    .line 24
    div-long/2addr v0, v2

    .line 25
    long-to-int p1, v0

    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 30
    .line 31
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 32
    .line 33
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzjs;->w(Lcom/google/android/gms/internal/play_billing/zzjs;I)V

    .line 34
    .line 35
    .line 36
    sget-object p1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 42
    .line 43
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 44
    .line 45
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzjs;->s(Lcom/google/android/gms/internal/play_billing/zzjs;)V

    .line 46
    .line 47
    .line 48
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 54
    .line 55
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 56
    .line 57
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzjs;->v(Lcom/google/android/gms/internal/play_billing/zzjs;)V

    .line 58
    .line 59
    .line 60
    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 66
    .line 67
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 68
    .line 69
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzjs;->u(Lcom/google/android/gms/internal/play_billing/zzjs;)V

    .line 70
    .line 71
    .line 72
    sget-object p1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    .line 75
    .line 76
    .line 77
    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 78
    .line 79
    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 80
    .line 81
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzjs;->t(Lcom/google/android/gms/internal/play_billing/zzjs;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    :cond_0
    return-void

    .line 85
    :catch_0
    move-exception p0

    .line 86
    const-string p1, "BillingClient"

    .line 87
    .line 88
    const-string v0, "Runtime error while populating device info."

    .line 89
    .line 90
    invoke-static {p1, v0, p0}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public static j(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;
    .locals 2

    .line 1
    :try_start_0
    invoke-interface {p5, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    long-to-double p1, p1

    .line 6
    new-instance p5, Lcom/android/billingclient/api/zzay;

    .line 7
    .line 8
    invoke-direct {p5, p0, p3}, Lcom/android/billingclient/api/zzay;-><init>(Ljava/util/concurrent/Future;Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    const-wide v0, 0x3fee666666666666L    # 0.95

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    mul-double/2addr p1, v0

    .line 17
    double-to-long p1, p1

    .line 18
    invoke-virtual {p4, p5, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 19
    .line 20
    .line 21
    return-object p0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    const-string p1, "BillingClient"

    .line 24
    .line 25
    const-string p2, "Async task throws exception!"

    .line 26
    .line 27
    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method

.method public static l()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "com.android.billingclient.ktx.BuildConfig"

    .line 3
    .line 4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-string v2, "VERSION_NAME"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    return-object v1

    .line 21
    :catch_0
    return-object v0
.end method

.method public static o(Lcom/android/billingclient/api/BillingClientImpl;I)V
    .locals 4

    .line 1
    if-nez p1, :cond_4

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->a:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->b:I

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    monitor-exit p1

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 v0, 0x2

    .line 16
    invoke-virtual {p0, v0}, Lcom/android/billingclient/api/BillingClientImpl;->x(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->f:Lcom/android/billingclient/api/zzaa;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->f:Lcom/android/billingclient/api/zzaa;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    iget-boolean p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->u:Z

    .line 31
    .line 32
    iget-object p1, v0, Lcom/android/billingclient/api/zzaa;->d:Lcom/android/billingclient/api/zzz;

    .line 33
    .line 34
    new-instance v1, Landroid/content/IntentFilter;

    .line 35
    .line 36
    const-string v2, "com.android.vending.billing.PURCHASES_UPDATED"

    .line 37
    .line 38
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance v2, Landroid/content/IntentFilter;

    .line 42
    .line 43
    const-string v3, "com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED"

    .line 44
    .line 45
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v3, "com.android.vending.billing.ALTERNATIVE_BILLING"

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iput-boolean p0, v0, Lcom/android/billingclient/api/zzaa;->f:Z

    .line 54
    .line 55
    iget-object p0, v0, Lcom/android/billingclient/api/zzaa;->e:Lcom/android/billingclient/api/zzz;

    .line 56
    .line 57
    iget-object v3, v0, Lcom/android/billingclient/api/zzaa;->a:Landroid/content/Context;

    .line 58
    .line 59
    invoke-virtual {p0, v3, v2}, Lcom/android/billingclient/api/zzz;->a(Landroid/content/Context;Landroid/content/IntentFilter;)V

    .line 60
    .line 61
    .line 62
    iget-boolean p0, v0, Lcom/android/billingclient/api/zzaa;->f:Z

    .line 63
    .line 64
    if-eqz p0, :cond_2

    .line 65
    .line 66
    invoke-virtual {p1, v3, v1}, Lcom/android/billingclient/api/zzz;->b(Landroid/content/Context;Landroid/content/IntentFilter;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_2
    invoke-virtual {p1, v3, v1}, Lcom/android/billingclient/api/zzz;->a(Landroid/content/Context;Landroid/content/IntentFilter;)V

    .line 71
    .line 72
    .line 73
    :cond_3
    return-void

    .line 74
    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    throw p0

    .line 76
    :cond_4
    const/4 p1, 0x0

    .line 77
    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->x(I)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public static bridge synthetic p(Lcom/android/billingclient/api/BillingClientImpl;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->b:I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-ne p0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    monitor-exit v0

    .line 12
    return v1

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method


# virtual methods
.method public final A()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->j:Lcom/android/billingclient/api/zzbv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :try_start_1
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->g:Landroid/content/Context;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->j:Lcom/android/billingclient/api/zzbv;

    .line 12
    .line 13
    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    .line 15
    .line 16
    :try_start_2
    iput-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->i:Lcom/google/android/gms/internal/play_billing/zzap;

    .line 17
    .line 18
    iput-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->j:Lcom/android/billingclient/api/zzbv;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    goto :goto_1

    .line 23
    :catchall_1
    move-exception v2

    .line 24
    :try_start_3
    const-string v3, "BillingClient"

    .line 25
    .line 26
    const-string v4, "There was an exception while unbinding service!"

    .line 27
    .line 28
    invoke-static {v3, v4, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 29
    .line 30
    .line 31
    :try_start_4
    iput-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->i:Lcom/google/android/gms/internal/play_billing/zzap;

    .line 32
    .line 33
    iput-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->j:Lcom/android/billingclient/api/zzbv;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_2
    move-exception v2

    .line 37
    iput-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->i:Lcom/google/android/gms/internal/play_billing/zzap;

    .line 38
    .line 39
    iput-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->j:Lcom/android/billingclient/api/zzbv;

    .line 40
    .line 41
    throw v2

    .line 42
    :cond_0
    :goto_0
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 45
    throw v1
.end method

.method public final B()Z
    .locals 18

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzbl;

    .line 2
    .line 3
    move-object/from16 v2, p0

    .line 4
    .line 5
    iget-object v0, v2, Lcom/android/billingclient/api/BillingClientImpl;->C:Lcom/google/android/gms/internal/play_billing/zzbo;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzbl;-><init>(Lcom/google/android/gms/internal/play_billing/zzbo;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzbl;->a()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    const-wide/16 v3, 0x7530

    .line 15
    .line 16
    move v5, v0

    .line 17
    move-wide v6, v3

    .line 18
    :goto_0
    const/4 v8, 0x3

    .line 19
    const-string v9, "BillingClient"

    .line 20
    .line 21
    if-gt v5, v8, :cond_7

    .line 22
    .line 23
    const-wide/16 v10, 0x0

    .line 24
    .line 25
    :try_start_0
    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 26
    .line 27
    .line 28
    move-result-wide v6

    .line 29
    cmp-long v0, v6, v10

    .line 30
    .line 31
    if-gtz v0, :cond_0

    .line 32
    .line 33
    const-string v0, "No time remaining for reconnection attempt."

    .line 34
    .line 35
    invoke-static {v9, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/android/billingclient/api/BillingClientImpl;->C()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    return v0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    const-string v0, "Already connected or not opted into auto reconnection."

    .line 46
    .line 47
    invoke-static {v9, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    sget-object v0, Lcom/android/billingclient/api/zzdb;->i:Lcom/android/billingclient/api/BillingResult;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzcx;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzdc;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 57
    .line 58
    invoke-interface {v0, v6, v7, v12}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Lcom/android/billingclient/api/BillingResult;

    .line 63
    .line 64
    iget v0, v0, Lcom/android/billingclient/api/BillingResult;->a:I

    .line 65
    .line 66
    if-nez v0, :cond_1

    .line 67
    .line 68
    new-instance v6, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v7, "Reconnection succeeded with result: "

    .line 74
    .line 75
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v9, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Lcom/android/billingclient/api/BillingClientImpl;->C()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    return v0

    .line 93
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v7, "Reconnection failed with result: "

    .line 99
    .line 100
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-static {v9, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :goto_1
    instance-of v6, v0, Ljava/lang/InterruptedException;

    .line 115
    .line 116
    if-eqz v6, :cond_2

    .line 117
    .line 118
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 123
    .line 124
    .line 125
    :cond_2
    const-string v6, "Error during reconnection attempt: "

    .line 126
    .line 127
    invoke-static {v9, v6, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    .line 129
    .line 130
    :goto_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 131
    .line 132
    iget-boolean v6, v1, Lcom/google/android/gms/internal/play_billing/zzbl;->b:Z

    .line 133
    .line 134
    iget-object v7, v1, Lcom/google/android/gms/internal/play_billing/zzbl;->a:Lcom/google/android/gms/internal/play_billing/zzbo;

    .line 135
    .line 136
    if-eqz v6, :cond_3

    .line 137
    .line 138
    invoke-virtual {v7}, Lcom/google/android/gms/internal/play_billing/zzbo;->a()J

    .line 139
    .line 140
    .line 141
    move-result-wide v12

    .line 142
    iget-wide v14, v1, Lcom/google/android/gms/internal/play_billing/zzbl;->d:J

    .line 143
    .line 144
    sub-long/2addr v12, v14

    .line 145
    iget-wide v14, v1, Lcom/google/android/gms/internal/play_billing/zzbl;->c:J

    .line 146
    .line 147
    add-long/2addr v12, v14

    .line 148
    goto :goto_3

    .line 149
    :cond_3
    iget-wide v12, v1, Lcom/google/android/gms/internal/play_billing/zzbl;->c:J

    .line 150
    .line 151
    :goto_3
    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 152
    .line 153
    invoke-virtual {v0, v12, v13, v6}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 154
    .line 155
    .line 156
    move-result-wide v12

    .line 157
    sub-long v12, v3, v12

    .line 158
    .line 159
    add-int/lit8 v14, v5, -0x1

    .line 160
    .line 161
    int-to-double v14, v14

    .line 162
    move-wide/from16 v16, v3

    .line 163
    .line 164
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 165
    .line 166
    invoke-static {v3, v4, v14, v15}, Ljava/lang/Math;->pow(DD)D

    .line 167
    .line 168
    .line 169
    move-result-wide v3

    .line 170
    double-to-long v3, v3

    .line 171
    const-wide/16 v14, 0x3e8

    .line 172
    .line 173
    mul-long/2addr v3, v14

    .line 174
    cmp-long v14, v12, v3

    .line 175
    .line 176
    if-gez v14, :cond_4

    .line 177
    .line 178
    const-string v0, "Reconnection failed due to timeout limit reached."

    .line 179
    .line 180
    invoke-static {v9, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2}, Lcom/android/billingclient/api/BillingClientImpl;->C()Z

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    return v0

    .line 188
    :cond_4
    if-ge v5, v8, :cond_6

    .line 189
    .line 190
    cmp-long v8, v3, v10

    .line 191
    .line 192
    if-lez v8, :cond_6

    .line 193
    .line 194
    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 195
    .line 196
    .line 197
    iget-boolean v3, v1, Lcom/google/android/gms/internal/play_billing/zzbl;->b:Z

    .line 198
    .line 199
    if-eqz v3, :cond_5

    .line 200
    .line 201
    invoke-virtual {v7}, Lcom/google/android/gms/internal/play_billing/zzbo;->a()J

    .line 202
    .line 203
    .line 204
    move-result-wide v3

    .line 205
    iget-wide v7, v1, Lcom/google/android/gms/internal/play_billing/zzbl;->d:J

    .line 206
    .line 207
    sub-long/2addr v3, v7

    .line 208
    iget-wide v7, v1, Lcom/google/android/gms/internal/play_billing/zzbl;->c:J

    .line 209
    .line 210
    add-long/2addr v3, v7

    .line 211
    goto :goto_4

    .line 212
    :cond_5
    iget-wide v3, v1, Lcom/google/android/gms/internal/play_billing/zzbl;->c:J

    .line 213
    .line 214
    :goto_4
    invoke-virtual {v0, v3, v4, v6}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 215
    .line 216
    .line 217
    move-result-wide v3
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 218
    sub-long v3, v16, v3

    .line 219
    .line 220
    move-wide v6, v3

    .line 221
    goto :goto_5

    .line 222
    :catch_1
    move-exception v0

    .line 223
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 228
    .line 229
    .line 230
    const-string v1, "Error sleeping during reconnection attempt: "

    .line 231
    .line 232
    invoke-static {v9, v1, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 233
    .line 234
    .line 235
    goto :goto_6

    .line 236
    :cond_6
    move-wide v6, v12

    .line 237
    :goto_5
    add-int/lit8 v5, v5, 0x1

    .line 238
    .line 239
    move-wide/from16 v3, v16

    .line 240
    .line 241
    goto/16 :goto_0

    .line 242
    .line 243
    :cond_7
    :goto_6
    const-string v0, "Max retries reached."

    .line 244
    .line 245
    invoke-static {v9, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2}, Lcom/android/billingclient/api/BillingClientImpl;->C()Z

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    return v0
.end method

.method public final C()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->b:I

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    const/4 v3, 0x0

    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->i:Lcom/google/android/gms/internal/play_billing/zzap;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->j:Lcom/android/billingclient/api/zzbv;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    return v3

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1
.end method

.method public final E(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzje;Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzdv;
    .locals 2

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    invoke-static {p4}, Lcom/android/billingclient/api/zzcx;->a(Ljava/lang/Exception;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0, p2, v0, p1, v1}, Lcom/android/billingclient/api/BillingClientImpl;->H(Lcom/google/android/gms/internal/play_billing/zzje;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string p2, "BillingClient"

    .line 11
    .line 12
    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    new-instance p2, Lcom/android/billingclient/api/zzdv;

    .line 16
    .line 17
    const/4 p3, 0x0

    .line 18
    invoke-direct {p2, p1, p3}, Lcom/android/billingclient/api/zzdv;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/ArrayList;)V

    .line 19
    .line 20
    .line 21
    return-object p2
.end method

.method public final F(Lcom/google/android/gms/internal/play_billing/zzje;ILcom/android/billingclient/api/BillingResult;)V
    .locals 2

    .line 1
    :try_start_0
    sget v0, Lcom/android/billingclient/api/zzcx;->a:I

    .line 2
    .line 3
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjl;->f:Lcom/google/android/gms/internal/play_billing/zzjl;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {p1, p2, p3, v1, v0}, Lcom/android/billingclient/api/zzcx;->b(Lcom/google/android/gms/internal/play_billing/zzje;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjl;)Lcom/google/android/gms/internal/play_billing/zzix;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->u(Lcom/google/android/gms/internal/play_billing/zzix;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    const-string p2, "BillingClient"

    .line 16
    .line 17
    const-string p3, "Unable to log."

    .line 18
    .line 19
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final G(Lcom/google/android/gms/internal/play_billing/zzje;Lcom/android/billingclient/api/BillingResult;J)V
    .locals 5

    .line 1
    const-string v0, "Unable to log."

    .line 2
    .line 3
    const-string v1, "BillingClient"

    .line 4
    .line 5
    :try_start_0
    sget v2, Lcom/android/billingclient/api/zzcx;->a:I

    .line 6
    .line 7
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjl;->f:Lcom/google/android/gms/internal/play_billing/zzjl;

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, 0x0

    .line 11
    invoke-static {p1, v3, p2, v4, v2}, Lcom/android/billingclient/api/zzcx;->b(Lcom/google/android/gms/internal/play_billing/zzje;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjl;)Lcom/google/android/gms/internal/play_billing/zzix;

    .line 12
    .line 13
    .line 14
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    :try_start_1
    iget-object p2, p0, Lcom/android/billingclient/api/BillingClientImpl;->h:Lcom/android/billingclient/api/zzdh;

    .line 16
    .line 17
    iget v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->l:I

    .line 18
    .line 19
    invoke-virtual {p2, p1, v2, p3, p4}, Lcom/android/billingclient/api/zzdh;->e(Lcom/google/android/gms/internal/play_billing/zzix;IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    :try_start_2
    invoke-static {v1, v0, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catchall_1
    move-exception p1

    .line 29
    invoke-static {v1, v0, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final H(Lcom/google/android/gms/internal/play_billing/zzje;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    sget v0, Lcom/android/billingclient/api/zzcx;->a:I

    .line 2
    .line 3
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjl;->f:Lcom/google/android/gms/internal/play_billing/zzjl;

    .line 4
    .line 5
    invoke-static {p1, p2, p3, p4, v0}, Lcom/android/billingclient/api/zzcx;->b(Lcom/google/android/gms/internal/play_billing/zzje;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjl;)Lcom/google/android/gms/internal/play_billing/zzix;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->u(Lcom/google/android/gms/internal/play_billing/zzix;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    const-string p2, "BillingClient"

    .line 15
    .line 16
    const-string p3, "Unable to log."

    .line 17
    .line 18
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final I(Lcom/google/android/gms/internal/play_billing/zzje;Lcom/android/billingclient/api/BillingResult;JZ)V
    .locals 11

    .line 1
    const-string v1, "Unable to log."

    .line 2
    .line 3
    const-string v2, "BillingClient"

    .line 4
    .line 5
    :try_start_0
    sget v0, Lcom/android/billingclient/api/zzcx;->a:I

    .line 6
    .line 7
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjl;->f:Lcom/google/android/gms/internal/play_billing/zzjl;

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, 0x0

    .line 11
    invoke-static {p1, v3, p2, v4, v0}, Lcom/android/billingclient/api/zzcx;->b(Lcom/google/android/gms/internal/play_billing/zzje;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjl;)Lcom/google/android/gms/internal/play_billing/zzix;

    .line 12
    .line 13
    .line 14
    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    :try_start_1
    iget-object v5, p0, Lcom/android/billingclient/api/BillingClientImpl;->h:Lcom/android/billingclient/api/zzdh;

    .line 16
    .line 17
    iget v7, p0, Lcom/android/billingclient/api/BillingClientImpl;->l:I

    .line 18
    .line 19
    move-wide v8, p3

    .line 20
    move/from16 v10, p5

    .line 21
    .line 22
    invoke-virtual/range {v5 .. v10}, Lcom/android/billingclient/api/zzdh;->f(Lcom/google/android/gms/internal/play_billing/zzix;IJZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    move-object p1, v0

    .line 28
    :try_start_2
    invoke-static {v2, v1, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void

    .line 32
    :catchall_1
    move-exception v0

    .line 33
    move-object p1, v0

    .line 34
    invoke-static {v2, v1, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final J(Lcom/google/android/gms/internal/play_billing/zzje;Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;JZ)V
    .locals 4

    .line 1
    const-string v1, "Unable to log."

    .line 2
    .line 3
    const-string v2, "BillingClient"

    .line 4
    .line 5
    :try_start_0
    sget v0, Lcom/android/billingclient/api/zzcx;->a:I

    .line 6
    .line 7
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjl;->f:Lcom/google/android/gms/internal/play_billing/zzjl;

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    invoke-static {p1, v3, p2, p3, v0}, Lcom/android/billingclient/api/zzcx;->b(Lcom/google/android/gms/internal/play_billing/zzje;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjl;)Lcom/google/android/gms/internal/play_billing/zzix;

    .line 11
    .line 12
    .line 13
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    :try_start_1
    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->h:Lcom/android/billingclient/api/zzdh;

    .line 15
    .line 16
    iget p3, p0, Lcom/android/billingclient/api/BillingClientImpl;->l:I

    .line 17
    .line 18
    invoke-virtual/range {p1 .. p6}, Lcom/android/billingclient/api/zzdh;->f(Lcom/google/android/gms/internal/play_billing/zzix;IJZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    move-object p1, v0

    .line 24
    :try_start_2
    invoke-static {v2, v1, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void

    .line 28
    :catchall_1
    move-exception v0

    .line 29
    move-object p1, v0

    .line 30
    invoke-static {v2, v1, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final K(Lcom/android/billingclient/api/BillingResult;)V
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Lcom/android/billingclient/api/zzam;

    .line 9
    .line 10
    invoke-direct {v0, p0, p1}, Lcom/android/billingclient/api/zzam;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingResult;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->e:Landroid/os/Handler;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public a(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V
    .locals 6

    .line 1
    new-instance v0, Lcom/android/billingclient/api/zzai;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2, p1}, Lcom/android/billingclient/api/zzai;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;Lcom/android/billingclient/api/AcknowledgePurchaseParams;)V

    .line 4
    .line 5
    .line 6
    new-instance v3, Lcom/android/billingclient/api/zzaj;

    .line 7
    .line 8
    invoke-direct {v3, p0, p2}, Lcom/android/billingclient/api/zzaj;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->q()Landroid/os/Handler;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->i()Ljava/util/concurrent/ExecutorService;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    const-wide/16 v1, 0x7530

    .line 20
    .line 21
    invoke-static/range {v0 .. v5}, Lcom/android/billingclient/api/BillingClientImpl;->j(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->t()Lcom/android/billingclient/api/BillingResult;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzje;->D:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 32
    .line 33
    const/4 v0, 0x3

    .line 34
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->F(Lcom/google/android/gms/internal/play_billing/zzje;ILcom/android/billingclient/api/BillingResult;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public b(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V
    .locals 6

    .line 1
    new-instance v0, Lcom/android/billingclient/api/zzaz;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2, p1}, Lcom/android/billingclient/api/zzaz;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/ConsumeResponseListener;Lcom/android/billingclient/api/ConsumeParams;)V

    .line 4
    .line 5
    .line 6
    new-instance v3, Lcom/android/billingclient/api/zzba;

    .line 7
    .line 8
    invoke-direct {v3, p0, p2, p1}, Lcom/android/billingclient/api/zzba;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/ConsumeResponseListener;Lcom/android/billingclient/api/ConsumeParams;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->q()Landroid/os/Handler;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->i()Ljava/util/concurrent/ExecutorService;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    const-wide/16 v1, 0x7530

    .line 20
    .line 21
    invoke-static/range {v0 .. v5}, Lcom/android/billingclient/api/BillingClientImpl;->j(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->t()Lcom/android/billingclient/api/BillingResult;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzje;->D:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 32
    .line 33
    const/4 v0, 0x4

    .line 34
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->F(Lcom/google/android/gms/internal/play_billing/zzje;ILcom/android/billingclient/api/BillingResult;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public c()V
    .locals 6

    .line 1
    :try_start_0
    sget v0, Lcom/android/billingclient/api/zzcx;->a:I

    .line 2
    .line 3
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjl;->f:Lcom/google/android/gms/internal/play_billing/zzjl;

    .line 4
    .line 5
    const/16 v1, 0xc

    .line 6
    .line 7
    invoke-static {v1, v0}, Lcom/android/billingclient/api/zzcx;->c(ILcom/google/android/gms/internal/play_billing/zzjl;)Lcom/google/android/gms/internal/play_billing/zzjb;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/billingclient/api/BillingClientImpl;->v(Lcom/google/android/gms/internal/play_billing/zzjb;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    const-string v1, "BillingClient"

    .line 17
    .line 18
    const-string v2, "Unable to log."

    .line 19
    .line 20
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->a:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v0

    .line 26
    :try_start_1
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->f:Lcom/android/billingclient/api/zzaa;

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->f:Lcom/android/billingclient/api/zzaa;

    .line 31
    .line 32
    iget-object v2, v1, Lcom/android/billingclient/api/zzaa;->d:Lcom/android/billingclient/api/zzz;

    .line 33
    .line 34
    iget-object v3, v1, Lcom/android/billingclient/api/zzaa;->a:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Lcom/android/billingclient/api/zzz;->c(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, v1, Lcom/android/billingclient/api/zzaa;->e:Lcom/android/billingclient/api/zzz;

    .line 40
    .line 41
    invoke-virtual {v1, v3}, Lcom/android/billingclient/api/zzz;->c(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :catchall_1
    move-exception v1

    .line 46
    :try_start_2
    const-string v2, "BillingClient"

    .line 47
    .line 48
    const-string v3, "There was an exception while shutting down broadcast manager while ending connection!"

    .line 49
    .line 50
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 51
    .line 52
    .line 53
    :cond_0
    :goto_1
    :try_start_3
    const-string v1, "BillingClient"

    .line 54
    .line 55
    const-string v2, "Unbinding from service."

    .line 56
    .line 57
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->A()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :catchall_2
    move-exception v1

    .line 65
    :try_start_4
    const-string v2, "BillingClient"

    .line 66
    .line 67
    const-string v3, "There was an exception while unbinding from the service while ending connection!"

    .line 68
    .line 69
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 70
    .line 71
    .line 72
    :goto_2
    const/4 v1, 0x0

    .line 73
    const/4 v2, 0x3

    .line 74
    :try_start_5
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->y()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 75
    .line 76
    .line 77
    :goto_3
    :try_start_6
    invoke-virtual {p0, v2}, Lcom/android/billingclient/api/BillingClientImpl;->x(I)V

    .line 78
    .line 79
    .line 80
    iput-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->z:Lcom/android/billingclient/api/BillingClientStateListener;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 81
    .line 82
    goto :goto_4

    .line 83
    :catchall_3
    move-exception v1

    .line 84
    goto :goto_5

    .line 85
    :catchall_4
    move-exception v3

    .line 86
    :try_start_7
    const-string v4, "BillingClient"

    .line 87
    .line 88
    const-string v5, "There was an exception while shutting down the executor service while ending connection!"

    .line 89
    .line 90
    invoke-static {v4, v5, v3}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 91
    .line 92
    .line 93
    goto :goto_3

    .line 94
    :goto_4
    :try_start_8
    monitor-exit v0

    .line 95
    return-void

    .line 96
    :catchall_5
    move-exception v3

    .line 97
    invoke-virtual {p0, v2}, Lcom/android/billingclient/api/BillingClientImpl;->x(I)V

    .line 98
    .line 99
    .line 100
    iput-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->z:Lcom/android/billingclient/api/BillingClientStateListener;

    .line 101
    .line 102
    throw v3

    .line 103
    :goto_5
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 104
    throw v1
.end method

.method public final d()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->C()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public e(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;
    .locals 31

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v5, p2

    .line 4
    .line 5
    new-instance v0, Ljava/util/Random;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    iget-object v0, v1, Lcom/android/billingclient/api/BillingClientImpl;->f:Lcom/android/billingclient/api/zzaa;

    .line 15
    .line 16
    if-eqz v0, :cond_48

    .line 17
    .line 18
    iget-object v0, v1, Lcom/android/billingclient/api/BillingClientImpl;->f:Lcom/android/billingclient/api/zzaa;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/billingclient/api/zzaa;->b:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    .line 21
    .line 22
    if-eqz v0, :cond_48

    .line 23
    .line 24
    const-string v4, "BillingClient"

    .line 25
    .line 26
    const-string v0, "Reconnection failed with result: "

    .line 27
    .line 28
    const-string v6, "Reconnection succeeded with result: "

    .line 29
    .line 30
    :try_start_0
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 31
    .line 32
    const/16 v9, 0x1d

    .line 33
    .line 34
    if-ge v8, v9, :cond_0

    .line 35
    .line 36
    const-wide/16 v8, 0x0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const-wide/16 v8, 0xbb8

    .line 40
    .line 41
    :goto_0
    const-string v10, "BillingClient"

    .line 42
    .line 43
    const-string v11, "Already connected or not opted into auto reconnection."

    .line 44
    .line 45
    invoke-static {v10, v11}, Lcom/google/android/gms/internal/play_billing/zzc;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    sget-object v10, Lcom/android/billingclient/api/zzdb;->i:Lcom/android/billingclient/api/BillingResult;

    .line 49
    .line 50
    invoke-static {v10}, Lcom/google/android/gms/internal/play_billing/zzcx;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzdc;

    .line 51
    .line 52
    .line 53
    move-result-object v10

    .line 54
    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 55
    .line 56
    invoke-interface {v10, v8, v9, v11}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    check-cast v8, Lcom/android/billingclient/api/BillingResult;

    .line 61
    .line 62
    iget v8, v8, Lcom/android/billingclient/api/BillingResult;->a:I

    .line 63
    .line 64
    if-nez v8, :cond_1

    .line 65
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :catch_0
    move-exception v0

    .line 83
    goto :goto_1

    .line 84
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :goto_1
    instance-of v6, v0, Ljava/lang/InterruptedException;

    .line 101
    .line 102
    if-eqz v6, :cond_2

    .line 103
    .line 104
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 109
    .line 110
    .line 111
    :cond_2
    const-string v6, "Error during reconnection attempt: "

    .line 112
    .line 113
    invoke-static {v4, v6, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    :goto_2
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingClientImpl;->C()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-nez v0, :cond_3

    .line 121
    .line 122
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzje;->g:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 123
    .line 124
    sget-object v4, Lcom/android/billingclient/api/zzdb;->j:Lcom/android/billingclient/api/BillingResult;

    .line 125
    .line 126
    invoke-virtual {v1, v0, v4, v2, v3}, Lcom/android/billingclient/api/BillingClientImpl;->G(Lcom/google/android/gms/internal/play_billing/zzje;Lcom/android/billingclient/api/BillingResult;J)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v4}, Lcom/android/billingclient/api/BillingClientImpl;->K(Lcom/android/billingclient/api/BillingResult;)V

    .line 130
    .line 131
    .line 132
    return-object v4

    .line 133
    :cond_3
    iget-object v4, v1, Lcom/android/billingclient/api/BillingClientImpl;->a:Ljava/lang/Object;

    .line 134
    .line 135
    monitor-enter v4

    .line 136
    :try_start_1
    iget-object v0, v1, Lcom/android/billingclient/api/BillingClientImpl;->j:Lcom/android/billingclient/api/zzbv;

    .line 137
    .line 138
    if-eqz v0, :cond_4

    .line 139
    .line 140
    iget-object v0, v1, Lcom/android/billingclient/api/BillingClientImpl;->j:Lcom/android/billingclient/api/zzbv;

    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    goto :goto_3

    .line 146
    :catchall_0
    move-exception v0

    .line 147
    goto/16 :goto_28

    .line 148
    .line 149
    :cond_4
    :goto_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .line 154
    .line 155
    iget-object v4, v5, Lcom/android/billingclient/api/BillingFlowParams;->d:Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 158
    .line 159
    .line 160
    iget-object v4, v5, Lcom/android/billingclient/api/BillingFlowParams;->c:Lcom/google/android/gms/internal/play_billing/zzbw;

    .line 161
    .line 162
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 167
    .line 168
    .line 169
    move-result v8

    .line 170
    if-eqz v8, :cond_5

    .line 171
    .line 172
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v6

    .line 176
    goto :goto_4

    .line 177
    :cond_5
    const/4 v6, 0x0

    .line 178
    :goto_4
    check-cast v6, Lcom/android/billingclient/api/SkuDetails;

    .line 179
    .line 180
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 181
    .line 182
    .line 183
    move-result-object v8

    .line 184
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 185
    .line 186
    .line 187
    move-result v10

    .line 188
    if-eqz v10, :cond_6

    .line 189
    .line 190
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v8

    .line 194
    goto :goto_5

    .line 195
    :cond_6
    const/4 v8, 0x0

    .line 196
    :goto_5
    check-cast v8, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    .line 197
    .line 198
    if-nez v6, :cond_47

    .line 199
    .line 200
    iget-object v10, v8, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->a:Lcom/android/billingclient/api/ProductDetails;

    .line 201
    .line 202
    move-object v11, v4

    .line 203
    move-wide/from16 v29, v2

    .line 204
    .line 205
    move-object v2, v5

    .line 206
    move-wide/from16 v4, v29

    .line 207
    .line 208
    iget-object v3, v10, Lcom/android/billingclient/api/ProductDetails;->c:Ljava/lang/String;

    .line 209
    .line 210
    iget-object v10, v10, Lcom/android/billingclient/api/ProductDetails;->d:Ljava/lang/String;

    .line 211
    .line 212
    const-string v12, "subs"

    .line 213
    .line 214
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v12

    .line 218
    move-object v13, v6

    .line 219
    const/4 v6, 0x0

    .line 220
    if-eqz v12, :cond_8

    .line 221
    .line 222
    iget-boolean v12, v1, Lcom/android/billingclient/api/BillingClientImpl;->k:Z

    .line 223
    .line 224
    if-eqz v12, :cond_7

    .line 225
    .line 226
    goto :goto_6

    .line 227
    :cond_7
    const-string v0, "BillingClient"

    .line 228
    .line 229
    const-string v2, "Current client doesn\'t support subscriptions."

    .line 230
    .line 231
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzje;->n:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 235
    .line 236
    sget-object v3, Lcom/android/billingclient/api/zzdb;->l:Lcom/android/billingclient/api/BillingResult;

    .line 237
    .line 238
    invoke-virtual/range {v1 .. v6}, Lcom/android/billingclient/api/BillingClientImpl;->I(Lcom/google/android/gms/internal/play_billing/zzje;Lcom/android/billingclient/api/BillingResult;JZ)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1, v3}, Lcom/android/billingclient/api/BillingClientImpl;->K(Lcom/android/billingclient/api/BillingResult;)V

    .line 242
    .line 243
    .line 244
    return-object v3

    .line 245
    :cond_8
    :goto_6
    iget-object v12, v2, Lcom/android/billingclient/api/BillingFlowParams;->b:Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;

    .line 246
    .line 247
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 248
    .line 249
    .line 250
    iget-boolean v12, v2, Lcom/android/billingclient/api/BillingFlowParams;->a:Z

    .line 251
    .line 252
    const/4 v14, 0x0

    .line 253
    if-nez v12, :cond_a

    .line 254
    .line 255
    iget-object v12, v2, Lcom/android/billingclient/api/BillingFlowParams;->c:Lcom/google/android/gms/internal/play_billing/zzbw;

    .line 256
    .line 257
    if-eqz v12, :cond_9

    .line 258
    .line 259
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 260
    .line 261
    .line 262
    move-result v15

    .line 263
    move v6, v14

    .line 264
    :goto_7
    if-ge v6, v15, :cond_9

    .line 265
    .line 266
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v17

    .line 270
    check-cast v17, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    .line 271
    .line 272
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 273
    .line 274
    .line 275
    add-int/lit8 v6, v6, 0x1

    .line 276
    .line 277
    goto :goto_7

    .line 278
    :cond_9
    const/4 v6, 0x0

    .line 279
    goto :goto_8

    .line 280
    :cond_a
    iget-boolean v6, v1, Lcom/android/billingclient/api/BillingClientImpl;->m:Z

    .line 281
    .line 282
    if-nez v6, :cond_9

    .line 283
    .line 284
    const-string v0, "BillingClient"

    .line 285
    .line 286
    const-string v2, "Current client doesn\'t support extra params for buy intent."

    .line 287
    .line 288
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzje;->w:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 292
    .line 293
    sget-object v3, Lcom/android/billingclient/api/zzdb;->f:Lcom/android/billingclient/api/BillingResult;

    .line 294
    .line 295
    const/4 v6, 0x0

    .line 296
    invoke-virtual/range {v1 .. v6}, Lcom/android/billingclient/api/BillingClientImpl;->I(Lcom/google/android/gms/internal/play_billing/zzje;Lcom/android/billingclient/api/BillingResult;JZ)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v1, v3}, Lcom/android/billingclient/api/BillingClientImpl;->K(Lcom/android/billingclient/api/BillingResult;)V

    .line 300
    .line 301
    .line 302
    return-object v3

    .line 303
    :goto_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 304
    .line 305
    .line 306
    move-result v12

    .line 307
    const/4 v15, 0x1

    .line 308
    if-le v12, v15, :cond_b

    .line 309
    .line 310
    iget-boolean v12, v1, Lcom/android/billingclient/api/BillingClientImpl;->q:Z

    .line 311
    .line 312
    if-nez v12, :cond_b

    .line 313
    .line 314
    const-string v0, "BillingClient"

    .line 315
    .line 316
    const-string v2, "Current client doesn\'t support multi-item purchases."

    .line 317
    .line 318
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzje;->x:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 322
    .line 323
    sget-object v3, Lcom/android/billingclient/api/zzdb;->m:Lcom/android/billingclient/api/BillingResult;

    .line 324
    .line 325
    invoke-virtual/range {v1 .. v6}, Lcom/android/billingclient/api/BillingClientImpl;->I(Lcom/google/android/gms/internal/play_billing/zzje;Lcom/android/billingclient/api/BillingResult;JZ)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v1, v3}, Lcom/android/billingclient/api/BillingClientImpl;->K(Lcom/android/billingclient/api/BillingResult;)V

    .line 329
    .line 330
    .line 331
    return-object v3

    .line 332
    :cond_b
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    .line 333
    .line 334
    .line 335
    move-result v12

    .line 336
    if-nez v12, :cond_c

    .line 337
    .line 338
    iget-boolean v12, v1, Lcom/android/billingclient/api/BillingClientImpl;->r:Z

    .line 339
    .line 340
    if-nez v12, :cond_c

    .line 341
    .line 342
    const-string v0, "BillingClient"

    .line 343
    .line 344
    const-string v2, "Current client doesn\'t support purchases with ProductDetails."

    .line 345
    .line 346
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzje;->y:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 350
    .line 351
    sget-object v3, Lcom/android/billingclient/api/zzdb;->o:Lcom/android/billingclient/api/BillingResult;

    .line 352
    .line 353
    invoke-virtual/range {v1 .. v6}, Lcom/android/billingclient/api/BillingClientImpl;->I(Lcom/google/android/gms/internal/play_billing/zzje;Lcom/android/billingclient/api/BillingResult;JZ)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v1, v3}, Lcom/android/billingclient/api/BillingClientImpl;->K(Lcom/android/billingclient/api/BillingResult;)V

    .line 357
    .line 358
    .line 359
    return-object v3

    .line 360
    :cond_c
    const-string v12, "packageName"

    .line 361
    .line 362
    const-string v6, "."

    .line 363
    .line 364
    const-string v15, "play_pass_subs"

    .line 365
    .line 366
    const/16 v18, 0x0

    .line 367
    .line 368
    iget-object v9, v2, Lcom/android/billingclient/api/BillingFlowParams;->c:Lcom/google/android/gms/internal/play_billing/zzbw;

    .line 369
    .line 370
    invoke-virtual {v9}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 371
    .line 372
    .line 373
    move-result v9

    .line 374
    if-eqz v9, :cond_d

    .line 375
    .line 376
    sget-object v6, Lcom/android/billingclient/api/zzdb;->i:Lcom/android/billingclient/api/BillingResult;

    .line 377
    .line 378
    move-object/from16 v19, v3

    .line 379
    .line 380
    move-wide/from16 v21, v4

    .line 381
    .line 382
    :goto_9
    move-object v3, v6

    .line 383
    move-object/from16 v24, v10

    .line 384
    .line 385
    move-object/from16 v27, v13

    .line 386
    .line 387
    goto/16 :goto_11

    .line 388
    .line 389
    :cond_d
    iget-object v9, v2, Lcom/android/billingclient/api/BillingFlowParams;->c:Lcom/google/android/gms/internal/play_billing/zzbw;

    .line 390
    .line 391
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v9

    .line 395
    check-cast v9, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    .line 396
    .line 397
    const/4 v14, 0x1

    .line 398
    :goto_a
    iget-object v1, v2, Lcom/android/billingclient/api/BillingFlowParams;->c:Lcom/google/android/gms/internal/play_billing/zzbw;

    .line 399
    .line 400
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    .line 401
    .line 402
    .line 403
    move-result v1

    .line 404
    move-object/from16 v19, v3

    .line 405
    .line 406
    if-ge v14, v1, :cond_f

    .line 407
    .line 408
    iget-object v1, v2, Lcom/android/billingclient/api/BillingFlowParams;->c:Lcom/google/android/gms/internal/play_billing/zzbw;

    .line 409
    .line 410
    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v1

    .line 414
    check-cast v1, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    .line 415
    .line 416
    iget-object v3, v1, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->a:Lcom/android/billingclient/api/ProductDetails;

    .line 417
    .line 418
    iget-object v3, v3, Lcom/android/billingclient/api/ProductDetails;->d:Ljava/lang/String;

    .line 419
    .line 420
    move-wide/from16 v21, v4

    .line 421
    .line 422
    iget-object v4, v9, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->a:Lcom/android/billingclient/api/ProductDetails;

    .line 423
    .line 424
    iget-object v4, v4, Lcom/android/billingclient/api/ProductDetails;->d:Ljava/lang/String;

    .line 425
    .line 426
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 427
    .line 428
    .line 429
    move-result v3

    .line 430
    if-nez v3, :cond_e

    .line 431
    .line 432
    iget-object v1, v1, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->a:Lcom/android/billingclient/api/ProductDetails;

    .line 433
    .line 434
    iget-object v1, v1, Lcom/android/billingclient/api/ProductDetails;->d:Ljava/lang/String;

    .line 435
    .line 436
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    move-result v1

    .line 440
    if-nez v1, :cond_e

    .line 441
    .line 442
    const-string v1, "All products should have same ProductType."

    .line 443
    .line 444
    const/4 v3, 0x5

    .line 445
    invoke-static {v3, v1}, Lcom/android/billingclient/api/zzdb;->a(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    .line 446
    .line 447
    .line 448
    move-result-object v6

    .line 449
    goto :goto_9

    .line 450
    :cond_e
    add-int/lit8 v14, v14, 0x1

    .line 451
    .line 452
    move-object/from16 v3, v19

    .line 453
    .line 454
    move-wide/from16 v4, v21

    .line 455
    .line 456
    goto :goto_a

    .line 457
    :cond_f
    move-wide/from16 v21, v4

    .line 458
    .line 459
    iget-object v1, v9, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->a:Lcom/android/billingclient/api/ProductDetails;

    .line 460
    .line 461
    iget-object v3, v1, Lcom/android/billingclient/api/ProductDetails;->b:Lorg/json/JSONObject;

    .line 462
    .line 463
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v3

    .line 467
    new-instance v4, Ljava/util/HashMap;

    .line 468
    .line 469
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 470
    .line 471
    .line 472
    new-instance v5, Ljava/util/HashSet;

    .line 473
    .line 474
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 475
    .line 476
    .line 477
    iget-object v14, v2, Lcom/android/billingclient/api/BillingFlowParams;->c:Lcom/google/android/gms/internal/play_billing/zzbw;

    .line 478
    .line 479
    move-object/from16 v23, v5

    .line 480
    .line 481
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 482
    .line 483
    .line 484
    move-result v5

    .line 485
    move-object/from16 v24, v10

    .line 486
    .line 487
    const/4 v10, 0x0

    .line 488
    :goto_b
    if-ge v10, v5, :cond_15

    .line 489
    .line 490
    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v25

    .line 494
    move/from16 v26, v5

    .line 495
    .line 496
    move-object/from16 v5, v25

    .line 497
    .line 498
    check-cast v5, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    .line 499
    .line 500
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 501
    .line 502
    .line 503
    move/from16 v25, v10

    .line 504
    .line 505
    iget-object v10, v5, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->a:Lcom/android/billingclient/api/ProductDetails;

    .line 506
    .line 507
    move-object/from16 v27, v13

    .line 508
    .line 509
    iget-object v13, v10, Lcom/android/billingclient/api/ProductDetails;->h:Ljava/util/ArrayList;

    .line 510
    .line 511
    move-object/from16 v28, v13

    .line 512
    .line 513
    iget-object v13, v10, Lcom/android/billingclient/api/ProductDetails;->c:Ljava/lang/String;

    .line 514
    .line 515
    if-eqz v28, :cond_11

    .line 516
    .line 517
    move-object/from16 v28, v14

    .line 518
    .line 519
    iget-object v14, v5, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->b:Ljava/lang/String;

    .line 520
    .line 521
    if-nez v14, :cond_10

    .line 522
    .line 523
    const-string v1, "offerToken is required for constructing ProductDetailsParams for subscriptions. Missing value for product id: "

    .line 524
    .line 525
    invoke-static {v1, v13}, Landroid/support/v4/media/a;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v1

    .line 529
    const/4 v14, 0x5

    .line 530
    invoke-static {v14, v1}, Lcom/android/billingclient/api/zzdb;->a(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    .line 531
    .line 532
    .line 533
    move-result-object v6

    .line 534
    :goto_c
    move-object v3, v6

    .line 535
    goto/16 :goto_11

    .line 536
    .line 537
    :cond_10
    :goto_d
    const/4 v14, 0x5

    .line 538
    goto :goto_e

    .line 539
    :cond_11
    move-object/from16 v28, v14

    .line 540
    .line 541
    goto :goto_d

    .line 542
    :goto_e
    invoke-virtual {v4, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 543
    .line 544
    .line 545
    move-result v20

    .line 546
    if-eqz v20, :cond_12

    .line 547
    .line 548
    const-string v1, "ProductId can not be duplicated. Invalid product id: "

    .line 549
    .line 550
    invoke-static {v1, v13, v6}, Landroid/support/v4/media/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v1

    .line 554
    invoke-static {v14, v1}, Lcom/android/billingclient/api/zzdb;->a(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    .line 555
    .line 556
    .line 557
    move-result-object v6

    .line 558
    goto :goto_c

    .line 559
    :cond_12
    invoke-virtual {v4, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    .line 561
    .line 562
    iget-object v5, v1, Lcom/android/billingclient/api/ProductDetails;->d:Ljava/lang/String;

    .line 563
    .line 564
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 565
    .line 566
    .line 567
    move-result v5

    .line 568
    if-nez v5, :cond_14

    .line 569
    .line 570
    iget-object v5, v10, Lcom/android/billingclient/api/ProductDetails;->d:Ljava/lang/String;

    .line 571
    .line 572
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 573
    .line 574
    .line 575
    move-result v5

    .line 576
    if-nez v5, :cond_14

    .line 577
    .line 578
    iget-object v5, v10, Lcom/android/billingclient/api/ProductDetails;->b:Lorg/json/JSONObject;

    .line 579
    .line 580
    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v5

    .line 584
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 585
    .line 586
    .line 587
    move-result v5

    .line 588
    if-eqz v5, :cond_13

    .line 589
    .line 590
    goto :goto_f

    .line 591
    :cond_13
    const-string v1, "All products must have the same package name."

    .line 592
    .line 593
    const/4 v14, 0x5

    .line 594
    invoke-static {v14, v1}, Lcom/android/billingclient/api/zzdb;->a(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    .line 595
    .line 596
    .line 597
    move-result-object v6

    .line 598
    goto :goto_c

    .line 599
    :cond_14
    :goto_f
    add-int/lit8 v10, v25, 0x1

    .line 600
    .line 601
    move/from16 v5, v26

    .line 602
    .line 603
    move-object/from16 v13, v27

    .line 604
    .line 605
    move-object/from16 v14, v28

    .line 606
    .line 607
    goto :goto_b

    .line 608
    :cond_15
    move-object/from16 v27, v13

    .line 609
    .line 610
    invoke-virtual/range {v23 .. v23}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 611
    .line 612
    .line 613
    move-result-object v3

    .line 614
    :cond_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 615
    .line 616
    .line 617
    move-result v5

    .line 618
    if-eqz v5, :cond_17

    .line 619
    .line 620
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 621
    .line 622
    .line 623
    move-result-object v5

    .line 624
    check-cast v5, Ljava/lang/String;

    .line 625
    .line 626
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 627
    .line 628
    .line 629
    move-result v10

    .line 630
    if-eqz v10, :cond_16

    .line 631
    .line 632
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    .line 634
    .line 635
    move-result-object v1

    .line 636
    check-cast v1, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    .line 637
    .line 638
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 639
    .line 640
    .line 641
    new-instance v1, Ljava/lang/StringBuilder;

    .line 642
    .line 643
    const-string v3, "OldProductId must not be one of the products to be purchased. Invalid old product id: "

    .line 644
    .line 645
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 646
    .line 647
    .line 648
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    .line 650
    .line 651
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    .line 653
    .line 654
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 655
    .line 656
    .line 657
    move-result-object v1

    .line 658
    const/4 v14, 0x5

    .line 659
    invoke-static {v14, v1}, Lcom/android/billingclient/api/zzdb;->a(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    .line 660
    .line 661
    .line 662
    move-result-object v6

    .line 663
    goto/16 :goto_c

    .line 664
    .line 665
    :cond_17
    iget-object v1, v1, Lcom/android/billingclient/api/ProductDetails;->i:Ljava/util/ArrayList;

    .line 666
    .line 667
    iget-object v3, v9, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->b:Ljava/lang/String;

    .line 668
    .line 669
    if-eqz v3, :cond_1a

    .line 670
    .line 671
    if-eqz v1, :cond_1a

    .line 672
    .line 673
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 674
    .line 675
    .line 676
    move-result v4

    .line 677
    const/4 v5, 0x0

    .line 678
    :cond_18
    if-ge v5, v4, :cond_19

    .line 679
    .line 680
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 681
    .line 682
    .line 683
    move-result-object v6

    .line 684
    add-int/lit8 v5, v5, 0x1

    .line 685
    .line 686
    check-cast v6, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    .line 687
    .line 688
    iget-object v9, v6, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->b:Ljava/lang/String;

    .line 689
    .line 690
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 691
    .line 692
    .line 693
    move-result v9

    .line 694
    if-eqz v9, :cond_18

    .line 695
    .line 696
    goto :goto_10

    .line 697
    :cond_19
    move-object/from16 v6, v18

    .line 698
    .line 699
    :goto_10
    if-eqz v6, :cond_1a

    .line 700
    .line 701
    iget-object v1, v6, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->e:Lcom/android/billingclient/api/zzdp;

    .line 702
    .line 703
    if-eqz v1, :cond_1a

    .line 704
    .line 705
    const-string v1, "Both autoPayDetails and autoPayBalanceThreshold is required for constructing ProductDetailsParams for autopay."

    .line 706
    .line 707
    const/4 v14, 0x5

    .line 708
    invoke-static {v14, v1}, Lcom/android/billingclient/api/zzdb;->a(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    .line 709
    .line 710
    .line 711
    move-result-object v6

    .line 712
    goto/16 :goto_c

    .line 713
    .line 714
    :cond_1a
    sget-object v6, Lcom/android/billingclient/api/zzdb;->i:Lcom/android/billingclient/api/BillingResult;

    .line 715
    .line 716
    goto/16 :goto_c

    .line 717
    .line 718
    :goto_11
    sget-object v1, Lcom/android/billingclient/api/zzdb;->i:Lcom/android/billingclient/api/BillingResult;

    .line 719
    .line 720
    if-eq v3, v1, :cond_1b

    .line 721
    .line 722
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzje;->i1:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 723
    .line 724
    const/4 v6, 0x0

    .line 725
    move-object/from16 v1, p0

    .line 726
    .line 727
    move-wide/from16 v4, v21

    .line 728
    .line 729
    invoke-virtual/range {v1 .. v6}, Lcom/android/billingclient/api/BillingClientImpl;->I(Lcom/google/android/gms/internal/play_billing/zzje;Lcom/android/billingclient/api/BillingResult;JZ)V

    .line 730
    .line 731
    .line 732
    invoke-virtual {v1, v3}, Lcom/android/billingclient/api/BillingClientImpl;->K(Lcom/android/billingclient/api/BillingResult;)V

    .line 733
    .line 734
    .line 735
    return-object v3

    .line 736
    :cond_1b
    const/4 v6, 0x0

    .line 737
    move-object/from16 v1, p0

    .line 738
    .line 739
    move-wide/from16 v4, v21

    .line 740
    .line 741
    iget-boolean v3, v1, Lcom/android/billingclient/api/BillingClientImpl;->m:Z

    .line 742
    .line 743
    if-eqz v3, :cond_3f

    .line 744
    .line 745
    iget-boolean v3, v1, Lcom/android/billingclient/api/BillingClientImpl;->n:Z

    .line 746
    .line 747
    iget-object v9, v1, Lcom/android/billingclient/api/BillingClientImpl;->x:Lcom/android/billingclient/api/PendingPurchasesParams;

    .line 748
    .line 749
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 750
    .line 751
    .line 752
    iget-boolean v9, v1, Lcom/android/billingclient/api/BillingClientImpl;->y:Z

    .line 753
    .line 754
    iget-object v10, v1, Lcom/android/billingclient/api/BillingClientImpl;->c:Ljava/lang/String;

    .line 755
    .line 756
    iget-object v12, v1, Lcom/android/billingclient/api/BillingClientImpl;->d:Ljava/lang/String;

    .line 757
    .line 758
    iget-object v13, v1, Lcom/android/billingclient/api/BillingClientImpl;->B:Ljava/lang/Long;

    .line 759
    .line 760
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 761
    .line 762
    .line 763
    move-result-wide v13

    .line 764
    iget-object v15, v1, Lcom/android/billingclient/api/BillingClientImpl;->g:Landroid/content/Context;

    .line 765
    .line 766
    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 767
    .line 768
    .line 769
    sget v15, Lcom/google/android/gms/internal/play_billing/zzc;->a:I

    .line 770
    .line 771
    move/from16 v16, v6

    .line 772
    .line 773
    new-instance v6, Landroid/os/Bundle;

    .line 774
    .line 775
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 776
    .line 777
    .line 778
    invoke-static {v13, v14, v10, v12, v6}, Lcom/google/android/gms/internal/play_billing/zzc;->b(JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 779
    .line 780
    .line 781
    const-string v10, "billingClientTransactionId"

    .line 782
    .line 783
    invoke-virtual {v6, v10, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 784
    .line 785
    .line 786
    iget-object v10, v2, Lcom/android/billingclient/api/BillingFlowParams;->b:Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;

    .line 787
    .line 788
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 789
    .line 790
    .line 791
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 792
    .line 793
    .line 794
    move-result v10

    .line 795
    if-nez v10, :cond_1c

    .line 796
    .line 797
    const-string v10, "accountId"

    .line 798
    .line 799
    move-object/from16 v12, v18

    .line 800
    .line 801
    invoke-virtual {v6, v10, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    .line 803
    .line 804
    goto :goto_12

    .line 805
    :cond_1c
    move-object/from16 v12, v18

    .line 806
    .line 807
    :goto_12
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 808
    .line 809
    .line 810
    move-result v10

    .line 811
    if-nez v10, :cond_1d

    .line 812
    .line 813
    const-string v10, "obfuscatedProfileId"

    .line 814
    .line 815
    invoke-virtual {v6, v10, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    .line 817
    .line 818
    :cond_1d
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 819
    .line 820
    .line 821
    move-result v10

    .line 822
    if-nez v10, :cond_1e

    .line 823
    .line 824
    new-instance v10, Ljava/util/ArrayList;

    .line 825
    .line 826
    filled-new-array {v12}, [Ljava/lang/String;

    .line 827
    .line 828
    .line 829
    move-result-object v13

    .line 830
    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 831
    .line 832
    .line 833
    move-result-object v13

    .line 834
    invoke-direct {v10, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 835
    .line 836
    .line 837
    const-string v13, "skusToReplace"

    .line 838
    .line 839
    invoke-virtual {v6, v13, v10}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 840
    .line 841
    .line 842
    :cond_1e
    iget-object v10, v2, Lcom/android/billingclient/api/BillingFlowParams;->b:Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;

    .line 843
    .line 844
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 845
    .line 846
    .line 847
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 848
    .line 849
    .line 850
    move-result v10

    .line 851
    if-nez v10, :cond_1f

    .line 852
    .line 853
    iget-object v10, v2, Lcom/android/billingclient/api/BillingFlowParams;->b:Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;

    .line 854
    .line 855
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 856
    .line 857
    .line 858
    const-string v10, "oldSkuPurchaseToken"

    .line 859
    .line 860
    invoke-virtual {v6, v10, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    .line 862
    .line 863
    :cond_1f
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 864
    .line 865
    .line 866
    move-result v10

    .line 867
    if-nez v10, :cond_20

    .line 868
    .line 869
    const-string v10, "oldSkuPurchaseId"

    .line 870
    .line 871
    invoke-virtual {v6, v10, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    .line 873
    .line 874
    :cond_20
    iget-object v10, v2, Lcom/android/billingclient/api/BillingFlowParams;->b:Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;

    .line 875
    .line 876
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 877
    .line 878
    .line 879
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 880
    .line 881
    .line 882
    move-result v10

    .line 883
    if-nez v10, :cond_21

    .line 884
    .line 885
    iget-object v10, v2, Lcom/android/billingclient/api/BillingFlowParams;->b:Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;

    .line 886
    .line 887
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 888
    .line 889
    .line 890
    const-string v10, "originalExternalTransactionId"

    .line 891
    .line 892
    invoke-virtual {v6, v10, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    .line 894
    .line 895
    :cond_21
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 896
    .line 897
    .line 898
    move-result v10

    .line 899
    if-nez v10, :cond_22

    .line 900
    .line 901
    const-string v10, "paymentsPurchaseParams"

    .line 902
    .line 903
    invoke-virtual {v6, v10, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    .line 905
    .line 906
    :cond_22
    if-eqz v3, :cond_23

    .line 907
    .line 908
    const-string v3, "enablePendingPurchases"

    .line 909
    .line 910
    const/4 v10, 0x1

    .line 911
    invoke-virtual {v6, v3, v10}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 912
    .line 913
    .line 914
    goto :goto_13

    .line 915
    :cond_23
    const/4 v10, 0x1

    .line 916
    :goto_13
    if-eqz v9, :cond_24

    .line 917
    .line 918
    const-string v3, "enableAlternativeBilling"

    .line 919
    .line 920
    invoke-virtual {v6, v3, v10}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 921
    .line 922
    .line 923
    :cond_24
    new-instance v3, Ljava/util/ArrayList;

    .line 924
    .line 925
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 926
    .line 927
    .line 928
    iget-object v9, v2, Lcom/android/billingclient/api/BillingFlowParams;->c:Lcom/google/android/gms/internal/play_billing/zzbw;

    .line 929
    .line 930
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 931
    .line 932
    .line 933
    move-result-object v9

    .line 934
    :goto_14
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 935
    .line 936
    .line 937
    move-result v10

    .line 938
    if-eqz v10, :cond_25

    .line 939
    .line 940
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 941
    .line 942
    .line 943
    move-result-object v10

    .line 944
    check-cast v10, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    .line 945
    .line 946
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 947
    .line 948
    .line 949
    goto :goto_14

    .line 950
    :cond_25
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 951
    .line 952
    .line 953
    move-result v9

    .line 954
    if-nez v9, :cond_26

    .line 955
    .line 956
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdt;->q()Lcom/google/android/gms/internal/play_billing/zzds;

    .line 957
    .line 958
    .line 959
    move-result-object v9

    .line 960
    invoke-virtual {v9}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    .line 961
    .line 962
    .line 963
    iget-object v10, v9, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 964
    .line 965
    check-cast v10, Lcom/google/android/gms/internal/play_billing/zzdt;

    .line 966
    .line 967
    invoke-static {v10, v3}, Lcom/google/android/gms/internal/play_billing/zzdt;->r(Lcom/google/android/gms/internal/play_billing/zzdt;Ljava/util/ArrayList;)V

    .line 968
    .line 969
    .line 970
    invoke-virtual {v9}, Lcom/google/android/gms/internal/play_billing/zzfr;->c()Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 971
    .line 972
    .line 973
    move-result-object v3

    .line 974
    check-cast v3, Lcom/google/android/gms/internal/play_billing/zzdt;

    .line 975
    .line 976
    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/zzeg;->b()[B

    .line 977
    .line 978
    .line 979
    move-result-object v3

    .line 980
    const-string v9, "subscriptionProductReplacementParamsList"

    .line 981
    .line 982
    invoke-virtual {v6, v9, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 983
    .line 984
    .line 985
    :cond_26
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 986
    .line 987
    .line 988
    move-result v3

    .line 989
    if-nez v3, :cond_2b

    .line 990
    .line 991
    new-instance v3, Ljava/util/ArrayList;

    .line 992
    .line 993
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 994
    .line 995
    .line 996
    new-instance v9, Ljava/util/ArrayList;

    .line 997
    .line 998
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 999
    .line 1000
    .line 1001
    new-instance v9, Ljava/util/ArrayList;

    .line 1002
    .line 1003
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1004
    .line 1005
    .line 1006
    new-instance v9, Ljava/util/ArrayList;

    .line 1007
    .line 1008
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1009
    .line 1010
    .line 1011
    new-instance v9, Ljava/util/ArrayList;

    .line 1012
    .line 1013
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1014
    .line 1015
    .line 1016
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v9

    .line 1020
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 1021
    .line 1022
    .line 1023
    move-result v10

    .line 1024
    if-nez v10, :cond_2a

    .line 1025
    .line 1026
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1027
    .line 1028
    .line 1029
    move-result v9

    .line 1030
    if-nez v9, :cond_27

    .line 1031
    .line 1032
    const-string v9, "skuDetailsTokens"

    .line 1033
    .line 1034
    invoke-virtual {v6, v9, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1035
    .line 1036
    .line 1037
    :cond_27
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1038
    .line 1039
    .line 1040
    move-result v3

    .line 1041
    const/4 v10, 0x1

    .line 1042
    if-le v3, v10, :cond_29

    .line 1043
    .line 1044
    new-instance v3, Ljava/util/ArrayList;

    .line 1045
    .line 1046
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1047
    .line 1048
    .line 1049
    move-result v9

    .line 1050
    add-int/lit8 v9, v9, -0x1

    .line 1051
    .line 1052
    invoke-direct {v3, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 1053
    .line 1054
    .line 1055
    new-instance v9, Ljava/util/ArrayList;

    .line 1056
    .line 1057
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1058
    .line 1059
    .line 1060
    move-result v12

    .line 1061
    add-int/lit8 v12, v12, -0x1

    .line 1062
    .line 1063
    invoke-direct {v9, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 1064
    .line 1065
    .line 1066
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1067
    .line 1068
    .line 1069
    move-result v12

    .line 1070
    if-lt v10, v12, :cond_28

    .line 1071
    .line 1072
    const-string v0, "additionalSkus"

    .line 1073
    .line 1074
    invoke-virtual {v6, v0, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1075
    .line 1076
    .line 1077
    const-string v0, "additionalSkuTypes"

    .line 1078
    .line 1079
    invoke-virtual {v6, v0, v9}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1080
    .line 1081
    .line 1082
    :goto_15
    move-wide/from16 v21, v4

    .line 1083
    .line 1084
    goto/16 :goto_19

    .line 1085
    .line 1086
    :cond_28
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v0

    .line 1090
    check-cast v0, Lcom/android/billingclient/api/SkuDetails;

    .line 1091
    .line 1092
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1093
    .line 1094
    .line 1095
    const/16 v18, 0x0

    .line 1096
    .line 1097
    throw v18

    .line 1098
    :cond_29
    const/16 v18, 0x0

    .line 1099
    .line 1100
    goto :goto_15

    .line 1101
    :cond_2a
    const/16 v18, 0x0

    .line 1102
    .line 1103
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v0

    .line 1107
    check-cast v0, Lcom/android/billingclient/api/SkuDetails;

    .line 1108
    .line 1109
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1110
    .line 1111
    .line 1112
    throw v18

    .line 1113
    :cond_2b
    const/4 v10, 0x1

    .line 1114
    new-instance v0, Ljava/util/ArrayList;

    .line 1115
    .line 1116
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 1117
    .line 1118
    .line 1119
    move-result v3

    .line 1120
    add-int/lit8 v3, v3, -0x1

    .line 1121
    .line 1122
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1123
    .line 1124
    .line 1125
    new-instance v3, Ljava/util/ArrayList;

    .line 1126
    .line 1127
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 1128
    .line 1129
    .line 1130
    move-result v9

    .line 1131
    add-int/lit8 v9, v9, -0x1

    .line 1132
    .line 1133
    invoke-direct {v3, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 1134
    .line 1135
    .line 1136
    new-instance v9, Ljava/util/ArrayList;

    .line 1137
    .line 1138
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1139
    .line 1140
    .line 1141
    new-instance v12, Ljava/util/ArrayList;

    .line 1142
    .line 1143
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1144
    .line 1145
    .line 1146
    new-instance v13, Ljava/util/ArrayList;

    .line 1147
    .line 1148
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1149
    .line 1150
    .line 1151
    new-instance v14, Ljava/util/ArrayList;

    .line 1152
    .line 1153
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1154
    .line 1155
    .line 1156
    const/4 v15, 0x0

    .line 1157
    :goto_16
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 1158
    .line 1159
    .line 1160
    move-result v10

    .line 1161
    if-ge v15, v10, :cond_31

    .line 1162
    .line 1163
    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v10

    .line 1167
    check-cast v10, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    .line 1168
    .line 1169
    iget-object v2, v10, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->a:Lcom/android/billingclient/api/ProductDetails;

    .line 1170
    .line 1171
    move-wide/from16 v21, v4

    .line 1172
    .line 1173
    iget-object v4, v2, Lcom/android/billingclient/api/ProductDetails;->f:Ljava/lang/String;

    .line 1174
    .line 1175
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 1176
    .line 1177
    .line 1178
    move-result v4

    .line 1179
    if-nez v4, :cond_2c

    .line 1180
    .line 1181
    iget-object v4, v2, Lcom/android/billingclient/api/ProductDetails;->f:Ljava/lang/String;

    .line 1182
    .line 1183
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1184
    .line 1185
    .line 1186
    :cond_2c
    iget-object v4, v10, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->b:Ljava/lang/String;

    .line 1187
    .line 1188
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1189
    .line 1190
    .line 1191
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1192
    .line 1193
    .line 1194
    move-result v5

    .line 1195
    if-nez v5, :cond_2e

    .line 1196
    .line 1197
    iget-object v5, v2, Lcom/android/billingclient/api/ProductDetails;->i:Ljava/util/ArrayList;

    .line 1198
    .line 1199
    if-eqz v5, :cond_2e

    .line 1200
    .line 1201
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1202
    .line 1203
    .line 1204
    move-result v10

    .line 1205
    if-nez v10, :cond_2e

    .line 1206
    .line 1207
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1208
    .line 1209
    .line 1210
    move-result v10

    .line 1211
    const/4 v7, 0x0

    .line 1212
    :goto_17
    if-ge v7, v10, :cond_2e

    .line 1213
    .line 1214
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1215
    .line 1216
    .line 1217
    move-result-object v20

    .line 1218
    add-int/lit8 v7, v7, 0x1

    .line 1219
    .line 1220
    move-object/from16 v23, v5

    .line 1221
    .line 1222
    move-object/from16 v5, v20

    .line 1223
    .line 1224
    check-cast v5, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    .line 1225
    .line 1226
    move/from16 v20, v7

    .line 1227
    .line 1228
    iget-object v7, v5, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->d:Ljava/lang/String;

    .line 1229
    .line 1230
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1231
    .line 1232
    .line 1233
    move-result v7

    .line 1234
    if-nez v7, :cond_2d

    .line 1235
    .line 1236
    iget-object v7, v5, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->b:Ljava/lang/String;

    .line 1237
    .line 1238
    invoke-static {v7, v4}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1239
    .line 1240
    .line 1241
    move-result v7

    .line 1242
    if-eqz v7, :cond_2d

    .line 1243
    .line 1244
    iget-object v2, v5, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->d:Ljava/lang/String;

    .line 1245
    .line 1246
    goto :goto_18

    .line 1247
    :cond_2d
    move/from16 v7, v20

    .line 1248
    .line 1249
    move-object/from16 v5, v23

    .line 1250
    .line 1251
    goto :goto_17

    .line 1252
    :cond_2e
    iget-object v2, v2, Lcom/android/billingclient/api/ProductDetails;->g:Ljava/lang/String;

    .line 1253
    .line 1254
    :goto_18
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1255
    .line 1256
    .line 1257
    move-result v4

    .line 1258
    if-nez v4, :cond_2f

    .line 1259
    .line 1260
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1261
    .line 1262
    .line 1263
    :cond_2f
    if-lez v15, :cond_30

    .line 1264
    .line 1265
    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1266
    .line 1267
    .line 1268
    move-result-object v2

    .line 1269
    check-cast v2, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    .line 1270
    .line 1271
    iget-object v2, v2, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->a:Lcom/android/billingclient/api/ProductDetails;

    .line 1272
    .line 1273
    iget-object v2, v2, Lcom/android/billingclient/api/ProductDetails;->c:Ljava/lang/String;

    .line 1274
    .line 1275
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1276
    .line 1277
    .line 1278
    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v2

    .line 1282
    check-cast v2, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    .line 1283
    .line 1284
    iget-object v2, v2, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->a:Lcom/android/billingclient/api/ProductDetails;

    .line 1285
    .line 1286
    iget-object v2, v2, Lcom/android/billingclient/api/ProductDetails;->d:Ljava/lang/String;

    .line 1287
    .line 1288
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1289
    .line 1290
    .line 1291
    :cond_30
    add-int/lit8 v15, v15, 0x1

    .line 1292
    .line 1293
    move-object/from16 v2, p2

    .line 1294
    .line 1295
    move-wide/from16 v4, v21

    .line 1296
    .line 1297
    goto/16 :goto_16

    .line 1298
    .line 1299
    :cond_31
    move-wide/from16 v21, v4

    .line 1300
    .line 1301
    const-string v2, "SKU_OFFER_ID_TOKEN_LIST"

    .line 1302
    .line 1303
    invoke-virtual {v6, v2, v12}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1304
    .line 1305
    .line 1306
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1307
    .line 1308
    .line 1309
    move-result v2

    .line 1310
    if-nez v2, :cond_32

    .line 1311
    .line 1312
    const-string v2, "autoPayBalanceThresholdList"

    .line 1313
    .line 1314
    invoke-virtual {v6, v2, v14}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1315
    .line 1316
    .line 1317
    :cond_32
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1318
    .line 1319
    .line 1320
    move-result v2

    .line 1321
    if-nez v2, :cond_33

    .line 1322
    .line 1323
    const-string v2, "skuDetailsTokens"

    .line 1324
    .line 1325
    invoke-virtual {v6, v2, v9}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1326
    .line 1327
    .line 1328
    :cond_33
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1329
    .line 1330
    .line 1331
    move-result v2

    .line 1332
    if-nez v2, :cond_34

    .line 1333
    .line 1334
    const-string v2, "SKU_SERIALIZED_DOCID_LIST"

    .line 1335
    .line 1336
    invoke-virtual {v6, v2, v13}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1337
    .line 1338
    .line 1339
    :cond_34
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1340
    .line 1341
    .line 1342
    move-result v2

    .line 1343
    if-nez v2, :cond_35

    .line 1344
    .line 1345
    const-string v2, "additionalSkus"

    .line 1346
    .line 1347
    invoke-virtual {v6, v2, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1348
    .line 1349
    .line 1350
    const-string v0, "additionalSkuTypes"

    .line 1351
    .line 1352
    invoke-virtual {v6, v0, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1353
    .line 1354
    .line 1355
    :cond_35
    :goto_19
    const-string v0, "SKU_OFFER_ID_TOKEN_LIST"

    .line 1356
    .line 1357
    invoke-virtual {v6, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 1358
    .line 1359
    .line 1360
    move-result v0

    .line 1361
    if-eqz v0, :cond_36

    .line 1362
    .line 1363
    iget-boolean v0, v1, Lcom/android/billingclient/api/BillingClientImpl;->o:Z

    .line 1364
    .line 1365
    if-nez v0, :cond_36

    .line 1366
    .line 1367
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzje;->z:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 1368
    .line 1369
    sget-object v3, Lcom/android/billingclient/api/zzdb;->n:Lcom/android/billingclient/api/BillingResult;

    .line 1370
    .line 1371
    move/from16 v6, v16

    .line 1372
    .line 1373
    move-wide/from16 v4, v21

    .line 1374
    .line 1375
    invoke-virtual/range {v1 .. v6}, Lcom/android/billingclient/api/BillingClientImpl;->I(Lcom/google/android/gms/internal/play_billing/zzje;Lcom/android/billingclient/api/BillingResult;JZ)V

    .line 1376
    .line 1377
    .line 1378
    invoke-virtual {v1, v3}, Lcom/android/billingclient/api/BillingClientImpl;->K(Lcom/android/billingclient/api/BillingResult;)V

    .line 1379
    .line 1380
    .line 1381
    return-object v3

    .line 1382
    :cond_36
    if-nez v27, :cond_3e

    .line 1383
    .line 1384
    iget-object v0, v8, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->a:Lcom/android/billingclient/api/ProductDetails;

    .line 1385
    .line 1386
    iget-object v0, v0, Lcom/android/billingclient/api/ProductDetails;->b:Lorg/json/JSONObject;

    .line 1387
    .line 1388
    const-string v2, "packageName"

    .line 1389
    .line 1390
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 1391
    .line 1392
    .line 1393
    move-result-object v0

    .line 1394
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1395
    .line 1396
    .line 1397
    move-result v0

    .line 1398
    if-nez v0, :cond_37

    .line 1399
    .line 1400
    iget-object v0, v8, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->a:Lcom/android/billingclient/api/ProductDetails;

    .line 1401
    .line 1402
    iget-object v0, v0, Lcom/android/billingclient/api/ProductDetails;->b:Lorg/json/JSONObject;

    .line 1403
    .line 1404
    const-string v2, "packageName"

    .line 1405
    .line 1406
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 1407
    .line 1408
    .line 1409
    move-result-object v0

    .line 1410
    const-string v2, "skuPackageName"

    .line 1411
    .line 1412
    invoke-virtual {v6, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    .line 1414
    .line 1415
    const/4 v15, 0x1

    .line 1416
    :goto_1a
    const/4 v12, 0x0

    .line 1417
    goto :goto_1b

    .line 1418
    :cond_37
    const/4 v15, 0x0

    .line 1419
    goto :goto_1a

    .line 1420
    :goto_1b
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1421
    .line 1422
    .line 1423
    move-result v0

    .line 1424
    if-nez v0, :cond_38

    .line 1425
    .line 1426
    const-string v0, "accountName"

    .line 1427
    .line 1428
    invoke-virtual {v6, v0, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    .line 1430
    .line 1431
    :cond_38
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 1432
    .line 1433
    .line 1434
    move-result-object v0

    .line 1435
    if-nez v0, :cond_39

    .line 1436
    .line 1437
    const-string v0, "BillingClient"

    .line 1438
    .line 1439
    const-string v2, "Activity\'s intent is null."

    .line 1440
    .line 1441
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    .line 1443
    .line 1444
    goto :goto_1c

    .line 1445
    :cond_39
    const-string v2, "PROXY_PACKAGE"

    .line 1446
    .line 1447
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1448
    .line 1449
    .line 1450
    move-result-object v2

    .line 1451
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1452
    .line 1453
    .line 1454
    move-result v2

    .line 1455
    if-nez v2, :cond_3a

    .line 1456
    .line 1457
    const-string v2, "PROXY_PACKAGE"

    .line 1458
    .line 1459
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1460
    .line 1461
    .line 1462
    move-result-object v0

    .line 1463
    const-string v2, "proxyPackage"

    .line 1464
    .line 1465
    invoke-virtual {v6, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    .line 1467
    .line 1468
    :try_start_2
    iget-object v2, v1, Lcom/android/billingclient/api/BillingClientImpl;->g:Landroid/content/Context;

    .line 1469
    .line 1470
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1471
    .line 1472
    .line 1473
    move-result-object v2

    .line 1474
    const/4 v3, 0x0

    .line 1475
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 1476
    .line 1477
    .line 1478
    move-result-object v0

    .line 1479
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 1480
    .line 1481
    const-string v2, "proxyPackageVersion"

    .line 1482
    .line 1483
    invoke-virtual {v6, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1484
    .line 1485
    .line 1486
    goto :goto_1c

    .line 1487
    :catch_1
    const-string v0, "proxyPackageVersion"

    .line 1488
    .line 1489
    const-string v2, "package not found"

    .line 1490
    .line 1491
    invoke-virtual {v6, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    .line 1493
    .line 1494
    :cond_3a
    :goto_1c
    iget-boolean v0, v1, Lcom/android/billingclient/api/BillingClientImpl;->r:Z

    .line 1495
    .line 1496
    if-eqz v0, :cond_3b

    .line 1497
    .line 1498
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    .line 1499
    .line 1500
    .line 1501
    move-result v0

    .line 1502
    if-nez v0, :cond_3b

    .line 1503
    .line 1504
    const/16 v0, 0x11

    .line 1505
    .line 1506
    :goto_1d
    move v2, v0

    .line 1507
    goto :goto_1e

    .line 1508
    :cond_3b
    iget-boolean v0, v1, Lcom/android/billingclient/api/BillingClientImpl;->p:Z

    .line 1509
    .line 1510
    if-eqz v0, :cond_3c

    .line 1511
    .line 1512
    if-eqz v15, :cond_3c

    .line 1513
    .line 1514
    const/16 v0, 0xf

    .line 1515
    .line 1516
    goto :goto_1d

    .line 1517
    :cond_3c
    iget-boolean v0, v1, Lcom/android/billingclient/api/BillingClientImpl;->n:Z

    .line 1518
    .line 1519
    if-eqz v0, :cond_3d

    .line 1520
    .line 1521
    const/16 v0, 0x9

    .line 1522
    .line 1523
    goto :goto_1d

    .line 1524
    :cond_3d
    const/4 v0, 0x6

    .line 1525
    goto :goto_1d

    .line 1526
    :goto_1e
    new-instance v0, Lcom/android/billingclient/api/zzae;

    .line 1527
    .line 1528
    move-object/from16 v5, p2

    .line 1529
    .line 1530
    move-object/from16 v3, v19

    .line 1531
    .line 1532
    move-object/from16 v4, v24

    .line 1533
    .line 1534
    invoke-direct/range {v0 .. v6}, Lcom/android/billingclient/api/zzae;-><init>(Lcom/android/billingclient/api/BillingClientImpl;ILjava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/BillingFlowParams;Landroid/os/Bundle;)V

    .line 1535
    .line 1536
    .line 1537
    iget-object v11, v1, Lcom/android/billingclient/api/BillingClientImpl;->e:Landroid/os/Handler;

    .line 1538
    .line 1539
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingClientImpl;->i()Ljava/util/concurrent/ExecutorService;

    .line 1540
    .line 1541
    .line 1542
    move-result-object v12

    .line 1543
    const-wide/16 v8, 0x1388

    .line 1544
    .line 1545
    const/4 v10, 0x0

    .line 1546
    move-object v7, v0

    .line 1547
    invoke-static/range {v7 .. v12}, Lcom/android/billingclient/api/BillingClientImpl;->j(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    .line 1548
    .line 1549
    .line 1550
    move-result-object v0

    .line 1551
    goto :goto_1f

    .line 1552
    :cond_3e
    const/16 v18, 0x0

    .line 1553
    .line 1554
    throw v18

    .line 1555
    :cond_3f
    move-wide/from16 v21, v4

    .line 1556
    .line 1557
    move/from16 v16, v6

    .line 1558
    .line 1559
    move-object/from16 v3, v19

    .line 1560
    .line 1561
    move-object/from16 v4, v24

    .line 1562
    .line 1563
    new-instance v5, Lcom/android/billingclient/api/zzaf;

    .line 1564
    .line 1565
    invoke-direct {v5, v1, v3, v4}, Lcom/android/billingclient/api/zzaf;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    .line 1567
    .line 1568
    iget-object v9, v1, Lcom/android/billingclient/api/BillingClientImpl;->e:Landroid/os/Handler;

    .line 1569
    .line 1570
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingClientImpl;->i()Ljava/util/concurrent/ExecutorService;

    .line 1571
    .line 1572
    .line 1573
    move-result-object v10

    .line 1574
    const-wide/16 v6, 0x1388

    .line 1575
    .line 1576
    const/4 v8, 0x0

    .line 1577
    invoke-static/range {v5 .. v10}, Lcom/android/billingclient/api/BillingClientImpl;->j(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    .line 1578
    .line 1579
    .line 1580
    move-result-object v0

    .line 1581
    :goto_1f
    if-nez v0, :cond_40

    .line 1582
    .line 1583
    :try_start_3
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzje;->D:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 1584
    .line 1585
    sget-object v3, Lcom/android/billingclient/api/zzdb;->c:Lcom/android/billingclient/api/BillingResult;
    :try_end_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 1586
    .line 1587
    move/from16 v6, v16

    .line 1588
    .line 1589
    move-wide/from16 v4, v21

    .line 1590
    .line 1591
    :try_start_4
    invoke-virtual/range {v1 .. v6}, Lcom/android/billingclient/api/BillingClientImpl;->I(Lcom/google/android/gms/internal/play_billing/zzje;Lcom/android/billingclient/api/BillingResult;JZ)V

    .line 1592
    .line 1593
    .line 1594
    invoke-virtual {v1, v3}, Lcom/android/billingclient/api/BillingClientImpl;->K(Lcom/android/billingclient/api/BillingResult;)V

    .line 1595
    .line 1596
    .line 1597
    return-object v3

    .line 1598
    :catch_2
    move-exception v0

    .line 1599
    goto/16 :goto_26

    .line 1600
    .line 1601
    :catch_3
    move-exception v0

    .line 1602
    goto/16 :goto_27

    .line 1603
    .line 1604
    :catch_4
    move-exception v0

    .line 1605
    goto/16 :goto_27

    .line 1606
    .line 1607
    :catch_5
    move-exception v0

    .line 1608
    move/from16 v6, v16

    .line 1609
    .line 1610
    move-wide/from16 v4, v21

    .line 1611
    .line 1612
    goto/16 :goto_26

    .line 1613
    .line 1614
    :catch_6
    move-exception v0

    .line 1615
    :goto_20
    move/from16 v6, v16

    .line 1616
    .line 1617
    move-wide/from16 v4, v21

    .line 1618
    .line 1619
    goto/16 :goto_27

    .line 1620
    .line 1621
    :catch_7
    move-exception v0

    .line 1622
    goto :goto_20

    .line 1623
    :cond_40
    move/from16 v6, v16

    .line 1624
    .line 1625
    move-wide/from16 v4, v21

    .line 1626
    .line 1627
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1628
    .line 1629
    const-wide/16 v7, 0x1388

    .line 1630
    .line 1631
    invoke-interface {v0, v7, v8, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 1632
    .line 1633
    .line 1634
    move-result-object v0

    .line 1635
    move-object v2, v0

    .line 1636
    check-cast v2, Landroid/os/Bundle;

    .line 1637
    .line 1638
    const-string v0, "BillingClient"

    .line 1639
    .line 1640
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->a(Ljava/lang/String;Landroid/os/Bundle;)I

    .line 1641
    .line 1642
    .line 1643
    move-result v0

    .line 1644
    const-string v3, "BillingClient"

    .line 1645
    .line 1646
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->f(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    .line 1647
    .line 1648
    .line 1649
    move-result-object v3

    .line 1650
    if-eqz v0, :cond_46

    .line 1651
    .line 1652
    const-string v7, "BillingClient"

    .line 1653
    .line 1654
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1655
    .line 1656
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1657
    .line 1658
    .line 1659
    const-string v9, "Unable to buy item, Error response code: "

    .line 1660
    .line 1661
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1662
    .line 1663
    .line 1664
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1665
    .line 1666
    .line 1667
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1668
    .line 1669
    .line 1670
    move-result-object v8

    .line 1671
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/play_billing/zzc;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    .line 1673
    .line 1674
    invoke-static {v0, v3}, Lcom/android/billingclient/api/zzdb;->a(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    .line 1675
    .line 1676
    .line 1677
    move-result-object v3

    .line 1678
    const-string v7, "BillingClient"
    :try_end_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1679
    .line 1680
    if-nez v2, :cond_41

    .line 1681
    .line 1682
    :try_start_5
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzje;->f:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 1683
    .line 1684
    goto :goto_22

    .line 1685
    :catchall_1
    move-exception v0

    .line 1686
    goto :goto_21

    .line 1687
    :cond_41
    const-string v0, "LOG_REASON"

    .line 1688
    .line 1689
    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 1690
    .line 1691
    .line 1692
    move-result-object v0

    .line 1693
    if-nez v0, :cond_42

    .line 1694
    .line 1695
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzje;->f:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 1696
    .line 1697
    goto :goto_22

    .line 1698
    :cond_42
    instance-of v8, v0, Ljava/lang/Integer;

    .line 1699
    .line 1700
    if-eqz v8, :cond_43

    .line 1701
    .line 1702
    check-cast v0, Ljava/lang/Integer;

    .line 1703
    .line 1704
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1705
    .line 1706
    .line 1707
    move-result v0

    .line 1708
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzje;->a(I)Lcom/google/android/gms/internal/play_billing/zzje;

    .line 1709
    .line 1710
    .line 1711
    move-result-object v0

    .line 1712
    goto :goto_22

    .line 1713
    :cond_43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1714
    .line 1715
    .line 1716
    move-result-object v0

    .line 1717
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1718
    .line 1719
    .line 1720
    move-result-object v0

    .line 1721
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1722
    .line 1723
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1724
    .line 1725
    .line 1726
    const-string v9, "Unexpected type for bundle log reason: "

    .line 1727
    .line 1728
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1729
    .line 1730
    .line 1731
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1732
    .line 1733
    .line 1734
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1735
    .line 1736
    .line 1737
    move-result-object v0

    .line 1738
    invoke-static {v7, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1739
    .line 1740
    .line 1741
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzje;->f:Lcom/google/android/gms/internal/play_billing/zzje;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1742
    .line 1743
    goto :goto_22

    .line 1744
    :goto_21
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1745
    .line 1746
    .line 1747
    move-result-object v0

    .line 1748
    const-string v8, "Failed to get log reason from bundle: "

    .line 1749
    .line 1750
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1751
    .line 1752
    .line 1753
    move-result-object v0

    .line 1754
    invoke-virtual {v8, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1755
    .line 1756
    .line 1757
    move-result-object v0

    .line 1758
    invoke-static {v7, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1759
    .line 1760
    .line 1761
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzje;->f:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 1762
    .line 1763
    :goto_22
    sget-object v7, Lcom/google/android/gms/internal/play_billing/zzje;->f:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 1764
    .line 1765
    if-ne v0, v7, :cond_44

    .line 1766
    .line 1767
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzje;->B:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 1768
    .line 1769
    :cond_44
    move-object v7, v0

    .line 1770
    const-string v8, "BillingClient"
    :try_end_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 1771
    .line 1772
    if-nez v2, :cond_45

    .line 1773
    .line 1774
    :goto_23
    move-object v2, v7

    .line 1775
    move v7, v6

    .line 1776
    move-wide v5, v4

    .line 1777
    const/4 v4, 0x0

    .line 1778
    goto :goto_24

    .line 1779
    :cond_45
    :try_start_7
    const-string v0, "ADDITIONAL_LOG_DETAILS"

    .line 1780
    .line 1781
    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1782
    .line 1783
    .line 1784
    move-result-object v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1785
    move-object v2, v7

    .line 1786
    move v7, v6

    .line 1787
    move-wide v5, v4

    .line 1788
    move-object v4, v9

    .line 1789
    goto :goto_24

    .line 1790
    :catchall_2
    move-exception v0

    .line 1791
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1792
    .line 1793
    .line 1794
    move-result-object v0

    .line 1795
    const-string v2, "Failed to get additional log details from bundle: "

    .line 1796
    .line 1797
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1798
    .line 1799
    .line 1800
    move-result-object v0

    .line 1801
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1802
    .line 1803
    .line 1804
    move-result-object v0

    .line 1805
    invoke-static {v8, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 1806
    .line 1807
    .line 1808
    goto :goto_23

    .line 1809
    :goto_24
    :try_start_9
    invoke-virtual/range {v1 .. v7}, Lcom/android/billingclient/api/BillingClientImpl;->J(Lcom/google/android/gms/internal/play_billing/zzje;Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;JZ)V
    :try_end_9
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/util/concurrent/CancellationException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 1810
    .line 1811
    .line 1812
    move-wide v4, v5

    .line 1813
    move v6, v7

    .line 1814
    :try_start_a
    invoke-virtual {v1, v3}, Lcom/android/billingclient/api/BillingClientImpl;->K(Lcom/android/billingclient/api/BillingResult;)V

    .line 1815
    .line 1816
    .line 1817
    return-object v3

    .line 1818
    :catch_8
    move-exception v0

    .line 1819
    move-wide v4, v5

    .line 1820
    move v6, v7

    .line 1821
    goto :goto_26

    .line 1822
    :catch_9
    move-exception v0

    .line 1823
    :goto_25
    move-wide v4, v5

    .line 1824
    move v6, v7

    .line 1825
    goto :goto_27

    .line 1826
    :catch_a
    move-exception v0

    .line 1827
    goto :goto_25

    .line 1828
    :cond_46
    new-instance v0, Landroid/content/Intent;

    .line 1829
    .line 1830
    const-class v3, Lcom/android/billingclient/api/ProxyBillingActivity;

    .line 1831
    .line 1832
    move-object/from16 v7, p1

    .line 1833
    .line 1834
    invoke-direct {v0, v7, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1835
    .line 1836
    .line 1837
    const-string v3, "BUY_INTENT"

    .line 1838
    .line 1839
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 1840
    .line 1841
    .line 1842
    move-result-object v2

    .line 1843
    check-cast v2, Landroid/app/PendingIntent;

    .line 1844
    .line 1845
    const-string v3, "BUY_INTENT"

    .line 1846
    .line 1847
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1848
    .line 1849
    .line 1850
    const-string v2, "billingClientTransactionId"

    .line 1851
    .line 1852
    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1853
    .line 1854
    .line 1855
    const-string v2, "wasServiceAutoReconnected"

    .line 1856
    .line 1857
    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1858
    .line 1859
    .line 1860
    invoke-virtual {v7, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 1861
    .line 1862
    .line 1863
    sget-object v0, Lcom/android/billingclient/api/zzdb;->i:Lcom/android/billingclient/api/BillingResult;

    .line 1864
    .line 1865
    return-object v0

    .line 1866
    :goto_26
    const-string v2, "BillingClient"

    .line 1867
    .line 1868
    const-string v3, "Exception while launching billing flow. Try to reconnect"

    .line 1869
    .line 1870
    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1871
    .line 1872
    .line 1873
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzje;->j:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 1874
    .line 1875
    sget-object v3, Lcom/android/billingclient/api/zzdb;->j:Lcom/android/billingclient/api/BillingResult;

    .line 1876
    .line 1877
    invoke-static {v0}, Lcom/android/billingclient/api/zzcx;->a(Ljava/lang/Exception;)Ljava/lang/String;

    .line 1878
    .line 1879
    .line 1880
    move-result-object v0

    .line 1881
    move v7, v6

    .line 1882
    move-wide v5, v4

    .line 1883
    move-object v4, v0

    .line 1884
    invoke-virtual/range {v1 .. v7}, Lcom/android/billingclient/api/BillingClientImpl;->J(Lcom/google/android/gms/internal/play_billing/zzje;Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;JZ)V

    .line 1885
    .line 1886
    .line 1887
    invoke-virtual {v1, v3}, Lcom/android/billingclient/api/BillingClientImpl;->K(Lcom/android/billingclient/api/BillingResult;)V

    .line 1888
    .line 1889
    .line 1890
    return-object v3

    .line 1891
    :goto_27
    const-string v2, "BillingClient"

    .line 1892
    .line 1893
    const-string v3, "Time out while launching billing flow. Try to reconnect"

    .line 1894
    .line 1895
    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1896
    .line 1897
    .line 1898
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzje;->i:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 1899
    .line 1900
    sget-object v3, Lcom/android/billingclient/api/zzdb;->k:Lcom/android/billingclient/api/BillingResult;

    .line 1901
    .line 1902
    invoke-static {v0}, Lcom/android/billingclient/api/zzcx;->a(Ljava/lang/Exception;)Ljava/lang/String;

    .line 1903
    .line 1904
    .line 1905
    move-result-object v0

    .line 1906
    move v7, v6

    .line 1907
    move-wide v5, v4

    .line 1908
    move-object v4, v0

    .line 1909
    invoke-virtual/range {v1 .. v7}, Lcom/android/billingclient/api/BillingClientImpl;->J(Lcom/google/android/gms/internal/play_billing/zzje;Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;JZ)V

    .line 1910
    .line 1911
    .line 1912
    invoke-virtual {v1, v3}, Lcom/android/billingclient/api/BillingClientImpl;->K(Lcom/android/billingclient/api/BillingResult;)V

    .line 1913
    .line 1914
    .line 1915
    return-object v3

    .line 1916
    :cond_47
    const/16 v18, 0x0

    .line 1917
    .line 1918
    throw v18

    .line 1919
    :goto_28
    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1920
    throw v0

    .line 1921
    :cond_48
    move-wide v5, v2

    .line 1922
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzje;->q:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 1923
    .line 1924
    sget-object v2, Lcom/android/billingclient/api/zzdb;->q:Lcom/android/billingclient/api/BillingResult;

    .line 1925
    .line 1926
    invoke-virtual {v1, v0, v2, v5, v6}, Lcom/android/billingclient/api/BillingClientImpl;->G(Lcom/google/android/gms/internal/play_billing/zzje;Lcom/android/billingclient/api/BillingResult;J)V

    .line 1927
    .line 1928
    .line 1929
    return-object v2
.end method

.method public f(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V
    .locals 6

    .line 1
    new-instance v0, Lcom/android/billingclient/api/zzbe;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2, p1}, Lcom/android/billingclient/api/zzbe;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/ProductDetailsResponseListener;Lcom/android/billingclient/api/QueryProductDetailsParams;)V

    .line 4
    .line 5
    .line 6
    new-instance v3, Lcom/android/billingclient/api/zzbf;

    .line 7
    .line 8
    invoke-direct {v3, p0, p2}, Lcom/android/billingclient/api/zzbf;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->q()Landroid/os/Handler;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->i()Ljava/util/concurrent/ExecutorService;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    const-wide/16 v1, 0x7530

    .line 20
    .line 21
    invoke-static/range {v0 .. v5}, Lcom/android/billingclient/api/BillingClientImpl;->j(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->t()Lcom/android/billingclient/api/BillingResult;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzje;->D:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 32
    .line 33
    const/4 v1, 0x7

    .line 34
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/billingclient/api/BillingClientImpl;->F(Lcom/google/android/gms/internal/play_billing/zzje;ILcom/android/billingclient/api/BillingResult;)V

    .line 35
    .line 36
    .line 37
    new-instance v0, Lcom/android/billingclient/api/QueryProductDetailsResult;

    .line 38
    .line 39
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbw;->t()Lcom/google/android/gms/internal/play_billing/zzbw;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbw;->t()Lcom/google/android/gms/internal/play_billing/zzbw;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-direct {v0, v1, v2}, Lcom/android/billingclient/api/QueryProductDetailsResult;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {p2, p1, v0}, Lcom/android/billingclient/api/ProductDetailsResponseListener;->a(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    return-void
.end method

.method public final g(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V
    .locals 6

    .line 1
    iget-object p1, p1, Lcom/android/billingclient/api/QueryPurchasesParams;->a:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v0, Lcom/android/billingclient/api/zzbl;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2, p1}, Lcom/android/billingclient/api/zzbl;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/PurchasesResponseListener;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v3, Lcom/android/billingclient/api/zzbi;

    .line 9
    .line 10
    invoke-direct {v3, p0, p2}, Lcom/android/billingclient/api/zzbi;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->q()Landroid/os/Handler;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->i()Ljava/util/concurrent/ExecutorService;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    const-wide/16 v1, 0x7530

    .line 22
    .line 23
    invoke-static/range {v0 .. v5}, Lcom/android/billingclient/api/BillingClientImpl;->j(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->t()Lcom/android/billingclient/api/BillingResult;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzje;->D:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 34
    .line 35
    const/16 v1, 0x9

    .line 36
    .line 37
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/billingclient/api/BillingClientImpl;->F(Lcom/google/android/gms/internal/play_billing/zzje;ILcom/android/billingclient/api/BillingResult;)V

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbw;->t()Lcom/google/android/gms/internal/play_billing/zzbw;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-interface {p2, p1, v0}, Lcom/android/billingclient/api/PurchasesResponseListener;->a(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method public h(Lcom/mycompany/app/help/PayHelper;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->z(Lcom/android/billingclient/api/BillingClientStateListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final declared-synchronized i()Ljava/util/concurrent/ExecutorService;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->A:Ljava/util/concurrent/ExecutorService;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget v0, Lcom/google/android/gms/internal/play_billing/zzc;->a:I

    .line 7
    .line 8
    new-instance v1, Lcom/android/billingclient/api/zzbk;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/android/billingclient/api/zzbk;-><init>(Lcom/android/billingclient/api/BillingClientImpl;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->A:Ljava/util/concurrent/ExecutorService;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->A:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-object v0

    .line 26
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    throw v0
.end method

.method public final k()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->g:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final m(Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzje;Ljava/lang/Exception;)V
    .locals 1

    .line 1
    const-string p1, "BillingClient"

    .line 2
    .line 3
    const-string v0, "Error in acknowledge purchase!"

    .line 4
    .line 5
    invoke-static {p1, v0, p4}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x3

    .line 9
    invoke-static {p4}, Lcom/android/billingclient/api/zzcx;->a(Ljava/lang/Exception;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p4

    .line 13
    invoke-virtual {p0, p3, p1, p2, p4}, Lcom/android/billingclient/api/BillingClientImpl;->H(Lcom/google/android/gms/internal/play_billing/zzje;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final n(Lcom/android/billingclient/api/ConsumeResponseListener;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzje;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    const-string p1, "BillingClient"

    .line 2
    .line 3
    invoke-static {p1, p5, p6}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x4

    .line 7
    invoke-static {p6}, Lcom/android/billingclient/api/zzcx;->a(Ljava/lang/Exception;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p0, p4, p1, p3, p2}, Lcom/android/billingclient/api/BillingClientImpl;->H(Lcom/google/android/gms/internal/play_billing/zzje;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final q()Landroid/os/Handler;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->e:Landroid/os/Handler;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Landroid/os/Handler;

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public final r(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzje;Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzcf;
    .locals 1

    .line 1
    const-string v0, "BillingClient"

    .line 2
    .line 3
    invoke-static {v0, p3, p4}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    const/4 p3, 0x7

    .line 7
    invoke-static {p4}, Lcom/android/billingclient/api/zzcx;->a(Ljava/lang/Exception;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p4

    .line 11
    invoke-virtual {p0, p2, p3, p1, p4}, Lcom/android/billingclient/api/BillingClientImpl;->H(Lcom/google/android/gms/internal/play_billing/zzje;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance p2, Lcom/android/billingclient/api/zzcf;

    .line 15
    .line 16
    iget p3, p1, Lcom/android/billingclient/api/BillingResult;->a:I

    .line 17
    .line 18
    iget-object p1, p1, Lcom/android/billingclient/api/BillingResult;->c:Ljava/lang/String;

    .line 19
    .line 20
    new-instance p4, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-direct {p2, p3, p1, p4, v0}, Lcom/android/billingclient/api/zzcf;-><init>(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 31
    .line 32
    .line 33
    return-object p2
.end method

.method public final s()Lcom/android/billingclient/api/BillingResult;
    .locals 3

    .line 1
    const-string v0, "BillingClient"

    .line 2
    .line 3
    const-string v1, "Service connection is valid. No need to re-initialize."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjb;->r()Lcom/google/android/gms/internal/play_billing/zziz;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 16
    .line 17
    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzjb;

    .line 18
    .line 19
    const/4 v2, 0x6

    .line 20
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzjb;->q(Lcom/google/android/gms/internal/play_billing/zzjb;I)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzkv;->q()Lcom/google/android/gms/internal/play_billing/zzkt;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    .line 28
    .line 29
    .line 30
    iget-object v2, v1, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 31
    .line 32
    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzkv;

    .line 33
    .line 34
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzkv;->u(Lcom/google/android/gms/internal/play_billing/zzkv;)V

    .line 35
    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzkt;->g(Z)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzkt;->h()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    .line 45
    .line 46
    .line 47
    iget-object v2, v0, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 48
    .line 49
    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzjb;

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzfr;->c()Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzkv;

    .line 56
    .line 57
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/play_billing/zzjb;->v(Lcom/google/android/gms/internal/play_billing/zzjb;Lcom/google/android/gms/internal/play_billing/zzkv;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfr;->c()Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzjb;

    .line 65
    .line 66
    invoke-virtual {p0, v0}, Lcom/android/billingclient/api/BillingClientImpl;->v(Lcom/google/android/gms/internal/play_billing/zzjb;)V

    .line 67
    .line 68
    .line 69
    sget-object v0, Lcom/android/billingclient/api/zzdb;->i:Lcom/android/billingclient/api/BillingResult;

    .line 70
    .line 71
    return-object v0
.end method

.method public final t()Lcom/android/billingclient/api/BillingResult;
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    filled-new-array {v1, v0}, [I

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->a:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :goto_0
    const/4 v3, 0x2

    .line 11
    if-ge v1, v3, :cond_1

    .line 12
    .line 13
    :try_start_0
    aget v3, v0, v1

    .line 14
    .line 15
    iget v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->b:I

    .line 16
    .line 17
    if-ne v4, v3, :cond_0

    .line 18
    .line 19
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    sget-object v0, Lcom/android/billingclient/api/zzdb;->j:Lcom/android/billingclient/api/BillingResult;

    .line 21
    .line 22
    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    sget-object v0, Lcom/android/billingclient/api/zzdb;->h:Lcom/android/billingclient/api/BillingResult;

    .line 30
    .line 31
    return-object v0

    .line 32
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    throw v0
.end method

.method public final u(Lcom/google/android/gms/internal/play_billing/zzix;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->h:Lcom/android/billingclient/api/zzdh;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->l:I

    .line 4
    .line 5
    invoke-virtual {v0, p1, v1}, Lcom/android/billingclient/api/zzdh;->d(Lcom/google/android/gms/internal/play_billing/zzix;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    const-string v0, "BillingClient"

    .line 11
    .line 12
    const-string v1, "Unable to log."

    .line 13
    .line 14
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final v(Lcom/google/android/gms/internal/play_billing/zzjb;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->h:Lcom/android/billingclient/api/zzdh;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->l:I

    .line 4
    .line 5
    invoke-virtual {v0, p1, v1}, Lcom/android/billingclient/api/zzdh;->h(Lcom/google/android/gms/internal/play_billing/zzjb;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    const-string v0, "BillingClient"

    .line 11
    .line 12
    const-string v1, "Unable to log."

    .line 13
    .line 14
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final w(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzje;)V
    .locals 3

    .line 1
    :try_start_0
    sget v0, Lcom/android/billingclient/api/zzcx;->a:I

    .line 2
    .line 3
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjl;->f:Lcom/google/android/gms/internal/play_billing/zzjl;

    .line 4
    .line 5
    const/4 v1, 0x6

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {p2, v1, p1, v2, v0}, Lcom/android/billingclient/api/zzcx;->b(Lcom/google/android/gms/internal/play_billing/zzje;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjl;)Lcom/google/android/gms/internal/play_billing/zzix;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzfv;->k()Lcom/google/android/gms/internal/play_billing/zzfr;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zziv;

    .line 16
    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzkv;->q()Lcom/google/android/gms/internal/play_billing/zzkt;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/play_billing/zzkt;->g(Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzkt;->h()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/zziv;->h(Lcom/google/android/gms/internal/play_billing/zzkt;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzfr;->c()Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzix;

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->u(Lcom/google/android/gms/internal/play_billing/zzix;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    const-string p2, "BillingClient"

    .line 43
    .line 44
    const-string v0, "Unable to log."

    .line 45
    .line 46
    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final x(I)V
    .locals 6

    .line 1
    const-string v0, "Setting clientState from "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->a:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->b:I

    .line 7
    .line 8
    const/4 v3, 0x3

    .line 9
    if-ne v2, v3, :cond_0

    .line 10
    .line 11
    monitor-exit v1

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_2

    .line 15
    :cond_0
    const-string v2, "BillingClient"

    .line 16
    .line 17
    iget v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->b:I

    .line 18
    .line 19
    const/4 v4, 0x2

    .line 20
    const/4 v5, 0x1

    .line 21
    if-eqz v3, :cond_3

    .line 22
    .line 23
    if-eq v3, v5, :cond_2

    .line 24
    .line 25
    if-eq v3, v4, :cond_1

    .line 26
    .line 27
    const-string v3, "CLOSED"

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const-string v3, "CONNECTED"

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const-string v3, "CONNECTING"

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_3
    const-string v3, "DISCONNECTED"

    .line 37
    .line 38
    :goto_0
    if-eqz p1, :cond_6

    .line 39
    .line 40
    if-eq p1, v5, :cond_5

    .line 41
    .line 42
    if-eq p1, v4, :cond_4

    .line 43
    .line 44
    const-string v4, "CLOSED"

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_4
    const-string v4, "CONNECTED"

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_5
    const-string v4, "CONNECTING"

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_6
    const-string v4, "DISCONNECTED"

    .line 54
    .line 55
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v0, " to "

    .line 64
    .line 65
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iput p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->b:I

    .line 79
    .line 80
    monitor-exit v1

    .line 81
    return-void

    .line 82
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    throw p1
.end method

.method public final declared-synchronized y()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->A:Ljava/util/concurrent/ExecutorService;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->A:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    throw v0
.end method

.method public final z(Lcom/android/billingclient/api/BillingClientStateListener;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->C()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->s()Lcom/android/billingclient/api/BillingResult;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    monitor-exit v0

    .line 15
    goto/16 :goto_3

    .line 16
    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto/16 :goto_4

    .line 19
    .line 20
    :cond_0
    iget v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->b:I

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    if-ne v1, v2, :cond_1

    .line 24
    .line 25
    const-string v1, "BillingClient"

    .line 26
    .line 27
    const-string v2, "Client is already in the process of connecting to billing service."

    .line 28
    .line 29
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzje;->P:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 33
    .line 34
    sget-object v2, Lcom/android/billingclient/api/zzdb;->d:Lcom/android/billingclient/api/BillingResult;

    .line 35
    .line 36
    invoke-virtual {p0, v2, v1}, Lcom/android/billingclient/api/BillingClientImpl;->w(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzje;)V

    .line 37
    .line 38
    .line 39
    monitor-exit v0

    .line 40
    :goto_0
    move-object v1, v2

    .line 41
    goto/16 :goto_3

    .line 42
    .line 43
    :cond_1
    iget v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->b:I

    .line 44
    .line 45
    const/4 v3, 0x3

    .line 46
    if-ne v1, v3, :cond_2

    .line 47
    .line 48
    const-string v1, "BillingClient"

    .line 49
    .line 50
    const-string v2, "Client was already closed and can\'t be reused. Please create another instance."

    .line 51
    .line 52
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzje;->Q:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 56
    .line 57
    sget-object v2, Lcom/android/billingclient/api/zzdb;->j:Lcom/android/billingclient/api/BillingResult;

    .line 58
    .line 59
    invoke-virtual {p0, v2, v1}, Lcom/android/billingclient/api/BillingClientImpl;->w(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzje;)V

    .line 60
    .line 61
    .line 62
    monitor-exit v0

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/billingclient/api/BillingClientImpl;->x(I)V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->z:Lcom/android/billingclient/api/BillingClientStateListener;

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->A()V

    .line 70
    .line 71
    .line 72
    const-string v1, "BillingClient"

    .line 73
    .line 74
    const-string v3, "Starting in-app billing setup."

    .line 75
    .line 76
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/play_billing/zzc;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    new-instance v1, Lcom/android/billingclient/api/zzbv;

    .line 80
    .line 81
    invoke-direct {v1, p0, p1}, Lcom/android/billingclient/api/zzbv;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingClientStateListener;)V

    .line 82
    .line 83
    .line 84
    iput-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->j:Lcom/android/billingclient/api/zzbv;

    .line 85
    .line 86
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->j:Lcom/android/billingclient/api/zzbv;

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/android/billingclient/api/zzbv;->a()V

    .line 89
    .line 90
    .line 91
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    new-instance v0, Landroid/content/Intent;

    .line 93
    .line 94
    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    .line 95
    .line 96
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const-string v1, "com.android.vending"

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    .line 103
    .line 104
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->g:Landroid/content/Context;

    .line 105
    .line 106
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    const/4 v3, 0x0

    .line 111
    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    if-eqz v1, :cond_8

    .line 116
    .line 117
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-nez v4, :cond_8

    .line 122
    .line 123
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 128
    .line 129
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 130
    .line 131
    if-eqz v1, :cond_7

    .line 132
    .line 133
    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 134
    .line 135
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 136
    .line 137
    const-string v5, "com.android.vending"

    .line 138
    .line 139
    invoke-static {v4, v5}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    if-eqz v5, :cond_6

    .line 144
    .line 145
    if-eqz v1, :cond_6

    .line 146
    .line 147
    new-instance v5, Landroid/content/ComponentName;

    .line 148
    .line 149
    invoke-direct {v5, v4, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    new-instance v1, Landroid/content/Intent;

    .line 153
    .line 154
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 158
    .line 159
    .line 160
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->c:Ljava/lang/String;

    .line 161
    .line 162
    const-string v4, "playBillingLibraryVersion"

    .line 163
    .line 164
    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->a:Ljava/lang/Object;

    .line 168
    .line 169
    monitor-enter v0

    .line 170
    :try_start_1
    iget v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->b:I

    .line 171
    .line 172
    const/4 v5, 0x2

    .line 173
    if-ne v4, v5, :cond_3

    .line 174
    .line 175
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->s()Lcom/android/billingclient/api/BillingResult;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    monitor-exit v0

    .line 180
    goto :goto_3

    .line 181
    :catchall_1
    move-exception p1

    .line 182
    goto :goto_1

    .line 183
    :cond_3
    iget v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->b:I

    .line 184
    .line 185
    if-eq v4, v2, :cond_4

    .line 186
    .line 187
    const-string v1, "BillingClient"

    .line 188
    .line 189
    const-string v2, "Client state no longer CONNECTING, returning service disconnected."

    .line 190
    .line 191
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzje;->f1:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 195
    .line 196
    sget-object v2, Lcom/android/billingclient/api/zzdb;->j:Lcom/android/billingclient/api/BillingResult;

    .line 197
    .line 198
    invoke-virtual {p0, v2, v1}, Lcom/android/billingclient/api/BillingClientImpl;->w(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzje;)V

    .line 199
    .line 200
    .line 201
    monitor-exit v0

    .line 202
    goto/16 :goto_0

    .line 203
    .line 204
    :cond_4
    iget-object v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->j:Lcom/android/billingclient/api/zzbv;

    .line 205
    .line 206
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 207
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->g:Landroid/content/Context;

    .line 208
    .line 209
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-eqz v0, :cond_5

    .line 214
    .line 215
    const-string v0, "BillingClient"

    .line 216
    .line 217
    const-string v1, "Service was bonded successfully."

    .line 218
    .line 219
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    const/4 v1, 0x0

    .line 223
    goto :goto_3

    .line 224
    :cond_5
    const-string v0, "BillingClient"

    .line 225
    .line 226
    const-string v1, "Connection to Billing service is blocked."

    .line 227
    .line 228
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzje;->R:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 229
    .line 230
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    goto :goto_2

    .line 234
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 235
    throw p1

    .line 236
    :cond_6
    const-string v0, "BillingClient"

    .line 237
    .line 238
    const-string v1, "The device doesn\'t have valid Play Store."

    .line 239
    .line 240
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzje;->S:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 241
    .line 242
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    goto :goto_2

    .line 246
    :cond_7
    const-string v0, "BillingClient"

    .line 247
    .line 248
    const-string v1, "The device doesn\'t have valid Play Store."

    .line 249
    .line 250
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzje;->S:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 251
    .line 252
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    goto :goto_2

    .line 256
    :cond_8
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzje;->T:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 257
    .line 258
    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/billingclient/api/BillingClientImpl;->x(I)V

    .line 259
    .line 260
    .line 261
    const-string v0, "BillingClient"

    .line 262
    .line 263
    const-string v1, "Billing service unavailable on device."

    .line 264
    .line 265
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    sget-object v1, Lcom/android/billingclient/api/zzdb;->b:Lcom/android/billingclient/api/BillingResult;

    .line 269
    .line 270
    invoke-virtual {p0, v1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->w(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzje;)V

    .line 271
    .line 272
    .line 273
    :goto_3
    if-eqz v1, :cond_9

    .line 274
    .line 275
    invoke-interface {p1, v1}, Lcom/android/billingclient/api/BillingClientStateListener;->d(Lcom/android/billingclient/api/BillingResult;)V

    .line 276
    .line 277
    .line 278
    :cond_9
    return-void

    .line 279
    :goto_4
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 280
    throw p1
.end method
