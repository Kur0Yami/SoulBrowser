.class Lcom/mycompany/app/web/WebViewActivity$273$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$273;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$273;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$273$1;->c:Lcom/mycompany/app/web/WebViewActivity$273;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$273$1;->c:Lcom/mycompany/app/web/WebViewActivity$273;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$273;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->Mc:Z

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity$273;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/mycompany/app/main/MainActivity;->a0()Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity$273;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 24
    .line 25
    invoke-virtual {v3}, Lcom/mycompany/app/main/MainActivity;->c0()Landroidx/core/view/WindowInsetsControllerCompat;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    iget-object v4, v0, Lcom/mycompany/app/web/WebViewActivity$273;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 30
    .line 31
    iget-boolean v5, v4, Lcom/mycompany/app/web/WebViewActivity;->w9:Z

    .line 32
    .line 33
    iget-boolean v4, v4, Lcom/mycompany/app/web/WebViewActivity;->x9:Z

    .line 34
    .line 35
    invoke-static {v1, v2, v3, v5, v4}, Lcom/mycompany/app/main/MainUtil;->I7(Landroid/view/Window;Landroid/view/View;Landroidx/core/view/WindowInsetsControllerCompat;ZZ)V

    .line 36
    .line 37
    .line 38
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$273;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->V9()V

    .line 41
    .line 42
    .line 43
    return-void
.end method
