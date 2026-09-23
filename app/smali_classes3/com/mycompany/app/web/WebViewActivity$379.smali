.class Lcom/mycompany/app/web/WebViewActivity$379;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$379;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$379;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->w6:Lcom/mycompany/app/view/MyCoverView;

    .line 4
    .line 5
    if-eqz v1, :cond_3

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget v2, v0, Lcom/mycompany/app/web/WebViewActivity;->x6:I

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebNestView;->computeVerticalScrollRange()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eq v2, v1, :cond_1

    .line 19
    .line 20
    invoke-static {v0}, Lcom/mycompany/app/web/WebViewActivity;->D0(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$379$1;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$379$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$379;)V

    .line 32
    .line 33
    .line 34
    const-wide/16 v2, 0xc8

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->q6()V

    .line 41
    .line 42
    .line 43
    return-void
.end method
