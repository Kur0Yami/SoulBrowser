.class Lcom/mycompany/app/web/WebViewActivity$15$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$15;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$15;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$15$1;->c:Lcom/mycompany/app/web/WebViewActivity$15;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$15$1;->c:Lcom/mycompany/app/web/WebViewActivity$15;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$15;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/mycompany/app/web/WebViewActivity;->b1(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->F7()V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/mycompany/app/web/WebViewActivity;->c1(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/mycompany/app/web/WebViewActivity;->d1(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 15
    .line 16
    .line 17
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->L3:Z

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    :goto_0
    return-void

    .line 27
    :cond_1
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$15$1$1;

    .line 28
    .line 29
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$15$1$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$15$1;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    return-void
.end method
