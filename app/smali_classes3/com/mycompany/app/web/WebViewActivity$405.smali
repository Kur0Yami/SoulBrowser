.class Lcom/mycompany/app/web/WebViewActivity$405;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$405;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$405;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->V6:Lcom/mycompany/app/web/WebTransControl;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v2, v0, Lcom/mycompany/app/web/WebViewActivity;->H6:I

    .line 9
    .line 10
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->L6:Z

    .line 11
    .line 12
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->M6:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v1, v0, v2, v3}, Lcom/mycompany/app/web/WebTransControl;->f(Ljava/lang/String;IZ)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
