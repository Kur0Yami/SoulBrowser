.class Lcom/mycompany/app/web/WebEmgDialog$TypeTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/web/WebEmgDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypeTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public final f:Ljava/util/List;

.field public g:Ljava/util/ArrayList;

.field public final h:I


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebEmgDialog;Ljava/util/List;I)V
    .locals 4

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
    iput-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog$TypeTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/web/WebEmgDialog;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iput-object p2, p0, Lcom/mycompany/app/web/WebEmgDialog$TypeTask;->f:Ljava/util/List;

    .line 21
    .line 22
    iput p3, p0, Lcom/mycompany/app/web/WebEmgDialog$TypeTask;->h:I

    .line 23
    .line 24
    iget-object p2, p1, Lcom/mycompany/app/web/WebEmgDialog;->V:Lcom/mycompany/app/view/MyCoverView;

    .line 25
    .line 26
    const/4 p3, 0x0

    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    invoke-virtual {p2, p3}, Lcom/mycompany/app/view/MyCoverView;->setBackColor(I)V

    .line 30
    .line 31
    .line 32
    iget-object p2, p1, Lcom/mycompany/app/web/WebEmgDialog;->V:Lcom/mycompany/app/view/MyCoverView;

    .line 33
    .line 34
    const/high16 v0, 0x3f800000    # 1.0f

    .line 35
    .line 36
    const-wide/16 v1, 0xc8

    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    invoke-virtual {p2, v3, v0, v1, v2}, Lcom/mycompany/app/view/MyCoverView;->n(ZFJ)V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object p1, p1, Lcom/mycompany/app/web/WebEmgDialog;->S:Lcom/mycompany/app/view/MyRecyclerView;

    .line 43
    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    invoke-virtual {p1, p3}, Landroid/view/View;->setEnabled(Z)V

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog$TypeTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/web/WebEmgDialog;

    .line 11
    .line 12
    if-eqz v0, :cond_6

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    iget v0, p0, Lcom/mycompany/app/web/WebEmgDialog$TypeTask;->h:I

    .line 20
    .line 21
    if-eqz v0, :cond_6

    .line 22
    .line 23
    iget-object v1, p0, Lcom/mycompany/app/web/WebEmgDialog$TypeTask;->f:Ljava/util/List;

    .line 24
    .line 25
    if-eqz v1, :cond_6

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    const/16 v2, 0x7e

    .line 35
    .line 36
    if-ne v0, v2, :cond_3

    .line 37
    .line 38
    new-instance v0, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog$TypeTask;->g:Ljava/util/ArrayList;

    .line 44
    .line 45
    return-void

    .line 46
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v2, p0, Lcom/mycompany/app/web/WebEmgDialog$TypeTask;->g:Ljava/util/ArrayList;

    .line 52
    .line 53
    new-instance v2, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    const/4 v3, 0x0

    .line 63
    :cond_4
    :goto_0
    if-ge v3, v1, :cond_6

    .line 64
    .line 65
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    add-int/lit8 v3, v3, 0x1

    .line 70
    .line 71
    check-cast v4, Ljava/lang/String;

    .line 72
    .line 73
    iget-boolean v5, p0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 74
    .line 75
    if-eqz v5, :cond_5

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_5
    const/4 v5, 0x2

    .line 79
    and-int/lit8 v6, v0, 0x2

    .line 80
    .line 81
    if-ne v6, v5, :cond_4

    .line 82
    .line 83
    iget-object v5, p0, Lcom/mycompany/app/web/WebEmgDialog$TypeTask;->g:Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_6
    :goto_1
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog$TypeTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/web/WebEmgDialog;

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
    iput-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->m0:Lcom/mycompany/app/web/WebEmgDialog$TypeTask;

    .line 17
    .line 18
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->V:Lcom/mycompany/app/view/MyCoverView;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 24
    .line 25
    .line 26
    :cond_2
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebEmgDialog;->C()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->S:Lcom/mycompany/app/view/MyRecyclerView;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 35
    .line 36
    .line 37
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->R:Lcom/mycompany/app/view/MyProgressBar;

    .line 38
    .line 39
    const/4 v2, 0x2

    .line 40
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyProgressBar;->setIncrease(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebEmgDialog;->H()V

    .line 44
    .line 45
    .line 46
    :cond_3
    :goto_0
    return-void
.end method

.method public final e()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog$TypeTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/web/WebEmgDialog;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_1
    const/4 v1, 0x0

    .line 17
    iput-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->m0:Lcom/mycompany/app/web/WebEmgDialog$TypeTask;

    .line 18
    .line 19
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->b0:Lcom/mycompany/app/web/WebGridAdapter;

    .line 20
    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_2
    iget-boolean v1, p0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    if-nez v1, :cond_6

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    iget-object v3, p0, Lcom/mycompany/app/web/WebEmgDialog$TypeTask;->f:Ljava/util/List;

    .line 31
    .line 32
    if-nez v3, :cond_3

    .line 33
    .line 34
    move v3, v1

    .line 35
    goto :goto_0

    .line 36
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    :goto_0
    iget-object v4, p0, Lcom/mycompany/app/web/WebEmgDialog$TypeTask;->g:Ljava/util/ArrayList;

    .line 41
    .line 42
    if-nez v4, :cond_4

    .line 43
    .line 44
    move v4, v1

    .line 45
    goto :goto_1

    .line 46
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    :goto_1
    if-le v3, v4, :cond_5

    .line 51
    .line 52
    sub-int/2addr v3, v4

    .line 53
    iput v3, v0, Lcom/mycompany/app/web/WebEmgDialog;->p0:I

    .line 54
    .line 55
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 56
    .line 57
    iget-object v4, v0, Lcom/mycompany/app/web/WebEmgDialog;->H:Landroid/content/Context;

    .line 58
    .line 59
    sget v5, Lnet/kaki87/soul2/testing/R$string;->filtered_image:I

    .line 60
    .line 61
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    iget v5, v0, Lcom/mycompany/app/web/WebEmgDialog;->p0:I

    .line 66
    .line 67
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    new-array v6, v2, [Ljava/lang/Object;

    .line 72
    .line 73
    aput-object v5, v6, v1

    .line 74
    .line 75
    invoke-static {v3, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iget-object v3, v0, Lcom/mycompany/app/web/WebEmgDialog;->H:Landroid/content/Context;

    .line 80
    .line 81
    invoke-static {v3, v1}, Lcom/mycompany/app/main/MainUtil;->f8(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    :cond_5
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->b0:Lcom/mycompany/app/web/WebGridAdapter;

    .line 85
    .line 86
    iget-object v3, p0, Lcom/mycompany/app/web/WebEmgDialog$TypeTask;->g:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {v1, v3}, Lcom/mycompany/app/web/WebGridAdapter;->F(Ljava/util/List;)V

    .line 89
    .line 90
    .line 91
    :cond_6
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->V:Lcom/mycompany/app/view/MyCoverView;

    .line 92
    .line 93
    if-eqz v1, :cond_7

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 96
    .line 97
    .line 98
    :cond_7
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebEmgDialog;->C()Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_8

    .line 103
    .line 104
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->S:Lcom/mycompany/app/view/MyRecyclerView;

    .line 105
    .line 106
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 107
    .line 108
    .line 109
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->R:Lcom/mycompany/app/view/MyProgressBar;

    .line 110
    .line 111
    const/4 v2, 0x2

    .line 112
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyProgressBar;->setIncrease(I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebEmgDialog;->H()V

    .line 116
    .line 117
    .line 118
    :cond_8
    :goto_2
    return-void
.end method
