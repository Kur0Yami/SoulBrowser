.class Lcom/mycompany/app/web/WebViewActivity$22;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$22;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->O1:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$22;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->G1:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {v0, v2}, Lcom/mycompany/app/main/MainApp;->u(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->o6()V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/mycompany/app/pref/PrefSync;->v(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-static {v0, v2}, Lcom/mycompany/app/main/MainUtil;->j8(Landroid/content/Context;Z)V

    .line 32
    .line 33
    .line 34
    iget-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->G1:Z

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->i()V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method
