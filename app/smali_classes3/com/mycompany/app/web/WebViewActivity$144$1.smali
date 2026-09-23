.class Lcom/mycompany/app/web/WebViewActivity$144$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$144;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$144;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$144$1;->c:Lcom/mycompany/app/web/WebViewActivity$144;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$144$1;->c:Lcom/mycompany/app/web/WebViewActivity$144;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$144;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Q2:Lcom/mycompany/app/web/WebNestFrame;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebNestFrame;->getTabY()F

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/web/WebViewActivity;->T6(FZ)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
