.class Lcom/mycompany/app/web/WebViewActivity$158;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$158;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    new-instance v0, Lcom/mycompany/app/web/WebViewActivity$159;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$158;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/mycompany/app/web/WebViewActivity$159;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v0}, Lcom/mycompany/app/web/WebViewActivity;->x8(Lcom/mycompany/app/web/WebViewActivity$TabViewListener;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->qc:Z

    .line 15
    .line 16
    return-void
.end method
