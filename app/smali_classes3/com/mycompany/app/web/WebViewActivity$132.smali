.class Lcom/mycompany/app/web/WebViewActivity$132;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$132;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$132;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Nf:Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Of:Ljava/util/ArrayList;

    .line 6
    .line 7
    iget v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Pf:I

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    iput-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->Nf:Ljava/util/ArrayList;

    .line 11
    .line 12
    iput-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->Of:Ljava/util/ArrayList;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->f1:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    iget-object v4, p0, Lcom/mycompany/app/web/WebViewActivity$132;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 18
    .line 19
    iput-object v1, v4, Lcom/mycompany/app/web/WebViewActivity;->O2:Ljava/util/List;

    .line 20
    .line 21
    iget v1, v4, Lcom/mycompany/app/web/WebViewActivity;->P2:I

    .line 22
    .line 23
    sub-int/2addr v1, v3

    .line 24
    iput v1, v4, Lcom/mycompany/app/web/WebViewActivity;->P2:I

    .line 25
    .line 26
    invoke-virtual {v4}, Lcom/mycompany/app/web/WebViewActivity;->t8()V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$132;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->m3()Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget-object v3, p0, Lcom/mycompany/app/web/WebViewActivity$132;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 36
    .line 37
    iget-object v3, v3, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 38
    .line 39
    invoke-static {v3, v1}, Lcom/mycompany/app/db/book/DbBookTab;->u(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$132;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 43
    .line 44
    iget-object v1, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 45
    .line 46
    invoke-static {v1, v2}, Lcom/mycompany/app/db/book/DbBookTab;->k(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 47
    .line 48
    .line 49
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$132;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 51
    .line 52
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 53
    .line 54
    if-nez v0, :cond_0

    .line 55
    .line 56
    return-void

    .line 57
    :cond_0
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$132$1;

    .line 58
    .line 59
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$132$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$132;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :catchall_0
    move-exception v1

    .line 67
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    throw v1
.end method
