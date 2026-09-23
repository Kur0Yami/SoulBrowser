.class Lcom/mycompany/app/web/WebViewActivity$99$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/web/WebViewActivity$TabLimitListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity$99;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$99;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$99$1;->a:Lcom/mycompany/app/web/WebViewActivity$99;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$99$1;->a:Lcom/mycompany/app/web/WebViewActivity$99;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/mycompany/app/web/WebViewActivity$99;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebViewActivity;->L8()V

    .line 8
    .line 9
    .line 10
    iget-object p1, p1, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance v0, Lcom/mycompany/app/web/WebViewActivity$99$1$1;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebViewActivity$99$1$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$99$1;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method
