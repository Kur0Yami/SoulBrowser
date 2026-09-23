.class Lcom/mycompany/app/web/WebViewActivity$116$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$116;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$116;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$116$2;->c:Lcom/mycompany/app/web/WebViewActivity$116;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$116$2;->c:Lcom/mycompany/app/web/WebViewActivity$116;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$116;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->wf:Lcom/mycompany/app/web/WebNestView;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iput-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->wf:Lcom/mycompany/app/web/WebNestView;

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {v2}, Lcom/mycompany/app/web/WebNestView;->getBackIndex()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v4, 0x1

    .line 18
    invoke-virtual {v2, v4, v1, v3}, Lcom/mycompany/app/web/WebNestView;->j(ZILcom/mycompany/app/web/WebNestView$WebStyleListener;)V

    .line 19
    .line 20
    .line 21
    sget-boolean v1, Lcom/mycompany/app/pref/PrefWeb;->o:Z

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/mycompany/app/web/WebNestView;->getBackUrl()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v2}, Lcom/mycompany/app/web/WebNestView;->getBackHost()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v2, v1, v4, v3}, Lcom/mycompany/app/web/WebNestView;->L(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$116;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 40
    .line 41
    invoke-static {v0, v3}, Lcom/mycompany/app/main/MainUtil;->j8(Landroid/content/Context;Z)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
