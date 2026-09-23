.class Lcom/mycompany/app/web/WebViewActivity$613;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$613;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$613;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Za:Lcom/mycompany/app/wview/WebTtsView;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iput-boolean v2, v1, Lcom/mycompany/app/wview/WebTtsView;->c:Z

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/mycompany/app/wview/WebTtsView;->f()V

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    iput-object v2, v1, Lcom/mycompany/app/wview/WebTtsView;->f:Landroid/content/Context;

    .line 15
    .line 16
    iput-object v2, v1, Lcom/mycompany/app/wview/WebTtsView;->g:Lcom/mycompany/app/wview/WebFltView$FltViewListener;

    .line 17
    .line 18
    iput-object v2, v1, Lcom/mycompany/app/wview/WebTtsView;->k:Landroid/graphics/Paint;

    .line 19
    .line 20
    iput-object v2, v1, Lcom/mycompany/app/wview/WebTtsView;->o:Landroid/graphics/Paint;

    .line 21
    .line 22
    iput-object v2, v1, Lcom/mycompany/app/wview/WebTtsView;->t:Landroid/graphics/Paint;

    .line 23
    .line 24
    iput-object v2, v1, Lcom/mycompany/app/wview/WebTtsView;->z:Landroid/graphics/RectF;

    .line 25
    .line 26
    iput-object v2, v1, Lcom/mycompany/app/wview/WebTtsView;->A:Landroid/graphics/Paint;

    .line 27
    .line 28
    iput-object v2, v1, Lcom/mycompany/app/wview/WebTtsView;->T:Landroid/graphics/Rect;

    .line 29
    .line 30
    iput-object v2, v1, Lcom/mycompany/app/wview/WebTtsView;->U:Ljava/util/ArrayList;

    .line 31
    .line 32
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Za:Lcom/mycompany/app/wview/WebTtsView;

    .line 37
    .line 38
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Za:Lcom/mycompany/app/wview/WebTtsView;

    .line 42
    .line 43
    :cond_1
    return-void
.end method
