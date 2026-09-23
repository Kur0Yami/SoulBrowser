.class public Lcom/mycompany/app/dialog/DialogWebBookDir;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogWebBookDir$DialogTask;
    }
.end annotation


# instance fields
.field public a0:Landroid/content/Context;

.field public b0:Lcom/mycompany/app/dialog/DialogWebBookMove$BookMoveListener;

.field public c0:Lcom/mycompany/app/view/MyDialogLinear;

.field public d0:Lcom/mycompany/app/view/MyEditText;

.field public e0:Lcom/mycompany/app/view/MyLineText;

.field public f0:Ljava/lang/String;

.field public g0:Lcom/mycompany/app/dialog/DialogWebBookDir$DialogTask;

.field public h0:Z


# direct methods
.method public static B(Lcom/mycompany/app/dialog/DialogWebBookDir;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookDir;->a0:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v1, 0x1

    .line 7
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->q(Landroid/content/Context;I)Lcom/mycompany/app/view/MyDialogLinear;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/high16 v3, 0x42900000    # 72.0f

    .line 12
    .line 13
    invoke-static {v0, v3}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    float-to-int v3, v3

    .line 18
    new-instance v4, Lcom/mycompany/app/view/MyEditText;

    .line 19
    .line 20
    invoke-direct {v4, v0}, Lcom/mycompany/app/view/MyEditText;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    const/16 v5, 0x10

    .line 24
    .line 25
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 29
    .line 30
    .line 31
    const/4 v5, 0x3

    .line 32
    invoke-virtual {v4, v5}, Landroid/view/View;->setTextDirection(I)V

    .line 33
    .line 34
    .line 35
    const/high16 v5, 0x41800000    # 16.0f

    .line 36
    .line 37
    invoke-virtual {v4, v1, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 38
    .line 39
    .line 40
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 41
    .line 42
    const/16 v7, 0x1d

    .line 43
    .line 44
    if-lt v6, v7, :cond_1

    .line 45
    .line 46
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->edit_cursor:I

    .line 47
    .line 48
    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setTextCursorDrawable(I)V

    .line 49
    .line 50
    .line 51
    :cond_1
    const/high16 v6, 0x10000000

    .line 52
    .line 53
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 54
    .line 55
    .line 56
    const/4 v6, 0x0

    .line 57
    invoke-virtual {v4, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 58
    .line 59
    .line 60
    const/4 v6, 0x0

    .line 61
    invoke-virtual {v4, v6}, Lcom/mycompany/app/view/MyEditText;->b(I)V

    .line 62
    .line 63
    .line 64
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 65
    .line 66
    const/4 v7, -0x1

    .line 67
    invoke-direct {v6, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 68
    .line 69
    .line 70
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 71
    .line 72
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 73
    .line 74
    .line 75
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 76
    .line 77
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    .line 82
    .line 83
    const/16 v3, 0x11

    .line 84
    .line 85
    invoke-static {v0, v3, v1, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->r(Landroid/content/Context;IIF)Lcom/mycompany/app/view/MyLineText;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    sget v1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyLineText;->t(I)V

    .line 92
    .line 93
    .line 94
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 95
    .line 96
    invoke-virtual {v2, v0, v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 97
    .line 98
    .line 99
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogWebBookDir;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 100
    .line 101
    iput-object v4, p0, Lcom/mycompany/app/dialog/DialogWebBookDir;->d0:Lcom/mycompany/app/view/MyEditText;

    .line 102
    .line 103
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookDir;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 104
    .line 105
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 106
    .line 107
    if-nez v0, :cond_2

    .line 108
    .line 109
    :goto_0
    return-void

    .line 110
    :cond_2
    new-instance v1, Lcom/mycompany/app/dialog/DialogWebBookDir$2;

    .line 111
    .line 112
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogWebBookDir$2;-><init>(Lcom/mycompany/app/dialog/DialogWebBookDir;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method public static C(Lcom/mycompany/app/dialog/DialogWebBookDir;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookDir;->d0:Lcom/mycompany/app/view/MyEditText;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x1

    .line 7
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogWebBookDir;->a0:Landroid/content/Context;

    .line 18
    .line 19
    sget v0, Lnet/kaki87/soul2/testing/R$string;->input_name:I

    .line 20
    .line 21
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogWebBookDir;->a0:Landroid/content/Context;

    .line 26
    .line 27
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogWebBookDir;->f0:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v2, v3, v0}, Lcom/mycompany/app/db/book/DbBookWeb;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogWebBookDir;->a0:Landroid/content/Context;

    .line 36
    .line 37
    sget v0, Lnet/kaki87/soul2/testing/R$string;->exist_name:I

    .line 38
    .line 39
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogWebBookDir;->g0:Lcom/mycompany/app/dialog/DialogWebBookDir$DialogTask;

    .line 44
    .line 45
    if-eqz v2, :cond_3

    .line 46
    .line 47
    iput-boolean v1, v2, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 48
    .line 49
    :cond_3
    const/4 v1, 0x0

    .line 50
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookDir;->g0:Lcom/mycompany/app/dialog/DialogWebBookDir$DialogTask;

    .line 51
    .line 52
    new-instance v1, Lcom/mycompany/app/dialog/DialogWebBookDir$DialogTask;

    .line 53
    .line 54
    invoke-direct {v1, p0, v0}, Lcom/mycompany/app/dialog/DialogWebBookDir$DialogTask;-><init>(Lcom/mycompany/app/dialog/DialogWebBookDir;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookDir;->g0:Lcom/mycompany/app/dialog/DialogWebBookDir$DialogTask;

    .line 58
    .line 59
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogWebBookDir;->a0:Landroid/content/Context;

    .line 60
    .line 61
    invoke-virtual {v1, p0}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public static D(Lcom/mycompany/app/dialog/DialogWebBookDir;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookDir;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const v1, -0x50506

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    invoke-virtual {p0, v3}, Lcom/mycompany/app/view/MyDialogBottom;->setCanceledOnTouchOutside(Z)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookDir;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 17
    .line 18
    invoke-virtual {p1, v3, v3, v2, v3}, Lcom/mycompany/app/view/MyDialogLinear;->e(IIZZ)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookDir;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 22
    .line 23
    invoke-virtual {p1, v2}, Landroid/view/View;->setActivated(Z)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookDir;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 27
    .line 28
    sget v0, Lnet/kaki87/soul2/testing/R$string;->cancel:I

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookDir;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 34
    .line 35
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/high16 v1, -0x1000000

    .line 41
    .line 42
    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogWebBookDir;->d0:Lcom/mycompany/app/view/MyEditText;

    .line 46
    .line 47
    invoke-virtual {p0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/mycompany/app/view/MyDialogLinear;->e(IIZZ)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookDir;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 55
    .line 56
    sget v0, Lnet/kaki87/soul2/testing/R$string;->create_folder:I

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookDir;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 62
    .line 63
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 64
    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    const v1, -0xe19938

    .line 69
    .line 70
    .line 71
    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookDir;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 75
    .line 76
    invoke-virtual {p1, v3}, Landroid/view/View;->setActivated(Z)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookDir;->d0:Lcom/mycompany/app/view/MyEditText;

    .line 80
    .line 81
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v2}, Lcom/mycompany/app/view/MyDialogBottom;->setCanceledOnTouchOutside(Z)V

    .line 85
    .line 86
    .line 87
    return-void
.end method


# virtual methods
.method public final E()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookDir;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookDir;->g0:Lcom/mycompany/app/dialog/DialogWebBookDir$DialogTask;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {v0, v1, v1, v2, v1}, Lcom/mycompany/app/view/MyDialogLinear;->e(IIZZ)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookDir;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookDir;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroid/view/View;->setActivated(Z)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookDir;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 26
    .line 27
    sget v1, Lnet/kaki87/soul2/testing/R$string;->canceling:I

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookDir;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 33
    .line 34
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    const v1, -0x7f7f80

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const v1, -0x252526

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookDir;->g0:Lcom/mycompany/app/dialog/DialogWebBookDir$DialogTask;

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    iput-boolean v2, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 53
    .line 54
    :cond_2
    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookDir;->g0:Lcom/mycompany/app/dialog/DialogWebBookDir$DialogTask;

    .line 56
    .line 57
    return-void

    .line 58
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogWebBookDir;->dismiss()V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final cancel()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogWebBookDir;->E()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final dismiss()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookDir;->a0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookDir;->g0:Lcom/mycompany/app/dialog/DialogWebBookDir$DialogTask;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 15
    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookDir;->g0:Lcom/mycompany/app/dialog/DialogWebBookDir$DialogTask;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookDir;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookDir;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 27
    .line 28
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookDir;->d0:Lcom/mycompany/app/view/MyEditText;

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyEditText;->c()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookDir;->d0:Lcom/mycompany/app/view/MyEditText;

    .line 36
    .line 37
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookDir;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 38
    .line 39
    if-eqz v1, :cond_4

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookDir;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 45
    .line 46
    :cond_4
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookDir;->a0:Landroid/content/Context;

    .line 47
    .line 48
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookDir;->b0:Lcom/mycompany/app/dialog/DialogWebBookMove$BookMoveListener;

    .line 49
    .line 50
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookDir;->f0:Ljava/lang/String;

    .line 51
    .line 52
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 53
    .line 54
    .line 55
    return-void
.end method
