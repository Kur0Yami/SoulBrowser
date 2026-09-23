.class Lcom/mycompany/app/web/WebViewActivity$271$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$271$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$271$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$271$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$271$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$271$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$271$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$271$1;->c:Lcom/mycompany/app/web/WebViewActivity$271;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$271;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    iput-boolean v3, v1, Lcom/mycompany/app/web/WebViewActivity;->Mc:Z

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-static {v1, v3}, Lcom/mycompany/app/web/WebViewActivity;->V0(Lcom/mycompany/app/web/WebViewActivity;Z)V

    .line 16
    .line 17
    .line 18
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$271;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$271$1$1$1;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$271$1$1$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$271$1$1;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method
