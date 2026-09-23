.class Lcom/mycompany/app/dialog/DialogViewSrc$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewSrc;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewSrc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewSrc$11;->c:Lcom/mycompany/app/dialog/DialogViewSrc;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc$11;->c:Lcom/mycompany/app/dialog/DialogViewSrc;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewSrc;->N:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    new-instance v1, Lcom/mycompany/app/web/WebSrcView;

    .line 9
    .line 10
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogViewSrc;->G:Lcom/mycompany/app/main/MainActivity;

    .line 11
    .line 12
    invoke-direct {v1, v2}, Lcom/mycompany/app/view/MyWebSafe;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogViewSrc;->O:Lcom/mycompany/app/web/WebSrcView;

    .line 16
    .line 17
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 18
    .line 19
    const/4 v3, -0x1

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    const v2, -0xdededf

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move v2, v3

    .line 27
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 28
    .line 29
    .line 30
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewSrc;->N:Landroid/widget/FrameLayout;

    .line 31
    .line 32
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogViewSrc;->O:Lcom/mycompany/app/web/WebSrcView;

    .line 33
    .line 34
    invoke-virtual {v1, v2, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 35
    .line 36
    .line 37
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 38
    .line 39
    if-nez v1, :cond_2

    .line 40
    .line 41
    :goto_1
    return-void

    .line 42
    :cond_2
    new-instance v2, Lcom/mycompany/app/dialog/DialogViewSrc$13;

    .line 43
    .line 44
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogViewSrc$13;-><init>(Lcom/mycompany/app/dialog/DialogViewSrc;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    .line 49
    .line 50
    return-void
.end method
