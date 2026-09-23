.class Lcom/mycompany/app/view/MyDialogBottom$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyDialogBottom;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyDialogBottom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom$7;->c:Lcom/mycompany/app/view/MyDialogBottom;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom$7;->c:Lcom/mycompany/app/view/MyDialogBottom;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogBottom;->u()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->y:Lcom/mycompany/app/behavior/MyBehaviorDialog;

    .line 12
    .line 13
    if-nez v1, :cond_5

    .line 14
    .line 15
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->u:Landroid/widget/FrameLayout;

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 25
    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    new-instance v2, Lcom/mycompany/app/behavior/MyBehaviorDialog;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const/4 v4, 0x0

    .line 36
    invoke-direct {v2, v3, v4}, Lcom/mycompany/app/behavior/MyBehaviorDialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    .line 38
    .line 39
    iput-object v2, v0, Lcom/mycompany/app/view/MyDialogBottom;->y:Lcom/mycompany/app/behavior/MyBehaviorDialog;

    .line 40
    .line 41
    iget-boolean v3, v0, Lcom/mycompany/app/view/MyDialogBottom;->z:Z

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Lcom/mycompany/app/behavior/MyBehaviorDialog;->C(Z)V

    .line 44
    .line 45
    .line 46
    iget-object v2, v0, Lcom/mycompany/app/view/MyDialogBottom;->y:Lcom/mycompany/app/behavior/MyBehaviorDialog;

    .line 47
    .line 48
    iget-boolean v3, v0, Lcom/mycompany/app/view/MyDialogBottom;->B:Z

    .line 49
    .line 50
    iput-boolean v3, v2, Lcom/mycompany/app/behavior/MyBehaviorDialog;->o:Z

    .line 51
    .line 52
    iget-boolean v3, v0, Lcom/mycompany/app/view/MyDialogBottom;->C:Z

    .line 53
    .line 54
    iget-boolean v4, v2, Lcom/mycompany/app/behavior/MyBehaviorDialog;->p:Z

    .line 55
    .line 56
    if-nez v4, :cond_3

    .line 57
    .line 58
    if-eqz v3, :cond_3

    .line 59
    .line 60
    const/4 v3, 0x0

    .line 61
    iput-boolean v3, v2, Lcom/mycompany/app/behavior/MyBehaviorDialog;->q:Z

    .line 62
    .line 63
    const/4 v3, 0x4

    .line 64
    iput v3, v2, Lcom/mycompany/app/behavior/MyBehaviorDialog;->r:I

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    const/4 v3, 0x1

    .line 68
    iput-boolean v3, v2, Lcom/mycompany/app/behavior/MyBehaviorDialog;->q:Z

    .line 69
    .line 70
    const/4 v3, 0x3

    .line 71
    iput v3, v2, Lcom/mycompany/app/behavior/MyBehaviorDialog;->r:I

    .line 72
    .line 73
    :goto_0
    iget-boolean v3, v0, Lcom/mycompany/app/view/MyDialogBottom;->D:Z

    .line 74
    .line 75
    iput-boolean v3, v2, Lcom/mycompany/app/behavior/MyBehaviorDialog;->s:Z

    .line 76
    .line 77
    iget-object v3, v0, Lcom/mycompany/app/view/MyDialogBottom;->W:Lcom/mycompany/app/behavior/MyBehaviorDialog$BottomSheetCallback;

    .line 78
    .line 79
    iget-object v2, v2, Lcom/mycompany/app/behavior/MyBehaviorDialog;->F:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-nez v4, :cond_4

    .line 86
    .line 87
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    :cond_4
    const/16 v2, 0x30

    .line 91
    .line 92
    iput v2, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->c:I

    .line 93
    .line 94
    iget-object v2, v0, Lcom/mycompany/app/view/MyDialogBottom;->y:Lcom/mycompany/app/behavior/MyBehaviorDialog;

    .line 95
    .line 96
    invoke-virtual {v1, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->b(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    .line 97
    .line 98
    .line 99
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->u:Landroid/widget/FrameLayout;

    .line 100
    .line 101
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 102
    .line 103
    .line 104
    :cond_5
    :goto_1
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 105
    .line 106
    if-nez v0, :cond_6

    .line 107
    .line 108
    return-void

    .line 109
    :cond_6
    new-instance v1, Lcom/mycompany/app/view/MyDialogBottom$7$1;

    .line 110
    .line 111
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyDialogBottom$7$1;-><init>(Lcom/mycompany/app/view/MyDialogBottom$7;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 115
    .line 116
    .line 117
    return-void
.end method
