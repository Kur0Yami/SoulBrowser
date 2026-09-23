.class Lcom/mycompany/app/web/WebViewActivity$241;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$241;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    new-instance v0, Lcom/mycompany/app/web/WebViewActivity$241$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebViewActivity$241$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$241;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$241;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
