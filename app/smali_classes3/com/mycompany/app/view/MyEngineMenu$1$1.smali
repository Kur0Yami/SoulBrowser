.class Lcom/mycompany/app/view/MyEngineMenu$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyEngineMenu$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyEngineMenu$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyEngineMenu$1$1;->c:Lcom/mycompany/app/view/MyEngineMenu$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyEngineMenu$1$1;->c:Lcom/mycompany/app/view/MyEngineMenu$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/view/MyEngineMenu$1;->c:Lcom/mycompany/app/view/MyEngineMenu;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/view/MyEngineMenu;->c:Landroid/view/View;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    :try_start_0
    new-instance v1, Landroid/widget/FrameLayout;

    .line 11
    .line 12
    iget-object v2, v0, Lcom/mycompany/app/view/MyEngineMenu;->a:Lcom/mycompany/app/main/MainActivity;

    .line 13
    .line 14
    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, v0, Lcom/mycompany/app/view/MyEngineMenu;->h:Landroid/widget/FrameLayout;

    .line 18
    .line 19
    new-instance v2, Lcom/mycompany/app/view/MyEngineMenu$2;

    .line 20
    .line 21
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MyEngineMenu$2;-><init>(Lcom/mycompany/app/view/MyEngineMenu;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Landroid/widget/PopupWindow;

    .line 28
    .line 29
    iget-object v2, v0, Lcom/mycompany/app/view/MyEngineMenu;->h:Landroid/widget/FrameLayout;

    .line 30
    .line 31
    const/4 v3, -0x1

    .line 32
    invoke-direct {v1, v2, v3, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 33
    .line 34
    .line 35
    iput-object v1, v0, Lcom/mycompany/app/view/MyEngineMenu;->p:Landroid/widget/PopupWindow;

    .line 36
    .line 37
    new-instance v2, Lcom/mycompany/app/view/MyEngineMenu$3;

    .line 38
    .line 39
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MyEngineMenu$3;-><init>(Lcom/mycompany/app/view/MyEngineMenu;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, v0, Lcom/mycompany/app/view/MyEngineMenu;->p:Landroid/widget/PopupWindow;

    .line 46
    .line 47
    iget-object v2, v0, Lcom/mycompany/app/view/MyEngineMenu;->c:Landroid/view/View;

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 51
    .line 52
    .line 53
    iget-object v1, v0, Lcom/mycompany/app/view/MyEngineMenu;->b:Landroid/os/Handler;

    .line 54
    .line 55
    if-nez v1, :cond_1

    .line 56
    .line 57
    :goto_0
    return-void

    .line 58
    :cond_1
    new-instance v2, Lcom/mycompany/app/view/MyEngineMenu$4;

    .line 59
    .line 60
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MyEngineMenu$4;-><init>(Lcom/mycompany/app/view/MyEngineMenu;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :catch_0
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyEngineMenu;->a()V

    .line 68
    .line 69
    .line 70
    return-void
.end method
