.class public Lcom/mycompany/app/view/MyDialogNormal;
.super Landroid/app/Dialog;
.source "SourceFile"


# static fields
.field public static final synthetic v:I


# instance fields
.field public c:Z

.field public f:Lcom/mycompany/app/main/MainActivity;

.field public g:Landroid/view/View;

.field public h:Landroidx/core/view/WindowInsetsControllerCompat;

.field public i:Landroid/os/Handler;

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;

.field public o:Lcom/mycompany/app/view/MyDialogBottom$UserShowListener;

.field public p:Landroid/content/DialogInterface$OnDismissListener;

.field public q:Landroid/view/View;

.field public r:Ljava/util/concurrent/ExecutorService;

.field public s:Z

.field public t:Landroid/window/OnBackInvokedCallback;

.field public u:Lcom/mycompany/app/view/MyPopupWrap;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p0, Lcom/mycompany/app/view/MyDialogNormal;->c:Z

    .line 6
    .line 7
    iput-boolean p2, p0, Lcom/mycompany/app/view/MyDialogNormal;->k:Z

    .line 8
    .line 9
    instance-of v0, p1, Lcom/mycompany/app/main/MainActivity;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    check-cast v0, Lcom/mycompany/app/main/MainActivity;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->f:Lcom/mycompany/app/main/MainActivity;

    .line 17
    .line 18
    :cond_0
    new-instance v0, Landroid/os/Handler;

    .line 19
    .line 20
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/mycompany/app/main/MainApp;->w(Landroid/content/Context;)Lcom/mycompany/app/main/MainWebDestroy;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    iput-boolean p2, p1, Lcom/mycompany/app/main/MainWebDestroy;->i:Z

    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public static a(Lcom/mycompany/app/view/MyDialogNormal;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

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
    iget-object v1, p0, Lcom/mycompany/app/view/MyDialogNormal;->p:Landroid/content/DialogInterface$OnDismissListener;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lcom/mycompany/app/view/MyDialogNormal;->p:Landroid/content/DialogInterface$OnDismissListener;

    .line 16
    .line 17
    invoke-interface {v1, p0}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->p:Landroid/content/DialogInterface$OnDismissListener;

    .line 21
    .line 22
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/mycompany/app/view/MyDialogNormal;->u:Lcom/mycompany/app/view/MyPopupWrap;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->u:Lcom/mycompany/app/view/MyPopupWrap;

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
    iput-object v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->f:Lcom/mycompany/app/main/MainActivity;

    .line 50
    .line 51
    iput-object v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->g:Landroid/view/View;

    .line 52
    .line 53
    iput-object v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->h:Landroidx/core/view/WindowInsetsControllerCompat;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 56
    .line 57
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->R6(Landroid/os/Handler;)V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 61
    .line 62
    iput-object v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->n:Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;

    .line 63
    .line 64
    iput-object v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->o:Lcom/mycompany/app/view/MyDialogBottom$UserShowListener;

    .line 65
    .line 66
    iput-object v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->q:Landroid/view/View;

    .line 67
    .line 68
    iput-object v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->r:Ljava/util/concurrent/ExecutorService;

    .line 69
    .line 70
    iput-object v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->t:Landroid/window/OnBackInvokedCallback;

    .line 71
    .line 72
    iput-boolean v2, p0, Lcom/mycompany/app/view/MyDialogNormal;->l:Z

    .line 73
    .line 74
    return-void
.end method

.method public static b(Lcom/mycompany/app/view/MyDialogNormal;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogNormal;->n()V

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
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    new-instance v1, Lcom/mycompany/app/view/MyDialogNormal$6;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyDialogNormal$6;-><init>(Lcom/mycompany/app/view/MyDialogNormal;)V

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
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogNormal;->n()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public static c(Lcom/mycompany/app/view/MyDialogNormal;Landroid/view/WindowInsets;)V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/mycompany/app/main/MainConst;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_4

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
    goto/16 :goto_4

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
    goto/16 :goto_4

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
    goto/16 :goto_4

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
    iget-object p0, p0, Lcom/mycompany/app/view/MyDialogNormal;->q:Landroid/view/View;

    .line 108
    .line 109
    if-nez p0, :cond_d

    .line 110
    .line 111
    goto :goto_4

    .line 112
    :cond_d
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-ne p1, v2, :cond_e

    .line 117
    .line 118
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-ne p1, v3, :cond_e

    .line 123
    .line 124
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-ne p1, v0, :cond_e

    .line 129
    .line 130
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-ne p1, v4, :cond_e

    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_e
    invoke-virtual {p0, v0, v2, v4, v3}, Landroid/view/View;->setPadding(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .line 139
    .line 140
    :catch_0
    :goto_4
    return-void
.end method

.method public static d(Lcom/mycompany/app/view/MyDialogNormal;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->c:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->q:Landroid/view/View;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :goto_0
    return v1

    .line 12
    :cond_1
    :try_start_0
    invoke-super {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :catch_0
    return v1
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->c:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->k:Z

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->l:Z

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyDialogNormal;->m:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->m:Z

    .line 15
    .line 16
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    :goto_0
    return-void

    .line 21
    :cond_1
    new-instance v1, Lcom/mycompany/app/view/MyDialogNormal$1;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyDialogNormal$1;-><init>(Lcom/mycompany/app/view/MyDialogNormal;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final e()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->u:Lcom/mycompany/app/view/MyPopupWrap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/mycompany/app/view/MyDialogNormal;->u:Lcom/mycompany/app/view/MyPopupWrap;

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

.method public final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->u:Lcom/mycompany/app/view/MyPopupWrap;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    new-instance v1, Lcom/mycompany/app/view/MyDialogNormal$9;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyDialogNormal$9;-><init>(Lcom/mycompany/app/view/MyDialogNormal;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/mycompany/app/view/MyDialogNormal;->n:Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/mycompany/app/view/MyDialogNormal;->q:Landroid/view/View;

    .line 4
    .line 5
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p2, Lcom/mycompany/app/view/MyDialogNormal$2;

    .line 11
    .line 12
    invoke-direct {p2, p0}, Lcom/mycompany/app/view/MyDialogNormal$2;-><init>(Lcom/mycompany/app/view/MyDialogNormal;)V

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
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->g:Landroid/view/View;

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
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->g:Landroid/view/View;

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
    iput-object v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->g:Landroid/view/View;

    .line 20
    .line 21
    return-object v0
.end method

.method public final i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->j:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->k:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->l:Z

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

.method public final j()V
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
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->t:Landroid/window/OnBackInvokedCallback;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    new-instance v0, Lcom/mycompany/app/view/MyDialogNormal$8;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyDialogNormal$8;-><init>(Lcom/mycompany/app/view/MyDialogNormal;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->t:Landroid/window/OnBackInvokedCallback;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/app/Dialog;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/mycompany/app/view/MyDialogNormal;->t:Landroid/window/OnBackInvokedCallback;

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

.method public final k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->s:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->k:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->l:Z

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

.method public l()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogNormal;->e()Z

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
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogNormal;->dismiss()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final m(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->r:Ljava/util/concurrent/ExecutorService;

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
    iput-object v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->r:Ljava/util/concurrent/ExecutorService;

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

.method public final n()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->c:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->k:Z

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->l:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v1, Lcom/mycompany/app/view/MyDialogNormal$7;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyDialogNormal$7;-><init>(Lcom/mycompany/app/view/MyDialogNormal;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogNormal;->e()Z

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
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogNormal;->l()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyDialogNormal;->j:Z

    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyDialogNormal;->p:Landroid/content/DialogInterface$OnDismissListener;

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
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogNormal;->n()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    new-instance v1, Lcom/mycompany/app/view/MyDialogNormal$3;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyDialogNormal$3;-><init>(Lcom/mycompany/app/view/MyDialogNormal;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method
