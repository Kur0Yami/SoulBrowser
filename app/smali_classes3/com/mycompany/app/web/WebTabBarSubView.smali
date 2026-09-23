.class public Lcom/mycompany/app/web/WebTabBarSubView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/web/WebTabBarSubView$TabBarSubListener;
    }
.end annotation


# instance fields
.field public A:F

.field public B:F

.field public C:Z

.field public D:Lcom/mycompany/app/quick/TabDragHelper;

.field public E:Landroidx/recyclerview/widget/ItemTouchHelper;

.field public F:Z

.field public G:I

.field public H:I

.field public I:Z

.field public J:I

.field public K:F

.field public L:Z

.field public M:Z

.field public N:Landroid/view/View;

.field public O:I

.field public P:Landroid/graphics/Rect;

.field public Q:Landroid/graphics/drawable/BitmapDrawable;

.field public R:Z

.field public S:Z

.field public T:I

.field public U:I

.field public V:I

.field public W:I

.field public a0:I

.field public b0:I

.field public c:Landroid/content/Context;

.field public c0:I

.field public d0:I

.field public e0:I

.field public f:Lcom/mycompany/app/web/WebTabBarSubView$TabBarSubListener;

.field public f0:I

.field public g:Lcom/mycompany/app/view/MyWebBody;

.field public g0:I

.field public h:I

.field public i:I

.field public j:Z

.field public k:I

.field public l:I

.field public m:Ljava/util/List;

.field public n:I

.field public o:I

.field public p:I

.field public q:Lcom/mycompany/app/view/MyTabFrame;

.field public r:Lcom/mycompany/app/view/MyRecyclerView;

.field public s:Lcom/mycompany/app/view/MyButtonImage;

.field public t:Lcom/mycompany/app/web/WebTabBarAdapter;

.field public u:Z

.field public v:Ljava/util/List;

.field public w:I

.field public x:I

.field public y:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

.field public z:Landroid/view/GestureDetector;


