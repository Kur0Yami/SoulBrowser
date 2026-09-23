.class Lcom/mycompany/app/web/WebLoadView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebLoadView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebLoadView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebLoadView$1;->c:Lcom/mycompany/app/web/WebLoadView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebLoadView$1;->c:Lcom/mycompany/app/web/WebLoadView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebLoadView;->b:Lcom/mycompany/app/view/MyWebSafe;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v2, 0x1

    .line 9
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->W7(Landroid/webkit/WebView;Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, v0, Lcom/mycompany/app/web/WebLoadView;->a:Landroid/view/ViewGroup;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    :goto_0
    return-void

    .line 17
    :cond_1
    new-instance v1, Lcom/mycompany/app/web/WebLoadView$1$1;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebLoadView$1$1;-><init>(Lcom/mycompany/app/web/WebLoadView$1;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method
