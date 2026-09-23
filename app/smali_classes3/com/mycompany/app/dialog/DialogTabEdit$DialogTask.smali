.class Lcom/mycompany/app/dialog/DialogTabEdit$DialogTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogTabEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public final f:Ljava/util/List;

.field public final g:Ljava/lang/String;

.field public final h:I

.field public i:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabEdit;Ljava/util/List;Ljava/lang/String;I)V
    .locals 1

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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogTabEdit$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/dialog/DialogTabEdit;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogTabEdit$DialogTask;->f:Ljava/util/List;

    .line 21
    .line 22
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogTabEdit$DialogTask;->g:Ljava/lang/String;

    .line 23
    .line 24
    iput p4, p0, Lcom/mycompany/app/dialog/DialogTabEdit$DialogTask;->h:I

    .line 25
    .line 26
    const/4 p2, 0x0

    .line 27
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->setCanceledOnTouchOutside(Z)V

    .line 28
    .line 29
    .line 30
    iget-object p3, p1, Lcom/mycompany/app/dialog/DialogTabEdit;->i0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 31
    .line 32
    const/4 p4, 0x1

    .line 33
    invoke-virtual {p3, p2, p2, p4, p2}, Lcom/mycompany/app/view/MyDialogLinear;->e(IIZZ)V

    .line 34
    .line 35
    .line 36
    iget-object p3, p1, Lcom/mycompany/app/dialog/DialogTabEdit;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 37
    .line 38
    invoke-virtual {p3, p4}, Landroid/view/View;->setActivated(Z)V

    .line 39
    .line 40
    .line 41
    iget-object p3, p1, Lcom/mycompany/app/dialog/DialogTabEdit;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 42
    .line 43
    sget p4, Lnet/kaki87/soul2/testing/R$string;->cancel:I

    .line 44
    .line 45
    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(I)V

    .line 46
    .line 47
    .line 48
    iget-object p3, p1, Lcom/mycompany/app/dialog/DialogTabEdit;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 49
    .line 50
    sget-boolean p4, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 51
    .line 52
    if-eqz p4, :cond_1

    .line 53
    .line 54
    const p4, -0x50506

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const/high16 p4, -0x1000000

    .line 59
    .line 60
    :goto_0
    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogTabEdit;->m0:Lcom/mycompany/app/view/MyEditText;

    .line 64
    .line 65
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 66
    .line 67
    .line 68
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabEdit$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_3

    .line 6
    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/mycompany/app/dialog/DialogTabEdit;

    .line 12
    .line 13
    if-eqz v0, :cond_8

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    goto/16 :goto_3

    .line 20
    .line 21
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogTabEdit$DialogTask;->f:Ljava/util/List;

    .line 22
    .line 23
    if-eqz v1, :cond_8

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    goto :goto_3

    .line 32
    :cond_2
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTabEdit;->b0:Landroid/content/Context;

    .line 33
    .line 34
    invoke-static {v2}, Lcom/mycompany/app/db/book/DbBookTab;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookTab;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_7

    .line 51
    .line 52
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 57
    .line 58
    if-nez v3, :cond_3

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    iget v4, v3, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 62
    .line 63
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogTabEdit;->d0:Ljava/util/List;

    .line 64
    .line 65
    if-eqz v5, :cond_5

    .line 66
    .line 67
    if-ltz v4, :cond_5

    .line 68
    .line 69
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-lt v4, v5, :cond_4

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_4
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogTabEdit;->d0:Ljava/util/List;

    .line 77
    .line 78
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    check-cast v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_5
    :goto_1
    const/4 v4, 0x0

    .line 86
    :goto_2
    if-nez v4, :cond_6

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_6
    iget-object v5, p0, Lcom/mycompany/app/dialog/DialogTabEdit$DialogTask;->g:Ljava/lang/String;

    .line 90
    .line 91
    iput-object v5, v3, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->f:Ljava/lang/String;

    .line 92
    .line 93
    iget v6, p0, Lcom/mycompany/app/dialog/DialogTabEdit$DialogTask;->h:I

    .line 94
    .line 95
    iput v6, v3, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->g:I

    .line 96
    .line 97
    iput-object v5, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->f:Ljava/lang/String;

    .line 98
    .line 99
    iput v6, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->g:I

    .line 100
    .line 101
    const-string v4, "_gname"

    .line 102
    .line 103
    invoke-static {v4, v5}, Landroidx/work/impl/workers/a;->f(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    const-string v5, "_color"

    .line 108
    .line 109
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 114
    .line 115
    .line 116
    iget-wide v5, v3, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 117
    .line 118
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    filled-new-array {v3}, [Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    const-string v5, "DbBookTab3_table"

    .line 127
    .line 128
    const-string v6, "_uid=?"

    .line 129
    .line 130
    invoke-static {v2, v5, v4, v6, v3}, Lcom/mycompany/app/db/DbUtil;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_7
    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogTabEdit$DialogTask;->i:Z

    .line 136
    .line 137
    :cond_8
    :goto_3
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabEdit$DialogTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/dialog/DialogTabEdit;

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
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogTabEdit;->o0:Lcom/mycompany/app/dialog/DialogTabEdit$DialogTask;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogTabEdit;->dismiss()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabEdit$DialogTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/dialog/DialogTabEdit;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogTabEdit;->o0:Lcom/mycompany/app/dialog/DialogTabEdit$DialogTask;

    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogTabEdit$DialogTask;->i:Z

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabEdit;->c0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-interface {v0}, Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;->a()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabEdit;->i0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 31
    .line 32
    if-nez v1, :cond_4

    .line 33
    .line 34
    :cond_3
    :goto_0
    return-void

    .line 35
    :cond_4
    const/4 v1, 0x1

    .line 36
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setCanceledOnTouchOutside(Z)V

    .line 37
    .line 38
    .line 39
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTabEdit;->i0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-virtual {v2, v3, v3, v3, v3}, Lcom/mycompany/app/view/MyDialogLinear;->e(IIZZ)V

    .line 43
    .line 44
    .line 45
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTabEdit;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Landroid/view/View;->setActivated(Z)V

    .line 48
    .line 49
    .line 50
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTabEdit;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 51
    .line 52
    sget v3, Lnet/kaki87/soul2/testing/R$string;->apply:I

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 55
    .line 56
    .line 57
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTabEdit;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 58
    .line 59
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 60
    .line 61
    if-eqz v3, :cond_5

    .line 62
    .line 63
    const v3, -0x50506

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_5
    const v3, -0xe19938

    .line 68
    .line 69
    .line 70
    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    .line 72
    .line 73
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTabEdit;->m0:Lcom/mycompany/app/view/MyEditText;

    .line 74
    .line 75
    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 76
    .line 77
    .line 78
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabEdit;->b0:Landroid/content/Context;

    .line 79
    .line 80
    sget v1, Lnet/kaki87/soul2/testing/R$string;->update_fail:I

    .line 81
    .line 82
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 83
    .line 84
    .line 85
    return-void
.end method
