.class Lcom/mycompany/app/web/WebViewActivity$147$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$147$1$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$147$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$147$1$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$147$1$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$147$1$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$147$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$147$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$147$1;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$147$1;->c:Lcom/mycompany/app/web/WebViewActivity$147;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$147;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 8
    .line 9
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Yf:Z

    .line 10
    .line 11
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Zf:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Zf:Ljava/lang/String;

    .line 15
    .line 16
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->eg:Z

    .line 17
    .line 18
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->fg:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$148;

    .line 26
    .line 27
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$148;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method
