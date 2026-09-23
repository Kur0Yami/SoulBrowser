.class Lcom/mycompany/app/web/WebViewActivity$619$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/wview/WebFltView$FltViewListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity$619;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$619;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$619$1;->a:Lcom/mycompany/app/web/WebViewActivity$619;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$619$1;->a:Lcom/mycompany/app/web/WebViewActivity$619;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/mycompany/app/web/WebViewActivity$619;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p2, Lcom/mycompany/app/web/WebViewActivity$619$1$1;

    .line 11
    .line 12
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebViewActivity$619$1$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$619$1;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$619$1;->a:Lcom/mycompany/app/web/WebViewActivity$619;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$619;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    sget v1, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->N4()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$619$1;->a:Lcom/mycompany/app/web/WebViewActivity$619;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$619;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/mycompany/app/web/WebViewActivity;->A1(Lcom/mycompany/app/web/WebViewActivity;Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
