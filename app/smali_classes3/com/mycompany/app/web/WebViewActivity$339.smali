.class Lcom/mycompany/app/web/WebViewActivity$339;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$339;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$339;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->zj:Z

    .line 4
    .line 5
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Aj:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->K2()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->g7(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    if-eqz v2, :cond_1

    .line 17
    .line 18
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->z8:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->h7(Z)V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method
