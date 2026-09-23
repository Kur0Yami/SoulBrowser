.class public Lcom/mycompany/app/view/MyDialogBottom;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;,
        Lcom/mycompany/app/view/MyDialogBottom$UserShowListener;,
        Lcom/mycompany/app/view/MyDialogBottom$ShowAdListener;,
        Lcom/mycompany/app/view/MyDialogBottom$BotListListener;
    }
.end annotation


# static fields
.field public static final synthetic Z:I


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:Lcom/mycompany/app/view/MyRecyclerView;

.field public G:Lcom/mycompany/app/view/MyDialogBottom$BotListListener;

.field public H:Z

.field public I:Ljava/util/concurrent/ExecutorService;

.field public J:Z

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public Q:Z

.field public R:Z

.field public S:Z

.field public T:I

.field public U:I

.field public V:Z

.field public final W:Lcom/mycompany/app/behavior/MyBehaviorDialog$BottomSheetCallback;

.field public X:Landroid/window/OnBackInvokedCallback;

.field public Y:Lcom/mycompany/app/view/MyPopupWrap;

.field public c:Z

.field public f:Lcom/mycompany/app/main/MainActivity;

.field public g:Landroid/view/View;

.field public h:Landroidx/core/view/WindowInsetsControllerCompat;

.field public i:Landroid/os/Handler;

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;

.field public q:Lcom/mycompany/app/view/MyDialogBottom$ShowAdListener;

.field public r:Landroid/content/DialogInterface$OnDismissListener;

.field public s:Lcom/mycompany/app/view/MyDiagBody;

.field public t:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public u:Landroid/widget/FrameLayout;

.field public v:Landroid/view/View;

.field public w:I

.field public x:Z

