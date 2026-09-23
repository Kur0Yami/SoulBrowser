.class Lcom/mycompany/app/web/WebViewActivity$520;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$520;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$520;->c:Lcom/mycompany/app/web/WebViewActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->b2:Z

    return-void
.end method

.method public final run_disabled()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$520;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/mycompany/app/main/MainApp;->z(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/mycompany/app/main/MainApp;->A(Landroid/content/Context;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$520$1;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$520$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$520;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 30
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->b2:Z

    .line 31
    .line 32
    return-void
.end method
