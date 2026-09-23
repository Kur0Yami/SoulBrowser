.class Lcom/mycompany/app/web/WebViewActivity$175$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$175;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$175;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$175$1;->c:Lcom/mycompany/app/web/WebViewActivity$175;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$175$1;->c:Lcom/mycompany/app/web/WebViewActivity$175;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$175;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    sget v2, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/web/WebViewActivity;->b7(IZ)V

    .line 10
    .line 11
    .line 12
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$175;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 13
    .line 14
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->c3:Z

    .line 15
    .line 16
    return-void
.end method
