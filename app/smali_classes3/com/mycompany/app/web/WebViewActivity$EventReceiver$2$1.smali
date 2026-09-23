.class Lcom/mycompany/app/web/WebViewActivity$EventReceiver$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$EventReceiver$2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$EventReceiver$2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$EventReceiver$2$1;->c:Lcom/mycompany/app/web/WebViewActivity$EventReceiver$2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$EventReceiver$2$1;->c:Lcom/mycompany/app/web/WebViewActivity$EventReceiver$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$EventReceiver$2;->c:Lcom/mycompany/app/web/WebViewActivity$EventReceiver;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$EventReceiver;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->vn:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->vn:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->z(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
