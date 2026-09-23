.class Lcom/mycompany/app/web/WebViewActivity$126$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$126;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$126;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$126$1;->c:Lcom/mycompany/app/web/WebViewActivity$126;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$126$1;->c:Lcom/mycompany/app/web/WebViewActivity$126;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$126;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Gf:I

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Hf:Lcom/mycompany/app/web/WebNestFrame;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Hf:Lcom/mycompany/app/web/WebNestFrame;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->v8(I)V

    .line 13
    .line 14
    .line 15
    iput v1, v0, Lcom/mycompany/app/web/WebViewActivity;->If:I

    .line 16
    .line 17
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Jf:Lcom/mycompany/app/web/WebNestFrame;

    .line 18
    .line 19
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$127;

    .line 25
    .line 26
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$127;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    return-void
.end method
