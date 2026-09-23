.class Lcom/mycompany/app/web/WebViewActivity$62;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/web/WebViewActivity$TabLimitListener;


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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$62;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    sget p1, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 5
    .line 6
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$62;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebViewActivity;->n7()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebViewActivity;->L8()V

    .line 12
    .line 13
    .line 14
    iget-object p1, p1, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    :goto_0
    return-void

    .line 19
    :cond_1
    new-instance v0, Lcom/mycompany/app/web/WebViewActivity$62$1;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebViewActivity$62$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$62;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method
