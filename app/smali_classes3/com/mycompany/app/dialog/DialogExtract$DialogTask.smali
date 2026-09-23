.class Lcom/mycompany/app/dialog/DialogExtract$DialogTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogExtract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public h:Lcom/mycompany/app/compress/Compress;

.field public i:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogExtract;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogExtract$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/dialog/DialogExtract;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogExtract$DialogTask;->f:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogExtract$DialogTask;->g:Ljava/lang/String;

    .line 23
    .line 24
    const/4 p2, 0x0

    .line 25
    iput p2, p1, Lcom/mycompany/app/dialog/DialogExtract;->E0:I

    .line 26
    .line 27
    iput p2, p1, Lcom/mycompany/app/dialog/DialogExtract;->F0:I

    .line 28
    .line 29
    iput p2, p1, Lcom/mycompany/app/dialog/DialogExtract;->G0:I

    .line 30
    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    iput-wide v0, p1, Lcom/mycompany/app/dialog/DialogExtract;->J0:J

    .line 36
    .line 37
    const/4 p3, 0x0

    .line 38
    iput-object p3, p1, Lcom/mycompany/app/dialog/DialogExtract;->K0:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->setCanceledOnTouchOutside(Z)V

    .line 41
    .line 42
    .line 43
    iget-object p3, p1, Lcom/mycompany/app/dialog/DialogExtract;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 44
    .line 45
    if-nez p3, :cond_1

    .line 46
    .line 47
    :goto_0
    return-void

    .line 48
    :cond_1
    iget v0, p1, Lcom/mycompany/app/dialog/DialogExtract;->C0:I

    .line 49
    .line 50
    const/4 v1, 0x1

    .line 51
    if-le v0, v1, :cond_2

    .line 52
    .line 53
    invoke-virtual {p3, p2, p2, v1, p2}, Lcom/mycompany/app/view/MyDialogLinear;->e(IIZZ)V

    .line 54
    .line 55
    .line 56
    :cond_2
    iget-object p3, p1, Lcom/mycompany/app/dialog/DialogExtract;->m0:[Landroid/view/View;

    .line 57
    .line 58
    iget v0, p1, Lcom/mycompany/app/dialog/DialogExtract;->D0:I

    .line 59
    .line 60
    aget-object p3, p3, v0

    .line 61
    .line 62
    const/16 v0, 0x8

    .line 63
    .line 64
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    iget-object p3, p1, Lcom/mycompany/app/dialog/DialogExtract;->o0:[Landroid/view/View;

    .line 68
    .line 69
    iget v0, p1, Lcom/mycompany/app/dialog/DialogExtract;->D0:I

    .line 70
    .line 71
    aget-object p3, p3, v0

    .line 72
    .line 73
    invoke-virtual {p3, p2}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    iget-object p3, p1, Lcom/mycompany/app/dialog/DialogExtract;->v0:[Landroid/widget/EditText;

    .line 77
    .line 78
    iget v0, p1, Lcom/mycompany/app/dialog/DialogExtract;->D0:I

    .line 79
    .line 80
    aget-object p3, p3, v0

    .line 81
    .line 82
    invoke-virtual {p3, p2}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogExtract;->v0:[Landroid/widget/EditText;

    .line 86
    .line 87
    iget p3, p1, Lcom/mycompany/app/dialog/DialogExtract;->D0:I

    .line 88
    .line 89
    aget-object p2, p2, p3

    .line 90
    .line 91
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->b7(Landroid/view/View;)V

    .line 92
    .line 93
    .line 94
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogExtract;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 95
    .line 96
    invoke-virtual {p2, v1}, Landroid/view/View;->setActivated(Z)V

    .line 97
    .line 98
    .line 99
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogExtract;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 100
    .line 101
    sget p3, Lnet/kaki87/soul2/testing/R$string;->cancel:I

    .line 102
    .line 103
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 104
    .line 105
    .line 106
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogExtract;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 107
    .line 108
    sget-boolean p2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 109
    .line 110
    if-eqz p2, :cond_3

    .line 111
    .line 112
    const p2, -0x50506

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_3
    const/high16 p2, -0x1000000

    .line 117
    .line 118
    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    .line 120
    .line 121
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogExtract$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_1

    .line 6
    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/mycompany/app/dialog/DialogExtract;

    .line 12
    .line 13
    if-eqz v0, :cond_7

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogExtract$DialogTask;->f:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_7

    .line 27
    .line 28
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->f0:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->a0:Landroid/content/Context;

    .line 38
    .line 39
    const/4 v3, 0x3

    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-static {v3, v2, v1, v4}, Lcom/mycompany/app/compress/Compress;->b(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/compress/Compress;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogExtract$DialogTask;->h:Lcom/mycompany/app/compress/Compress;

    .line 46
    .line 47
    sget-object v2, Lcom/mycompany/app/main/MainConst;->J:Ljava/lang/String;

    .line 48
    .line 49
    iput-object v2, v1, Lcom/mycompany/app/compress/Compress;->f:Ljava/lang/String;

    .line 50
    .line 51
    const-string v2, "debug_logger_tag"

    .line 52
    .line 53
    iput-object v2, v1, Lcom/mycompany/app/compress/Compress;->g:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/mycompany/app/compress/Compress;->N()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    const/4 v2, 0x1

    .line 60
    if-nez v1, :cond_3

    .line 61
    .line 62
    iput v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->G0:I

    .line 63
    .line 64
    return-void

    .line 65
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogExtract$DialogTask;->h:Lcom/mycompany/app/compress/Compress;

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/mycompany/app/compress/Compress;->R()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    iput v1, v0, Lcom/mycompany/app/dialog/DialogExtract;->E0:I

    .line 72
    .line 73
    if-nez v1, :cond_4

    .line 74
    .line 75
    iput v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->G0:I

    .line 76
    .line 77
    return-void

    .line 78
    :cond_4
    invoke-virtual {p0}, Lcom/mycompany/app/async/MyAsyncTask;->h()V

    .line 79
    .line 80
    .line 81
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogExtract;->a0:Landroid/content/Context;

    .line 82
    .line 83
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->f0:Ljava/lang/String;

    .line 84
    .line 85
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogExtract;->A0:[Ljava/lang/String;

    .line 86
    .line 87
    iget v4, v0, Lcom/mycompany/app/dialog/DialogExtract;->D0:I

    .line 88
    .line 89
    aget-object v3, v3, v4

    .line 90
    .line 91
    invoke-static {v2}, Lcom/mycompany/app/main/MainUri;->q(Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-eqz v4, :cond_5

    .line 96
    .line 97
    invoke-static {v1, v2, v3}, Lcom/mycompany/app/main/MainUriDoc;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    goto :goto_0

    .line 102
    :cond_5
    invoke-static {v1, v2, v3}, Lcom/mycompany/app/main/MainUriVol;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_6

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_6
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogExtract$DialogTask;->h:Lcom/mycompany/app/compress/Compress;

    .line 114
    .line 115
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogExtract;->b1:Lcom/mycompany/app/compress/CompressUtil$CompressListener;

    .line 116
    .line 117
    invoke-virtual {v2, v1, v0}, Lcom/mycompany/app/compress/Compress;->c(Ljava/lang/String;Lcom/mycompany/app/compress/CompressUtil$CompressListener;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogExtract$DialogTask;->i:Z

    .line 122
    .line 123
    :cond_7
    :goto_1
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogExtract$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/dialog/DialogExtract;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogExtract;->B0:Lcom/mycompany/app/dialog/DialogExtract$DialogTask;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogExtract$DialogTask;->h:Lcom/mycompany/app/compress/Compress;

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/mycompany/app/compress/Compress;->a()V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogExtract$DialogTask;->h:Lcom/mycompany/app/compress/Compress;

    .line 26
    .line 27
    :cond_2
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogExtract;->dismiss()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final e()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogExtract$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_1

    .line 6
    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/mycompany/app/dialog/DialogExtract;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    goto/16 :goto_1

    .line 16
    .line 17
    :cond_1
    const/4 v1, 0x0

    .line 18
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogExtract;->B0:Lcom/mycompany/app/dialog/DialogExtract$DialogTask;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogExtract$DialogTask;->h:Lcom/mycompany/app/compress/Compress;

    .line 21
    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/mycompany/app/compress/Compress;->a()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogExtract$DialogTask;->h:Lcom/mycompany/app/compress/Compress;

    .line 28
    .line 29
    :cond_2
    iget-boolean v2, p0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 30
    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogExtract;->dismiss()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_3
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->k0:[Lcom/mycompany/app/view/MyRoundImage;

    .line 38
    .line 39
    const v3, -0x50506

    .line 40
    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    if-eqz v2, :cond_a

    .line 44
    .line 45
    iget v5, v0, Lcom/mycompany/app/dialog/DialogExtract;->D0:I

    .line 46
    .line 47
    aget-object v2, v2, v5

    .line 48
    .line 49
    invoke-virtual {v0, v2, v5}, Lcom/mycompany/app/dialog/DialogExtract;->G(Lcom/mycompany/app/view/MyRoundImage;I)V

    .line 50
    .line 51
    .line 52
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->l0:[Landroid/widget/TextView;

    .line 53
    .line 54
    iget v5, v0, Lcom/mycompany/app/dialog/DialogExtract;->D0:I

    .line 55
    .line 56
    aget-object v2, v2, v5

    .line 57
    .line 58
    iget-object v5, p0, Lcom/mycompany/app/dialog/DialogExtract$DialogTask;->g:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    iget v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->E0:I

    .line 64
    .line 65
    const v5, -0xbbcca

    .line 66
    .line 67
    .line 68
    if-nez v2, :cond_4

    .line 69
    .line 70
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->x0:[Landroid/widget/TextView;

    .line 71
    .line 72
    iget v6, v0, Lcom/mycompany/app/dialog/DialogExtract;->D0:I

    .line 73
    .line 74
    aget-object v2, v2, v6

    .line 75
    .line 76
    const-string v6, "1"

    .line 77
    .line 78
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    .line 81
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->y0:[Landroid/widget/TextView;

    .line 82
    .line 83
    iget v7, v0, Lcom/mycompany/app/dialog/DialogExtract;->D0:I

    .line 84
    .line 85
    aget-object v2, v2, v7

    .line 86
    .line 87
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->y0:[Landroid/widget/TextView;

    .line 91
    .line 92
    iget v6, v0, Lcom/mycompany/app/dialog/DialogExtract;->D0:I

    .line 93
    .line 94
    aget-object v2, v2, v6

    .line 95
    .line 96
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    .line 98
    .line 99
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->z0:[Landroid/widget/TextView;

    .line 100
    .line 101
    iget v5, v0, Lcom/mycompany/app/dialog/DialogExtract;->D0:I

    .line 102
    .line 103
    aget-object v2, v2, v5

    .line 104
    .line 105
    const-string v5, "0"

    .line 106
    .line 107
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    .line 109
    .line 110
    goto/16 :goto_0

    .line 111
    .line 112
    :cond_4
    iget-boolean v6, p0, Lcom/mycompany/app/dialog/DialogExtract$DialogTask;->i:Z

    .line 113
    .line 114
    if-nez v6, :cond_6

    .line 115
    .line 116
    iget v6, v0, Lcom/mycompany/app/dialog/DialogExtract;->F0:I

    .line 117
    .line 118
    if-le v6, v2, :cond_5

    .line 119
    .line 120
    iput v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->F0:I

    .line 121
    .line 122
    :cond_5
    iget v6, v0, Lcom/mycompany/app/dialog/DialogExtract;->G0:I

    .line 123
    .line 124
    iget v7, v0, Lcom/mycompany/app/dialog/DialogExtract;->F0:I

    .line 125
    .line 126
    sub-int v7, v2, v7

    .line 127
    .line 128
    add-int/2addr v7, v6

    .line 129
    iput v7, v0, Lcom/mycompany/app/dialog/DialogExtract;->G0:I

    .line 130
    .line 131
    :cond_6
    iget v6, v0, Lcom/mycompany/app/dialog/DialogExtract;->G0:I

    .line 132
    .line 133
    if-le v6, v2, :cond_7

    .line 134
    .line 135
    iput v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->G0:I

    .line 136
    .line 137
    :cond_7
    iget v6, v0, Lcom/mycompany/app/dialog/DialogExtract;->G0:I

    .line 138
    .line 139
    sub-int/2addr v2, v6

    .line 140
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogExtract;->x0:[Landroid/widget/TextView;

    .line 141
    .line 142
    iget v7, v0, Lcom/mycompany/app/dialog/DialogExtract;->D0:I

    .line 143
    .line 144
    aget-object v6, v6, v7

    .line 145
    .line 146
    new-instance v7, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    const-string v8, ""

    .line 149
    .line 150
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    iget v9, v0, Lcom/mycompany/app/dialog/DialogExtract;->E0:I

    .line 154
    .line 155
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v7

    .line 162
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    .line 164
    .line 165
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogExtract;->y0:[Landroid/widget/TextView;

    .line 166
    .line 167
    iget v7, v0, Lcom/mycompany/app/dialog/DialogExtract;->D0:I

    .line 168
    .line 169
    aget-object v6, v6, v7

    .line 170
    .line 171
    new-instance v7, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    iget v9, v0, Lcom/mycompany/app/dialog/DialogExtract;->G0:I

    .line 177
    .line 178
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v7

    .line 185
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    .line 187
    .line 188
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogExtract;->z0:[Landroid/widget/TextView;

    .line 189
    .line 190
    iget v7, v0, Lcom/mycompany/app/dialog/DialogExtract;->D0:I

    .line 191
    .line 192
    aget-object v6, v6, v7

    .line 193
    .line 194
    new-instance v7, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    .line 208
    .line 209
    iget v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->G0:I

    .line 210
    .line 211
    if-lez v2, :cond_8

    .line 212
    .line 213
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->y0:[Landroid/widget/TextView;

    .line 214
    .line 215
    iget v6, v0, Lcom/mycompany/app/dialog/DialogExtract;->D0:I

    .line 216
    .line 217
    aget-object v2, v2, v6

    .line 218
    .line 219
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 220
    .line 221
    .line 222
    goto :goto_0

    .line 223
    :cond_8
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 224
    .line 225
    if-eqz v2, :cond_9

    .line 226
    .line 227
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->y0:[Landroid/widget/TextView;

    .line 228
    .line 229
    iget v5, v0, Lcom/mycompany/app/dialog/DialogExtract;->D0:I

    .line 230
    .line 231
    aget-object v2, v2, v5

    .line 232
    .line 233
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 234
    .line 235
    .line 236
    goto :goto_0

    .line 237
    :cond_9
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->y0:[Landroid/widget/TextView;

    .line 238
    .line 239
    iget v5, v0, Lcom/mycompany/app/dialog/DialogExtract;->D0:I

    .line 240
    .line 241
    aget-object v2, v2, v5

    .line 242
    .line 243
    const/high16 v5, -0x1000000

    .line 244
    .line 245
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 246
    .line 247
    .line 248
    :goto_0
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->o0:[Landroid/view/View;

    .line 249
    .line 250
    iget v5, v0, Lcom/mycompany/app/dialog/DialogExtract;->D0:I

    .line 251
    .line 252
    aget-object v2, v2, v5

    .line 253
    .line 254
    const/16 v5, 0x8

    .line 255
    .line 256
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 257
    .line 258
    .line 259
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->w0:[Landroid/view/View;

    .line 260
    .line 261
    iget v5, v0, Lcom/mycompany/app/dialog/DialogExtract;->D0:I

    .line 262
    .line 263
    aget-object v2, v2, v5

    .line 264
    .line 265
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 266
    .line 267
    .line 268
    :cond_a
    iget v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->D0:I

    .line 269
    .line 270
    const/4 v5, 0x1

    .line 271
    add-int/2addr v2, v5

    .line 272
    iput v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->D0:I

    .line 273
    .line 274
    invoke-virtual {v0, v2}, Lcom/mycompany/app/dialog/DialogExtract;->E(I)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    if-eqz v2, :cond_d

    .line 279
    .line 280
    iget-object v6, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 281
    .line 282
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 283
    .line 284
    .line 285
    move-result v6

    .line 286
    if-nez v6, :cond_d

    .line 287
    .line 288
    iget-object v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 289
    .line 290
    iget-object v2, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 291
    .line 292
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogExtract;->B0:Lcom/mycompany/app/dialog/DialogExtract$DialogTask;

    .line 293
    .line 294
    if-eqz v4, :cond_b

    .line 295
    .line 296
    iput-boolean v5, v4, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 297
    .line 298
    :cond_b
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogExtract;->B0:Lcom/mycompany/app/dialog/DialogExtract$DialogTask;

    .line 299
    .line 300
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogExtract;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 301
    .line 302
    if-nez v1, :cond_c

    .line 303
    .line 304
    goto :goto_1

    .line 305
    :cond_c
    new-instance v4, Lcom/mycompany/app/dialog/DialogExtract$7;

    .line 306
    .line 307
    invoke-direct {v4, v0, v3, v2}, Lcom/mycompany/app/dialog/DialogExtract$7;-><init>(Lcom/mycompany/app/dialog/DialogExtract;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v1, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 311
    .line 312
    .line 313
    return-void

    .line 314
    :cond_d
    iget v1, v0, Lcom/mycompany/app/dialog/DialogExtract;->G0:I

    .line 315
    .line 316
    if-nez v1, :cond_e

    .line 317
    .line 318
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogExtract;->a0:Landroid/content/Context;

    .line 319
    .line 320
    sget v2, Lnet/kaki87/soul2/testing/R$string;->success:I

    .line 321
    .line 322
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogExtract;->dismiss()V

    .line 326
    .line 327
    .line 328
    return-void

    .line 329
    :cond_e
    invoke-virtual {v0, v5}, Lcom/mycompany/app/view/MyDialogBottom;->setCanceledOnTouchOutside(Z)V

    .line 330
    .line 331
    .line 332
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogExtract;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 333
    .line 334
    if-nez v1, :cond_f

    .line 335
    .line 336
    :goto_1
    return-void

    .line 337
    :cond_f
    invoke-virtual {v1, v4, v4, v4, v4}, Lcom/mycompany/app/view/MyDialogLinear;->e(IIZZ)V

    .line 338
    .line 339
    .line 340
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogExtract;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 341
    .line 342
    invoke-virtual {v1, v5}, Landroid/view/View;->setActivated(Z)V

    .line 343
    .line 344
    .line 345
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogExtract;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 346
    .line 347
    sget v2, Lnet/kaki87/soul2/testing/R$string;->ok:I

    .line 348
    .line 349
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 350
    .line 351
    .line 352
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogExtract;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 353
    .line 354
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 355
    .line 356
    if-eqz v1, :cond_10

    .line 357
    .line 358
    goto :goto_2

    .line 359
    :cond_10
    const v3, -0xe19938

    .line 360
    .line 361
    .line 362
    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 363
    .line 364
    .line 365
    return-void
.end method

.method public final g()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogExtract$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/dialog/DialogExtract;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-boolean v1, p0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget v1, v0, Lcom/mycompany/app/dialog/DialogExtract;->D0:I

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-static {v0, v1, v2, v3}, Lcom/mycompany/app/dialog/DialogExtract;->D(Lcom/mycompany/app/dialog/DialogExtract;ILjava/lang/String;Z)V

    .line 24
    .line 25
    .line 26
    :cond_2
    :goto_0
    return-void
.end method
