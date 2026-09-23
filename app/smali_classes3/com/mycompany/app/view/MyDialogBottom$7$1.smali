.class Lcom/mycompany/app/view/MyDialogBottom$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyDialogBottom$7;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyDialogBottom$7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom$7$1;->c:Lcom/mycompany/app/view/MyDialogBottom$7;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom$7$1;->c:Lcom/mycompany/app/view/MyDialogBottom$7;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom$7;->c:Lcom/mycompany/app/view/MyDialogBottom;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogBottom;->u()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->u:Landroid/widget/FrameLayout;

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    new-instance v2, Lcom/mycompany/app/view/MyDialogBottom$8;

    .line 19
    .line 20
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MyDialogBottom$8;-><init>(Lcom/mycompany/app/view/MyDialogBottom;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->z(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    new-instance v1, Lcom/mycompany/app/view/MyDialogBottom$7$1$1;

    .line 32
    .line 33
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyDialogBottom$7$1$1;-><init>(Lcom/mycompany/app/view/MyDialogBottom$7$1;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    return-void
.end method
