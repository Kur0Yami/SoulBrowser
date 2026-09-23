.class Lcom/mycompany/app/web/WebViewActivity$134;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Z

.field public final synthetic f:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$134;->f:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/mycompany/app/web/WebViewActivity$134;->c:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$134;->f:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 4
    .line 5
    sget-boolean v2, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 6
    .line 7
    invoke-static {v1, v2}, Lcom/mycompany/app/db/book/DbBookTab;->n(Landroid/content/Context;Z)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->O2:Ljava/util/List;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput v1, v0, Lcom/mycompany/app/web/WebViewActivity;->P2:I

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->t8()V

    .line 17
    .line 18
    .line 19
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$134$1;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$134$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$134;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    return-void
.end method
