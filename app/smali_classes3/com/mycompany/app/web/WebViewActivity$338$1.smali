.class Lcom/mycompany/app/web/WebViewActivity$338$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$338;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$338;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$338$1;->c:Lcom/mycompany/app/web/WebViewActivity$338;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$338$1;->c:Lcom/mycompany/app/web/WebViewActivity$338;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$338;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    sget v2, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v2}, Lcom/mycompany/app/web/WebViewActivity;->s3(Z)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity$338;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 13
    .line 14
    iget-object v3, v3, Lcom/mycompany/app/web/WebViewActivity;->yj:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v1, v3}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$338;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lcom/mycompany/app/web/WebViewActivity;->h7(Z)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$338;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 28
    .line 29
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->xj:Z

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->yj:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 35
    .line 36
    invoke-static {v0, v2}, Lcom/mycompany/app/main/MainUtil;->l8(Landroid/content/Context;Z)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
