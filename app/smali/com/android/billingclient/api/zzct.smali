.class final Lcom/android/billingclient/api/zzct;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic c:Lcom/android/billingclient/api/zzcv;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/zzcv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/billingclient/api/zzct;->c:Lcom/android/billingclient/api/zzcv;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    const-string p1, "BillingClientTesting"

    .line 2
    .line 3
    const-string v0, "Billing Override Service connected."

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/billingclient/api/zzct;->c:Lcom/android/billingclient/api/zzcv;

    .line 9
    .line 10
    sget v0, Lcom/google/android/gms/internal/play_billing/zzax;->c:I

    .line 11
    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v0, "com.google.android.apps.play.billingtestcompanion.aidl.IBillingOverrideService"

    .line 17
    .line 18
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    instance-of v2, v1, Lcom/google/android/gms/internal/play_billing/zzay;

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    move-object p2, v1

    .line 27
    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzay;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzaw;

    .line 31
    .line 32
    invoke-direct {v1, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzas;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    move-object p2, v1

    .line 36
    :goto_0
    iput-object p2, p1, Lcom/android/billingclient/api/zzcv;->F:Lcom/google/android/gms/internal/play_billing/zzay;

    .line 37
    .line 38
    const/4 p2, 0x2

    .line 39
    iput p2, p1, Lcom/android/billingclient/api/zzcv;->E:I

    .line 40
    .line 41
    const/16 p2, 0x1a

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Lcom/android/billingclient/api/zzcv;->O(I)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    const-string p1, "BillingClientTesting"

    .line 2
    .line 3
    const-string v0, "Billing Override Service disconnected."

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/billingclient/api/zzct;->c:Lcom/android/billingclient/api/zzcv;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p1, Lcom/android/billingclient/api/zzcv;->F:Lcom/google/android/gms/internal/play_billing/zzay;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput v0, p1, Lcom/android/billingclient/api/zzcv;->E:I

    .line 15
    .line 16
    return-void
.end method
