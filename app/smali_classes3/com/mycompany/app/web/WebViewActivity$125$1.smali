.class Lcom/mycompany/app/web/WebViewActivity$125$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/web/WebViewActivity$TabViewListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity$125;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$125;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$125$1;->a:Lcom/mycompany/app/web/WebViewActivity$125;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$125$1;->a:Lcom/mycompany/app/web/WebViewActivity$125;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$125;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Ff:Z

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/web/WebViewActivity;->b7(IZ)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x2

    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/web/WebViewActivity;->b7(IZ)V

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->f8()V

    .line 20
    .line 21
    .line 22
    return-void
.end method
