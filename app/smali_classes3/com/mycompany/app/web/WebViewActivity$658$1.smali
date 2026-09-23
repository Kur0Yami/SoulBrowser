.class Lcom/mycompany/app/web/WebViewActivity$658$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$658;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$658;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$658$1;->c:Lcom/mycompany/app/web/WebViewActivity$658;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$658$1;->c:Lcom/mycompany/app/web/WebViewActivity$658;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$658;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->da:Lcom/mycompany/app/view/MyFadeFrame;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->k3()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity$658;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 15
    .line 16
    iget-object v2, v2, Lcom/mycompany/app/web/WebViewActivity;->da:Lcom/mycompany/app/view/MyFadeFrame;

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-ne v1, v2, :cond_1

    .line 23
    .line 24
    :goto_0
    return-void

    .line 25
    :cond_1
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity$658;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 26
    .line 27
    iget-object v2, v2, Lcom/mycompany/app/web/WebViewActivity;->da:Lcom/mycompany/app/view/MyFadeFrame;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-virtual {v2, v1, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 31
    .line 32
    .line 33
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$658;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->da:Lcom/mycompany/app/view/MyFadeFrame;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 38
    .line 39
    .line 40
    return-void
.end method
