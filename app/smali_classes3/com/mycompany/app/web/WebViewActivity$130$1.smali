.class Lcom/mycompany/app/web/WebViewActivity$130$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$130;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$130;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$130$1;->c:Lcom/mycompany/app/web/WebViewActivity$130;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$130$1;->c:Lcom/mycompany/app/web/WebViewActivity$130;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$130;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$130$1$1;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$130$1$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$130$1;)V

    .line 8
    .line 9
    .line 10
    sget v2, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->x8(Lcom/mycompany/app/web/WebViewActivity$TabViewListener;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
