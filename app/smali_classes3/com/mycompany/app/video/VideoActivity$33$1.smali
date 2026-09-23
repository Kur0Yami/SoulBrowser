.class Lcom/mycompany/app/video/VideoActivity$33$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/video/VideoActivity$33;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoActivity$33;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity$33$1;->c:Lcom/mycompany/app/video/VideoActivity$33;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity$33$1;->c:Lcom/mycompany/app/video/VideoActivity$33;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/video/VideoActivity$33;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->n3:Lcom/mycompany/app/view/MyWebSafe;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, v0, Lcom/mycompany/app/video/VideoActivity;->p3:Z

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v2, 0x1

    .line 14
    iput-boolean v2, v0, Lcom/mycompany/app/video/VideoActivity;->q3:Z

    .line 15
    .line 16
    new-instance v2, Lcom/mycompany/app/video/VideoActivity$WebAppInterface;

    .line 17
    .line 18
    invoke-direct {v2, v0}, Lcom/mycompany/app/video/VideoActivity$WebAppInterface;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 19
    .line 20
    .line 21
    const-string v3, "android"

    .line 22
    .line 23
    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, v0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    new-instance v1, Lcom/mycompany/app/video/VideoActivity$33$1$1;

    .line 32
    .line 33
    invoke-direct {v1, p0}, Lcom/mycompany/app/video/VideoActivity$33$1$1;-><init>(Lcom/mycompany/app/video/VideoActivity$33$1;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    return-void
.end method
