.class Lcom/mycompany/app/web/WebSnsLoad$WebAppInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/web/WebSnsLoad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebAppInterface"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebSnsLoad;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebSnsLoad;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebSnsLoad$WebAppInterface;->a:Lcom/mycompany/app/web/WebSnsLoad;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDocHtml(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebSnsLoad$WebAppInterface;->a:Lcom/mycompany/app/web/WebSnsLoad;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/mycompany/app/web/WebSnsLoad;->C:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p1, v0, Lcom/mycompany/app/web/WebSnsLoad;->d:Landroid/view/ViewGroup;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v1, Lcom/mycompany/app/web/WebSnsLoad$14;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lcom/mycompany/app/web/WebSnsLoad$14;-><init>(Lcom/mycompany/app/web/WebSnsLoad;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onStoryData(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebSnsLoad$WebAppInterface;->a:Lcom/mycompany/app/web/WebSnsLoad;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebSnsLoad;->B:Ljava/lang/Runnable;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/web/WebSnsLoad;->d:Landroid/view/ViewGroup;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {v2, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    iput-boolean p1, v0, Lcom/mycompany/app/web/WebSnsLoad;->z:Z

    .line 21
    .line 22
    iget-object p1, v0, Lcom/mycompany/app/web/WebSnsLoad;->d:Landroid/view/ViewGroup;

    .line 23
    .line 24
    const-wide/16 v2, 0x1388

    .line 25
    .line 26
    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    const/4 v1, 0x1

    .line 31
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebSnsLoad;->z:Z

    .line 32
    .line 33
    iput-object p1, v0, Lcom/mycompany/app/web/WebSnsLoad;->A:Ljava/lang/String;

    .line 34
    .line 35
    iget-object p1, v0, Lcom/mycompany/app/web/WebSnsLoad;->b:Landroid/content/Context;

    .line 36
    .line 37
    new-instance v1, Lcom/mycompany/app/web/WebSnsLoad$11;

    .line 38
    .line 39
    invoke-direct {v1, v0}, Lcom/mycompany/app/web/WebSnsLoad$11;-><init>(Lcom/mycompany/app/web/WebSnsLoad;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p1, v1}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
