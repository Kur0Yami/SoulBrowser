.class Lcom/mycompany/app/web/WebViewActivity$148;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$148;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$148;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Xf:Lcom/mycompany/app/web/WebViewActivity$PrevPageListener;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Xf:Lcom/mycompany/app/web/WebViewActivity$PrevPageListener;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->F2()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->f8()V

    .line 12
    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {v1}, Lcom/mycompany/app/web/WebViewActivity$PrevPageListener;->a()V

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->qc:Z

    .line 21
    .line 22
    return-void
.end method
