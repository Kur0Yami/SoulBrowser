.class Lcom/mycompany/app/web/WebViewActivity$579;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogViewRead$DialogReadListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$579;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Lcom/mycompany/app/web/WebNestView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$579;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$579;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->m8:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->m8:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->n8:Z

    .line 13
    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogViewRead;->J()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->n8:Z

    .line 21
    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->nn:Z

    .line 24
    .line 25
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->m5:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$579$1;

    .line 33
    .line 34
    invoke-direct {v1, p0, p1}, Lcom/mycompany/app/web/WebViewActivity$579$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$579;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$579;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    iget-object v0, v0, Lcom/mycompany/app/web/WebNestView;->Z0:Lcom/mycompany/app/quick/QuickView;

    .line 8
    .line 9
    if-eqz v0, :cond_9

    .line 10
    .line 11
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdapter;->k:Lcom/mycompany/app/view/MyManagerGrid;

    .line 24
    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_2
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->U0()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->V0()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    add-int/lit8 v3, v3, 0x1

    .line 37
    .line 38
    :goto_0
    if-ge v2, v3, :cond_9

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->s(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    if-nez v4, :cond_3

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    invoke-static {v4}, Lcom/mycompany/app/quick/QuickAdapter;->J(Landroid/view/View;)Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    if-eqz v4, :cond_8

    .line 52
    .line 53
    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 54
    .line 55
    if-nez v5, :cond_4

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_4
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    invoke-virtual {v0, v5}, Lcom/mycompany/app/quick/QuickAdapter;->E(I)Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    if-nez v5, :cond_5

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_5
    iget v6, v5, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->a:I

    .line 70
    .line 71
    const/4 v7, 0x7

    .line 72
    if-eq v6, v7, :cond_6

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_6
    iget-object v6, v5, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-nez v6, :cond_7

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_7
    iget-object p1, v4, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->x:Lcom/mycompany/app/view/MyRoundImage;

    .line 85
    .line 86
    invoke-virtual {v0, v5, p1, v2}, Lcom/mycompany/app/quick/QuickAdapter;->Z(Lcom/mycompany/app/quick/QuickAdapter$QuickItem;Lcom/mycompany/app/view/MyRoundImage;I)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_8
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_9
    :goto_2
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$579;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->ca()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->G3()V

    .line 9
    .line 10
    .line 11
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebNestView;->C()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final e(III)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$579;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebNestView;->onResume()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget v1, v0, Lcom/mycompany/app/web/WebViewActivity;->c9:I

    .line 11
    .line 12
    if-ne v1, p1, :cond_1

    .line 13
    .line 14
    iget v1, v0, Lcom/mycompany/app/web/WebViewActivity;->d9:I

    .line 15
    .line 16
    if-ne v1, p2, :cond_1

    .line 17
    .line 18
    iget v1, v0, Lcom/mycompany/app/web/WebViewActivity;->e9:I

    .line 19
    .line 20
    if-ne v1, p3, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 24
    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    :goto_0
    return-void

    .line 28
    :cond_2
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$579$2;

    .line 29
    .line 30
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/mycompany/app/web/WebViewActivity$579$2;-><init>(Lcom/mycompany/app/web/WebViewActivity$579;III)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final f(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$579;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/mycompany/app/web/WebViewActivity;->g1(Lcom/mycompany/app/web/WebViewActivity;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final g()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$579;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->m8:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->m8:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Lcom/mycompany/app/dialog/DialogViewRead;->f0(Lcom/mycompany/app/dialog/DialogViewRead$DialogReadListener;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->n8:Z

    .line 17
    .line 18
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->nn:Z

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->s2()Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final h()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$579;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Ua:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->ca()V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    return v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0
.end method
