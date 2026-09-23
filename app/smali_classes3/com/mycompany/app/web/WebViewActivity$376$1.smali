.class Lcom/mycompany/app/web/WebViewActivity$376$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$376;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$376;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$376$1;->c:Lcom/mycompany/app/web/WebViewActivity$376;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$376$1;->c:Lcom/mycompany/app/web/WebViewActivity$376;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$376;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->U(Landroid/content/Context;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    iput-wide v1, v0, Lcom/mycompany/app/web/WebViewActivity;->z6:J

    .line 12
    .line 13
    iget-object v0, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$376$1$1;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$376$1$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$376$1;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method
