.class public Lcom/mycompany/app/quick/QuickView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/quick/QuickView$QuickViewListener;
    }
.end annotation


# static fields
.field public static final k0:[Ljava/lang/String;


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Lcom/mycompany/app/view/MyCoverView;

.field public J:I

.field public K:I

.field public L:Z

.field public M:Z

.field public N:Ljava/util/concurrent/ExecutorService;

.field public O:Z

.field public P:Z

.field public Q:I

.field public R:Z

.field public S:Ljava/lang/String;

.field public T:I

.field public U:Z

.field public V:Ljava/lang/String;

.field public W:J

.field public a0:Z

.field public b0:Lcom/mycompany/app/quick/QuickControl;

.field public final c:Landroid/content/Context;

.field public c0:I

.field public d0:J

.field public e0:Z

.field public f:Landroid/os/Handler;

.field public f0:Z

.field public g:Z

.field public g0:Z

.field public h:Z

.field public h0:Z

.field public i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

.field public i0:Z

.field public j:Lcom/mycompany/app/view/MyButtonImage;

.field public j0:Z

.field public k:Lcom/mycompany/app/view/MyRecyclerView;

.field public l:Lcom/mycompany/app/quick/QuickAdapter;

.field public m:Lcom/mycompany/app/view/MyManagerGrid;

.field public n:Lcom/mycompany/app/quick/QuickDragHelper;

.field public o:Landroidx/recyclerview/widget/ItemTouchHelper;

.field public p:Z

.field public q:Lcom/mycompany/app/quick/QuickControl;

.field public r:Z

.field public s:I

.field public t:I

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:I

.field public y:Z

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const-string v7, "SCIENCE"

    .line 2
    .line 3
    const-string v8, "HEALTH"

    .line 4
    .line 5
    const-string v0, "HEADLINE"

    .line 6
    .line 7
    const-string v1, "WORLD"

    .line 8
    .line 9
    const-string v2, "NATION"

    .line 10
    .line 11
    const-string v3, "BUSINESS"

    .line 12
    .line 13
    const-string v4, "TECHNOLOGY"

    .line 14
    .line 15
    const-string v5, "ENTERTAINMENT"

    .line 16
    .line 17
    const-string v6, "SPORTS"

    .line 18
    .line 19
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/mycompany/app/quick/QuickView;->k0:[Ljava/lang/String;

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickView;->c:Landroid/content/Context;

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/mycompany/app/quick/QuickView;->E:Z

    .line 8
    .line 9
    return-void
.end method

.method public static a(Lcom/mycompany/app/quick/QuickView;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->y:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/quick/QuickAdapter;->d()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/mycompany/app/quick/QuickAdapter;->I()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    add-int/lit8 v0, v0, -0x1

    .line 25
    .line 26
    if-gtz v0, :cond_3

    .line 27
    .line 28
    :goto_0
    return-void

    .line 29
    :cond_3
    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->y:Z

    .line 31
    .line 32
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->k:Lcom/mycompany/app/view/MyRecyclerView;

    .line 33
    .line 34
    new-instance v1, Lcom/mycompany/app/quick/QuickView$10;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Lcom/mycompany/app/quick/QuickView$10;-><init>(Lcom/mycompany/app/quick/QuickView;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public static bridge synthetic b(Lcom/mycompany/app/quick/QuickView;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mycompany/app/quick/QuickView;->getNewsProgress()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(Lcom/mycompany/app/quick/QuickView;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/quick/QuickView;->setButtonView(Z)V

    return-void
.end method

.method public static d(Lcom/mycompany/app/quick/QuickView;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->w:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->m:Lcom/mycompany/app/view/MyManagerGrid;

    .line 7
    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/quick/QuickAdapter;->I()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    add-int/lit8 v0, v0, -0x1

    .line 20
    .line 21
    if-gtz v0, :cond_2

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    iget-object p0, p0, Lcom/mycompany/app/quick/QuickView;->m:Lcom/mycompany/app/view/MyManagerGrid;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    neg-int v0, v0

    .line 28
    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->k1(II)V

    .line 29
    .line 30
    .line 31
    :cond_3
    :goto_0
    return-void
.end method

.method private getNewsProgress()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-interface {v0}, Lcom/mycompany/app/quick/QuickView$QuickViewListener;->h()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public static l(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    const-string v0, "en-US&gl=US&ceid=US:en"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    sget v1, Lcom/mycompany/app/pref/PrefZtwo;->N:I

    .line 7
    .line 8
    if-ltz v1, :cond_1

    .line 9
    .line 10
    array-length v2, p1

    .line 11
    if-lt v1, v2, :cond_9

    .line 12
    .line 13
    :cond_1
    invoke-static {}, Lcom/mycompany/app/main/MainApp;->j()Ljava/util/Locale;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, -0x1

    .line 18
    if-nez v1, :cond_3

    .line 19
    .line 20
    :cond_2
    :goto_0
    move v5, v2

    .line 21
    goto :goto_3

    .line 22
    :cond_3
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-eqz v4, :cond_4

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_4
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_5

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_5
    array-length v4, p1

    .line 45
    const/4 v5, 0x0

    .line 46
    :goto_1
    if-ge v5, v4, :cond_2

    .line 47
    .line 48
    aget-object v6, p1, v5

    .line 49
    .line 50
    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    if-nez v7, :cond_6

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_6
    const/16 v7, 0x3d

    .line 58
    .line 59
    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    add-int/lit8 v7, v7, 0x1

    .line 64
    .line 65
    invoke-virtual {v6, v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-nez v6, :cond_7

    .line 70
    .line 71
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_7
    :goto_3
    if-ne v5, v2, :cond_8

    .line 75
    .line 76
    const/16 v1, 0x1b

    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_8
    move v1, v5

    .line 80
    :goto_4
    sget v2, Lcom/mycompany/app/pref/PrefZtwo;->N:I

    .line 81
    .line 82
    if-eq v2, v1, :cond_9

    .line 83
    .line 84
    sput v1, Lcom/mycompany/app/pref/PrefZtwo;->N:I

    .line 85
    .line 86
    const/16 v2, 0x10

    .line 87
    .line 88
    const-string v3, "mNewsLang2"

    .line 89
    .line 90
    invoke-static {p0, v2, v1, v3}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_9
    if-ltz v1, :cond_a

    .line 94
    .line 95
    array-length p0, p1

    .line 96
    if-ge v1, p0, :cond_a

    .line 97
    .line 98
    aget-object p0, p1, v1

    .line 99
    .line 100
    return-object p0

    .line 101
    :cond_a
    return-object v0
.end method

.method public static m(Ljava/util/List;)Z
    .locals 2

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

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
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    iget v0, v0, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->a:I

    .line 30
    .line 31
    const/4 v1, 0x7

    .line 32
    if-ne v0, v1, :cond_1

    .line 33
    .line 34
    const/4 p0, 0x1

    .line 35
    return p0

    .line 36
    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 37
    return p0
.end method

.method public static s()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/mycompany/app/pref/PrefZtwo;->L:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_0
    const-string v0, "https://news.google.com/rss"

    .line 12
    .line 13
    sget-object v1, Lcom/mycompany/app/pref/PrefZtwo;->L:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    xor-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    return v0
.end method

.method private setButtonView(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-boolean v1, p0, Lcom/mycompany/app/quick/QuickView;->g:Z

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    move v1, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/16 v1, 0x8

    .line 18
    .line 19
    :goto_0
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 23
    .line 24
    iget-boolean v0, v0, Lcom/mycompany/app/quick/QuickAdapter;->q:Z

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickView;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 29
    .line 30
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setEnabled(Z)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickView;->C()V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setEnabled(Z)V

    .line 41
    .line 42
    .line 43
    sget-boolean v0, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/mycompany/app/quick/QuickAdapter;->D()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-nez p1, :cond_3

    .line 56
    .line 57
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickView;->c:Landroid/content/Context;

    .line 58
    .line 59
    sget v0, Lnet/kaki87/soul2/testing/R$string;->import_no_quick:I

    .line 60
    .line 61
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 62
    .line 63
    .line 64
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->k:Lcom/mycompany/app/view/MyRecyclerView;

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
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    return v1

    .line 14
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickView;->r()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const-wide/16 v1, 0x0

    .line 19
    .line 20
    if-eqz v0, :cond_4

    .line 21
    .line 22
    iget-wide v3, p0, Lcom/mycompany/app/quick/QuickView;->d0:J

    .line 23
    .line 24
    cmp-long v0, v3, v1

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    iput-wide v0, p0, Lcom/mycompany/app/quick/QuickView;->d0:J

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    iget-wide v2, p0, Lcom/mycompany/app/quick/QuickView;->d0:J

    .line 40
    .line 41
    sub-long/2addr v0, v2

    .line 42
    const-wide/16 v2, 0x1f4

    .line 43
    .line 44
    cmp-long v0, v0, v2

    .line 45
    .line 46
    if-lez v0, :cond_3

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickView;->n()V

    .line 49
    .line 50
    .line 51
    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 52
    return v0

    .line 53
    :cond_4
    iput-wide v1, p0, Lcom/mycompany/app/quick/QuickView;->d0:J

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickView;->F()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    return v0
.end method

.method public final B()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->e0:Z

    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/quick/QuickView$20;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/quick/QuickView$20;-><init>(Lcom/mycompany/app/quick/QuickView;)V

    .line 7
    .line 8
    .line 9
    const-wide/16 v1, 0xc8

    .line 10
    .line 11
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final C()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->g:Z

    .line 7
    .line 8
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->C5(Z)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const v1, 0x3f333333    # 0.7f

    .line 13
    .line 14
    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 18
    .line 19
    const v2, -0x5e8a8a8b

    .line 20
    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    sget-boolean v0, Lcom/mycompany/app/pref/PrefWeb;->U:Z

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 31
    .line 32
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_arrow_drop_down_black_24:I

    .line 33
    .line 34
    invoke-virtual {v0, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setMaxAlpha(F)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 43
    .line 44
    sget v1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 45
    .line 46
    int-to-float v1, v1

    .line 47
    invoke-virtual {v0, v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->l(FZ)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 51
    .line 52
    const/4 v1, -0x1

    .line 53
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 58
    .line 59
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_arrow_drop_down_dark_24:I

    .line 60
    .line 61
    invoke-virtual {v0, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setMaxAlpha(F)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 70
    .line 71
    sget v1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 72
    .line 73
    int-to-float v1, v1

    .line 74
    invoke-virtual {v0, v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->l(FZ)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 78
    .line 79
    const/high16 v1, -0x1000000

    .line 80
    .line 81
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_3
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 86
    .line 87
    const/4 v2, 0x0

    .line 88
    if-eqz v0, :cond_4

    .line 89
    .line 90
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 91
    .line 92
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_arrow_drop_down_dark_24:I

    .line 93
    .line 94
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setMaxAlpha(F)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 103
    .line 104
    const v1, -0xc0c0c1

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 112
    .line 113
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_arrow_drop_down_black_24:I

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 119
    .line 120
    const/high16 v1, 0x3f800000    # 1.0f

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setMaxAlpha(F)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 126
    .line 127
    const v1, -0x1f1f20

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 131
    .line 132
    .line 133
    return-void
.end method

.method public final D(ZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->m:Lcom/mycompany/app/view/MyManagerGrid;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->k:Lcom/mycompany/app/view/MyRecyclerView;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v1, Lcom/mycompany/app/quick/QuickView$11;

    .line 11
    .line 12
    invoke-direct {v1, p0, p2, p1}, Lcom/mycompany/app/quick/QuickView$11;-><init>(Lcom/mycompany/app/quick/QuickView;ZZ)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    return-void
.end method

.method public final E()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->k:Lcom/mycompany/app/view/MyRecyclerView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickView;->n()V

    .line 7
    .line 8
    .line 9
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZtwo;->K:Z

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZtwo;->J:Z

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->g:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    sput-boolean v1, Lcom/mycompany/app/pref/PrefZtwo;->K:Z

    .line 23
    .line 24
    const/16 v0, 0x10

    .line 25
    .line 26
    const-string v2, "mNewsAllow"

    .line 27
    .line 28
    iget-object v3, p0, Lcom/mycompany/app/quick/QuickView;->c:Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {v0, v3, v2, v1}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget v0, p0, Lcom/mycompany/app/quick/QuickView;->s:I

    .line 34
    .line 35
    sget v2, Lcom/mycompany/app/pref/PrefZtri;->l0:I

    .line 36
    .line 37
    if-ne v0, v2, :cond_2

    .line 38
    .line 39
    iget v0, p0, Lcom/mycompany/app/quick/QuickView;->t:I

    .line 40
    .line 41
    sget v2, Lcom/mycompany/app/pref/PrefZtri;->m0:I

    .line 42
    .line 43
    if-ne v0, v2, :cond_2

    .line 44
    .line 45
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->u:Z

    .line 46
    .line 47
    sget-boolean v2, Lcom/mycompany/app/pref/PrefPdf;->G:Z

    .line 48
    .line 49
    if-ne v0, v2, :cond_2

    .line 50
    .line 51
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->v:Z

    .line 52
    .line 53
    sget-boolean v2, Lcom/mycompany/app/pref/PrefZtri;->k0:Z

    .line 54
    .line 55
    if-ne v0, v2, :cond_2

    .line 56
    .line 57
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->w:Z

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickView;->t()Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-ne v0, v2, :cond_2

    .line 64
    .line 65
    iget v0, p0, Lcom/mycompany/app/quick/QuickView;->x:I

    .line 66
    .line 67
    invoke-virtual {p0, v1}, Lcom/mycompany/app/quick/QuickView;->k(I)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eq v0, v2, :cond_3

    .line 72
    .line 73
    :cond_2
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickView;->i()V

    .line 74
    .line 75
    .line 76
    :cond_3
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->r:Z

    .line 77
    .line 78
    sget-boolean v2, Lcom/mycompany/app/pref/PrefZtri;->i0:Z

    .line 79
    .line 80
    if-eq v0, v2, :cond_4

    .line 81
    .line 82
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->g:Z

    .line 83
    .line 84
    invoke-virtual {p0, v0}, Lcom/mycompany/app/quick/QuickView;->v(Z)V

    .line 85
    .line 86
    .line 87
    :cond_4
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZtwo;->J:Z

    .line 88
    .line 89
    const/4 v2, 0x1

    .line 90
    if-eqz v0, :cond_5

    .line 91
    .line 92
    sget-boolean v3, Lcom/mycompany/app/pref/PrefZtwo;->O:Z

    .line 93
    .line 94
    if-eqz v3, :cond_5

    .line 95
    .line 96
    move v3, v2

    .line 97
    goto :goto_0

    .line 98
    :cond_5
    move v3, v1

    .line 99
    :goto_0
    if-eqz v3, :cond_6

    .line 100
    .line 101
    sget-object v4, Lcom/mycompany/app/pref/PrefZtwo;->P:Ljava/lang/String;

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_6
    const-string v4, ""

    .line 105
    .line 106
    :goto_1
    iget-boolean v5, p0, Lcom/mycompany/app/quick/QuickView;->R:Z

    .line 107
    .line 108
    if-eqz v5, :cond_7

    .line 109
    .line 110
    if-nez v0, :cond_7

    .line 111
    .line 112
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->g:Z

    .line 113
    .line 114
    if-eqz v0, :cond_7

    .line 115
    .line 116
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->m()V

    .line 121
    .line 122
    .line 123
    :cond_7
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->R:Z

    .line 124
    .line 125
    sget-boolean v5, Lcom/mycompany/app/pref/PrefZtwo;->J:Z

    .line 126
    .line 127
    if-ne v0, v5, :cond_9

    .line 128
    .line 129
    iget v0, p0, Lcom/mycompany/app/quick/QuickView;->T:I

    .line 130
    .line 131
    sget v5, Lcom/mycompany/app/pref/PrefZtwo;->N:I

    .line 132
    .line 133
    if-ne v0, v5, :cond_9

    .line 134
    .line 135
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->U:Z

    .line 136
    .line 137
    if-ne v0, v3, :cond_9

    .line 138
    .line 139
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->V:Ljava/lang/String;

    .line 140
    .line 141
    invoke-static {v0, v4}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-eqz v0, :cond_9

    .line 146
    .line 147
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->S:Ljava/lang/String;

    .line 148
    .line 149
    sget-object v3, Lcom/mycompany/app/pref/PrefZtwo;->L:Ljava/lang/String;

    .line 150
    .line 151
    invoke-static {v0, v3}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-eqz v0, :cond_9

    .line 156
    .line 157
    iget-wide v3, p0, Lcom/mycompany/app/quick/QuickView;->W:J

    .line 158
    .line 159
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->c:Landroid/content/Context;

    .line 160
    .line 161
    invoke-static {v0}, Lcom/mycompany/app/data/DataNews;->a(Landroid/content/Context;)Lcom/mycompany/app/data/DataNews;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    iget-wide v5, v0, Lcom/mycompany/app/data/DataNews;->c:J

    .line 166
    .line 167
    cmp-long v0, v3, v5

    .line 168
    .line 169
    if-eqz v0, :cond_8

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_8
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZtwo;->J:Z

    .line 173
    .line 174
    if-eqz v0, :cond_a

    .line 175
    .line 176
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->g:Z

    .line 177
    .line 178
    if-eqz v0, :cond_a

    .line 179
    .line 180
    iget-wide v3, p0, Lcom/mycompany/app/quick/QuickView;->W:J

    .line 181
    .line 182
    const-wide/16 v5, 0x0

    .line 183
    .line 184
    cmp-long v0, v3, v5

    .line 185
    .line 186
    if-eqz v0, :cond_a

    .line 187
    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 189
    .line 190
    .line 191
    move-result-wide v3

    .line 192
    iget-wide v5, p0, Lcom/mycompany/app/quick/QuickView;->W:J

    .line 193
    .line 194
    const-wide/32 v7, 0x1b7740

    .line 195
    .line 196
    .line 197
    add-long/2addr v5, v7

    .line 198
    cmp-long v0, v3, v5

    .line 199
    .line 200
    if-lez v0, :cond_a

    .line 201
    .line 202
    invoke-virtual {p0, v2}, Lcom/mycompany/app/quick/QuickView;->u(Z)V

    .line 203
    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_9
    :goto_2
    invoke-virtual {p0, v1}, Lcom/mycompany/app/quick/QuickView;->g(Z)V

    .line 207
    .line 208
    .line 209
    :cond_a
    :goto_3
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZtwo;->J:Z

    .line 210
    .line 211
    if-eqz v0, :cond_c

    .line 212
    .line 213
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->g:Z

    .line 214
    .line 215
    if-eqz v0, :cond_c

    .line 216
    .line 217
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->a0:Z

    .line 218
    .line 219
    if-nez v0, :cond_c

    .line 220
    .line 221
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 222
    .line 223
    if-nez v0, :cond_b

    .line 224
    .line 225
    move v0, v1

    .line 226
    goto :goto_4

    .line 227
    :cond_b
    invoke-interface {v0}, Lcom/mycompany/app/quick/QuickView$QuickViewListener;->x()Z

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    :goto_4
    if-nez v0, :cond_c

    .line 232
    .line 233
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->c:Landroid/content/Context;

    .line 234
    .line 235
    invoke-static {v0}, Lcom/mycompany/app/data/DataNews;->a(Landroid/content/Context;)Lcom/mycompany/app/data/DataNews;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    iget-object v0, v0, Lcom/mycompany/app/data/DataNews;->a:Ljava/util/List;

    .line 240
    .line 241
    invoke-static {v0}, Lcom/mycompany/app/quick/QuickView;->m(Ljava/util/List;)Z

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    if-nez v0, :cond_c

    .line 246
    .line 247
    invoke-virtual {p0, v2}, Lcom/mycompany/app/quick/QuickView;->u(Z)V

    .line 248
    .line 249
    .line 250
    :cond_c
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->A:Z

    .line 251
    .line 252
    if-eqz v0, :cond_d

    .line 253
    .line 254
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZtri;->h0:Z

    .line 255
    .line 256
    if-nez v0, :cond_d

    .line 257
    .line 258
    iput-boolean v1, p0, Lcom/mycompany/app/quick/QuickView;->A:Z

    .line 259
    .line 260
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 261
    .line 262
    if-eqz v0, :cond_d

    .line 263
    .line 264
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setNoti(Z)V

    .line 265
    .line 266
    .line 267
    :cond_d
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 268
    .line 269
    .line 270
    iput-boolean v1, p0, Lcom/mycompany/app/quick/QuickView;->M:Z

    .line 271
    .line 272
    return-void
.end method

.method public final F()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v2, p0, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-boolean v2, v0, Lcom/mycompany/app/quick/QuickAdapter;->q:Z

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v2, -0x1

    .line 17
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/quick/QuickAdapter;->S(IZ)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v1}, Lcom/mycompany/app/quick/QuickView;->setButtonView(Z)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 24
    .line 25
    invoke-interface {v0, v1}, Lcom/mycompany/app/quick/QuickView$QuickViewListener;->i(Z)V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    return v0

    .line 30
    :cond_2
    :goto_0
    return v1
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickView;->r()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    const/4 v4, 0x1

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    iget-wide v5, p0, Lcom/mycompany/app/quick/QuickView;->d0:J

    .line 20
    .line 21
    cmp-long p1, v5, v1

    .line 22
    .line 23
    if-nez p1, :cond_2

    .line 24
    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    iput-wide v0, p0, Lcom/mycompany/app/quick/QuickView;->d0:J

    .line 30
    .line 31
    return v4

    .line 32
    :cond_0
    if-eq p1, v4, :cond_1

    .line 33
    .line 34
    if-ne p1, v3, :cond_2

    .line 35
    .line 36
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    iget-wide v2, p0, Lcom/mycompany/app/quick/QuickView;->d0:J

    .line 41
    .line 42
    sub-long/2addr v0, v2

    .line 43
    const-wide/16 v2, 0x1f4

    .line 44
    .line 45
    cmp-long p1, v0, v2

    .line 46
    .line 47
    if-lez p1, :cond_2

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickView;->n()V

    .line 50
    .line 51
    .line 52
    :cond_2
    return v4

    .line 53
    :cond_3
    iput-wide v1, p0, Lcom/mycompany/app/quick/QuickView;->d0:J

    .line 54
    .line 55
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZone;->z:Z

    .line 56
    .line 57
    if-eqz v0, :cond_13

    .line 58
    .line 59
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->g:Z

    .line 60
    .line 61
    if-nez v0, :cond_4

    .line 62
    .line 63
    goto/16 :goto_4

    .line 64
    .line 65
    :cond_4
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->p:Z

    .line 66
    .line 67
    if-nez v0, :cond_12

    .line 68
    .line 69
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 70
    .line 71
    if-eqz v0, :cond_12

    .line 72
    .line 73
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 74
    .line 75
    if-eqz v0, :cond_12

    .line 76
    .line 77
    iget-boolean v0, v0, Lcom/mycompany/app/quick/QuickAdapter;->q:Z

    .line 78
    .line 79
    if-eqz v0, :cond_5

    .line 80
    .line 81
    goto/16 :goto_3

    .line 82
    .line 83
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    const/4 v1, 0x0

    .line 88
    if-eqz v0, :cond_d

    .line 89
    .line 90
    if-eq v0, v4, :cond_b

    .line 91
    .line 92
    const/4 v2, 0x2

    .line 93
    const/4 v5, 0x0

    .line 94
    if-eq v0, v2, :cond_8

    .line 95
    .line 96
    if-eq v0, v3, :cond_b

    .line 97
    .line 98
    const/4 v2, 0x5

    .line 99
    if-eq v0, v2, :cond_6

    .line 100
    .line 101
    goto/16 :goto_2

    .line 102
    .line 103
    :cond_6
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickView;->x()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_7

    .line 108
    .line 109
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 110
    .line 111
    invoke-interface {v0, v5, v5, v3}, Lcom/mycompany/app/quick/QuickView$QuickViewListener;->g(FFI)Z

    .line 112
    .line 113
    .line 114
    :cond_7
    iput-boolean v1, p0, Lcom/mycompany/app/quick/QuickView;->O:Z

    .line 115
    .line 116
    goto/16 :goto_2

    .line 117
    .line 118
    :cond_8
    iget-boolean v2, p0, Lcom/mycompany/app/quick/QuickView;->P:Z

    .line 119
    .line 120
    if-eqz v2, :cond_a

    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickView;->x()Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_9

    .line 127
    .line 128
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 129
    .line 130
    invoke-interface {v0, v5, v5, v3}, Lcom/mycompany/app/quick/QuickView$QuickViewListener;->g(FFI)Z

    .line 131
    .line 132
    .line 133
    :cond_9
    iput-boolean v1, p0, Lcom/mycompany/app/quick/QuickView;->O:Z

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_a
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickView;->x()Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-eqz v1, :cond_11

    .line 141
    .line 142
    iget-object v1, p0, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 143
    .line 144
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    invoke-interface {v1, v2, v3, v0}, Lcom/mycompany/app/quick/QuickView$QuickViewListener;->g(FFI)Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-eqz v0, :cond_11

    .line 157
    .line 158
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->k:Lcom/mycompany/app/view/MyRecyclerView;

    .line 159
    .line 160
    if-eqz v0, :cond_11

    .line 161
    .line 162
    invoke-virtual {v0, v4}, Lcom/mycompany/app/view/MyRecyclerView;->setPullDown(Z)V

    .line 163
    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_b
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickView;->x()Z

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    if-eqz v2, :cond_c

    .line 171
    .line 172
    iget-object v2, p0, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 173
    .line 174
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 179
    .line 180
    .line 181
    move-result v4

    .line 182
    invoke-interface {v2, v3, v4, v0}, Lcom/mycompany/app/quick/QuickView$QuickViewListener;->g(FFI)Z

    .line 183
    .line 184
    .line 185
    :cond_c
    iput-boolean v1, p0, Lcom/mycompany/app/quick/QuickView;->O:Z

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_d
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->w:Z

    .line 189
    .line 190
    if-eqz v0, :cond_10

    .line 191
    .line 192
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->P:Z

    .line 193
    .line 194
    if-nez v0, :cond_f

    .line 195
    .line 196
    iget v0, p0, Lcom/mycompany/app/quick/QuickView;->Q:I

    .line 197
    .line 198
    if-nez v0, :cond_e

    .line 199
    .line 200
    goto :goto_0

    .line 201
    :cond_e
    move v4, v1

    .line 202
    :goto_0
    iput-boolean v4, p0, Lcom/mycompany/app/quick/QuickView;->O:Z

    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_f
    iput-boolean v1, p0, Lcom/mycompany/app/quick/QuickView;->O:Z

    .line 206
    .line 207
    goto :goto_1

    .line 208
    :cond_10
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->P:Z

    .line 209
    .line 210
    xor-int/2addr v0, v4

    .line 211
    iput-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->O:Z

    .line 212
    .line 213
    :goto_1
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->O:Z

    .line 214
    .line 215
    if-eqz v0, :cond_11

    .line 216
    .line 217
    sget-boolean v0, Lcom/mycompany/app/pref/PrefWeb;->t:Z

    .line 218
    .line 219
    if-nez v0, :cond_11

    .line 220
    .line 221
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 226
    .line 227
    int-to-float v2, v2

    .line 228
    cmpg-float v0, v0, v2

    .line 229
    .line 230
    if-gez v0, :cond_11

    .line 231
    .line 232
    iput-boolean v1, p0, Lcom/mycompany/app/quick/QuickView;->O:Z

    .line 233
    .line 234
    :cond_11
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 235
    .line 236
    .line 237
    move-result p1

    .line 238
    return p1

    .line 239
    :cond_12
    :goto_3
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    return p1

    .line 244
    :cond_13
    :goto_4
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 245
    .line 246
    .line 247
    move-result p1

    .line 248
    return p1
.end method

.method public final e(Ljava/lang/String;IILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mycompany/app/quick/QuickAdapter;->w(Ljava/lang/String;IILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, p1}, Lcom/mycompany/app/quick/QuickView;->setButtonView(Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final f()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickView;->t()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget-boolean v1, p0, Lcom/mycompany/app/quick/QuickView;->r:Z

    .line 14
    .line 15
    sget-boolean v2, Lcom/mycompany/app/pref/PrefZtri;->i0:Z

    .line 16
    .line 17
    if-ne v1, v2, :cond_3

    .line 18
    .line 19
    iget-boolean v1, p0, Lcom/mycompany/app/quick/QuickView;->R:Z

    .line 20
    .line 21
    sget-boolean v2, Lcom/mycompany/app/pref/PrefZtwo;->J:Z

    .line 22
    .line 23
    if-eq v1, v2, :cond_2

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    :goto_0
    return-void

    .line 27
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/mycompany/app/quick/QuickView;->k:Lcom/mycompany/app/view/MyRecyclerView;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {p0, v1}, Lcom/mycompany/app/quick/QuickView;->k(I)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const/4 v2, 0x1

    .line 38
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/quick/QuickAdapter;->U(IZ)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final g(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZtwo;->K:Z

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZtwo;->J:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->g:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    sput-boolean v1, Lcom/mycompany/app/pref/PrefZtwo;->K:Z

    .line 20
    .line 21
    const/16 v0, 0x10

    .line 22
    .line 23
    const-string v2, "mNewsAllow"

    .line 24
    .line 25
    iget-object v3, p0, Lcom/mycompany/app/quick/QuickView;->c:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {v0, v3, v2, v1}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickView;->f()V

    .line 31
    .line 32
    .line 33
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZtwo;->J:Z

    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->R:Z

    .line 36
    .line 37
    sget-object v2, Lcom/mycompany/app/pref/PrefZtwo;->L:Ljava/lang/String;

    .line 38
    .line 39
    iput-object v2, p0, Lcom/mycompany/app/quick/QuickView;->S:Ljava/lang/String;

    .line 40
    .line 41
    sget v2, Lcom/mycompany/app/pref/PrefZtwo;->N:I

    .line 42
    .line 43
    iput v2, p0, Lcom/mycompany/app/quick/QuickView;->T:I

    .line 44
    .line 45
    const/4 v2, 0x1

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    sget-boolean v3, Lcom/mycompany/app/pref/PrefZtwo;->O:Z

    .line 49
    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    move v1, v2

    .line 53
    :cond_2
    iput-boolean v1, p0, Lcom/mycompany/app/quick/QuickView;->U:Z

    .line 54
    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    sget-object v1, Lcom/mycompany/app/pref/PrefZtwo;->P:Ljava/lang/String;

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    const-string v1, ""

    .line 61
    .line 62
    :goto_0
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickView;->V:Ljava/lang/String;

    .line 63
    .line 64
    if-eqz v0, :cond_5

    .line 65
    .line 66
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->g:Z

    .line 67
    .line 68
    if-eqz v0, :cond_5

    .line 69
    .line 70
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->a0:Z

    .line 71
    .line 72
    if-nez v0, :cond_4

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Lcom/mycompany/app/quick/QuickView;->u(Z)V

    .line 75
    .line 76
    .line 77
    :cond_4
    :goto_1
    return-void

    .line 78
    :cond_5
    const-wide/16 v0, 0x0

    .line 79
    .line 80
    iput-wide v0, p0, Lcom/mycompany/app/quick/QuickView;->W:J

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickView;->B()V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 86
    .line 87
    const/4 v0, 0x0

    .line 88
    invoke-virtual {p1, v0, v2}, Lcom/mycompany/app/quick/QuickAdapter;->a0(Ljava/util/List;Z)V

    .line 89
    .line 90
    .line 91
    iput-boolean v2, p0, Lcom/mycompany/app/quick/QuickView;->D:Z

    .line 92
    .line 93
    return-void
.end method

.method public getTransPos()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

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
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickAdapter;->k:Lcom/mycompany/app/view/MyManagerGrid;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    return v1

    .line 12
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->U0()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public final h(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->m:Lcom/mycompany/app/view/MyManagerGrid;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    iget p1, p0, Lcom/mycompany/app/quick/QuickView;->t:I

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    iget p1, p0, Lcom/mycompany/app/quick/QuickView;->s:I

    .line 12
    .line 13
    :goto_0
    if-nez p1, :cond_2

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_2
    iget v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 17
    .line 18
    if-eq v1, p1, :cond_3

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->x1(I)V

    .line 21
    .line 22
    .line 23
    :cond_3
    :goto_1
    return-void
.end method

.method public final i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget v0, Lcom/mycompany/app/pref/PrefZtri;->l0:I

    .line 7
    .line 8
    const/4 v1, 0x5

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    sput v1, Lcom/mycompany/app/pref/PrefZtri;->l0:I

    .line 12
    .line 13
    :cond_1
    sget v0, Lcom/mycompany/app/pref/PrefZtri;->m0:I

    .line 14
    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    sput v1, Lcom/mycompany/app/pref/PrefZtri;->m0:I

    .line 18
    .line 19
    :cond_2
    sget v0, Lcom/mycompany/app/pref/PrefZtri;->l0:I

    .line 20
    .line 21
    iput v0, p0, Lcom/mycompany/app/quick/QuickView;->s:I

    .line 22
    .line 23
    sget v0, Lcom/mycompany/app/pref/PrefZtri;->m0:I

    .line 24
    .line 25
    iput v0, p0, Lcom/mycompany/app/quick/QuickView;->t:I

    .line 26
    .line 27
    sget-boolean v0, Lcom/mycompany/app/pref/PrefPdf;->G:Z

    .line 28
    .line 29
    iput-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->u:Z

    .line 30
    .line 31
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZtri;->k0:Z

    .line 32
    .line 33
    iput-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->v:Z

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickView;->t()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iput-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->w:Z

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, v0}, Lcom/mycompany/app/quick/QuickView;->k(I)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iput v0, p0, Lcom/mycompany/app/quick/QuickView;->x:I

    .line 47
    .line 48
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 49
    .line 50
    if-nez v0, :cond_3

    .line 51
    .line 52
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->c:Landroid/content/Context;

    .line 53
    .line 54
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->N5(Landroid/content/Context;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    invoke-interface {v0}, Lcom/mycompany/app/quick/QuickView$QuickViewListener;->b()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    :goto_0
    invoke-virtual {p0, v0}, Lcom/mycompany/app/quick/QuickView;->h(Z)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 67
    .line 68
    iget-boolean v1, p0, Lcom/mycompany/app/quick/QuickView;->w:Z

    .line 69
    .line 70
    iget-object v2, p0, Lcom/mycompany/app/quick/QuickView;->k:Lcom/mycompany/app/view/MyRecyclerView;

    .line 71
    .line 72
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    invoke-virtual {p0, v2}, Lcom/mycompany/app/quick/QuickView;->k(I)I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/quick/QuickAdapter;->U(IZ)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/mycompany/app/quick/QuickAdapter;->V()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickView;->B()V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 92
    .line 93
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public final j()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->j0:Z

    .line 9
    .line 10
    new-instance v1, Lcom/mycompany/app/quick/QuickView$16;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/mycompany/app/quick/QuickView$16;-><init>(Lcom/mycompany/app/quick/QuickView;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v1}, Lcom/mycompany/app/quick/QuickView;->z(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return v0
.end method

.method public final k(I)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->g:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return p1

    .line 6
    :cond_0
    sget-boolean v0, Lcom/mycompany/app/pref/PrefWeb;->v:Z

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->H3()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    sub-int/2addr p1, v0

    .line 15
    :cond_1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefWeb;->w:Z

    .line 16
    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->j0()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    sub-int/2addr p1, v0

    .line 24
    :cond_2
    return p1
.end method

.method public final n()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/mycompany/app/quick/QuickView;->d0:J

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->e0:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->f0:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->g0:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->h0:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->i0:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->j0:Z

    .line 17
    .line 18
    return-void
.end method

.method public final o()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->k:Lcom/mycompany/app/view/MyRecyclerView;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_7

    .line 10
    .line 11
    :cond_0
    new-instance v0, Landroid/os/Handler;

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/mycompany/app/quick/QuickView;->f:Landroid/os/Handler;

    .line 21
    .line 22
    sget v0, Lcom/mycompany/app/pref/PrefZtri;->l0:I

    .line 23
    .line 24
    const/4 v1, 0x5

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    sput v1, Lcom/mycompany/app/pref/PrefZtri;->l0:I

    .line 28
    .line 29
    :cond_1
    sget v0, Lcom/mycompany/app/pref/PrefZtri;->m0:I

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    sput v1, Lcom/mycompany/app/pref/PrefZtri;->m0:I

    .line 34
    .line 35
    :cond_2
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZtri;->i0:Z

    .line 36
    .line 37
    iput-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->r:Z

    .line 38
    .line 39
    sget v0, Lcom/mycompany/app/pref/PrefZtri;->l0:I

    .line 40
    .line 41
    iput v0, p0, Lcom/mycompany/app/quick/QuickView;->s:I

    .line 42
    .line 43
    sget v0, Lcom/mycompany/app/pref/PrefZtri;->m0:I

    .line 44
    .line 45
    iput v0, p0, Lcom/mycompany/app/quick/QuickView;->t:I

    .line 46
    .line 47
    sget-boolean v0, Lcom/mycompany/app/pref/PrefPdf;->G:Z

    .line 48
    .line 49
    iput-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->u:Z

    .line 50
    .line 51
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZtri;->k0:Z

    .line 52
    .line 53
    iput-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->v:Z

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickView;->t()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iput-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->w:Z

    .line 60
    .line 61
    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0, v0}, Lcom/mycompany/app/quick/QuickView;->k(I)I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    iput v2, p0, Lcom/mycompany/app/quick/QuickView;->x:I

    .line 67
    .line 68
    iget-boolean v2, p0, Lcom/mycompany/app/quick/QuickView;->w:Z

    .line 69
    .line 70
    iput-boolean v2, p0, Lcom/mycompany/app/quick/QuickView;->y:Z

    .line 71
    .line 72
    const/4 v2, -0x1

    .line 73
    iput v2, p0, Lcom/mycompany/app/quick/QuickView;->z:I

    .line 74
    .line 75
    sget-boolean v2, Lcom/mycompany/app/pref/PrefZtwo;->J:Z

    .line 76
    .line 77
    iput-boolean v2, p0, Lcom/mycompany/app/quick/QuickView;->R:Z

    .line 78
    .line 79
    sget-object v3, Lcom/mycompany/app/pref/PrefZtwo;->L:Ljava/lang/String;

    .line 80
    .line 81
    iput-object v3, p0, Lcom/mycompany/app/quick/QuickView;->S:Ljava/lang/String;

    .line 82
    .line 83
    sget v3, Lcom/mycompany/app/pref/PrefZtwo;->N:I

    .line 84
    .line 85
    iput v3, p0, Lcom/mycompany/app/quick/QuickView;->T:I

    .line 86
    .line 87
    const/4 v3, 0x1

    .line 88
    if-eqz v2, :cond_3

    .line 89
    .line 90
    sget-boolean v2, Lcom/mycompany/app/pref/PrefZtwo;->O:Z

    .line 91
    .line 92
    if-eqz v2, :cond_3

    .line 93
    .line 94
    move v2, v3

    .line 95
    goto :goto_0

    .line 96
    :cond_3
    move v2, v0

    .line 97
    :goto_0
    iput-boolean v2, p0, Lcom/mycompany/app/quick/QuickView;->U:Z

    .line 98
    .line 99
    if-eqz v2, :cond_4

    .line 100
    .line 101
    sget-object v2, Lcom/mycompany/app/pref/PrefZtwo;->P:Ljava/lang/String;

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    const-string v2, ""

    .line 105
    .line 106
    :goto_1
    iput-object v2, p0, Lcom/mycompany/app/quick/QuickView;->V:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {p0, v0}, Lcom/mycompany/app/quick/QuickView;->setColor(Z)V

    .line 109
    .line 110
    .line 111
    new-instance v2, Lcom/mycompany/app/quick/QuickView$1;

    .line 112
    .line 113
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    .line 118
    .line 119
    sget-boolean v2, Lcom/mycompany/app/pref/PrefZtri;->h0:Z

    .line 120
    .line 121
    if-eqz v2, :cond_5

    .line 122
    .line 123
    iput-boolean v3, p0, Lcom/mycompany/app/quick/QuickView;->A:Z

    .line 124
    .line 125
    iget-object v2, p0, Lcom/mycompany/app/quick/QuickView;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 126
    .line 127
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setNoti(Z)V

    .line 128
    .line 129
    .line 130
    :cond_5
    iget-object v2, p0, Lcom/mycompany/app/quick/QuickView;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 131
    .line 132
    new-instance v3, Lcom/mycompany/app/quick/QuickView$2;

    .line 133
    .line 134
    invoke-direct {v3, p0}, Lcom/mycompany/app/quick/QuickView$2;-><init>(Lcom/mycompany/app/quick/QuickView;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    .line 139
    .line 140
    iget-object v2, p0, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 141
    .line 142
    if-nez v2, :cond_6

    .line 143
    .line 144
    iget-object v2, p0, Lcom/mycompany/app/quick/QuickView;->c:Landroid/content/Context;

    .line 145
    .line 146
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->N5(Landroid/content/Context;)Z

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    goto :goto_2

    .line 151
    :cond_6
    invoke-interface {v2}, Lcom/mycompany/app/quick/QuickView$QuickViewListener;->b()Z

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    :goto_2
    if-eqz v2, :cond_7

    .line 156
    .line 157
    iget v2, p0, Lcom/mycompany/app/quick/QuickView;->t:I

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_7
    iget v2, p0, Lcom/mycompany/app/quick/QuickView;->s:I

    .line 161
    .line 162
    :goto_3
    if-nez v2, :cond_8

    .line 163
    .line 164
    goto :goto_4

    .line 165
    :cond_8
    move v1, v2

    .line 166
    :goto_4
    new-instance v2, Lcom/mycompany/app/view/MyManagerGrid;

    .line 167
    .line 168
    invoke-direct {v2, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    .line 169
    .line 170
    .line 171
    iput-object v2, p0, Lcom/mycompany/app/quick/QuickView;->m:Lcom/mycompany/app/view/MyManagerGrid;

    .line 172
    .line 173
    new-instance v1, Lcom/mycompany/app/quick/QuickView$3;

    .line 174
    .line 175
    invoke-direct {v1, p0}, Lcom/mycompany/app/quick/QuickView$3;-><init>(Lcom/mycompany/app/quick/QuickView;)V

    .line 176
    .line 177
    .line 178
    iput-object v1, v2, Landroidx/recyclerview/widget/GridLayoutManager;->K:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 179
    .line 180
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickView;->B()V

    .line 181
    .line 182
    .line 183
    iget-boolean v6, p0, Lcom/mycompany/app/quick/QuickView;->g:Z

    .line 184
    .line 185
    if-eqz v6, :cond_9

    .line 186
    .line 187
    :goto_5
    move v5, v0

    .line 188
    goto :goto_6

    .line 189
    :cond_9
    const/4 v0, 0x3

    .line 190
    goto :goto_5

    .line 191
    :goto_6
    new-instance v3, Lcom/mycompany/app/quick/QuickAdapter;

    .line 192
    .line 193
    iget-object v7, p0, Lcom/mycompany/app/quick/QuickView;->m:Lcom/mycompany/app/view/MyManagerGrid;

    .line 194
    .line 195
    new-instance v8, Lcom/mycompany/app/quick/QuickView$4;

    .line 196
    .line 197
    invoke-direct {v8, p0}, Lcom/mycompany/app/quick/QuickView$4;-><init>(Lcom/mycompany/app/quick/QuickView;)V

    .line 198
    .line 199
    .line 200
    iget-object v4, p0, Lcom/mycompany/app/quick/QuickView;->c:Landroid/content/Context;

    .line 201
    .line 202
    invoke-direct/range {v3 .. v8}, Lcom/mycompany/app/quick/QuickAdapter;-><init>(Landroid/content/Context;IZLcom/mycompany/app/view/MyManagerGrid;Lcom/mycompany/app/quick/QuickAdapter$QuickListener;)V

    .line 203
    .line 204
    .line 205
    iput-object v3, p0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 206
    .line 207
    new-instance v0, Lcom/mycompany/app/quick/QuickView$5;

    .line 208
    .line 209
    invoke-direct {v0, p0}, Lcom/mycompany/app/quick/QuickView$5;-><init>(Lcom/mycompany/app/quick/QuickView;)V

    .line 210
    .line 211
    .line 212
    iput-object v0, v3, Lcom/mycompany/app/quick/QuickAdapter;->m:Lcom/mycompany/app/web/WebTabGridItem$TabGridListener;

    .line 213
    .line 214
    new-instance v0, Lcom/mycompany/app/quick/QuickDragHelper;

    .line 215
    .line 216
    new-instance v1, Lcom/mycompany/app/quick/QuickView$6;

    .line 217
    .line 218
    invoke-direct {v1, p0}, Lcom/mycompany/app/quick/QuickView$6;-><init>(Lcom/mycompany/app/quick/QuickView;)V

    .line 219
    .line 220
    .line 221
    const/4 v2, 0x0

    .line 222
    invoke-direct {v0, v2, v1}, Lcom/mycompany/app/quick/QuickDragHelper;-><init>(Lcom/mycompany/app/quick/QuickSubView;Lcom/mycompany/app/quick/QuickDragHelper$QuickDragListener;)V

    .line 223
    .line 224
    .line 225
    iput-object v0, p0, Lcom/mycompany/app/quick/QuickView;->n:Lcom/mycompany/app/quick/QuickDragHelper;

    .line 226
    .line 227
    new-instance v1, Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 228
    .line 229
    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 230
    .line 231
    .line 232
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickView;->o:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 233
    .line 234
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->k:Lcom/mycompany/app/view/MyRecyclerView;

    .line 235
    .line 236
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->i(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 237
    .line 238
    .line 239
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 240
    .line 241
    iget-boolean v1, p0, Lcom/mycompany/app/quick/QuickView;->w:Z

    .line 242
    .line 243
    iget-object v2, p0, Lcom/mycompany/app/quick/QuickView;->k:Lcom/mycompany/app/view/MyRecyclerView;

    .line 244
    .line 245
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 246
    .line 247
    .line 248
    move-result v2

    .line 249
    invoke-virtual {p0, v2}, Lcom/mycompany/app/quick/QuickView;->k(I)I

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/quick/QuickAdapter;->U(IZ)V

    .line 254
    .line 255
    .line 256
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->k:Lcom/mycompany/app/view/MyRecyclerView;

    .line 257
    .line 258
    new-instance v1, Lcom/mycompany/app/quick/QuickView$7;

    .line 259
    .line 260
    invoke-direct {v1, p0}, Lcom/mycompany/app/quick/QuickView$7;-><init>(Lcom/mycompany/app/quick/QuickView;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyRecyclerView;->setSizeListener(Lcom/mycompany/app/image/ImageSizeListener;)V

    .line 264
    .line 265
    .line 266
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->k:Lcom/mycompany/app/view/MyRecyclerView;

    .line 267
    .line 268
    iget-object v1, p0, Lcom/mycompany/app/quick/QuickView;->m:Lcom/mycompany/app/view/MyManagerGrid;

    .line 269
    .line 270
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 271
    .line 272
    .line 273
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->k:Lcom/mycompany/app/view/MyRecyclerView;

    .line 274
    .line 275
    iget-object v1, p0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 276
    .line 277
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 278
    .line 279
    .line 280
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->k:Lcom/mycompany/app/view/MyRecyclerView;

    .line 281
    .line 282
    new-instance v1, Lcom/mycompany/app/quick/QuickView$8;

    .line 283
    .line 284
    invoke-direct {v1, p0}, Lcom/mycompany/app/quick/QuickView$8;-><init>(Lcom/mycompany/app/quick/QuickView;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->j(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 288
    .line 289
    .line 290
    :cond_a
    :goto_7
    return-void
.end method

.method public final p()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZtwo;->J:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->a0:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickView;->E()V

    .line 10
    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->g:Z

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/mycompany/app/quick/QuickView;->v(Z)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->b0:Lcom/mycompany/app/quick/QuickControl;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickView;->b0:Lcom/mycompany/app/quick/QuickControl;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 27
    .line 28
    if-eqz v1, :cond_4

    .line 29
    .line 30
    iget-object v1, p0, Lcom/mycompany/app/quick/QuickView;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 31
    .line 32
    if-nez v1, :cond_2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    iput-object v0, p0, Lcom/mycompany/app/quick/QuickView;->q:Lcom/mycompany/app/quick/QuickControl;

    .line 36
    .line 37
    const/16 v0, 0x8

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->G:Z

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->G:Z

    .line 49
    .line 50
    iput-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->g0:Z

    .line 51
    .line 52
    new-instance v0, Lcom/mycompany/app/quick/QuickView$17;

    .line 53
    .line 54
    invoke-direct {v0, p0}, Lcom/mycompany/app/quick/QuickView$17;-><init>(Lcom/mycompany/app/quick/QuickView;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0}, Lcom/mycompany/app/quick/QuickView;->z(Ljava/lang/Runnable;)V

    .line 58
    .line 59
    .line 60
    :cond_4
    :goto_0
    return-void
.end method

.method public final q()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->c:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Lcom/mycompany/app/view/MyButtonImage;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    sget v2, Lnet/kaki87/soul2/testing/R$id;->quick_view_set:I

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 14
    .line 15
    .line 16
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 17
    .line 18
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 22
    .line 23
    sget v4, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 24
    .line 25
    sget v5, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 26
    .line 27
    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    .line 32
    .line 33
    new-instance v3, Lcom/mycompany/app/view/MyRecyclerView;

    .line 34
    .line 35
    invoke-direct {v3, v0}, Lcom/mycompany/app/view/MyRecyclerView;-><init>(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    sget v0, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-virtual {v3, v0, v4, v0, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v4}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v4}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 48
    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    invoke-virtual {v3, v0, v0}, Lcom/mycompany/app/view/MyRecyclerView;->u0(ZZ)V

    .line 52
    .line 53
    .line 54
    const/4 v0, 0x3

    .line 55
    const/4 v4, -0x1

    .line 56
    invoke-static {v4, v4, v0, v2}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p0, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    .line 62
    .line 63
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickView;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 64
    .line 65
    iput-object v3, p0, Lcom/mycompany/app/quick/QuickView;->k:Lcom/mycompany/app/view/MyRecyclerView;

    .line 66
    .line 67
    return-void
.end method

.method public final r()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->e0:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->f0:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->g0:Z

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->h0:Z

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->i0:Z

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->j0:Z

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    return v0

    .line 28
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 29
    return v0
.end method

.method public setColor(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->k:Lcom/mycompany/app/view/MyRecyclerView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->g:Z

    .line 7
    .line 8
    const/4 v1, -0x1

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->U4()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    const/high16 v0, -0x1000000

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_3
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 37
    .line 38
    if-eqz v0, :cond_4

    .line 39
    .line 40
    const v0, -0xdededf

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_4
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 48
    .line 49
    .line 50
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickView;->C()V

    .line 51
    .line 52
    .line 53
    if-eqz p1, :cond_5

    .line 54
    .line 55
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 56
    .line 57
    if-eqz p1, :cond_5

    .line 58
    .line 59
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->g:Z

    .line 60
    .line 61
    iput-boolean v0, p1, Lcom/mycompany/app/quick/QuickAdapter;->h:Z

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickView;->B()V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 67
    .line 68
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 69
    .line 70
    .line 71
    :cond_5
    :goto_1
    return-void
.end method

.method public setNewsPrepared(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mycompany/app/quick/QuickAdapter$QuickItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/mycompany/app/quick/QuickAdapter;->a0(Ljava/util/List;Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public setNewsProgress(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickView;->w()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 14
    .line 15
    if-nez p1, :cond_2

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdapter;->k:Lcom/mycompany/app/view/MyManagerGrid;

    .line 22
    .line 23
    if-nez v1, :cond_3

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_3
    iget v0, v0, Lcom/mycompany/app/quick/QuickAdapter;->z:I

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->s(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-nez v0, :cond_4

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_4
    invoke-static {v0}, Lcom/mycompany/app/quick/QuickAdapter;->J(Landroid/view/View;)Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_6

    .line 40
    .line 41
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->z:Lcom/mycompany/app/view/MyProgressBar;

    .line 42
    .line 43
    if-nez v0, :cond_5

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_5
    invoke-virtual {v0, p0, p1}, Lcom/mycompany/app/view/MyProgressBar;->i(Lcom/mycompany/app/quick/QuickView;I)V

    .line 47
    .line 48
    .line 49
    :cond_6
    :goto_0
    return-void
.end method

.method public setQuickControl(Lcom/mycompany/app/quick/QuickControl;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickView;->q:Lcom/mycompany/app/quick/QuickControl;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/quick/QuickAdapter;->A()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/mycompany/app/quick/QuickAdapter;->D()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1, v0, v1}, Lcom/mycompany/app/quick/QuickControl;->c(II)V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    return-void
.end method

.method public setQuickEditMode(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 6
    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    iget-object v1, p0, Lcom/mycompany/app/quick/QuickView;->k:Lcom/mycompany/app/view/MyRecyclerView;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/quick/QuickAdapter;->q:Z

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iput-boolean v2, v0, Lcom/mycompany/app/quick/QuickAdapter;->q:Z

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/mycompany/app/quick/QuickAdapter;->E(I)Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    iget v3, v1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->a:I

    .line 29
    .line 30
    if-nez v3, :cond_2

    .line 31
    .line 32
    iput-boolean v2, v1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->j:Z

    .line 33
    .line 34
    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 35
    .line 36
    .line 37
    :goto_0
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, v0}, Lcom/mycompany/app/quick/QuickView;->setButtonView(Z)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 42
    .line 43
    invoke-interface {v0, v2}, Lcom/mycompany/app/quick/QuickView$QuickViewListener;->i(Z)V

    .line 44
    .line 45
    .line 46
    iput p1, p0, Lcom/mycompany/app/quick/QuickView;->z:I

    .line 47
    .line 48
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickView;->k:Lcom/mycompany/app/view/MyRecyclerView;

    .line 49
    .line 50
    new-instance v0, Lcom/mycompany/app/quick/QuickView$12;

    .line 51
    .line 52
    invoke-direct {v0, p0}, Lcom/mycompany/app/quick/QuickView$12;-><init>(Lcom/mycompany/app/quick/QuickView;)V

    .line 53
    .line 54
    .line 55
    const-wide/16 v1, 0xc8

    .line 56
    .line 57
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 58
    .line 59
    .line 60
    :cond_3
    :goto_1
    return-void
.end method

.method public setQuickSearch(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->f:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickView;->F()Z

    .line 9
    .line 10
    .line 11
    :cond_1
    :goto_0
    return-void
.end method

.method public setTransLoaded(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/quick/QuickAdapter;->f0()V

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-boolean p1, v0, Lcom/mycompany/app/quick/QuickAdapter;->w:Z

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput-boolean p1, v0, Lcom/mycompany/app/quick/QuickAdapter;->w:Z

    .line 17
    .line 18
    iget-object p1, v0, Lcom/mycompany/app/quick/QuickAdapter;->o:Ljava/util/List;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/mycompany/app/quick/QuickAdapter;->c0(Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    return-void
.end method

.method public final t()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZtwo;->y:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->g:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public final u(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickView;->c:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/mycompany/app/data/DataNews;->a(Landroid/content/Context;)Lcom/mycompany/app/data/DataNews;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p1, p1, Lcom/mycompany/app/data/DataNews;->a:Ljava/util/List;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/mycompany/app/quick/QuickView;->m(Ljava/util/List;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->c:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/mycompany/app/data/DataNews;->a(Landroid/content/Context;)Lcom/mycompany/app/data/DataNews;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-wide v0, v0, Lcom/mycompany/app/data/DataNews;->c:J

    .line 30
    .line 31
    iput-wide v0, p0, Lcom/mycompany/app/quick/QuickView;->W:J

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickView;->B()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    invoke-virtual {v0, p1, v1}, Lcom/mycompany/app/quick/QuickAdapter;->a0(Ljava/util/List;Z)V

    .line 40
    .line 41
    .line 42
    iput-boolean v1, p0, Lcom/mycompany/app/quick/QuickView;->D:Z

    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    invoke-interface {p1}, Lcom/mycompany/app/quick/QuickView$QuickViewListener;->y()V

    .line 50
    .line 51
    .line 52
    :cond_3
    new-instance p1, Lcom/mycompany/app/quick/QuickView$19;

    .line 53
    .line 54
    invoke-direct {p1, p0}, Lcom/mycompany/app/quick/QuickView$19;-><init>(Lcom/mycompany/app/quick/QuickView;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final v(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_0

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    goto/16 :goto_0

    .line 12
    .line 13
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 14
    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    goto/16 :goto_0

    .line 18
    .line 19
    :cond_2
    const/4 v1, 0x1

    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz p1, :cond_5

    .line 22
    .line 23
    iget-boolean p1, p0, Lcom/mycompany/app/quick/QuickView;->B:Z

    .line 24
    .line 25
    if-eqz p1, :cond_4

    .line 26
    .line 27
    iput-boolean v2, p0, Lcom/mycompany/app/quick/QuickView;->B:Z

    .line 28
    .line 29
    iput-boolean v2, p0, Lcom/mycompany/app/quick/QuickView;->C:Z

    .line 30
    .line 31
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickView;->f:Landroid/os/Handler;

    .line 32
    .line 33
    if-nez p1, :cond_3

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_3
    new-instance v0, Lcom/mycompany/app/quick/QuickView$13;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Lcom/mycompany/app/quick/QuickView$13;-><init>(Lcom/mycompany/app/quick/QuickView;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_4
    invoke-interface {v0}, Lcom/mycompany/app/quick/QuickView$QuickViewListener;->q()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_5

    .line 50
    .line 51
    iput-boolean v2, p0, Lcom/mycompany/app/quick/QuickView;->B:Z

    .line 52
    .line 53
    iput-boolean v1, p0, Lcom/mycompany/app/quick/QuickView;->C:Z

    .line 54
    .line 55
    return-void

    .line 56
    :cond_5
    iput-boolean v2, p0, Lcom/mycompany/app/quick/QuickView;->B:Z

    .line 57
    .line 58
    iput-boolean v2, p0, Lcom/mycompany/app/quick/QuickView;->C:Z

    .line 59
    .line 60
    iget-boolean p1, p0, Lcom/mycompany/app/quick/QuickView;->g:Z

    .line 61
    .line 62
    if-eqz p1, :cond_7

    .line 63
    .line 64
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 65
    .line 66
    invoke-interface {p1}, Lcom/mycompany/app/quick/QuickView$QuickViewListener;->a()Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_7

    .line 71
    .line 72
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickView;->f:Landroid/os/Handler;

    .line 73
    .line 74
    if-nez p1, :cond_6

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_6
    new-instance v0, Lcom/mycompany/app/quick/QuickView$14;

    .line 78
    .line 79
    invoke-direct {v0, p0}, Lcom/mycompany/app/quick/QuickView$14;-><init>(Lcom/mycompany/app/quick/QuickView;)V

    .line 80
    .line 81
    .line 82
    const-wide/16 v1, 0xc8

    .line 83
    .line 84
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_7
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickView;->f()V

    .line 89
    .line 90
    .line 91
    sget-boolean p1, Lcom/mycompany/app/pref/PrefZtri;->i0:Z

    .line 92
    .line 93
    iput-boolean p1, p0, Lcom/mycompany/app/quick/QuickView;->r:Z

    .line 94
    .line 95
    if-nez p1, :cond_9

    .line 96
    .line 97
    iput-boolean v2, p0, Lcom/mycompany/app/quick/QuickView;->F:Z

    .line 98
    .line 99
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 100
    .line 101
    if-nez p1, :cond_8

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_8
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickView;->B()V

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 108
    .line 109
    const/4 v0, 0x0

    .line 110
    invoke-virtual {p1, v0, v1}, Lcom/mycompany/app/quick/QuickAdapter;->Y(Ljava/util/List;Z)V

    .line 111
    .line 112
    .line 113
    iput-boolean v1, p0, Lcom/mycompany/app/quick/QuickView;->D:Z

    .line 114
    .line 115
    invoke-direct {p0, v2}, Lcom/mycompany/app/quick/QuickView;->setButtonView(Z)V

    .line 116
    .line 117
    .line 118
    iget-boolean p1, p0, Lcom/mycompany/app/quick/QuickView;->a0:Z

    .line 119
    .line 120
    if-eqz p1, :cond_a

    .line 121
    .line 122
    iput-boolean v2, p0, Lcom/mycompany/app/quick/QuickView;->a0:Z

    .line 123
    .line 124
    sget-boolean p1, Lcom/mycompany/app/pref/PrefZtwo;->J:Z

    .line 125
    .line 126
    if-eqz p1, :cond_a

    .line 127
    .line 128
    invoke-virtual {p0, v2}, Lcom/mycompany/app/quick/QuickView;->u(Z)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :cond_9
    iget-boolean p1, p0, Lcom/mycompany/app/quick/QuickView;->F:Z

    .line 133
    .line 134
    if-eqz p1, :cond_b

    .line 135
    .line 136
    :cond_a
    :goto_0
    return-void

    .line 137
    :cond_b
    iput-boolean v1, p0, Lcom/mycompany/app/quick/QuickView;->F:Z

    .line 138
    .line 139
    iput-boolean v1, p0, Lcom/mycompany/app/quick/QuickView;->f0:Z

    .line 140
    .line 141
    new-instance p1, Lcom/mycompany/app/quick/QuickView$15;

    .line 142
    .line 143
    invoke-direct {p1, p0}, Lcom/mycompany/app/quick/QuickView$15;-><init>(Lcom/mycompany/app/quick/QuickView;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, p1}, Lcom/mycompany/app/quick/QuickView;->z(Ljava/lang/Runnable;)V

    .line 147
    .line 148
    .line 149
    return-void
.end method

.method public final w()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickView;->r()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/mycompany/app/quick/QuickView$QuickViewListener;->a()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 27
    .line 28
    iget-boolean v2, v0, Lcom/mycompany/app/quick/QuickAdapter;->y:Z

    .line 29
    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    iget v0, v0, Lcom/mycompany/app/quick/QuickAdapter;->z:I

    .line 33
    .line 34
    const/4 v2, -0x1

    .line 35
    if-eq v0, v2, :cond_2

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    return v0

    .line 39
    :cond_2
    :goto_0
    return v1
.end method

.method public final x()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->O:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZone;->z:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public final y()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZtwo;->J:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickView;->g:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->m()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickView;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->k:Lcom/mycompany/app/view/MyRecyclerView;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickView;->k:Lcom/mycompany/app/view/MyRecyclerView;

    .line 34
    .line 35
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/mycompany/app/quick/QuickAdapter;->M()V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 43
    .line 44
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->n:Lcom/mycompany/app/quick/QuickDragHelper;

    .line 45
    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    iput-object v1, v0, Lcom/mycompany/app/quick/QuickDragHelper;->d:Lcom/mycompany/app/quick/QuickDragHelper$QuickDragListener;

    .line 49
    .line 50
    iput-object v1, v0, Lcom/mycompany/app/quick/QuickDragHelper;->g:Lcom/mycompany/app/quick/QuickSubView;

    .line 51
    .line 52
    iput-object v1, v0, Lcom/mycompany/app/quick/QuickDragHelper;->h:Landroid/view/View;

    .line 53
    .line 54
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickView;->n:Lcom/mycompany/app/quick/QuickDragHelper;

    .line 55
    .line 56
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->I:Lcom/mycompany/app/view/MyCoverView;

    .line 57
    .line 58
    if-eqz v0, :cond_5

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyCoverView;->i()V

    .line 61
    .line 62
    .line 63
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickView;->I:Lcom/mycompany/app/view/MyCoverView;

    .line 64
    .line 65
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->f:Landroid/os/Handler;

    .line 66
    .line 67
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->R6(Landroid/os/Handler;)V

    .line 68
    .line 69
    .line 70
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickView;->f:Landroid/os/Handler;

    .line 71
    .line 72
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 73
    .line 74
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickView;->m:Lcom/mycompany/app/view/MyManagerGrid;

    .line 75
    .line 76
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickView;->o:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 77
    .line 78
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickView;->q:Lcom/mycompany/app/quick/QuickControl;

    .line 79
    .line 80
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickView;->N:Ljava/util/concurrent/ExecutorService;

    .line 81
    .line 82
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickView;->S:Ljava/lang/String;

    .line 83
    .line 84
    return-void
.end method

.method public final z(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->N:Ljava/util/concurrent/ExecutorService;

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
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView;->c:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/mycompany/app/main/MainApp;->i(Landroid/content/Context;)Ljava/util/concurrent/ExecutorService;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    iput-object v0, p0, Lcom/mycompany/app/quick/QuickView;->N:Ljava/util/concurrent/ExecutorService;

    .line 27
    .line 28
    :cond_2
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    :catch_0
    return-void
.end method
