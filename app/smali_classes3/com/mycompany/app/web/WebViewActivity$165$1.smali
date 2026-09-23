.class Lcom/mycompany/app/web/WebViewActivity$165$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$165;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$165;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$165$1;->c:Lcom/mycompany/app/web/WebViewActivity$165;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$165$1;->c:Lcom/mycompany/app/web/WebViewActivity$165;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$165;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainActivity;->a0()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainActivity;->c0()Landroidx/core/view/WindowInsetsControllerCompat;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iget-boolean v4, v0, Lcom/mycompany/app/web/WebViewActivity;->w9:Z

    .line 18
    .line 19
    iget-boolean v5, v0, Lcom/mycompany/app/web/WebViewActivity;->x9:Z

    .line 20
    .line 21
    invoke-static {v1, v2, v3, v4, v5}, Lcom/mycompany/app/main/MainUtil;->I7(Landroid/view/Window;Landroid/view/View;Landroidx/core/view/WindowInsetsControllerCompat;ZZ)V

    .line 22
    .line 23
    .line 24
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$165$1$1;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$165$1$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$165$1;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 35
    .line 36
    .line 37
    return-void
.end method
