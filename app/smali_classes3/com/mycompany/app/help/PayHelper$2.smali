.class Lcom/mycompany/app/help/PayHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesResponseListener;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/mycompany/app/help/PayHelper;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/help/PayHelper;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/help/PayHelper$2;->b:Lcom/mycompany/app/help/PayHelper;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/mycompany/app/help/PayHelper$2;->a:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/mycompany/app/help/PayHelper$2$1;

    .line 2
    .line 3
    invoke-direct {p1, p0, p2}, Lcom/mycompany/app/help/PayHelper$2$1;-><init>(Lcom/mycompany/app/help/PayHelper$2;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/mycompany/app/help/PayHelper$2;->b:Lcom/mycompany/app/help/PayHelper;

    .line 7
    .line 8
    invoke-virtual {p2, p1}, Lcom/mycompany/app/help/PayHelper;->h(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
