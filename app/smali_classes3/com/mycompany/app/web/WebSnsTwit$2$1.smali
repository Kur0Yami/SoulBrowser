.class Lcom/mycompany/app/web/WebSnsTwit$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebSnsTwit$2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebSnsTwit$2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebSnsTwit$2$1;->c:Lcom/mycompany/app/web/WebSnsTwit$2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebSnsTwit$2$1;->c:Lcom/mycompany/app/web/WebSnsTwit$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebSnsTwit$2;->c:Lcom/mycompany/app/web/WebSnsTwit;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebSnsTwit;->e:Lcom/mycompany/app/view/MyWebSafe;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v2, Lcom/mycompany/app/web/WebSnsTwit$LocalWebViewClient;

    .line 11
    .line 12
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebSnsTwit$LocalWebViewClient;-><init>(Lcom/mycompany/app/web/WebSnsTwit;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    iget-object v0, v0, Lcom/mycompany/app/web/WebSnsTwit;->d:Landroid/view/ViewGroup;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    new-instance v1, Lcom/mycompany/app/web/WebSnsTwit$2$1$1;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebSnsTwit$2$1$1;-><init>(Lcom/mycompany/app/web/WebSnsTwit$2$1;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method
