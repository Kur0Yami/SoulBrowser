.class Lcom/mycompany/app/web/WebViewActivity$467;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$467;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$467;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->em:Z

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1, v1}, Lcom/mycompany/app/web/WebViewActivity;->d8(IZ)V

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->B3:Lcom/mycompany/app/quick/QuickControl;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->U1:Z

    .line 20
    .line 21
    invoke-virtual {v1, v3}, Lcom/mycompany/app/quick/QuickControl;->setQuickMode(Z)V

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 25
    .line 26
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->B3:Lcom/mycompany/app/quick/QuickControl;

    .line 27
    .line 28
    invoke-virtual {v1, v3}, Lcom/mycompany/app/web/WebNestView;->setQuickControl(Lcom/mycompany/app/quick/QuickControl;)V

    .line 29
    .line 30
    .line 31
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->em:Z

    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    new-instance v1, Lcom/mycompany/app/quick/QuickControl;

    .line 35
    .line 36
    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->B3:Lcom/mycompany/app/quick/QuickControl;

    .line 40
    .line 41
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->U1:Z

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Lcom/mycompany/app/quick/QuickControl;->a(Z)V

    .line 44
    .line 45
    .line 46
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 47
    .line 48
    if-nez v1, :cond_2

    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$468;

    .line 52
    .line 53
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$468;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 57
    .line 58
    .line 59
    return-void
.end method
