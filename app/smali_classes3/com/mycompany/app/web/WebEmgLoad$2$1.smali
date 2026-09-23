.class Lcom/mycompany/app/web/WebEmgLoad$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebEmgLoad$2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebEmgLoad$2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebEmgLoad$2$1;->c:Lcom/mycompany/app/web/WebEmgLoad$2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgLoad$2$1;->c:Lcom/mycompany/app/web/WebEmgLoad$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebEmgLoad$2;->c:Lcom/mycompany/app/web/WebEmgLoad;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebEmgLoad;->j:Z

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v2, Lcom/mycompany/app/web/WebEmgLoad$LocalWebViewClient;

    .line 14
    .line 15
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebEmgLoad$LocalWebViewClient;-><init>(Lcom/mycompany/app/web/WebEmgLoad;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Lcom/mycompany/app/web/WebNestView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, v0, Lcom/mycompany/app/web/WebEmgLoad;->c:Landroid/view/ViewGroup;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    new-instance v1, Lcom/mycompany/app/web/WebEmgLoad$2$1$1;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebEmgLoad$2$1$1;-><init>(Lcom/mycompany/app/web/WebEmgLoad$2$1;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method
