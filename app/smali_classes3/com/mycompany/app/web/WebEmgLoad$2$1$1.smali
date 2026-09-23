.class Lcom/mycompany/app/web/WebEmgLoad$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebEmgLoad$2$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebEmgLoad$2$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebEmgLoad$2$1$1;->c:Lcom/mycompany/app/web/WebEmgLoad$2$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgLoad$2$1$1;->c:Lcom/mycompany/app/web/WebEmgLoad$2$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebEmgLoad$2$1;->c:Lcom/mycompany/app/web/WebEmgLoad$2;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgLoad$2;->c:Lcom/mycompany/app/web/WebEmgLoad;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/mycompany/app/web/WebEmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, v1, Lcom/mycompany/app/web/WebEmgLoad;->j:Z

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const/4 v3, 0x1

    .line 16
    iput-boolean v3, v1, Lcom/mycompany/app/web/WebEmgLoad;->l:Z

    .line 17
    .line 18
    new-instance v3, Lcom/mycompany/app/web/WebEmgLoad$WebAppInterface;

    .line 19
    .line 20
    invoke-direct {v3, v1}, Lcom/mycompany/app/web/WebEmgLoad$WebAppInterface;-><init>(Lcom/mycompany/app/web/WebEmgLoad;)V

    .line 21
    .line 22
    .line 23
    const-string v1, "android"

    .line 24
    .line 25
    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, v0, Lcom/mycompany/app/web/WebEmgLoad$2;->c:Lcom/mycompany/app/web/WebEmgLoad;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/mycompany/app/web/WebEmgLoad;->c:Landroid/view/ViewGroup;

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    new-instance v1, Lcom/mycompany/app/web/WebEmgLoad$2$1$1$1;

    .line 36
    .line 37
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebEmgLoad$2$1$1$1;-><init>(Lcom/mycompany/app/web/WebEmgLoad$2$1$1;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 41
    .line 42
    .line 43
    return-void
.end method