.field public y:Lcom/mycompany/app/behavior/MyBehaviorDialog;

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    new-instance v0, Lcom/mycompany/app/view/MyDialogBottom$18;

    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyDialogBottom$18;-><init>(Lcom/mycompany/app/view/MyDialogBottom;)V

    iput-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->W:Lcom/mycompany/app/behavior/MyBehaviorDialog$BottomSheetCallback;

    .line 3
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;->l(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 5
    new-instance p2, Lcom/mycompany/app/view/MyDialogBottom$18;

    invoke-direct {p2, p0}, Lcom/mycompany/app/view/MyDialogBottom$18;-><init>(Lcom/mycompany/app/view/MyDialogBottom;)V

    iput-object p2, p0, Lcom/mycompany/app/view/MyDialogBottom;->W:Lcom/mycompany/app/behavior/MyBehaviorDialog$BottomSheetCallback;

    .line 6
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;->l(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Lcom/mycompany/app/view/MyDialogBottom;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    iget-object v1, p0, Lcom/mycompany/app/view/MyDialogBottom;->r:Landroid/content/DialogInterface$OnDismissListener;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lcom/mycompany/app/view/MyDialogBottom;->r:Landroid/content/DialogInterface$OnDismissListener;

    .line 16
    .line 17
    invoke-interface {v1, p0}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->r:Landroid/content/DialogInterface$OnDismissListener;

    .line 21
    .line 22
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 25
    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupWrap;->a()V

    .line 30
    .line 31
    .line 32
    :goto_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v1}, Lcom/mycompany/app/main/MainApp;->w(Landroid/content/Context;)Lcom/mycompany/app/main/MainWebDestroy;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const/4 v2, 0x0

    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    iput-boolean v2, v1, Lcom/mycompany/app/main/MainWebDestroy;->i:Z

    .line 44
    .line 45
    const/4 v3, 0x1

    .line 46
    invoke-virtual {v1, v3}, Lcom/mycompany/app/main/MainWebDestroy;->d(Z)V

    .line 47
    .line 48
    .line 49
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/view/MyDialogBottom;->F:Lcom/mycompany/app/view/MyRecyclerView;

    .line 50
    .line 51
    if-eqz v1, :cond_4

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->F:Lcom/mycompany/app/view/MyRecyclerView;

    .line 57
    .line 58
    :cond_4
    iput-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->f:Lcom/mycompany/app/main/MainActivity;

    .line 59
    .line 60
    iput-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->g:Landroid/view/View;

    .line 61
    .line 62
    iput-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->h:Landroidx/core/view/WindowInsetsControllerCompat;

    .line 63
    .line 64
    iget-object v1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 65
    .line 66
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->R6(Landroid/os/Handler;)V

    .line 67
    .line 68
    .line 69
    iput-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 70
    .line 71
    iput-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->p:Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;

    .line 72
    .line 73
    iput-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->q:Lcom/mycompany/app/view/MyDialogBottom$ShowAdListener;

    .line 74
    .line 75
    iput-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->s:Lcom/mycompany/app/view/MyDiagBody;

    .line 76
    .line 77
    iput-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->t:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 78
    .line 79
    iput-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->u:Landroid/widget/FrameLayout;

    .line 80
    .line 81
    iput-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->v:Landroid/view/View;

    .line 82
    .line 83
    iput-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->y:Lcom/mycompany/app/behavior/MyBehaviorDialog;

    .line 84
    .line 85
    iput-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->G:Lcom/mycompany/app/view/MyDialogBottom$BotListListener;

    .line 86
    .line 87
    iput-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->I:Ljava/util/concurrent/ExecutorService;

    .line 88
    .line 89
    iput-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->X:Landroid/window/OnBackInvokedCallback;

    .line 90
    .line 91
    iput-boolean v2, p0, Lcom/mycompany/app/view/MyDialogBottom;->n:Z

    .line 92
    .line 93
    return-void
.end method

.method public static b(Lcom/mycompany/app/view/MyDialogBottom;Z)Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_2

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :cond_1
    :try_start_0
    new-instance v1, Lcom/mycompany/app/view/MyDiagBody;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    sget-boolean v2, Lcom/mycompany/app/main/MainConst;->e:Z

    .line 21
    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    iget v2, p0, Lcom/mycompany/app/view/MyDialogBottom;->K:I

    .line 25
    .line 26
    iget v3, p0, Lcom/mycompany/app/view/MyDialogBottom;->L:I

    .line 27
    .line 28
    iget v4, p0, Lcom/mycompany/app/view/MyDialogBottom;->M:I

    .line 29
    .line 30
    iget v5, p0, Lcom/mycompany/app/view/MyDialogBottom;->N:I

    .line 31
    .line 32
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 33
    .line 34
    .line 35
    :cond_2
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 36
    .line 37
    const/4 v3, -0x1

    .line 38
    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    .line 43
    .line 44
    new-instance v2, Landroid/view/View;

    .line 45
    .line 46
    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 50
    .line 51
    .line 52
    new-instance v2, Lcom/mycompany/app/view/MySizeFrame;

    .line 53
    .line 54
    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 58
    .line 59
    .line 60
    new-instance v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 61
    .line 62
    const/4 v5, 0x0

    .line 63
    invoke-direct {v4, v0, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    .line 65
    .line 66
    iget-object v5, p0, Lcom/mycompany/app/view/MyDialogBottom;->f:Lcom/mycompany/app/main/MainActivity;

    .line 67
    .line 68
    if-nez v5, :cond_3

    .line 69
    .line 70
    move v5, v3

    .line 71
    goto :goto_0

    .line 72
    :cond_3
    invoke-virtual {v5}, Lcom/mycompany/app/main/MainActivity;->b0()I

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    :goto_0
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 77
    .line 78
    invoke-direct {v6, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 79
    .line 80
    .line 81
    const/4 v5, 0x1

    .line 82
    iput v5, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 83
    .line 84
    invoke-virtual {v2, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    .line 86
    .line 87
    new-instance v6, Landroid/widget/FrameLayout;

    .line 88
    .line 89
    invoke-direct {v6, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 90
    .line 91
    .line 92
    if-eqz p1, :cond_4

    .line 93
    .line 94
    move p1, v3

    .line 95
    goto :goto_1

    .line 96
    :cond_4
    const/4 p1, -0x2

    .line 97
    :goto_1
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 98
    .line 99
    invoke-direct {v0, v3, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    .line 100
    .line 101
    .line 102
    const/16 p1, 0x50

    .line 103
    .line 104
    iput p1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->c:I

    .line 105
    .line 106
    invoke-virtual {v4, v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    .line 108
    .line 109
    iput-object v1, p0, Lcom/mycompany/app/view/MyDialogBottom;->s:Lcom/mycompany/app/view/MyDiagBody;

    .line 110
    .line 111
    iput-object v4, p0, Lcom/mycompany/app/view/MyDialogBottom;->t:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 112
    .line 113
    iput-object v6, p0, Lcom/mycompany/app/view/MyDialogBottom;->u:Landroid/widget/FrameLayout;

    .line 114
    .line 115
    new-instance p1, Lcom/mycompany/app/view/MyDialogBottom$4;

    .line 116
    .line 117
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyDialogBottom$4;-><init>(Lcom/mycompany/app/view/MyDialogBottom;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, p1}, Lcom/mycompany/app/view/MySizeFrame;->setListener(Lcom/mycompany/app/image/ImageSizeListener;)V

    .line 121
    .line 122
    .line 123
    new-instance p1, Lcom/mycompany/app/view/MyDialogBottom$5;

    .line 124
    .line 125
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyDialogBottom$5;-><init>(Lcom/mycompany/app/view/MyDialogBottom;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    .line 130
    .line 131
    iget-object p0, p0, Lcom/mycompany/app/view/MyDialogBottom;->u:Landroid/widget/FrameLayout;

    .line 132
    .line 133
    new-instance p1, Lcom/mycompany/app/view/MyDialogBottom$6;

    .line 134
    .line 135
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .line 140
    .line 141
    return v5

    .line 142
    :catch_0
    :goto_2
    const/4 p0, 0x0

    .line 143
    return p0
.end method

.method public static c(Lcom/mycompany/app/view/MyDialogBottom;Landroid/view/WindowInsets;)V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/mycompany/app/main/MainConst;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_5

    .line 6
    .line 7
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    goto/16 :goto_5

    .line 18
    .line 19
    :cond_1
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {p1, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    goto/16 :goto_5

    .line 30
    .line 31
    :cond_2
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-virtual {p1, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-nez p1, :cond_3

    .line 40
    .line 41
    goto/16 :goto_5

    .line 42
    .line 43
    :cond_3
    iget v2, v0, Landroid/graphics/Insets;->top:I

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    if-lez v2, :cond_4

    .line 47
    .line 48
    move v0, v3

    .line 49
    move v4, v0

    .line 50
    goto :goto_1

    .line 51
    :cond_4
    iget v2, v0, Landroid/graphics/Insets;->bottom:I

    .line 52
    .line 53
    if-lez v2, :cond_5

    .line 54
    .line 55
    move v0, v3

    .line 56
    move v4, v0

    .line 57
    move v3, v2

    .line 58
    move v2, v4

    .line 59
    goto :goto_1

    .line 60
    :cond_5
    iget v2, v0, Landroid/graphics/Insets;->left:I

    .line 61
    .line 62
    if-lez v2, :cond_6

    .line 63
    .line 64
    move v0, v2

    .line 65
    move v2, v3

    .line 66
    :goto_0
    move v4, v2

    .line 67
    goto :goto_1

    .line 68
    :cond_6
    iget v0, v0, Landroid/graphics/Insets;->right:I

    .line 69
    .line 70
    if-lez v0, :cond_7

    .line 71
    .line 72
    move v4, v0

    .line 73
    move v0, v3

    .line 74
    move v2, v0

    .line 75
    goto :goto_1

    .line 76
    :cond_7
    move v0, v3

    .line 77
    move v2, v0

    .line 78
    goto :goto_0

    .line 79
    :goto_1
    iget v5, v1, Landroid/graphics/Insets;->top:I

    .line 80
    .line 81
    if-lez v5, :cond_8

    .line 82
    .line 83
    move v2, v5

    .line 84
    goto :goto_3

    .line 85
    :cond_8
    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    .line 86
    .line 87
    if-lez p1, :cond_9

    .line 88
    .line 89
    :goto_2
    move v3, p1

    .line 90
    goto :goto_3

    .line 91
    :cond_9
    iget p1, v1, Landroid/graphics/Insets;->bottom:I

    .line 92
    .line 93
    if-lez p1, :cond_a

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_a
    iget p1, v1, Landroid/graphics/Insets;->left:I

    .line 97
    .line 98
    if-lez p1, :cond_b

    .line 99
    .line 100
    move v0, p1

    .line 101
    goto :goto_3

    .line 102
    :cond_b
    iget p1, v1, Landroid/graphics/Insets;->right:I

    .line 103
    .line 104
    if-lez p1, :cond_c

    .line 105
    .line 106
    move v4, p1

    .line 107
    :cond_c
    :goto_3
    iput v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->K:I

    .line 108
    .line 109
    iput v2, p0, Lcom/mycompany/app/view/MyDialogBottom;->L:I

    .line 110
    .line 111
    iput v4, p0, Lcom/mycompany/app/view/MyDialogBottom;->M:I

    .line 112
    .line 113
    iput v3, p0, Lcom/mycompany/app/view/MyDialogBottom;->N:I

    .line 114
    .line 115
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->Q:Z

    .line 116
    .line 117
    if-eqz p1, :cond_e

    .line 118
    .line 119
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->k:Z

    .line 120
    .line 121
    if-eqz p1, :cond_e

    .line 122
    .line 123
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->f:Lcom/mycompany/app/main/MainActivity;

    .line 124
    .line 125
    if-nez p1, :cond_d

    .line 126
    .line 127
    const/4 p1, -0x1

    .line 128
    goto :goto_4

    .line 129
    :cond_d
    invoke-virtual {p1}, Lcom/mycompany/app/main/MainActivity;->b0()I

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    :goto_4
    iput p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->O:I

    .line 134
    .line 135
    iput v3, p0, Lcom/mycompany/app/view/MyDialogBottom;->P:I

    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogBottom;->z()V

    .line 138
    .line 139
    .line 140
    :cond_e
    iget-object p0, p0, Lcom/mycompany/app/view/MyDialogBottom;->s:Lcom/mycompany/app/view/MyDiagBody;

    .line 141
    .line 142
    if-nez p0, :cond_f

    .line 143
    .line 144
    goto :goto_5

    .line 145
    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-ne p1, v2, :cond_10

    .line 150
    .line 151
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    if-ne p1, v3, :cond_10

    .line 156
    .line 157
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    if-ne p1, v0, :cond_10

    .line 162
    .line 163
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    if-ne p1, v4, :cond_10

    .line 168
    .line 169
    goto :goto_5

    .line 170
    :cond_10
    invoke-virtual {p0, v0, v2, v4, v3}, Landroid/view/View;->setPadding(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .line 172
    .line 173
    :catch_0
    :goto_5
    return-void
.end method

.method public static d(Lcom/mycompany/app/view/MyDialogBottom;Z)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->v:Landroid/view/View;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_1
    const/4 v0, -0x1

    .line 12
    if-eqz p1, :cond_2

    .line 13
    .line 14
    move p1, v0

    .line 15
    goto :goto_0

    .line 16
    :cond_2
    const/4 p1, -0x2

    .line 17
    :goto_0
    :try_start_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 18
    .line 19
    invoke-direct {v1, v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 20
    .line 21
    .line 22
    iget p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->w:I

    .line 23
    .line 24
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 25
    .line 26
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->u:Landroid/widget/FrameLayout;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->v:Landroid/view/View;

    .line 29
    .line 30
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->s:Lcom/mycompany/app/view/MyDiagBody;

    .line 34
    .line 35
    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x1

    .line 39
    return p0

    .line 40
    :catch_0
    :goto_1
    const/4 p0, 0x0

    .line 41
    return p0
.end method


# virtual methods
.method public final A(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->D:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->y:Lcom/mycompany/app/behavior/MyBehaviorDialog;

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-boolean v1, v0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->s:Z

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    :cond_1
    iput-object p1, v0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->t:Landroid/view/View;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 18
    .line 19
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iput-object v1, v0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->D:Ljava/lang/ref/WeakReference;

    .line 23
    .line 24
    :cond_2
    :goto_0
    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->m:Z

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->n:Z

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyDialogBottom;->o:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->o:Z

    .line 15
    .line 16
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    :goto_0
    return-void

    .line 21
    :cond_1
    new-instance v1, Lcom/mycompany/app/view/MyDialogBottom$1;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyDialogBottom$1;-><init>(Lcom/mycompany/app/view/MyDialogBottom;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->F:Lcom/mycompany/app/view/MyRecyclerView;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyDialogBottom;->H:Z

    .line 18
    .line 19
    :cond_1
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 20
    .line 21
    .line 22
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    return p1

    .line 24
    :catch_0
    return v1
.end method

.method public final e()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    return v0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupWrap;->b()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0
.end method

.method public final f(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/mycompany/app/view/MyDialogBottom;->p:Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->v:Landroid/view/View;

    .line 4
    .line 5
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p2, Lcom/mycompany/app/view/MyDialogBottom$3;

    .line 11
    .line 12
    invoke-direct {p2, p0}, Lcom/mycompany/app/view/MyDialogBottom$3;-><init>(Lcom/mycompany/app/view/MyDialogBottom;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/mycompany/app/view/MyDialogBottom;->p:Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->v:Landroid/view/View;

    .line 4
    .line 5
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p2, Lcom/mycompany/app/view/MyDialogBottom$2;

    .line 11
    .line 12
    invoke-direct {p2, p0}, Lcom/mycompany/app/view/MyDialogBottom$2;-><init>(Lcom/mycompany/app/view/MyDialogBottom;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final h()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->g:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->g:Landroid/view/View;

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->g:Landroid/view/View;

    .line 20
    .line 21
    return-object v0
.end method

.method public final i()Landroidx/core/view/WindowInsetsControllerCompat;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->h:Landroidx/core/view/WindowInsetsControllerCompat;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogBottom;->h()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->r4(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->h:Landroidx/core/view/WindowInsetsControllerCompat;

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->h:Landroidx/core/view/WindowInsetsControllerCompat;

    .line 20
    .line 21
    return-object v0
.end method

.method public final j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->l:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->m:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->n:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    return v0
.end method

.method public final k()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogBottom;->u()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogBottom;->h()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogBottom;->i()Landroidx/core/view/WindowInsetsControllerCompat;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-boolean v3, p0, Lcom/mycompany/app/view/MyDialogBottom;->j:Z

    .line 22
    .line 23
    iget-boolean v4, p0, Lcom/mycompany/app/view/MyDialogBottom;->k:Z

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 29
    .line 30
    const/16 v6, 0x1e

    .line 31
    .line 32
    if-ge v5, v6, :cond_6

    .line 33
    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-nez v1, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-nez v2, :cond_3

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-nez v3, :cond_4

    .line 55
    .line 56
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 57
    .line 58
    or-int/lit16 v3, v3, 0x400

    .line 59
    .line 60
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 61
    .line 62
    or-int/lit8 v5, v5, 0x4

    .line 63
    .line 64
    :cond_4
    if-nez v4, :cond_5

    .line 65
    .line 66
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 67
    .line 68
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 69
    .line 70
    or-int/lit16 v5, v5, 0x1002

    .line 71
    .line 72
    :cond_5
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_6
    if-nez v2, :cond_7

    .line 80
    .line 81
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->r4(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    if-nez v2, :cond_7

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_7
    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsControllerCompat;->f()V

    .line 89
    .line 90
    .line 91
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 92
    .line 93
    if-nez v0, :cond_8

    .line 94
    .line 95
    return-void

    .line 96
    :cond_8
    new-instance v1, Lcom/mycompany/app/view/MyDialogBottom$14;

    .line 97
    .line 98
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyDialogBottom$14;-><init>(Lcom/mycompany/app/view/MyDialogBottom;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method public final l(Landroid/content/Context;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->m:Z

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->j:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->k:Z

    .line 9
    .line 10
    instance-of v1, p1, Lcom/mycompany/app/main/MainActivity;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    move-object v1, p1

    .line 15
    check-cast v1, Lcom/mycompany/app/main/MainActivity;

    .line 16
    .line 17
    iput-object v1, p0, Lcom/mycompany/app/view/MyDialogBottom;->f:Lcom/mycompany/app/main/MainActivity;

    .line 18
    .line 19
    iget-boolean v2, v1, Lcom/mycompany/app/main/MainActivity;->t0:Z

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    iget-boolean v1, v1, Lcom/mycompany/app/main/MainActivity;->v0:Z

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    sget-boolean v1, Lcom/mycompany/app/pref/PrefWeb;->t:Z

    .line 28
    .line 29
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyDialogBottom;->j:Z

    .line 30
    .line 31
    sget-boolean v1, Lcom/mycompany/app/pref/PrefWeb;->u:Z

    .line 32
    .line 33
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyDialogBottom;->k:Z

    .line 34
    .line 35
    :cond_0
    new-instance v1, Landroid/os/Handler;

    .line 36
    .line 37
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 45
    .line 46
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->z:Z

    .line 47
    .line 48
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->A:Z

    .line 49
    .line 50
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->B:Z

    .line 51
    .line 52
    const/high16 v1, 0x41200000    # 10.0f

    .line 53
    .line 54
    invoke-static {p1, v1}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    float-to-int v1, v1

    .line 59
    iput v1, p0, Lcom/mycompany/app/view/MyDialogBottom;->w:I

    .line 60
    .line 61
    invoke-static {p1}, Lcom/mycompany/app/main/MainApp;->w(Landroid/content/Context;)Lcom/mycompany/app/main/MainWebDestroy;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-eqz p1, :cond_1

    .line 66
    .line 67
    iput-boolean v0, p1, Lcom/mycompany/app/main/MainWebDestroy;->i:Z

    .line 68
    .line 69
    :cond_1
    return-void
.end method

.method public final m()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/mycompany/app/main/MainConst;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->X:Landroid/window/OnBackInvokedCallback;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    new-instance v0, Lcom/mycompany/app/view/MyDialogBottom$19;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyDialogBottom$19;-><init>(Lcom/mycompany/app/view/MyDialogBottom;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->X:Landroid/window/OnBackInvokedCallback;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/app/Dialog;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/mycompany/app/view/MyDialogBottom;->X:Landroid/window/OnBackInvokedCallback;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-interface {v0, v2, v1}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final n()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 v2, 0x1e

    .line 11
    .line 12
    if-ge v1, v2, :cond_1

    .line 13
    .line 14
    const/16 v1, 0x10

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogBottom;->h()Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    new-instance v2, Lcom/mycompany/app/view/MyDialogBottom$12;

    .line 28
    .line 29
    invoke-direct {v2, p0}, Lcom/mycompany/app/view/MyDialogBottom$12;-><init>(Lcom/mycompany/app/view/MyDialogBottom;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 33
    .line 34
    .line 35
    sget-boolean v1, Lcom/mycompany/app/main/MainConst;->e:Z

    .line 36
    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->j7(Landroid/view/Window;Z)V

    .line 41
    .line 42
    .line 43
    :cond_3
    :goto_0
    return-void
.end method

.method public final o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->J:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->m:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->n:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogBottom;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogBottom;->r()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->l:Z

    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final p()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->f:Lcom/mycompany/app/main/MainActivity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->N5(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainActivity;->h0()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public final q()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->f:Lcom/mycompany/app/main/MainActivity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->X5(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    iget-boolean v0, v0, Lcom/mycompany/app/main/MainActivity;->B0:Z

    .line 15
    .line 16
    return v0
.end method

.method public r()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogBottom;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final s(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->I:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/mycompany/app/main/MainApp;->i(Landroid/content/Context;)Ljava/util/concurrent/ExecutorService;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iput-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->I:Ljava/util/concurrent/ExecutorService;

    .line 29
    .line 30
    :cond_2
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    :catch_0
    return-void
.end method

.method public final setCancelable(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->z:Z

    .line 5
    .line 6
    if-eq v0, p1, :cond_0

    .line 7
    .line 8
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->z:Z

    .line 9
    .line 10
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->y:Lcom/mycompany/app/behavior/MyBehaviorDialog;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/mycompany/app/behavior/MyBehaviorDialog;->C(Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final setCanceledOnTouchOutside(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->z:Z

    .line 8
    .line 9
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->A:Z

    .line 10
    .line 11
    return-void
.end method

.method public final setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->r:Landroid/content/DialogInterface$OnDismissListener;

    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final show()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogBottom;->u()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    new-instance v1, Lcom/mycompany/app/view/MyDialogBottom$7;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyDialogBottom$7;-><init>(Lcom/mycompany/app/view/MyDialogBottom;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final t(Lcom/mycompany/app/view/MyRecyclerView;Lcom/mycompany/app/view/MyDialogBottom$BotListListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->F:Lcom/mycompany/app/view/MyRecyclerView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/mycompany/app/view/MyDialogBottom;->G:Lcom/mycompany/app/view/MyDialogBottom$BotListListener;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p2, Lcom/mycompany/app/view/MyDialogBottom$17;

    .line 9
    .line 10
    invoke-direct {p2, p0}, Lcom/mycompany/app/view/MyDialogBottom$17;-><init>(Lcom/mycompany/app/view/MyDialogBottom;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->j(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final u()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->m:Z

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->n:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v1, Lcom/mycompany/app/view/MyDialogBottom$16;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyDialogBottom$16;-><init>(Lcom/mycompany/app/view/MyDialogBottom;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final v()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogBottom;->u()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    new-instance v1, Lcom/mycompany/app/view/MyDialogBottom$15;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyDialogBottom$15;-><init>(Lcom/mycompany/app/view/MyDialogBottom;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catch_0
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogBottom;->u()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final w()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogBottom;->u()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyDialogBottom;->Q:Z

    .line 10
    .line 11
    if-eqz v1, :cond_5

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyDialogBottom;->k:Z

    .line 14
    .line 15
    if-eqz v1, :cond_5

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogBottom;->u()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    sget-boolean v0, Lcom/mycompany/app/main/MainConst;->e:Z

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->f:Lcom/mycompany/app/main/MainActivity;

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    const/4 v0, -0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainActivity;->b0()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    :goto_0
    iput v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->O:I

    .line 38
    .line 39
    :cond_3
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogBottom;->z()V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 43
    .line 44
    if-nez v0, :cond_4

    .line 45
    .line 46
    return-void

    .line 47
    :cond_4
    new-instance v1, Lcom/mycompany/app/view/MyDialogBottom$13;

    .line 48
    .line 49
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyDialogBottom$13;-><init>(Lcom/mycompany/app/view/MyDialogBottom;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_5
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->j:Z

    .line 57
    .line 58
    if-eqz v0, :cond_7

    .line 59
    .line 60
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->k:Z

    .line 61
    .line 62
    if-nez v0, :cond_6

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_6
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogBottom;->v()V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogBottom;->k()V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final x(IIZZZ)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->Q:Z

    .line 3
    .line 4
    iput-boolean p3, p0, Lcom/mycompany/app/view/MyDialogBottom;->R:Z

    .line 5
    .line 6
    iput-boolean p4, p0, Lcom/mycompany/app/view/MyDialogBottom;->S:Z

    .line 7
    .line 8
    iput p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->T:I

    .line 9
    .line 10
    iput p2, p0, Lcom/mycompany/app/view/MyDialogBottom;->U:I

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/mycompany/app/view/MyDialogBottom;->V:Z

    .line 13
    .line 14
    return-void
.end method

.method public final y(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->B:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->y:Lcom/mycompany/app/behavior/MyBehaviorDialog;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput-boolean p1, v0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->o:Z

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public final z()V
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_6

    .line 10
    .line 11
    :cond_0
    const/16 v2, 0x1a

    .line 12
    .line 13
    const/high16 v3, -0x1000000

    .line 14
    .line 15
    if-lt v0, v2, :cond_4

    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->V:Z

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const v0, -0xdededf

    .line 26
    .line 27
    .line 28
    :goto_0
    move v3, v0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 v0, -0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_3
    const v3, -0x70708

    .line 38
    .line 39
    .line 40
    :cond_4
    :goto_1
    iget v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->U:I

    .line 41
    .line 42
    if-eqz v0, :cond_5

    .line 43
    .line 44
    invoke-static {v3, v0}, Lcom/mycompany/app/main/MainUtil;->q1(II)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    :cond_5
    sget-boolean v0, Lcom/mycompany/app/main/MainConst;->e:Z

    .line 49
    .line 50
    if-eqz v0, :cond_d

    .line 51
    .line 52
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->s:Lcom/mycompany/app/view/MyDiagBody;

    .line 53
    .line 54
    if-nez v0, :cond_6

    .line 55
    .line 56
    goto :goto_6

    .line 57
    :cond_6
    iget v1, p0, Lcom/mycompany/app/view/MyDialogBottom;->O:I

    .line 58
    .line 59
    iget v2, p0, Lcom/mycompany/app/view/MyDialogBottom;->P:I

    .line 60
    .line 61
    iget v4, v0, Lcom/mycompany/app/view/MyDiagBody;->h:I

    .line 62
    .line 63
    const/4 v5, 0x1

    .line 64
    if-ne v4, v1, :cond_8

    .line 65
    .line 66
    iget v4, v0, Lcom/mycompany/app/view/MyDiagBody;->i:I

    .line 67
    .line 68
    if-eq v4, v2, :cond_7

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_7
    const/4 v1, 0x0

    .line 72
    goto :goto_3

    .line 73
    :cond_8
    :goto_2
    iput v1, v0, Lcom/mycompany/app/view/MyDiagBody;->h:I

    .line 74
    .line 75
    iput v2, v0, Lcom/mycompany/app/view/MyDiagBody;->i:I

    .line 76
    .line 77
    if-eqz v1, :cond_c

    .line 78
    .line 79
    if-nez v2, :cond_9

    .line 80
    .line 81
    goto :goto_5

    .line 82
    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDiagBody;->a(II)V

    .line 91
    .line 92
    .line 93
    move v1, v5

    .line 94
    :goto_3
    iget v2, v0, Lcom/mycompany/app/view/MyDiagBody;->c:I

    .line 95
    .line 96
    if-eq v2, v3, :cond_b

    .line 97
    .line 98
    iput v3, v0, Lcom/mycompany/app/view/MyDiagBody;->c:I

    .line 99
    .line 100
    iget-object v1, v0, Lcom/mycompany/app/view/MyDiagBody;->f:Landroid/graphics/Paint;

    .line 101
    .line 102
    if-nez v1, :cond_a

    .line 103
    .line 104
    new-instance v1, Landroid/graphics/Paint;

    .line 105
    .line 106
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 107
    .line 108
    .line 109
    iput-object v1, v0, Lcom/mycompany/app/view/MyDiagBody;->f:Landroid/graphics/Paint;

    .line 110
    .line 111
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 112
    .line 113
    .line 114
    iget-object v1, v0, Lcom/mycompany/app/view/MyDiagBody;->f:Landroid/graphics/Paint;

    .line 115
    .line 116
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 117
    .line 118
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 119
    .line 120
    .line 121
    :cond_a
    iget-object v1, v0, Lcom/mycompany/app/view/MyDiagBody;->f:Landroid/graphics/Paint;

    .line 122
    .line 123
    iget v2, v0, Lcom/mycompany/app/view/MyDiagBody;->c:I

    .line 124
    .line 125
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_b
    move v5, v1

    .line 130
    :goto_4
    if-eqz v5, :cond_e

    .line 131
    .line 132
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :cond_c
    :goto_5
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :cond_d
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->O2(Landroid/view/Window;)I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eq v0, v3, :cond_e

    .line 145
    .line 146
    invoke-static {v1, v3}, Lcom/mycompany/app/main/MainUtil;->t7(Landroid/view/Window;I)V

    .line 147
    .line 148
    .line 149
    :cond_e
    :goto_6
    return-void
.end method
