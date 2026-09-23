.class Lcom/mycompany/app/web/WebViewActivity$468;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$468;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$468;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->B3:Lcom/mycompany/app/quick/QuickControl;

    .line 8
    .line 9
    if-eqz v2, :cond_1

    .line 10
    .line 11
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v3, -0x1

    .line 17
    invoke-virtual {v1, v2, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 18
    .line 19
    .line 20
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 21
    .line 22
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->B3:Lcom/mycompany/app/quick/QuickControl;

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lcom/mycompany/app/web/WebNestView;->setQuickControl(Lcom/mycompany/app/quick/QuickControl;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 28
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->em:Z

    .line 29
    .line 30
    return-void
.end method
