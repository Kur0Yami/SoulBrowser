.class Lcom/mycompany/app/dialog/DialogUpdateFilter$DialogTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogUpdateFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public final f:Ljava/util/List;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public i:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogUpdateFilter;)V
    .locals 5

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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/dialog/DialogUpdateFilter;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogUpdateFilter;->c0:Ljava/util/List;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter$DialogTask;->f:Ljava/util/List;

    .line 24
    .line 25
    iget v1, p1, Lcom/mycompany/app/dialog/DialogUpdateFilter;->u0:I

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-lt v1, v2, :cond_1

    .line 34
    .line 35
    goto/16 :goto_0

    .line 36
    .line 37
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 42
    .line 43
    if-nez v2, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    iget-object v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 47
    .line 48
    iput-object v3, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter$DialogTask;->g:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v2, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 51
    .line 52
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter$DialogTask;->h:Ljava/lang/String;

    .line 53
    .line 54
    const-wide/16 v3, 0x0

    .line 55
    .line 56
    iput-wide v3, p1, Lcom/mycompany/app/dialog/DialogUpdateFilter;->n0:J

    .line 57
    .line 58
    iput-wide v3, p1, Lcom/mycompany/app/dialog/DialogUpdateFilter;->o0:J

    .line 59
    .line 60
    const/4 v3, 0x1

    .line 61
    add-int/2addr v1, v3

    .line 62
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->h3(II)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogUpdateFilter;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogUpdateFilter;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 76
    .line 77
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogUpdateFilter;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 81
    .line 82
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogUpdateFilter;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 86
    .line 87
    const-string v1, ""

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogUpdateFilter;->m0:Lcom/mycompany/app/view/MyProgressBar;

    .line 93
    .line 94
    const/16 v1, 0x64

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyProgressBar;->setMax(I)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogUpdateFilter;->m0:Lcom/mycompany/app/view/MyProgressBar;

    .line 100
    .line 101
    const/4 v1, 0x0

    .line 102
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyProgressBar;->setProgress(F)V

    .line 103
    .line 104
    .line 105
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogUpdateFilter;->e0:Lcom/mycompany/app/view/MyLineRelative;

    .line 106
    .line 107
    const/4 v1, 0x0

    .line 108
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogUpdateFilter;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogUpdateFilter;->i0:Landroid/widget/RelativeLayout;

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogUpdateFilter;->j0:Landroid/widget/FrameLayout;

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogUpdateFilter;->m0:Lcom/mycompany/app/view/MyProgressBar;

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyProgressBar;->setVisibility(I)V

    .line 129
    .line 130
    .line 131
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogUpdateFilter;->p0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 132
    .line 133
    const/16 v2, 0x8

    .line 134
    .line 135
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 136
    .line 137
    .line 138
    iput-boolean v1, p1, Lcom/mycompany/app/dialog/DialogUpdateFilter;->x0:Z

    .line 139
    .line 140
    iput-boolean v1, p1, Lcom/mycompany/app/dialog/DialogUpdateFilter;->v0:Z

    .line 141
    .line 142
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogUpdateFilter;->r0:Lcom/mycompany/app/view/MyLineText;

    .line 143
    .line 144
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 145
    .line 146
    .line 147
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogUpdateFilter;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 148
    .line 149
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 150
    .line 151
    .line 152
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogUpdateFilter;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 153
    .line 154
    sget v2, Lnet/kaki87/soul2/testing/R$string;->cancel:I

    .line 155
    .line 156
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setCanceledOnTouchOutside(Z)V

    .line 160
    .line 161
    .line 162
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_2

    .line 6
    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;

    .line 12
    .line 13
    if-eqz v0, :cond_b

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter$DialogTask;->f:Ljava/util/List;

    .line 22
    .line 23
    if-eqz v1, :cond_b

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    goto/16 :goto_2

    .line 32
    .line 33
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter$DialogTask;->g:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const/4 v3, 0x1

    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->a0:Landroid/content/Context;

    .line 43
    .line 44
    invoke-virtual {v0, v2, v1, v1}, Lcom/mycompany/app/dialog/DialogUpdateFilter;->E(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    iput-boolean v2, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter$DialogTask;->i:Z

    .line 49
    .line 50
    if-eqz v2, :cond_4

    .line 51
    .line 52
    iget-wide v4, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->n0:J

    .line 53
    .line 54
    iget-wide v6, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->o0:J

    .line 55
    .line 56
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 57
    .line 58
    .line 59
    move-result-wide v4

    .line 60
    iput-wide v4, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->n0:J

    .line 61
    .line 62
    iput-wide v4, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->o0:J

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    iput-boolean v3, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter$DialogTask;->i:Z

    .line 66
    .line 67
    const-wide/16 v4, 0x1

    .line 68
    .line 69
    iput-wide v4, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->n0:J

    .line 70
    .line 71
    iput-wide v4, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->o0:J

    .line 72
    .line 73
    :cond_4
    :goto_0
    iget-boolean v2, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter$DialogTask;->i:Z

    .line 74
    .line 75
    if-eqz v2, :cond_7

    .line 76
    .line 77
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->a0:Landroid/content/Context;

    .line 78
    .line 79
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter$DialogTask;->h:Ljava/lang/String;

    .line 80
    .line 81
    invoke-static {v2, v1, v4}, Lcom/mycompany/app/db/book/DbBookFilter;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->a0:Landroid/content/Context;

    .line 86
    .line 87
    invoke-static {v2}, Lcom/mycompany/app/data/book/DataBookFilter;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookFilter;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    iget-object v4, v2, Lcom/mycompany/app/data/book/DataBookList;->b:Ljava/util/List;

    .line 92
    .line 93
    if-nez v4, :cond_5

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-lez v4, :cond_6

    .line 101
    .line 102
    invoke-virtual {v2, v1}, Lcom/mycompany/app/data/book/DataBookList;->j(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 103
    .line 104
    .line 105
    :cond_6
    :goto_1
    iput-boolean v3, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->y0:Z

    .line 106
    .line 107
    :cond_7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->a0:Landroid/content/Context;

    .line 108
    .line 109
    iget v2, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->u0:I

    .line 110
    .line 111
    if-eqz v2, :cond_8

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_8
    const-string v2, "https://raw.githubusercontent.com/SoulBrowser/SoulBrowser/master/Image/test.txt"

    .line 115
    .line 116
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->a4(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    if-eqz v4, :cond_9

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_9
    new-instance v4, Ljava/io/File;

    .line 128
    .line 129
    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    if-eqz v3, :cond_a

    .line 137
    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 139
    .line 140
    .line 141
    move-result-wide v5

    .line 142
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    .line 143
    .line 144
    .line 145
    move-result-wide v3

    .line 146
    sub-long/2addr v5, v3

    .line 147
    const-wide/32 v3, 0x36ee80

    .line 148
    .line 149
    .line 150
    cmp-long v3, v5, v3

    .line 151
    .line 152
    if-gez v3, :cond_a

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_a
    invoke-virtual {v0, v1, v2, v2}, Lcom/mycompany/app/dialog/DialogUpdateFilter;->E(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 156
    .line 157
    .line 158
    :cond_b
    :goto_2
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter$DialogTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;

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
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->t0:Lcom/mycompany/app/dialog/DialogUpdateFilter$DialogTask;

    .line 17
    .line 18
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->a0:Landroid/content/Context;

    .line 19
    .line 20
    sget v2, Lnet/kaki87/soul2/testing/R$string;->cancelled:I

    .line 21
    .line 22
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogUpdateFilter;->dismiss()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final e()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter$DialogTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;

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
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->t0:Lcom/mycompany/app/dialog/DialogUpdateFilter$DialogTask;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogUpdateFilter;->C()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->a0:Landroid/content/Context;

    .line 25
    .line 26
    sget v2, Lnet/kaki87/soul2/testing/R$string;->cancelled:I

    .line 27
    .line 28
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogUpdateFilter;->dismiss()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter$DialogTask;->f:Ljava/util/List;

    .line 36
    .line 37
    if-eqz v1, :cond_6

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_3

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_3
    iget-boolean v2, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter$DialogTask;->i:Z

    .line 47
    .line 48
    if-nez v2, :cond_5

    .line 49
    .line 50
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->p0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 51
    .line 52
    sget v3, Lnet/kaki87/soul2/testing/R$string;->update_fail:I

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 55
    .line 56
    .line 57
    const/4 v2, 0x1

    .line 58
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->v0:Z

    .line 59
    .line 60
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->j0:Landroid/widget/FrameLayout;

    .line 61
    .line 62
    const/4 v4, 0x4

    .line 63
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->m0:Lcom/mycompany/app/view/MyProgressBar;

    .line 67
    .line 68
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyProgressBar;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->p0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 72
    .line 73
    const/4 v4, 0x0

    .line 74
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-le v1, v2, :cond_4

    .line 82
    .line 83
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->r0:Lcom/mycompany/app/view/MyLineText;

    .line 84
    .line 85
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->r0:Lcom/mycompany/app/view/MyLineText;

    .line 90
    .line 91
    const/16 v3, 0x8

    .line 92
    .line 93
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 97
    .line 98
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 99
    .line 100
    .line 101
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 102
    .line 103
    sget v3, Lnet/kaki87/soul2/testing/R$string;->retry:I

    .line 104
    .line 105
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyDialogBottom;->setCanceledOnTouchOutside(Z)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :cond_5
    iget-wide v1, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->n0:J

    .line 113
    .line 114
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->h1(J)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 119
    .line 120
    invoke-static {v1, v1}, Lcom/mycompany/app/main/MainUtil;->i3(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    .line 126
    .line 127
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->m0:Lcom/mycompany/app/view/MyProgressBar;

    .line 128
    .line 129
    const/high16 v2, 0x42c80000    # 100.0f

    .line 130
    .line 131
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyProgressBar;->setProgress(F)V

    .line 132
    .line 133
    .line 134
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter;->m0:Lcom/mycompany/app/view/MyProgressBar;

    .line 135
    .line 136
    new-instance v2, Lcom/mycompany/app/dialog/DialogUpdateFilter$DialogTask$1;

    .line 137
    .line 138
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogUpdateFilter$DialogTask$1;-><init>(Lcom/mycompany/app/dialog/DialogUpdateFilter;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :cond_6
    :goto_2
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogUpdateFilter;->dismiss()V

    .line 146
    .line 147
    .line 148
    return-void
.end method
