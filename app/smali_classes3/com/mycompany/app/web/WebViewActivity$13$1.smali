.class Lcom/mycompany/app/web/WebViewActivity$13$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$13;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$13;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$13$1;->c:Lcom/mycompany/app/web/WebViewActivity$13;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$13$1;->c:Lcom/mycompany/app/web/WebViewActivity$13;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$13;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->nc:Z

    .line 7
    .line 8
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->A3:Lcom/mycompany/app/quick/QuickSearch;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/mycompany/app/quick/QuickSearch;->setBusyMode(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
