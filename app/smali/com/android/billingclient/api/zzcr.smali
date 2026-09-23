.class final Lcom/android/billingclient/api/zzcr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzcv;


# instance fields
.field public final synthetic a:Landroidx/core/util/Consumer;

.field public final synthetic b:Ljava/lang/Runnable;

.field public final synthetic c:Lcom/android/billingclient/api/zzcv;

.field public final synthetic d:I


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/zzcv;ILandroidx/core/util/Consumer;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/android/billingclient/api/zzcr;->d:I

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/billingclient/api/zzcr;->a:Landroidx/core/util/Consumer;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/billingclient/api/zzcr;->b:Ljava/lang/Runnable;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/android/billingclient/api/zzcr;->c:Lcom/android/billingclient/api/zzcv;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iget-object v0, p0, Lcom/android/billingclient/api/zzcr;->c:Lcom/android/billingclient/api/zzcv;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const-string v1, "Billing override value was set by a license tester."

    .line 19
    .line 20
    invoke-static {p1, v1}, Lcom/android/billingclient/api/zzdb;->a(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzje;->T0:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 25
    .line 26
    iget v2, p0, Lcom/android/billingclient/api/zzcr;->d:I

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/billingclient/api/zzcv;->N(Lcom/google/android/gms/internal/play_billing/zzje;ILcom/android/billingclient/api/BillingResult;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/billingclient/api/zzcr;->a:Landroidx/core/util/Consumer;

    .line 32
    .line 33
    invoke-interface {v0, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    iget-object p1, p0, Lcom/android/billingclient/api/zzcr;->b:Ljava/lang/Runnable;

    .line 38
    .line 39
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final b(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    instance-of v0, p1, Ljava/util/concurrent/TimeoutException;

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    const-string v2, "BillingClientTesting"

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/billingclient/api/zzcr;->c:Lcom/android/billingclient/api/zzcv;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzje;->c1:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 12
    .line 13
    sget-object v4, Lcom/android/billingclient/api/zzdb;->r:Lcom/android/billingclient/api/BillingResult;

    .line 14
    .line 15
    invoke-virtual {v3, v0, v1, v4}, Lcom/android/billingclient/api/zzcv;->N(Lcom/google/android/gms/internal/play_billing/zzje;ILcom/android/billingclient/api/BillingResult;)V

    .line 16
    .line 17
    .line 18
    const-string v0, "Asynchronous call to Billing Override Service timed out."

    .line 19
    .line 20
    invoke-static {v2, v0, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzje;->V0:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 25
    .line 26
    sget-object v4, Lcom/android/billingclient/api/zzdb;->r:Lcom/android/billingclient/api/BillingResult;

    .line 27
    .line 28
    invoke-virtual {v3, v0, v1, v4}, Lcom/android/billingclient/api/zzcv;->N(Lcom/google/android/gms/internal/play_billing/zzje;ILcom/android/billingclient/api/BillingResult;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "An error occurred while retrieving billing override."

    .line 32
    .line 33
    invoke-static {v2, v0, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    iget-object p1, p0, Lcom/android/billingclient/api/zzcr;->b:Ljava/lang/Runnable;

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 39
    .line 40
    .line 41
    return-void
.end method
