.class Lcom/mycompany/app/web/WebViewActivity$388;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic f:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$388;->f:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/web/WebViewActivity$388;->c:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$388;->f:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->zl:Landroid/print/PrintDocumentAdapter;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->zl:Landroid/print/PrintDocumentAdapter;

    .line 7
    .line 8
    :try_start_0
    const-string v3, "print"

    .line 9
    .line 10
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    check-cast v3, Landroid/print/PrintManager;

    .line 15
    .line 16
    iget-object v4, p0, Lcom/mycompany/app/web/WebViewActivity$388;->c:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v5, Landroid/print/PrintAttributes$Builder;

    .line 19
    .line 20
    invoke-direct {v5}, Landroid/print/PrintAttributes$Builder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v5}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-virtual {v3, v4, v1, v5}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->v9:Landroid/print/PrintJob;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    return-void

    .line 34
    :catch_0
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->v9:Landroid/print/PrintJob;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 37
    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$388$2;

    .line 42
    .line 43
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$388$2;-><init>(Lcom/mycompany/app/web/WebViewActivity$388;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_1
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->v9:Landroid/print/PrintJob;

    .line 51
    .line 52
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 53
    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$388$1;

    .line 58
    .line 59
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$388$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$388;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 63
    .line 64
    .line 65
    :goto_0
    return-void
.end method
