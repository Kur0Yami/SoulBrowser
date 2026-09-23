.class Lcom/mycompany/app/web/WebViewActivity$554$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$554;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$554;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$554$1;->c:Lcom/mycompany/app/web/WebViewActivity$554;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$554$1;->c:Lcom/mycompany/app/web/WebViewActivity$554;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$554;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->jn:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->kn:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    iput-object v4, v1, Lcom/mycompany/app/web/WebViewActivity;->jn:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v4, v1, Lcom/mycompany/app/web/WebViewActivity;->kn:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/web/WebViewActivity;->k9(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$554;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->in:Z

    .line 21
    .line 22
    return-void
.end method
