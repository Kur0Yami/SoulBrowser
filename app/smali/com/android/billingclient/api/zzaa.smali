.class final Lcom/android/billingclient/api/zzaa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/android/billingclient/api/PurchasesUpdatedListener;

.field public final c:Lcom/android/billingclient/api/zzcy;

.field public final d:Lcom/android/billingclient/api/zzz;

.field public final e:Lcom/android/billingclient/api/zzz;

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/zzdh;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/billingclient/api/zzaa;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/billingclient/api/zzaa;->b:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/billingclient/api/zzaa;->c:Lcom/android/billingclient/api/zzcy;

    .line 9
    .line 10
    new-instance p1, Lcom/android/billingclient/api/zzz;

    .line 11
    .line 12
    const/4 p2, 0x1

    .line 13
    invoke-direct {p1, p0, p2}, Lcom/android/billingclient/api/zzz;-><init>(Lcom/android/billingclient/api/zzaa;Z)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/billingclient/api/zzaa;->d:Lcom/android/billingclient/api/zzz;

    .line 17
    .line 18
    new-instance p1, Lcom/android/billingclient/api/zzz;

    .line 19
    .line 20
    const/4 p2, 0x0

    .line 21
    invoke-direct {p1, p0, p2}, Lcom/android/billingclient/api/zzz;-><init>(Lcom/android/billingclient/api/zzaa;Z)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/android/billingclient/api/zzaa;->e:Lcom/android/billingclient/api/zzz;

    .line 25
    .line 26
    return-void
.end method
