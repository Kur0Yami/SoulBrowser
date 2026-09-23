.class Lcom/mycompany/app/web/WebLoadView$LocalChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/web/WebLoadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalChromeClient"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebLoadView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebLoadView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/web/WebLoadView$LocalChromeClient;->a:Lcom/mycompany/app/web/WebLoadView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebLoadView$LocalChromeClient;->a:Lcom/mycompany/app/web/WebLoadView;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/mycompany/app/web/WebLoadView;->b:Lcom/mycompany/app/view/MyWebSafe;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/mycompany/app/web/WebLoadTask;->c()Lcom/mycompany/app/web/WebLoadTask;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1, p2}, Lcom/mycompany/app/web/WebLoadTask;->h(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
