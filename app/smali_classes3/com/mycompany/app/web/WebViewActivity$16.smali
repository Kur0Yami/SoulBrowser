.class Lcom/mycompany/app/web/WebViewActivity$16;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$16;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$16;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v1, v0, Lcom/mycompany/app/web/WebViewActivity;->N3:I

    .line 9
    .line 10
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->C2:Lcom/mycompany/app/view/MyFindView;

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    iget-boolean v3, v2, Lcom/mycompany/app/view/MyFindView;->g:Z

    .line 15
    .line 16
    if-nez v3, :cond_1

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    sub-int/2addr v1, v2

    .line 23
    :cond_1
    iget v2, v0, Lcom/mycompany/app/web/WebViewActivity;->W9:F

    .line 24
    .line 25
    sget v3, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 26
    .line 27
    int-to-float v3, v3

    .line 28
    add-float/2addr v2, v3

    .line 29
    float-to-int v2, v2

    .line 30
    sub-int/2addr v1, v2

    .line 31
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 32
    .line 33
    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    sub-int/2addr v2, v1

    .line 41
    invoke-virtual {v0, v3, v2}, Landroid/view/View;->scrollTo(II)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