# direct methods
.method public static a(Lcom/mycompany/app/web/WebTabBarSubView;I)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->u:Z

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->f:Lcom/mycompany/app/web/WebTabBarSubView$TabBarSubListener;

    .line 6
    .line 7
    if-eqz v0, :cond_6

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->t:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 10
    .line 11
    if-eqz v0, :cond_6

    .line 12
    .line 13
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->v:Ljava/util/List;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_0
    const/4 v1, 0x1

    .line 19
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebTabBarSubView;->u:Z

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    :try_start_0
    sget-boolean v3, Lcom/mycompany/app/pref/PrefWeb;->A:Z

    .line 23
    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    iput p1, p0, Lcom/mycompany/app/web/WebTabBarSubView;->x:I

    .line 27
    .line 28
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->y:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->v:Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->v:Ljava/util/List;

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const/4 v3, 0x2

    .line 50
    if-ge v0, v3, :cond_2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    move v0, v2

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    :goto_0
    move v0, v1

    .line 56
    :goto_1
    if-eqz v0, :cond_4

    .line 57
    .line 58
    iget-object v1, p0, Lcom/mycompany/app/web/WebTabBarSubView;->f:Lcom/mycompany/app/web/WebTabBarSubView$TabBarSubListener;

    .line 59
    .line 60
    iget v3, p0, Lcom/mycompany/app/web/WebTabBarSubView;->o:I

    .line 61
    .line 62
    add-int/2addr v3, p1

    .line 63
    check-cast v1, Lcom/mycompany/app/web/WebViewActivity$177;

    .line 64
    .line 65
    invoke-virtual {v1, v3, v0}, Lcom/mycompany/app/web/WebViewActivity$177;->b(IZ)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_4
    iget v3, p0, Lcom/mycompany/app/web/WebTabBarSubView;->w:I

    .line 70
    .line 71
    if-ltz v3, :cond_5

    .line 72
    .line 73
    if-gt p1, v3, :cond_5

    .line 74
    .line 75
    sub-int/2addr v3, v1

    .line 76
    iput v3, p0, Lcom/mycompany/app/web/WebTabBarSubView;->w:I

    .line 77
    .line 78
    :cond_5
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebTabBarSubView;->g()V

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/mycompany/app/web/WebTabBarSubView;->f:Lcom/mycompany/app/web/WebTabBarSubView$TabBarSubListener;

    .line 82
    .line 83
    iget v3, p0, Lcom/mycompany/app/web/WebTabBarSubView;->o:I

    .line 84
    .line 85
    add-int/2addr v3, p1

    .line 86
    check-cast v1, Lcom/mycompany/app/web/WebViewActivity$177;

    .line 87
    .line 88
    invoke-virtual {v1, v3, v0}, Lcom/mycompany/app/web/WebViewActivity$177;->b(IZ)V

    .line 89
    .line 90
    .line 91
    iget-object v4, p0, Lcom/mycompany/app/web/WebTabBarSubView;->t:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 92
    .line 93
    iget-object v5, p0, Lcom/mycompany/app/web/WebTabBarSubView;->v:Ljava/util/List;

    .line 94
    .line 95
    iget v6, p0, Lcom/mycompany/app/web/WebTabBarSubView;->w:I

    .line 96
    .line 97
    new-instance v9, Lcom/mycompany/app/web/WebTabBarSubView$8;

    .line 98
    .line 99
    invoke-direct {v9, p0}, Lcom/mycompany/app/web/WebTabBarSubView$8;-><init>(Lcom/mycompany/app/web/WebTabBarSubView;)V

    .line 100
    .line 101
    .line 102
    const/4 v8, 0x0

    .line 103
    move v7, p1

    .line 104
    invoke-virtual/range {v4 .. v9}, Lcom/mycompany/app/web/WebTabBarAdapter;->v(Ljava/util/List;IIZLcom/mycompany/app/web/WebTabBarAdapter$TabBarChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :catch_0
    iput-boolean v2, p0, Lcom/mycompany/app/web/WebTabBarSubView;->u:Z

    .line 109
    .line 110
    :cond_6
    :goto_2
    return-void
.end method

.method public static bridge synthetic b(Lcom/mycompany/app/web/WebTabBarSubView;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/web/WebTabBarSubView;->setDrawList(Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/mycompany/app/web/WebTabBarSubView;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/web/WebTabBarSubView;->setSubRealList(Ljava/util/List;)V

    return-void
.end method

.method private getSubRealList()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->m:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_6

    .line 5
    .line 6
    iget v2, p0, Lcom/mycompany/app/web/WebTabBarSubView;->o:I

    .line 7
    .line 8
    if-ltz v2, :cond_6

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-lt v2, v0, :cond_0

    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->m:Ljava/util/List;

    .line 18
    .line 19
    iget v2, p0, Lcom/mycompany/app/web/WebTabBarSubView;->o:I

    .line 20
    .line 21
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 26
    .line 27
    if-eqz v0, :cond_6

    .line 28
    .line 29
    iget-wide v2, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->e:J

    .line 30
    .line 31
    const-wide/16 v4, 0x0

    .line 32
    .line 33
    cmp-long v0, v2, v4

    .line 34
    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->m:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iget v4, p0, Lcom/mycompany/app/web/WebTabBarSubView;->o:I

    .line 45
    .line 46
    :goto_0
    if-ge v4, v0, :cond_6

    .line 47
    .line 48
    iget-object v5, p0, Lcom/mycompany/app/web/WebTabBarSubView;->m:Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    check-cast v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 55
    .line 56
    if-nez v5, :cond_2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    iget-wide v6, v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->e:J

    .line 60
    .line 61
    cmp-long v6, v6, v2

    .line 62
    .line 63
    if-eqz v6, :cond_3

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    new-instance v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 67
    .line 68
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 69
    .line 70
    .line 71
    iget-wide v7, v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 72
    .line 73
    iput-wide v7, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 74
    .line 75
    iget v7, p0, Lcom/mycompany/app/web/WebTabBarSubView;->o:I

    .line 76
    .line 77
    sub-int v7, v4, v7

    .line 78
    .line 79
    iput v7, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 80
    .line 81
    iget-object v8, v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 82
    .line 83
    iput-object v8, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 84
    .line 85
    iget-object v8, v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->k:Ljava/lang/String;

    .line 86
    .line 87
    iput-object v8, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->k:Ljava/lang/String;

    .line 88
    .line 89
    iget v8, p0, Lcom/mycompany/app/web/WebTabBarSubView;->n:I

    .line 90
    .line 91
    iget v5, v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 92
    .line 93
    if-ne v8, v5, :cond_4

    .line 94
    .line 95
    iput v7, p0, Lcom/mycompany/app/web/WebTabBarSubView;->w:I

    .line 96
    .line 97
    :cond_4
    if-nez v1, :cond_5

    .line 98
    .line 99
    new-instance v1, Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .line 103
    .line 104
    :cond_5
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_6
    :goto_2
    return-object v1
.end method

.method private setDrawList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 v0, 0x0

    .line 15
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_3

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 31
    .line 32
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    iget v3, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 36
    .line 37
    iget v4, p0, Lcom/mycompany/app/web/WebTabBarSubView;->o:I

    .line 38
    .line 39
    add-int/2addr v3, v4

    .line 40
    iput v3, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 41
    .line 42
    iget v1, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->i:I

    .line 43
    .line 44
    iget v3, p0, Lcom/mycompany/app/web/WebTabBarSubView;->p:I

    .line 45
    .line 46
    add-int/2addr v1, v3

    .line 47
    iput v1, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->i:I

    .line 48
    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    new-instance v0, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/web/WebTabBarSubView;->f:Lcom/mycompany/app/web/WebTabBarSubView$TabBarSubListener;

    .line 61
    .line 62
    if-eqz p1, :cond_6

    .line 63
    .line 64
    iget v1, p0, Lcom/mycompany/app/web/WebTabBarSubView;->p:I

    .line 65
    .line 66
    check-cast p1, Lcom/mycompany/app/web/WebViewActivity$177;

    .line 67
    .line 68
    iget-object p1, p1, Lcom/mycompany/app/web/WebViewActivity$177;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 69
    .line 70
    iget-object p1, p1, Lcom/mycompany/app/web/WebViewActivity;->b3:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 71
    .line 72
    if-nez p1, :cond_4

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_4
    if-eqz v0, :cond_5

    .line 76
    .line 77
    invoke-virtual {p1, v1}, Lcom/mycompany/app/web/WebTabBarAdapter;->B(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    if-eqz v1, :cond_5

    .line 82
    .line 83
    iget-object v2, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 84
    .line 85
    if-eqz v2, :cond_5

    .line 86
    .line 87
    iput-object v0, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 88
    .line 89
    :cond_5
    const/4 v0, 0x1

    .line 90
    invoke-virtual {p1, v0}, Lcom/mycompany/app/web/WebTabBarAdapter;->M(Z)V

    .line 91
    .line 92
    .line 93
    :cond_6
    :goto_1
    return-void
.end method

.method private setSubRealList(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_7

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_3

    .line 10
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const/4 v0, 0x0

    .line 20
    const/4 v1, -0x1

    .line 21
    move v3, v1

    .line 22
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_6

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 33
    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget v1, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 38
    .line 39
    iget-object v4, p0, Lcom/mycompany/app/web/WebTabBarSubView;->v:Ljava/util/List;

    .line 40
    .line 41
    if-eqz v4, :cond_3

    .line 42
    .line 43
    if-ltz v1, :cond_3

    .line 44
    .line 45
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-lt v1, v4, :cond_2

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    iget-object v4, p0, Lcom/mycompany/app/web/WebTabBarSubView;->v:Ljava/util/List;

    .line 53
    .line 54
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_3
    :goto_1
    const/4 v1, 0x0

    .line 62
    :goto_2
    if-nez v1, :cond_4

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    iget v4, p0, Lcom/mycompany/app/web/WebTabBarSubView;->w:I

    .line 66
    .line 67
    iget v5, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 68
    .line 69
    if-ne v4, v5, :cond_5

    .line 70
    .line 71
    move v3, v0

    .line 72
    :cond_5
    iput v0, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 73
    .line 74
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    add-int/lit8 v0, v0, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_6
    iput-object v2, p0, Lcom/mycompany/app/web/WebTabBarSubView;->v:Ljava/util/List;

    .line 81
    .line 82
    iput v3, p0, Lcom/mycompany/app/web/WebTabBarSubView;->w:I

    .line 83
    .line 84
    iget-object v1, p0, Lcom/mycompany/app/web/WebTabBarSubView;->t:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 85
    .line 86
    iget-boolean v4, p0, Lcom/mycompany/app/web/WebTabBarSubView;->j:Z

    .line 87
    .line 88
    iget v5, p0, Lcom/mycompany/app/web/WebTabBarSubView;->k:I

    .line 89
    .line 90
    iget v6, p0, Lcom/mycompany/app/web/WebTabBarSubView;->l:I

    .line 91
    .line 92
    const/4 v7, 0x1

    .line 93
    invoke-virtual/range {v1 .. v7}, Lcom/mycompany/app/web/WebTabBarAdapter;->L(Ljava/util/List;IZIIZ)V

    .line 94
    .line 95
    .line 96
    :cond_7
    :goto_3
    return-void
.end method


# virtual methods
.method public final d(Lcom/mycompany/app/view/MyWebBody;ILjava/util/List;IIIZIILcom/mycompany/app/web/WebTabBarSubView$TabBarSubListener;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    return-void

    :cond_0
    move-object/from16 v2, p10

    .line 1
    iput-object v2, v0, Lcom/mycompany/app/web/WebTabBarSubView;->f:Lcom/mycompany/app/web/WebTabBarSubView$TabBarSubListener;

    .line 2
    iput-object v1, v0, Lcom/mycompany/app/web/WebTabBarSubView;->g:Lcom/mycompany/app/view/MyWebBody;

    move-object/from16 v1, p3

    .line 3
    iput-object v1, v0, Lcom/mycompany/app/web/WebTabBarSubView;->m:Ljava/util/List;

    move/from16 v1, p4

    .line 4
    iput v1, v0, Lcom/mycompany/app/web/WebTabBarSubView;->n:I

    move/from16 v1, p5

    .line 5
    iput v1, v0, Lcom/mycompany/app/web/WebTabBarSubView;->o:I

    move/from16 v1, p6

    .line 6
    iput v1, v0, Lcom/mycompany/app/web/WebTabBarSubView;->p:I

    move/from16 v5, p7

    .line 7
    iput-boolean v5, v0, Lcom/mycompany/app/web/WebTabBarSubView;->j:Z

    move/from16 v6, p8

    .line 8
    iput v6, v0, Lcom/mycompany/app/web/WebTabBarSubView;->k:I

    move/from16 v7, p9

    .line 9
    iput v7, v0, Lcom/mycompany/app/web/WebTabBarSubView;->l:I

    const/4 v9, -0x1

    .line 10
    iput v9, v0, Lcom/mycompany/app/web/WebTabBarSubView;->w:I

    .line 11
    invoke-direct {v0}, Lcom/mycompany/app/web/WebTabBarSubView;->getSubRealList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/mycompany/app/web/WebTabBarSubView;->v:Ljava/util/List;

    .line 12
    sget v1, Lcom/mycompany/app/pref/PrefPdf;->F:I

    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    add-int/2addr v1, v2

    .line 13
    sget v2, Lcom/mycompany/app/pref/PrefWeb;->x:I

    const/high16 v4, -0x1000000

    const/4 v8, 0x4

    const/4 v10, 0x2

    const/4 v11, 0x3

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-ne v2, v12, :cond_4

    .line 14
    sget v2, Lcom/mycompany/app/pref/PrefPdf;->F:I

    sget v14, Lcom/mycompany/app/main/MainApp;->G1:I

    add-int/2addr v2, v14

    .line 15
    iget-boolean v14, v0, Lcom/mycompany/app/web/WebTabBarSubView;->j:Z

    iget v15, v0, Lcom/mycompany/app/web/WebTabBarSubView;->k:I

    .line 16
    invoke-static {v15, v14}, Lcom/mycompany/app/main/MainUtil;->s0(IZ)I

    move-result v14

    if-nez v14, :cond_1

    move v14, v9

    goto :goto_0

    :cond_1
    if-ne v14, v12, :cond_2

    move v14, v4

    .line 17
    :cond_2
    :goto_0
    iget-boolean v15, v0, Lcom/mycompany/app/web/WebTabBarSubView;->j:Z

    iget v3, v0, Lcom/mycompany/app/web/WebTabBarSubView;->k:I

    .line 18
    invoke-static {v3, v15}, Lcom/mycompany/app/main/MainUtil;->s0(IZ)I

    move-result v3

    if-nez v3, :cond_3

    move v3, v4

    goto :goto_1

    :cond_3
    const v3, -0x4f4f50

    .line 19
    :goto_1
    iput v13, v0, Lcom/mycompany/app/web/WebTabBarSubView;->i:I

    :goto_2
    move/from16 v4, p2

    goto/16 :goto_b

    :cond_4
    if-ne v2, v10, :cond_8

    .line 20
    sget v2, Lcom/mycompany/app/pref/PrefPdf;->F:I

    sget v3, Lcom/mycompany/app/main/MainApp;->G1:I

    add-int/2addr v2, v3

    sget v3, Lcom/mycompany/app/pref/PrefPdf;->A:I

    add-int/2addr v2, v3

    .line 21
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebTabBarSubView;->j:Z

    iget v14, v0, Lcom/mycompany/app/web/WebTabBarSubView;->k:I

    .line 22
    invoke-static {v14, v3}, Lcom/mycompany/app/main/MainUtil;->s0(IZ)I

    move-result v3

    if-nez v3, :cond_5

    move v14, v9

    goto :goto_3

    :cond_5
    if-ne v3, v12, :cond_6

    move v14, v4

    goto :goto_3

    :cond_6
    move v14, v3

    .line 23
    :goto_3
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebTabBarSubView;->j:Z

    iget v15, v0, Lcom/mycompany/app/web/WebTabBarSubView;->k:I

    .line 24
    invoke-static {v15, v3}, Lcom/mycompany/app/main/MainUtil;->s0(IZ)I

    move-result v3

    if-nez v3, :cond_7

    move v3, v4

    goto :goto_4

    :cond_7
    const v3, -0x4f4f50

    .line 25
    :goto_4
    iput v13, v0, Lcom/mycompany/app/web/WebTabBarSubView;->i:I

    goto :goto_2

    :cond_8
    const/16 v3, 0x1e

    if-ne v2, v11, :cond_c

    .line 26
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    sget v14, Lcom/mycompany/app/pref/PrefPdf;->F:I

    sget v15, Lcom/mycompany/app/pref/PrefPdf;->B:I

    add-int/2addr v14, v15

    invoke-static {v2, v14}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 27
    iget-object v14, v0, Lcom/mycompany/app/web/WebTabBarSubView;->g:Lcom/mycompany/app/view/MyWebBody;

    invoke-virtual {v14}, Lcom/mycompany/app/view/MyWebBody;->getRectBottom()I

    move-result v14

    iget-object v15, v0, Lcom/mycompany/app/web/WebTabBarSubView;->g:Lcom/mycompany/app/view/MyWebBody;

    invoke-virtual {v15}, Lcom/mycompany/app/view/MyWebBody;->getRectTop()I

    move-result v15

    sub-int/2addr v14, v15

    sub-int/2addr v14, v1

    sub-int/2addr v14, v2

    sget v2, Lcom/mycompany/app/main/MainApp;->G1:I

    sub-int v2, v14, v2

    .line 28
    iget-boolean v14, v0, Lcom/mycompany/app/web/WebTabBarSubView;->j:Z

    .line 29
    invoke-static {v13, v14}, Lcom/mycompany/app/main/MainUtil;->s0(IZ)I

    move-result v14

    if-nez v14, :cond_9

    .line 30
    invoke-static {v9, v13}, Lcom/mycompany/app/pref/PrefEditor;->r(II)I

    move-result v3

    :goto_5
    move v14, v3

    goto :goto_6

    :cond_9
    if-ne v14, v12, :cond_a

    .line 31
    invoke-static {v4, v13}, Lcom/mycompany/app/pref/PrefEditor;->r(II)I

    move-result v3

    goto :goto_5

    .line 32
    :cond_a
    invoke-static {v4, v3}, Lcom/mycompany/app/pref/PrefEditor;->r(II)I

    move-result v3

    goto :goto_5

    .line 33
    :goto_6
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebTabBarSubView;->j:Z

    .line 34
    invoke-static {v13, v3}, Lcom/mycompany/app/main/MainUtil;->s0(IZ)I

    move-result v3

    if-nez v3, :cond_b

    move v3, v4

    goto :goto_7

    :cond_b
    const v3, -0x4f4f50

    .line 35
    :goto_7
    iput v1, v0, Lcom/mycompany/app/web/WebTabBarSubView;->i:I

    goto :goto_2

    :cond_c
    if-ne v2, v8, :cond_10

    .line 36
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    sget v14, Lcom/mycompany/app/pref/PrefPdf;->F:I

    invoke-static {v2, v14}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 37
    iget-object v14, v0, Lcom/mycompany/app/web/WebTabBarSubView;->g:Lcom/mycompany/app/view/MyWebBody;

    invoke-virtual {v14}, Lcom/mycompany/app/view/MyWebBody;->getRectBottom()I

    move-result v14

    iget-object v15, v0, Lcom/mycompany/app/web/WebTabBarSubView;->g:Lcom/mycompany/app/view/MyWebBody;

    invoke-virtual {v15}, Lcom/mycompany/app/view/MyWebBody;->getRectTop()I

    move-result v15

    sub-int/2addr v14, v15

    sub-int/2addr v14, v1

    sub-int/2addr v14, v2

    sget v2, Lcom/mycompany/app/main/MainApp;->G1:I

    sub-int v2, v14, v2

    .line 38
    iget-boolean v14, v0, Lcom/mycompany/app/web/WebTabBarSubView;->j:Z

    .line 39
    invoke-static {v13, v14}, Lcom/mycompany/app/main/MainUtil;->s0(IZ)I

    move-result v14

    if-nez v14, :cond_d

    .line 40
    invoke-static {v9, v13}, Lcom/mycompany/app/pref/PrefEditor;->r(II)I

    move-result v3

    :goto_8
    move v14, v3

    goto :goto_9

    :cond_d
    if-ne v14, v12, :cond_e

    .line 41
    invoke-static {v4, v13}, Lcom/mycompany/app/pref/PrefEditor;->r(II)I

    move-result v3

    goto :goto_8

    .line 42
    :cond_e
    invoke-static {v4, v3}, Lcom/mycompany/app/pref/PrefEditor;->r(II)I

    move-result v3

    goto :goto_8

    .line 43
    :goto_9
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebTabBarSubView;->j:Z

    .line 44
    invoke-static {v13, v3}, Lcom/mycompany/app/main/MainUtil;->s0(IZ)I

    move-result v3

    if-nez v3, :cond_f

    move v3, v4

    goto :goto_a

    :cond_f
    const v3, -0x4f4f50

    .line 45
    :goto_a
    iput v1, v0, Lcom/mycompany/app/web/WebTabBarSubView;->i:I

    goto/16 :goto_2

    :cond_10
    move/from16 v4, p2

    move v2, v13

    move v3, v2

    move v14, v3

    .line 46
    :goto_b
    iput v4, v0, Lcom/mycompany/app/web/WebTabBarSubView;->h:I

    .line 47
    sget v4, Lcom/mycompany/app/pref/PrefPdf;->C:I

    if-eqz v4, :cond_12

    if-ne v4, v11, :cond_11

    .line 48
    sget v4, Lcom/mycompany/app/main/MainApp;->g1:I

    move v15, v4

    move v4, v13

    goto :goto_c

    .line 49
    :cond_11
    sget v4, Lcom/mycompany/app/main/MainApp;->g1:I

    move v15, v13

    goto :goto_c

    :cond_12
    move v4, v13

    move v15, v4

    .line 50
    :goto_c
    sget v16, Lcom/mycompany/app/main/MainApp;->F1:I

    add-int v11, v2, v16

    iget-object v10, v0, Lcom/mycompany/app/web/WebTabBarSubView;->g:Lcom/mycompany/app/view/MyWebBody;

    invoke-virtual {v10}, Lcom/mycompany/app/view/MyWebBody;->getRectEnd()I

    move-result v10

    sub-int/2addr v10, v15

    sget v15, Lcom/mycompany/app/pref/PrefPdf;->F:I

    .line 51
    iput v4, v0, Lcom/mycompany/app/web/WebTabBarSubView;->U:I

    .line 52
    iput v11, v0, Lcom/mycompany/app/web/WebTabBarSubView;->V:I

    add-int/2addr v4, v10

    .line 53
    iput v4, v0, Lcom/mycompany/app/web/WebTabBarSubView;->W:I

    add-int/2addr v11, v15

    .line 54
    iput v11, v0, Lcom/mycompany/app/web/WebTabBarSubView;->a0:I

    .line 55
    new-instance v4, Lcom/mycompany/app/view/MyTabFrame;

    iget-object v10, v0, Lcom/mycompany/app/web/WebTabBarSubView;->c:Landroid/content/Context;

    invoke-direct {v4, v10}, Lcom/mycompany/app/view/MyTabFrame;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/mycompany/app/web/WebTabBarSubView;->q:Lcom/mycompany/app/view/MyTabFrame;

    .line 56
    invoke-virtual {v4, v14}, Landroid/view/View;->setBackgroundColor(I)V

    .line 57
    iget-object v4, v0, Lcom/mycompany/app/web/WebTabBarSubView;->q:Lcom/mycompany/app/view/MyTabFrame;

    sget v10, Lcom/mycompany/app/main/MainApp;->H1:I

    int-to-float v10, v10

    invoke-virtual {v4, v10}, Landroid/view/View;->setElevation(F)V

    .line 58
    iget-object v4, v0, Lcom/mycompany/app/web/WebTabBarSubView;->q:Lcom/mycompany/app/view/MyTabFrame;

    sget v10, Lcom/mycompany/app/main/MainApp;->F1:I

    invoke-virtual {v4, v13, v10, v13, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 59
    iget-object v4, v0, Lcom/mycompany/app/web/WebTabBarSubView;->q:Lcom/mycompany/app/view/MyTabFrame;

    invoke-virtual {v4, v3, v12, v12}, Lcom/mycompany/app/view/MyTabFrame;->i(IZZ)Z

    .line 60
    iget-object v3, v0, Lcom/mycompany/app/web/WebTabBarSubView;->q:Lcom/mycompany/app/view/MyTabFrame;

    invoke-virtual {v3, v8}, Lcom/mycompany/app/view/MyTabFrame;->setVisibility(I)V

    .line 61
    iget-object v3, v0, Lcom/mycompany/app/web/WebTabBarSubView;->q:Lcom/mycompany/app/view/MyTabFrame;

    new-instance v4, Lcom/mycompany/app/web/WebTabBarSubView$1;

    invoke-direct {v4, v0}, Lcom/mycompany/app/web/WebTabBarSubView$1;-><init>(Lcom/mycompany/app/web/WebTabBarSubView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 62
    iget-object v3, v0, Lcom/mycompany/app/web/WebTabBarSubView;->q:Lcom/mycompany/app/view/MyTabFrame;

    invoke-virtual {v3, v12}, Landroid/view/View;->setClipToOutline(Z)V

    .line 63
    iget-object v3, v0, Lcom/mycompany/app/web/WebTabBarSubView;->q:Lcom/mycompany/app/view/MyTabFrame;

    invoke-virtual {v0, v3, v9, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 64
    iget-object v1, v0, Lcom/mycompany/app/web/WebTabBarSubView;->q:Lcom/mycompany/app/view/MyTabFrame;

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setY(F)V

    .line 65
    new-instance v1, Lcom/mycompany/app/web/WebTabBarSubView$2;

    invoke-direct {v1, v0}, Lcom/mycompany/app/web/WebTabBarSubView$2;-><init>(Lcom/mycompany/app/web/WebTabBarSubView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    new-instance v1, Lcom/mycompany/app/web/WebTabBarAdapter;

    iget-object v2, v0, Lcom/mycompany/app/web/WebTabBarSubView;->c:Landroid/content/Context;

    iget-object v3, v0, Lcom/mycompany/app/web/WebTabBarSubView;->v:Ljava/util/List;

    iget v4, v0, Lcom/mycompany/app/web/WebTabBarSubView;->w:I

    new-instance v8, Lcom/mycompany/app/web/WebTabBarSubView$3;

    invoke-direct {v8, v0}, Lcom/mycompany/app/web/WebTabBarSubView$3;-><init>(Lcom/mycompany/app/web/WebTabBarSubView;)V

    invoke-direct/range {v1 .. v8}, Lcom/mycompany/app/web/WebTabBarAdapter;-><init>(Landroid/content/Context;Ljava/util/List;IZIILcom/mycompany/app/web/WebTabBarAdapter$TabBarListener;)V

    iput-object v1, v0, Lcom/mycompany/app/web/WebTabBarSubView;->t:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 67
    new-instance v1, Lcom/mycompany/app/view/MyManagerLinear;

    .line 68
    invoke-direct {v1, v13}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 69
    new-instance v2, Lcom/mycompany/app/view/MyRecyclerView;

    iget-object v3, v0, Lcom/mycompany/app/web/WebTabBarSubView;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/mycompany/app/view/MyRecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/mycompany/app/web/WebTabBarSubView;->r:Lcom/mycompany/app/view/MyRecyclerView;

    .line 70
    invoke-virtual {v2, v13}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 71
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-ge v2, v3, :cond_13

    .line 72
    iget-object v2, v0, Lcom/mycompany/app/web/WebTabBarSubView;->r:Lcom/mycompany/app/view/MyRecyclerView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/View;->setOverScrollMode(I)V

    .line 73
    :cond_13
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 74
    sget v3, Lcom/mycompany/app/pref/PrefPdf;->C:I

    if-eqz v3, :cond_19

    const/4 v4, 0x3

    if-ne v3, v4, :cond_14

    .line 75
    sget v3, Lcom/mycompany/app/main/MainApp;->g1:I

    invoke-virtual {v2, v13, v13, v3, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_d

    .line 76
    :cond_14
    sget v3, Lcom/mycompany/app/main/MainApp;->g1:I

    invoke-virtual {v2, v3, v13, v13, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 77
    :goto_d
    new-instance v3, Lcom/mycompany/app/view/MyButtonImage;

    iget-object v4, v0, Lcom/mycompany/app/web/WebTabBarSubView;->c:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/mycompany/app/web/WebTabBarSubView;->s:Lcom/mycompany/app/view/MyButtonImage;

    .line 78
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 79
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebTabBarSubView;->j:Z

    .line 80
    sget v4, Lcom/mycompany/app/pref/PrefWeb;->x:I

    if-eq v4, v12, :cond_15

    const/4 v5, 0x2

    if-ne v4, v5, :cond_16

    .line 81
    :cond_15
    iget v13, v0, Lcom/mycompany/app/web/WebTabBarSubView;->k:I

    :cond_16
    invoke-static {v13, v3}, Lcom/mycompany/app/main/MainUtil;->s0(IZ)I

    move-result v3

    if-nez v3, :cond_17

    .line 82
    iget-object v4, v0, Lcom/mycompany/app/web/WebTabBarSubView;->s:Lcom/mycompany/app/view/MyButtonImage;

    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_black_24:I

    invoke-virtual {v4, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    goto :goto_e

    .line 83
    :cond_17
    iget-object v4, v0, Lcom/mycompany/app/web/WebTabBarSubView;->s:Lcom/mycompany/app/view/MyButtonImage;

    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_dark_24:I

    invoke-virtual {v4, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 84
    :goto_e
    iget-object v4, v0, Lcom/mycompany/app/web/WebTabBarSubView;->s:Lcom/mycompany/app/view/MyButtonImage;

    invoke-static {v3}, Lcom/mycompany/app/view/MyIconView;->i(I)F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/mycompany/app/view/MyButtonImage;->setAlpha(F)V

    .line 85
    iget-object v4, v0, Lcom/mycompany/app/web/WebTabBarSubView;->s:Lcom/mycompany/app/view/MyButtonImage;

    iget v5, v0, Lcom/mycompany/app/web/WebTabBarSubView;->l:I

    invoke-static {v3, v5}, Lcom/mycompany/app/main/MainUtil;->P1(II)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 86
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    sget v4, Lcom/mycompany/app/main/MainApp;->g1:I

    invoke-direct {v3, v4, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 87
    sget v4, Lcom/mycompany/app/pref/PrefPdf;->C:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_18

    const/4 v4, 0x5

    .line 88
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_f

    .line 89
    :cond_18
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 90
    :goto_f
    iget-object v4, v0, Lcom/mycompany/app/web/WebTabBarSubView;->q:Lcom/mycompany/app/view/MyTabFrame;

    iget-object v5, v0, Lcom/mycompany/app/web/WebTabBarSubView;->s:Lcom/mycompany/app/view/MyButtonImage;

    invoke-virtual {v4, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    iget-object v3, v0, Lcom/mycompany/app/web/WebTabBarSubView;->s:Lcom/mycompany/app/view/MyButtonImage;

    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->S4()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyButtonImage;->setNoAnim(Z)V

    .line 92
    iget-object v3, v0, Lcom/mycompany/app/web/WebTabBarSubView;->s:Lcom/mycompany/app/view/MyButtonImage;

    new-instance v4, Lcom/mycompany/app/web/WebTabBarSubView$7;

    invoke-direct {v4, v0}, Lcom/mycompany/app/web/WebTabBarSubView$7;-><init>(Lcom/mycompany/app/web/WebTabBarSubView;)V

    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    :cond_19
    iget-object v3, v0, Lcom/mycompany/app/web/WebTabBarSubView;->q:Lcom/mycompany/app/view/MyTabFrame;

    iget-object v4, v0, Lcom/mycompany/app/web/WebTabBarSubView;->r:Lcom/mycompany/app/view/MyRecyclerView;

    invoke-virtual {v3, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    iget-object v2, v0, Lcom/mycompany/app/web/WebTabBarSubView;->r:Lcom/mycompany/app/view/MyRecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 95
    iget-object v2, v0, Lcom/mycompany/app/web/WebTabBarSubView;->t:Lcom/mycompany/app/web/WebTabBarAdapter;

    iget-object v3, v0, Lcom/mycompany/app/web/WebTabBarSubView;->r:Lcom/mycompany/app/view/MyRecyclerView;

    .line 96
    iput-object v3, v2, Lcom/mycompany/app/web/WebTabBarAdapter;->e:Lcom/mycompany/app/view/MyRecyclerView;

    .line 97
    iput-object v1, v2, Lcom/mycompany/app/web/WebTabBarAdapter;->f:Lcom/mycompany/app/view/MyManagerLinear;

    .line 98
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 99
    new-instance v1, Lcom/mycompany/app/quick/TabDragHelper;

    new-instance v2, Lcom/mycompany/app/web/WebTabBarSubView$4;

    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebTabBarSubView$4;-><init>(Lcom/mycompany/app/web/WebTabBarSubView;)V

    const/4 v3, 0x0

    invoke-direct {v1, v3, v0, v12, v2}, Lcom/mycompany/app/quick/TabDragHelper;-><init>(Lcom/mycompany/app/quick/TabSubView;Lcom/mycompany/app/web/WebTabBarSubView;ZLcom/mycompany/app/quick/TabDragHelper$TabDragListener;)V

    iput-object v1, v0, Lcom/mycompany/app/web/WebTabBarSubView;->D:Lcom/mycompany/app/quick/TabDragHelper;

    .line 100
    new-instance v2, Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {v2, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object v2, v0, Lcom/mycompany/app/web/WebTabBarSubView;->E:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 101
    iget-object v1, v0, Lcom/mycompany/app/web/WebTabBarSubView;->r:Lcom/mycompany/app/view/MyRecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->i(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 102
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, v0, Lcom/mycompany/app/web/WebTabBarSubView;->c:Landroid/content/Context;

    new-instance v3, Lcom/mycompany/app/web/WebTabBarSubView$11;

    invoke-direct {v3, v0}, Lcom/mycompany/app/web/WebTabBarSubView$11;-><init>(Lcom/mycompany/app/web/WebTabBarSubView;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, v0, Lcom/mycompany/app/web/WebTabBarSubView;->z:Landroid/view/GestureDetector;

    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->L:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->Q:Landroid/graphics/drawable/BitmapDrawable;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 14
    .line 15
    .line 16
    :cond_1
    :goto_0
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->L:Z

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
    if-nez p1, :cond_1

    .line 8
    .line 9
    :goto_0
    return v1

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->z:Landroid/view/GestureDetector;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 15
    .line 16
    .line 17
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    float-to-int v0, v0

    .line 22
    iput v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->d0:I

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    float-to-int v0, v0

    .line 29
    iput v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->e0:I

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_f

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    if-eq v0, v2, :cond_d

    .line 39
    .line 40
    const/4 v3, 0x2

    .line 41
    if-eq v0, v3, :cond_3

    .line 42
    .line 43
    const/4 v2, 0x3

    .line 44
    if-eq v0, v2, :cond_d

    .line 45
    .line 46
    goto/16 :goto_3

    .line 47
    .line 48
    :cond_3
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->I:Z

    .line 49
    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    iget v3, p0, Lcom/mycompany/app/web/WebTabBarSubView;->B:F

    .line 57
    .line 58
    sub-float/2addr v0, v3

    .line 59
    iput v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->K:F

    .line 60
    .line 61
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    iget v3, p0, Lcom/mycompany/app/web/WebTabBarSubView;->A:F

    .line 66
    .line 67
    sub-float/2addr v0, v3

    .line 68
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    sget v3, Lcom/mycompany/app/main/MainApp;->r1:I

    .line 73
    .line 74
    int-to-float v3, v3

    .line 75
    cmpl-float v0, v0, v3

    .line 76
    .line 77
    if-gtz v0, :cond_5

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    iget v3, p0, Lcom/mycompany/app/web/WebTabBarSubView;->B:F

    .line 84
    .line 85
    sub-float/2addr v0, v3

    .line 86
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    sget v3, Lcom/mycompany/app/main/MainApp;->r1:I

    .line 91
    .line 92
    int-to-float v3, v3

    .line 93
    cmpl-float v0, v0, v3

    .line 94
    .line 95
    if-lez v0, :cond_6

    .line 96
    .line 97
    :cond_5
    iput-boolean v2, p0, Lcom/mycompany/app/web/WebTabBarSubView;->C:Z

    .line 98
    .line 99
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->F:Z

    .line 100
    .line 101
    if-eqz v0, :cond_6

    .line 102
    .line 103
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->f:Lcom/mycompany/app/web/WebTabBarSubView$TabBarSubListener;

    .line 104
    .line 105
    if-eqz v0, :cond_6

    .line 106
    .line 107
    check-cast v0, Lcom/mycompany/app/web/WebViewActivity$177;

    .line 108
    .line 109
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$177;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 110
    .line 111
    sget v3, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->W4()V

    .line 114
    .line 115
    .line 116
    :cond_6
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->M:Z

    .line 117
    .line 118
    if-eqz v0, :cond_8

    .line 119
    .line 120
    iget-object v3, p0, Lcom/mycompany/app/web/WebTabBarSubView;->N:Landroid/view/View;

    .line 121
    .line 122
    if-eqz v3, :cond_8

    .line 123
    .line 124
    if-nez v0, :cond_7

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_7
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebTabBarSubView;->M:Z

    .line 128
    .line 129
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    iput v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->b0:I

    .line 134
    .line 135
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    iput v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->c0:I

    .line 140
    .line 141
    iget v4, p0, Lcom/mycompany/app/web/WebTabBarSubView;->b0:I

    .line 142
    .line 143
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 144
    .line 145
    invoke-static {v4, v0, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    new-instance v4, Landroid/graphics/Canvas;

    .line 150
    .line 151
    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 155
    .line 156
    .line 157
    const/4 v4, 0x4

    .line 158
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 159
    .line 160
    .line 161
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 162
    .line 163
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    invoke-direct {v4, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 168
    .line 169
    .line 170
    iput-object v4, p0, Lcom/mycompany/app/web/WebTabBarSubView;->Q:Landroid/graphics/drawable/BitmapDrawable;

    .line 171
    .line 172
    iget v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->U:I

    .line 173
    .line 174
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    add-int/2addr v4, v0

    .line 179
    iget v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->V:I

    .line 180
    .line 181
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    add-int/2addr v3, v0

    .line 186
    iget v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->d0:I

    .line 187
    .line 188
    sub-int v0, v4, v0

    .line 189
    .line 190
    iput v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->f0:I

    .line 191
    .line 192
    iget v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->e0:I

    .line 193
    .line 194
    sub-int v0, v3, v0

    .line 195
    .line 196
    iput v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->g0:I

    .line 197
    .line 198
    new-instance v0, Landroid/graphics/Rect;

    .line 199
    .line 200
    iget v5, p0, Lcom/mycompany/app/web/WebTabBarSubView;->b0:I

    .line 201
    .line 202
    add-int/2addr v5, v4

    .line 203
    iget v6, p0, Lcom/mycompany/app/web/WebTabBarSubView;->c0:I

    .line 204
    .line 205
    add-int/2addr v6, v3

    .line 206
    invoke-direct {v0, v4, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 207
    .line 208
    .line 209
    iput-object v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->P:Landroid/graphics/Rect;

    .line 210
    .line 211
    iget-object v3, p0, Lcom/mycompany/app/web/WebTabBarSubView;->Q:Landroid/graphics/drawable/BitmapDrawable;

    .line 212
    .line 213
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 217
    .line 218
    .line 219
    iput-boolean v2, p0, Lcom/mycompany/app/web/WebTabBarSubView;->R:Z

    .line 220
    .line 221
    :cond_8
    :goto_1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->R:Z

    .line 222
    .line 223
    if-eqz v0, :cond_10

    .line 224
    .line 225
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->P:Landroid/graphics/Rect;

    .line 226
    .line 227
    if-eqz v0, :cond_10

    .line 228
    .line 229
    iget v3, p0, Lcom/mycompany/app/web/WebTabBarSubView;->d0:I

    .line 230
    .line 231
    iget v4, p0, Lcom/mycompany/app/web/WebTabBarSubView;->f0:I

    .line 232
    .line 233
    add-int/2addr v3, v4

    .line 234
    iget v4, p0, Lcom/mycompany/app/web/WebTabBarSubView;->e0:I

    .line 235
    .line 236
    iget v5, p0, Lcom/mycompany/app/web/WebTabBarSubView;->g0:I

    .line 237
    .line 238
    add-int/2addr v4, v5

    .line 239
    iget v5, p0, Lcom/mycompany/app/web/WebTabBarSubView;->b0:I

    .line 240
    .line 241
    add-int/2addr v5, v3

    .line 242
    iget v6, p0, Lcom/mycompany/app/web/WebTabBarSubView;->c0:I

    .line 243
    .line 244
    add-int/2addr v6, v4

    .line 245
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 246
    .line 247
    .line 248
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->Q:Landroid/graphics/drawable/BitmapDrawable;

    .line 249
    .line 250
    iget-object v7, p0, Lcom/mycompany/app/web/WebTabBarSubView;->P:Landroid/graphics/Rect;

    .line 251
    .line 252
    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 256
    .line 257
    .line 258
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->S:Z

    .line 259
    .line 260
    if-nez v0, :cond_10

    .line 261
    .line 262
    iget v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->U:I

    .line 263
    .line 264
    if-ge v5, v0, :cond_9

    .line 265
    .line 266
    goto :goto_2

    .line 267
    :cond_9
    iget v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->W:I

    .line 268
    .line 269
    if-le v3, v0, :cond_a

    .line 270
    .line 271
    goto :goto_2

    .line 272
    :cond_a
    iget v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->V:I

    .line 273
    .line 274
    if-ge v6, v0, :cond_b

    .line 275
    .line 276
    goto :goto_2

    .line 277
    :cond_b
    iget v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->a0:I

    .line 278
    .line 279
    if-le v4, v0, :cond_10

    .line 280
    .line 281
    :goto_2
    iput-boolean v2, p0, Lcom/mycompany/app/web/WebTabBarSubView;->S:Z

    .line 282
    .line 283
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->q:Lcom/mycompany/app/view/MyTabFrame;

    .line 284
    .line 285
    if-nez v0, :cond_c

    .line 286
    .line 287
    goto :goto_3

    .line 288
    :cond_c
    iget v2, p0, Lcom/mycompany/app/web/WebTabBarSubView;->h:I

    .line 289
    .line 290
    iget v3, p0, Lcom/mycompany/app/web/WebTabBarSubView;->i:I

    .line 291
    .line 292
    const/4 v4, 0x0

    .line 293
    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/mycompany/app/view/MyTabFrame;->j(IIZLcom/mycompany/app/view/MyFadeListener;)V

    .line 294
    .line 295
    .line 296
    goto :goto_3

    .line 297
    :cond_d
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->S:Z

    .line 298
    .line 299
    if-eqz v0, :cond_10

    .line 300
    .line 301
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebTabBarSubView;->S:Z

    .line 302
    .line 303
    iget v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->O:I

    .line 304
    .line 305
    iput v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->T:I

    .line 306
    .line 307
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->q:Lcom/mycompany/app/view/MyTabFrame;

    .line 308
    .line 309
    if-eqz v0, :cond_10

    .line 310
    .line 311
    iget-object v1, p0, Lcom/mycompany/app/web/WebTabBarSubView;->f:Lcom/mycompany/app/web/WebTabBarSubView$TabBarSubListener;

    .line 312
    .line 313
    if-nez v1, :cond_e

    .line 314
    .line 315
    goto :goto_3

    .line 316
    :cond_e
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyTabFrame;->d()V

    .line 317
    .line 318
    .line 319
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->q:Lcom/mycompany/app/view/MyTabFrame;

    .line 320
    .line 321
    new-instance v1, Lcom/mycompany/app/web/WebTabBarSubView$10;

    .line 322
    .line 323
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebTabBarSubView$10;-><init>(Lcom/mycompany/app/web/WebTabBarSubView;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 327
    .line 328
    .line 329
    goto :goto_3

    .line 330
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    iput v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->A:F

    .line 335
    .line 336
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    iput v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->B:F

    .line 341
    .line 342
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebTabBarSubView;->C:Z

    .line 343
    .line 344
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebTabBarSubView;->I:Z

    .line 345
    .line 346
    const/4 v0, -0x1

    .line 347
    iput v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->J:I

    .line 348
    .line 349
    const/4 v0, 0x0

    .line 350
    iput v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->K:F

    .line 351
    .line 352
    :cond_10
    :goto_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 353
    .line 354
    .line 355
    move-result p1

    .line 356
    return p1
.end method

.method public final e()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->L:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebTabBarSubView;->f()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/mycompany/app/web/WebTabBarSubView;->q:Lcom/mycompany/app/view/MyTabFrame;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iput-boolean v0, v1, Lcom/mycompany/app/view/MyTabFrame;->f:Z

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyTabFrame;->d()V

    .line 15
    .line 16
    .line 17
    iput-object v2, v1, Lcom/mycompany/app/view/MyTabFrame;->h:Landroid/graphics/RectF;

    .line 18
    .line 19
    iput-object v2, v1, Lcom/mycompany/app/view/MyTabFrame;->j:Landroid/graphics/Paint;

    .line 20
    .line 21
    iput-object v2, v1, Lcom/mycompany/app/view/MyTabFrame;->k:Landroid/graphics/RectF;

    .line 22
    .line 23
    iput-object v2, v1, Lcom/mycompany/app/view/MyTabFrame;->o:Landroid/graphics/Paint;

    .line 24
    .line 25
    iput-object v2, v1, Lcom/mycompany/app/view/MyTabFrame;->r:Landroid/graphics/RectF;

    .line 26
    .line 27
    iput-object v2, v1, Lcom/mycompany/app/view/MyTabFrame;->t:Landroid/graphics/Paint;

    .line 28
    .line 29
    iput-object v2, v1, Lcom/mycompany/app/view/MyTabFrame;->x:Landroid/graphics/RectF;

    .line 30
    .line 31
    iput-object v2, v1, Lcom/mycompany/app/view/MyTabFrame;->A:Landroid/graphics/Paint;

    .line 32
    .line 33
    iput-object v2, v1, Lcom/mycompany/app/view/MyTabFrame;->F:Landroid/view/View$OnClickListener;

    .line 34
    .line 35
    iput-object v2, v1, Lcom/mycompany/app/view/MyTabFrame;->G:Landroid/view/View$OnLongClickListener;

    .line 36
    .line 37
    iput-object v2, v1, Lcom/mycompany/app/view/MyTabFrame;->H:Lcom/mycompany/app/view/MyFadeListener;

    .line 38
    .line 39
    iput-object v2, p0, Lcom/mycompany/app/web/WebTabBarSubView;->q:Lcom/mycompany/app/view/MyTabFrame;

    .line 40
    .line 41
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->r:Lcom/mycompany/app/view/MyRecyclerView;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 46
    .line 47
    .line 48
    iput-object v2, p0, Lcom/mycompany/app/web/WebTabBarSubView;->r:Lcom/mycompany/app/view/MyRecyclerView;

    .line 49
    .line 50
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->s:Lcom/mycompany/app/view/MyButtonImage;

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 55
    .line 56
    .line 57
    iput-object v2, p0, Lcom/mycompany/app/web/WebTabBarSubView;->s:Lcom/mycompany/app/view/MyButtonImage;

    .line 58
    .line 59
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->t:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebTabBarAdapter;->H()V

    .line 64
    .line 65
    .line 66
    iput-object v2, p0, Lcom/mycompany/app/web/WebTabBarSubView;->t:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 67
    .line 68
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->D:Lcom/mycompany/app/quick/TabDragHelper;

    .line 69
    .line 70
    if-eqz v0, :cond_4

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/mycompany/app/quick/TabDragHelper;->p()V

    .line 73
    .line 74
    .line 75
    iput-object v2, p0, Lcom/mycompany/app/web/WebTabBarSubView;->D:Lcom/mycompany/app/quick/TabDragHelper;

    .line 76
    .line 77
    :cond_4
    iput-object v2, p0, Lcom/mycompany/app/web/WebTabBarSubView;->c:Landroid/content/Context;

    .line 78
    .line 79
    iput-object v2, p0, Lcom/mycompany/app/web/WebTabBarSubView;->f:Lcom/mycompany/app/web/WebTabBarSubView$TabBarSubListener;

    .line 80
    .line 81
    iput-object v2, p0, Lcom/mycompany/app/web/WebTabBarSubView;->g:Lcom/mycompany/app/view/MyWebBody;

    .line 82
    .line 83
    iput-object v2, p0, Lcom/mycompany/app/web/WebTabBarSubView;->v:Ljava/util/List;

    .line 84
    .line 85
    iput-object v2, p0, Lcom/mycompany/app/web/WebTabBarSubView;->y:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 86
    .line 87
    iput-object v2, p0, Lcom/mycompany/app/web/WebTabBarSubView;->z:Landroid/view/GestureDetector;

    .line 88
    .line 89
    iput-object v2, p0, Lcom/mycompany/app/web/WebTabBarSubView;->E:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 90
    .line 91
    return-void
.end method

.method public final f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->N:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    iput-object v2, p0, Lcom/mycompany/app/web/WebTabBarSubView;->N:Landroid/view/View;

    .line 11
    .line 12
    :cond_0
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebTabBarSubView;->M:Z

    .line 13
    .line 14
    iput-object v2, p0, Lcom/mycompany/app/web/WebTabBarSubView;->P:Landroid/graphics/Rect;

    .line 15
    .line 16
    iput-object v2, p0, Lcom/mycompany/app/web/WebTabBarSubView;->Q:Landroid/graphics/drawable/BitmapDrawable;

    .line 17
    .line 18
    return-void
.end method

.method public final g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabBarSubView;->v:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 28
    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iput v1, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    :goto_1
    return-void
.end method

.method public setDragPos(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mycompany/app/web/WebTabBarSubView;->O:I

    .line 2
    .line 3
    return-void
.end method
