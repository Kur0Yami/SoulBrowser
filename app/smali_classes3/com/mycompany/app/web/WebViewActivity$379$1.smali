.class Lcom/mycompany/app/web/WebViewActivity$379$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$379;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$379;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$379$1;->c:Lcom/mycompany/app/web/WebViewActivity$379;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$379$1;->c:Lcom/mycompany/app/web/WebViewActivity$379;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$379;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->sl:Z

    .line 7
    .line 8
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$381;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Lcom/mycompany/app/web/WebViewActivity$381;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
