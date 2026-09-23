.class Lcom/mycompany/app/web/WebViewActivity$198$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$198;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$198;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$198$2;->c:Lcom/mycompany/app/web/WebViewActivity$198;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$198$2;->c:Lcom/mycompany/app/web/WebViewActivity$198;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$198;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    new-instance v2, Landroid/content/Intent;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity$198;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 8
    .line 9
    iget-object v3, v3, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 10
    .line 11
    const-class v4, Lcom/mycompany/app/setting/SettingNews;

    .line 12
    .line 13
    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Lcom/mycompany/app/web/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$198;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->pb:Z

    .line 23
    .line 24
    return-void
.end method
