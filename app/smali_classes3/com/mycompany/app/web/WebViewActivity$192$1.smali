.class Lcom/mycompany/app/web/WebViewActivity$192$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/wview/WebFltView$FltViewListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity$192;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$192;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$192$1;->a:Lcom/mycompany/app/web/WebViewActivity$192;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/mycompany/app/web/WebViewActivity$192$1;->a:Lcom/mycompany/app/web/WebViewActivity$192;

    .line 2
    .line 3
    iget-object p2, p2, Lcom/mycompany/app/web/WebViewActivity$192;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v0, p2, Lcom/mycompany/app/web/WebViewActivity;->b4:Lcom/mycompany/app/wview/WebDownView;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {p2, p1}, Lcom/mycompany/app/web/WebViewActivity;->q1(Lcom/mycompany/app/web/WebViewActivity;Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$192$1;->a:Lcom/mycompany/app/web/WebViewActivity$192;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$192;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    sget v1, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->N4()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$192$1;->a:Lcom/mycompany/app/web/WebViewActivity$192;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$192;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/mycompany/app/web/WebViewActivity;->A1(Lcom/mycompany/app/web/WebViewActivity;Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
