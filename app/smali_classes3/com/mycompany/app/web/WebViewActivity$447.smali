.class Lcom/mycompany/app/web/WebViewActivity$447;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$447;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$447;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->k7:Lcom/mycompany/app/wview/WebAreaView;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->l7:Z

    .line 9
    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    iget v3, v0, Lcom/mycompany/app/web/WebViewActivity;->V9:F

    .line 13
    .line 14
    float-to-int v3, v3

    .line 15
    iget v4, v0, Lcom/mycompany/app/web/WebViewActivity;->W9:F

    .line 16
    .line 17
    float-to-int v4, v4

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/16 v3, -0x4d2

    .line 20
    .line 21
    move v4, v3

    .line 22
    :goto_0
    iget-object v5, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 23
    .line 24
    invoke-virtual {v1, v5, v3, v4}, Lcom/mycompany/app/wview/WebAreaView;->e(Landroid/view/View;II)V

    .line 25
    .line 26
    .line 27
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->k7:Lcom/mycompany/app/wview/WebAreaView;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Yl:Z

    .line 33
    .line 34
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->k7:Lcom/mycompany/app/wview/WebAreaView;

    .line 35
    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    const/4 v1, 0x1

    .line 40
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Yl:Z

    .line 41
    .line 42
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$449;

    .line 43
    .line 44
    invoke-direct {v1, v0}, Lcom/mycompany/app/web/WebViewActivity$449;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 48
    .line 49
    .line 50
    :goto_1
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Xl:Z

    .line 51
    .line 52
    return-void
.end method
