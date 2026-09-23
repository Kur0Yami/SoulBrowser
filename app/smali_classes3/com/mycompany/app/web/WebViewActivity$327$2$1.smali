.class Lcom/mycompany/app/web/WebViewActivity$327$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$327$2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$327$2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$327$2$1;->c:Lcom/mycompany/app/web/WebViewActivity$327$2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$327$2$1;->c:Lcom/mycompany/app/web/WebViewActivity$327$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$327$2;->c:Lcom/mycompany/app/web/WebViewActivity$327;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$327;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v2, 0x0

    .line 13
    invoke-static {v1, v2}, Lcom/mycompany/app/pref/PrefWeb;->t(Landroid/content/Context;Z)V

    .line 14
    .line 15
    .line 16
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$327;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-virtual {v1, v2}, Lcom/mycompany/app/web/WebViewActivity;->c8(Z)V

    .line 20
    .line 21
    .line 22
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$327;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 23
    .line 24
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$327$2$1$1;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$327$2$1$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$327$2$1;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
