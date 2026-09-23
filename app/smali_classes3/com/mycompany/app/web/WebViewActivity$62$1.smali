.class Lcom/mycompany/app/web/WebViewActivity$62$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$62;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$62;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$62$1;->c:Lcom/mycompany/app/web/WebViewActivity$62;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$62$1;->c:Lcom/mycompany/app/web/WebViewActivity$62;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$62;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    sget v2, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-virtual {v1, v2}, Lcom/mycompany/app/web/WebViewActivity;->t6(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$62;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/web/WebViewActivity;->b7(IZ)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
