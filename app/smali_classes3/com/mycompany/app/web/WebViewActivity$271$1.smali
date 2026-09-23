.class Lcom/mycompany/app/web/WebViewActivity$271$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$271;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$271;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$271$1;->c:Lcom/mycompany/app/web/WebViewActivity$271;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$271$1;->c:Lcom/mycompany/app/web/WebViewActivity$271;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$271;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Mc:Z

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {v0, v2, v2}, Lcom/mycompany/app/web/WebViewActivity;->r7(ZZ)V

    .line 14
    .line 15
    .line 16
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$271$1$1;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$271$1$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$271$1;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method
