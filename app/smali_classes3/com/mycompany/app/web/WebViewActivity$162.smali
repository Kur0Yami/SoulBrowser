.class Lcom/mycompany/app/web/WebViewActivity$162;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$162;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$162;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->c2:Lcom/mycompany/app/help/KeyHelper;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->w9:Z

    .line 8
    .line 9
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->x9:Z

    .line 10
    .line 11
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/help/KeyHelper;->b(ZZ)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->R8()V

    .line 15
    .line 16
    .line 17
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$162$1;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$162$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$162;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method
