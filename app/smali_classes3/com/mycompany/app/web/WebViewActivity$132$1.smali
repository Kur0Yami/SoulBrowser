.class Lcom/mycompany/app/web/WebViewActivity$132$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$132;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$132;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$132$1;->c:Lcom/mycompany/app/web/WebViewActivity$132;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$132$1;->c:Lcom/mycompany/app/web/WebViewActivity$132;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$132;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->O2:Ljava/util/List;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_2

    .line 15
    .line 16
    invoke-static {}, Lcom/mycompany/app/web/WebViewActivity;->o3()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-virtual {v0, v3, v1, v2, v3}, Lcom/mycompany/app/web/WebViewActivity;->O1(Lcom/mycompany/app/web/WebNestFrame;Ljava/lang/String;ZLcom/mycompany/app/web/WebViewActivity$TabAddListener;)V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x2

    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/web/WebViewActivity;->b7(IZ)V

    .line 28
    .line 29
    .line 30
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    :goto_0
    return-void

    .line 35
    :cond_1
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$132$1$1;

    .line 36
    .line 37
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$132$1$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$132$1;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$132$1$2;

    .line 45
    .line 46
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$132$1$2;-><init>(Lcom/mycompany/app/web/WebViewActivity$132$1;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->x8(Lcom/mycompany/app/web/WebViewActivity$TabViewListener;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
