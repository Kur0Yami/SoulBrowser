.class Lcom/mycompany/app/view/MySnackbar$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MySnackbar;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MySnackbar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MySnackbar$14;->c:Lcom/mycompany/app/view/MySnackbar;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar$14;->c:Lcom/mycompany/app/view/MySnackbar;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->s:Landroid/view/ViewGroup;

    .line 4
    .line 5
    if-eqz v1, :cond_4

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/view/MySnackbar;->t:Lcom/mycompany/app/view/MySnackSub;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    :try_start_0
    instance-of v2, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 13
    .line 14
    const/16 v3, 0x50

    .line 15
    .line 16
    const/4 v4, -0x2

    .line 17
    const/4 v5, -0x1

    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    new-instance v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 21
    .line 22
    invoke-direct {v1, v5, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    .line 23
    .line 24
    .line 25
    iput v3, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->c:I

    .line 26
    .line 27
    iget-object v2, v0, Lcom/mycompany/app/view/MySnackbar;->p:Lcom/google/android/material/appbar/AppBarLayout;

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    sget-boolean v2, Lcom/mycompany/app/pref/PrefWeb;->w:Z

    .line 32
    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    new-instance v2, Lcom/mycompany/app/behavior/MyBehaviorSnack;

    .line 36
    .line 37
    iget-object v3, v0, Lcom/mycompany/app/view/MySnackbar;->g:Landroid/content/Context;

    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    invoke-direct {v2, v3, v4}, Lcom/mycompany/app/behavior/MyBehaviorSnack;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    .line 42
    .line 43
    iget v3, v0, Lcom/mycompany/app/view/MySnackbar;->q:I

    .line 44
    .line 45
    iput v3, v2, Lcom/mycompany/app/behavior/MyBehaviorSnack;->c:I

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->b(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-object v2, v0, Lcom/mycompany/app/view/MySnackbar;->s:Landroid/view/ViewGroup;

    .line 51
    .line 52
    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    instance-of v2, v1, Landroid/widget/FrameLayout;

    .line 57
    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 61
    .line 62
    invoke-direct {v1, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 63
    .line 64
    .line 65
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 66
    .line 67
    iget-object v2, v0, Lcom/mycompany/app/view/MySnackbar;->s:Landroid/view/ViewGroup;

    .line 68
    .line 69
    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    instance-of v1, v1, Landroid/widget/RelativeLayout;

    .line 74
    .line 75
    if-eqz v1, :cond_4

    .line 76
    .line 77
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 78
    .line 79
    invoke-direct {v1, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 80
    .line 81
    .line 82
    const/16 v2, 0xc

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 85
    .line 86
    .line 87
    iget-object v2, v0, Lcom/mycompany/app/view/MySnackbar;->s:Landroid/view/ViewGroup;

    .line 88
    .line 89
    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    .line 91
    .line 92
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->s:Landroid/view/ViewGroup;

    .line 93
    .line 94
    new-instance v2, Lcom/mycompany/app/view/MySnackbar$15;

    .line 95
    .line 96
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MySnackbar$15;-><init>(Lcom/mycompany/app/view/MySnackbar;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .line 101
    .line 102
    :catch_0
    :cond_4
    :goto_1
    return-void
.end method
