.class Lcom/mycompany/app/web/WebViewActivity$510$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$510$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$510$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$510$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$510$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$510$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$510$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$510$1;->c:Lcom/mycompany/app/web/WebViewActivity$510;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$510;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->Q6(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$510;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 13
    .line 14
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$511;

    .line 15
    .line 16
    invoke-direct {v1, v0}, Lcom/mycompany/app/web/WebViewActivity$511;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
