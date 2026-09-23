.class Lcom/mycompany/app/web/WebViewActivity$271$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$271$1$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$271$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$271$1$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$271$1$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$271$1$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$271$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$271$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$271$1;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$271$1;->c:Lcom/mycompany/app/web/WebViewActivity$271;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$271;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Mc:Z

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/high16 v2, -0x1000000

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2, v2}, Lcom/mycompany/app/web/WebViewActivity;->g2(Landroid/view/Window;II)V

    .line 24
    .line 25
    .line 26
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 27
    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$272;

    .line 32
    .line 33
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$272;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    return-void
.end method
