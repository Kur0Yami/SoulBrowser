.class Lcom/mycompany/app/web/WebViewActivity$282;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebNestView;

.field public final synthetic f:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;Lcom/mycompany/app/web/WebNestView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$282;->f:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/web/WebViewActivity$282;->c:Lcom/mycompany/app/web/WebNestView;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$282;->f:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->K8(Lcom/mycompany/app/web/WebNestView;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->d2:Lcom/mycompany/app/main/MainWebDestroy;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$282;->c:Lcom/mycompany/app/web/WebNestView;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainWebDestroy;->b(Landroid/webkit/WebView;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
