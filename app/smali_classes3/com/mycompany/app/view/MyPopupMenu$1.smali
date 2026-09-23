.class Lcom/mycompany/app/view/MyPopupMenu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyPopupMenu;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyPopupMenu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyPopupMenu$1;->c:Lcom/mycompany/app/view/MyPopupMenu;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyPopupMenu$1;->c:Lcom/mycompany/app/view/MyPopupMenu;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/view/MyPopupMenu;->c:Landroid/view/View;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    :try_start_0
    new-instance v1, Landroid/widget/FrameLayout;

    .line 9
    .line 10
    iget-object v2, v0, Lcom/mycompany/app/view/MyPopupMenu;->a:Lcom/mycompany/app/main/MainActivity;

    .line 11
    .line 12
    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, v0, Lcom/mycompany/app/view/MyPopupMenu;->j:Landroid/widget/FrameLayout;

    .line 16
    .line 17
    new-instance v2, Lcom/mycompany/app/view/MyPopupMenu$2;

    .line 18
    .line 19
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MyPopupMenu$2;-><init>(Lcom/mycompany/app/view/MyPopupMenu;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Landroid/widget/PopupWindow;

    .line 26
    .line 27
    iget-object v2, v0, Lcom/mycompany/app/view/MyPopupMenu;->j:Landroid/widget/FrameLayout;

    .line 28
    .line 29
    const/4 v3, -0x1

    .line 30
    invoke-direct {v1, v2, v3, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 31
    .line 32
    .line 33
    iput-object v1, v0, Lcom/mycompany/app/view/MyPopupMenu;->v:Landroid/widget/PopupWindow;

    .line 34
    .line 35
    new-instance v2, Lcom/mycompany/app/view/MyPopupMenu$3;

    .line 36
    .line 37
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MyPopupMenu$3;-><init>(Lcom/mycompany/app/view/MyPopupMenu;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, v0, Lcom/mycompany/app/view/MyPopupMenu;->v:Landroid/widget/PopupWindow;

    .line 44
    .line 45
    iget-object v2, v0, Lcom/mycompany/app/view/MyPopupMenu;->c:Landroid/view/View;

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 49
    .line 50
    .line 51
    iget-object v1, v0, Lcom/mycompany/app/view/MyPopupMenu;->b:Landroid/os/Handler;

    .line 52
    .line 53
    if-nez v1, :cond_1

    .line 54
    .line 55
    :goto_0
    return-void

    .line 56
    :cond_1
    new-instance v2, Lcom/mycompany/app/view/MyPopupMenu$4;

    .line 57
    .line 58
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MyPopupMenu$4;-><init>(Lcom/mycompany/app/view/MyPopupMenu;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :catch_0
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 66
    .line 67
    .line 68
    return-void
.end method
