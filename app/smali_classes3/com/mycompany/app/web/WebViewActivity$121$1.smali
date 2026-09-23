.class Lcom/mycompany/app/web/WebViewActivity$121$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$121;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$121;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$121$1;->c:Lcom/mycompany/app/web/WebViewActivity$121;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$121$1;->c:Lcom/mycompany/app/web/WebViewActivity$121;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$121;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Cf:Lcom/mycompany/app/web/WebNestFrame;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Cf:Lcom/mycompany/app/web/WebNestFrame;

    .line 9
    .line 10
    iget v2, v0, Lcom/mycompany/app/web/WebViewActivity;->P2:I

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Lcom/mycompany/app/web/WebViewActivity;->v8(I)V

    .line 13
    .line 14
    .line 15
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Df:Lcom/mycompany/app/web/WebNestFrame;

    .line 16
    .line 17
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$122;

    .line 23
    .line 24
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$122;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method
