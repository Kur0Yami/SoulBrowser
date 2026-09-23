.class Lcom/mycompany/app/web/WebViewActivity$247$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$247$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$247$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$247$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$247$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$247$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$247$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$247$1;->c:Lcom/mycompany/app/web/WebViewActivity$247;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$247;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->x2:Lcom/mycompany/app/view/MyEditAuto;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v1, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->c8(Landroid/content/Context;Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$247;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->x2:Lcom/mycompany/app/view/MyEditAuto;

    .line 20
    .line 21
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$247$1$1$1;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$247$1$1$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$247$1$1;)V

    .line 24
    .line 25
    .line 26
    const-wide/16 v2, 0x258

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method
