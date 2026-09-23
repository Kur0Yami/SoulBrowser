.class Lcom/mycompany/app/web/WebViewActivity$185;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogVideoMenu$VideoMenuListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$185;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$185;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 3
    .line 4
    iput-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->Y3:Z

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->I4()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final b(I)V
    .locals 2

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$185;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->I4()V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Gg:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/mycompany/app/web/WebViewActivity;->b9(I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {v0, p1}, Lcom/mycompany/app/web/WebViewActivity;->C7(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
