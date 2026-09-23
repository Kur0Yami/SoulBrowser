.class Lcom/mycompany/app/web/WebViewActivity$135$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$135;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$135;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$135$1;->c:Lcom/mycompany/app/web/WebViewActivity$135;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$135$1;->c:Lcom/mycompany/app/web/WebViewActivity$135;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$135;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Qf:Ljava/util/ArrayList;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Rf:Ljava/util/ArrayList;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Qf:Ljava/util/ArrayList;

    .line 11
    .line 12
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Rf:Ljava/util/ArrayList;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    :cond_0
    if-eqz v2, :cond_2

    .line 23
    .line 24
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_2

    .line 29
    .line 30
    :cond_1
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 31
    .line 32
    invoke-static {v3, v2}, Lcom/mycompany/app/db/book/DbBookTab;->u(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 33
    .line 34
    .line 35
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 36
    .line 37
    invoke-static {v2, v1}, Lcom/mycompany/app/db/book/DbBookTab;->k(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->t8()V

    .line 41
    .line 42
    .line 43
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 44
    .line 45
    if-nez v1, :cond_3

    .line 46
    .line 47
    return-void

    .line 48
    :cond_3
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$136;

    .line 49
    .line 50
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$136;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 54
    .line 55
    .line 56
    return-void
.end method
