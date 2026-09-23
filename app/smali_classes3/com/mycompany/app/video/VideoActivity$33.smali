.class Lcom/mycompany/app/video/VideoActivity$33;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/video/VideoActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity$33;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity$33;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->n3:Lcom/mycompany/app/view/MyWebSafe;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, v0, Lcom/mycompany/app/video/VideoActivity;->p3:Z

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v2, Lcom/mycompany/app/video/VideoActivity$LocalWebViewClient;

    .line 12
    .line 13
    invoke-direct {v2, v0}, Lcom/mycompany/app/video/VideoActivity$LocalWebViewClient;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, v0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    new-instance v1, Lcom/mycompany/app/video/VideoActivity$33$1;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/mycompany/app/video/VideoActivity$33$1;-><init>(Lcom/mycompany/app/video/VideoActivity$33;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    return-void
.end method
