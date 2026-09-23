.class public Lcom/mycompany/app/web/WebTabBarAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/web/WebTabBarAdapter$TabBarListener;,
        Lcom/mycompany/app/web/WebTabBarAdapter$TabBarChangeListener;,
        Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public A:Z

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:I

.field public d:Landroid/content/Context;

.field public e:Lcom/mycompany/app/view/MyRecyclerView;

.field public f:Lcom/mycompany/app/view/MyManagerLinear;

.field public g:Ljava/util/List;

.field public h:I

.field public i:Ljava/util/ArrayList;

.field public j:I

.field public k:Z

.field public l:Lcom/mycompany/app/web/WebTabBarAdapter$TabBarListener;

.field public m:I

.field public n:I

.field public o:I

.field public p:Z

.field public q:Z

.field public r:I

.field public s:Z

.field public t:I

.field public u:Lcom/mycompany/app/main/MainListLoader;

.field public v:Ljava/util/regex/Pattern;

.field public final w:I

.field public final x:I

.field public final y:I

.field public z:Lcom/mycompany/app/web/WebTabBarAdapter$TabBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;IZIILcom/mycompany/app/web/WebTabBarAdapter$TabBarListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p5, p4}, Lcom/mycompany/app/main/MainUtil;->j(IZ)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    move p5, v1

    .line 12
    move p6, p5

    .line 13
    :cond_0
    iput-object p1, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->d:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {p4}, Lcom/mycompany/app/main/MainUtil;->k5(Z)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iput-boolean p1, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->k:Z

    .line 20
    .line 21
    iput p5, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->m:I

    .line 22
    .line 23
    if-nez p5, :cond_1

    .line 24
    .line 25
    move p6, v1

    .line 26
    :cond_1
    iput p6, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->n:I

    .line 27
    .line 28
    invoke-static {p5, p4}, Lcom/mycompany/app/main/MainUtil;->s0(IZ)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iput p1, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->o:I

    .line 33
    .line 34
    iput-object p7, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->l:Lcom/mycompany/app/web/WebTabBarAdapter$TabBarListener;

    .line 35
    .line 36
    iget-object p1, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->d:Landroid/content/Context;

    .line 37
    .line 38
    const/high16 p4, 0x42300000    # 44.0f

    .line 39
    .line 40
    invoke-static {p1, p4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    iput p1, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->w:I

    .line 49
    .line 50
    iget-object p1, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->d:Landroid/content/Context;

    .line 51
    .line 52
    const/high16 p4, 0x42000000    # 32.0f

    .line 53
    .line 54
    invoke-static {p1, p4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    iput p1, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->x:I

    .line 63
    .line 64
    iget-object p1, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->d:Landroid/content/Context;

    .line 65
    .line 66
    const/high16 p4, 0x41000000    # 8.0f

    .line 67
    .line 68
    invoke-static {p1, p4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    iput p1, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->y:I

    .line 77
    .line 78
    :try_start_0
    invoke-virtual {p0, p3, p2}, Lcom/mycompany/app/web/WebTabBarAdapter;->J(ILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catch_0
    iget-object p1, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->l:Lcom/mycompany/app/web/WebTabBarAdapter$TabBarListener;

    .line 83
    .line 84
    if-eqz p1, :cond_2

    .line 85
    .line 86
    invoke-interface {p1}, Lcom/mycompany/app/web/WebTabBarAdapter$TabBarListener;->a()V

    .line 87
    .line 88
    .line 89
    :cond_2
    :goto_0
    new-instance p1, Lcom/mycompany/app/main/MainListLoader;

    .line 90
    .line 91
    iget-object p2, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->d:Landroid/content/Context;

    .line 92
    .line 93
    new-instance p3, Lcom/mycompany/app/web/WebTabBarAdapter$1;

    .line 94
    .line 95
    invoke-direct {p3, p0}, Lcom/mycompany/app/web/WebTabBarAdapter$1;-><init>(Lcom/mycompany/app/web/WebTabBarAdapter;)V

    .line 96
    .line 97
    .line 98
    invoke-direct {p1, p2, v1, p3}, Lcom/mycompany/app/main/MainListLoader;-><init>(Landroid/content/Context;ZLcom/mycompany/app/main/MainListLoader$ListLoadListener;)V

    .line 99
    .line 100
    .line 101
    iput-object p1, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->u:Lcom/mycompany/app/main/MainListLoader;

    .line 102
    .line 103
    return-void
.end method

.method public static A(ILjava/util/ArrayList;II)I
    .locals 3

    .line 1
    move v0, p3

    .line 2
    :goto_0
    if-ge p3, p2, :cond_5

    .line 3
    .line 4
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_3

    .line 13
    :cond_0
    iget-object v2, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 14
    .line 15
    if-eqz v2, :cond_3

    .line 16
    .line 17
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_4

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 32
    .line 33
    if-nez v2, :cond_2

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    iget v2, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 37
    .line 38
    if-ne v2, p0, :cond_1

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_3
    iget v1, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 42
    .line 43
    if-ne v1, p0, :cond_4

    .line 44
    .line 45
    :goto_2
    return v0

    .line 46
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 47
    .line 48
    :goto_3
    add-int/lit8 p3, p3, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_5
    const/4 p0, -0x1

    .line 52
    return p0
.end method

.method public static D(Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget p0, p0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 15
    .line 16
    return p0

    .line 17
    :cond_1
    iget-object p0, p0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 25
    .line 26
    iget p0, p0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 27
    .line 28
    return p0
.end method

.method public static F(Landroid/view/View;)Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    instance-of v0, p0, Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;

    .line 12
    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    :goto_0
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :cond_2
    check-cast p0, Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;

    .line 18
    .line 19
    return-object p0
.end method

.method public static y(IZ)I
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget p0, Lcom/mycompany/app/pref/PrefWeb;->b0:I

    .line 4
    .line 5
    :cond_0
    sget-object v0, Lcom/mycompany/app/main/MainConst;->b0:[I

    .line 6
    .line 7
    array-length v0, v0

    .line 8
    const/4 v1, 0x0

    .line 9
    move v2, v1

    .line 10
    :goto_0
    if-ge v2, v0, :cond_3

    .line 11
    .line 12
    sget-object v3, Lcom/mycompany/app/main/MainConst;->b0:[I

    .line 13
    .line 14
    aget v3, v3, v2

    .line 15
    .line 16
    if-ne p0, v3, :cond_2

    .line 17
    .line 18
    const/high16 v0, -0x1000000

    .line 19
    .line 20
    if-ne p0, v0, :cond_1

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    sget p0, Lnet/kaki87/soul2/testing/R$drawable;->baseline_folder_2_black_24:I

    .line 25
    .line 26
    return p0

    .line 27
    :cond_1
    sget-object p0, Lcom/mycompany/app/main/MainConst;->c0:[I

    .line 28
    .line 29
    aget p0, p0, v2

    .line 30
    .line 31
    return p0

    .line 32
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_3
    sget-object p0, Lcom/mycompany/app/main/MainConst;->c0:[I

    .line 36
    .line 37
    aget p0, p0, v1

    .line 38
    .line 39
    return p0
.end method

.method public static z(Ljava/util/ArrayList;II)I
    .locals 3

    .line 1
    move v0, p2

    .line 2
    :goto_0
    const/4 v1, -0x1

    .line 3
    if-le p2, v1, :cond_5

    .line 4
    .line 5
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_3

    .line 14
    :cond_0
    iget-object v2, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 15
    .line 16
    if-eqz v2, :cond_3

    .line 17
    .line 18
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_4

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 33
    .line 34
    if-nez v2, :cond_2

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    iget v2, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 38
    .line 39
    if-ne v2, p1, :cond_1

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_3
    iget v1, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 43
    .line 44
    if-ne v1, p1, :cond_4

    .line 45
    .line 46
    :goto_2
    return v0

    .line 47
    :cond_4
    add-int/lit8 v0, v0, -0x1

    .line 48
    .line 49
    :goto_3
    add-int/lit8 p2, p2, -0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_5
    return v1
.end method


# virtual methods
.method public final B(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->i:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-ltz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lt p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->i:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    return-object p1

    .line 23
    :catch_0
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 24
    return-object p1
.end method

.method public final C(I)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->i:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    iget-object v3, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->g:Ljava/util/List;

    .line 15
    .line 16
    if-nez v3, :cond_2

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_3

    .line 24
    .line 25
    :goto_0
    return v1

    .line 26
    :cond_3
    iget v3, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->h:I

    .line 27
    .line 28
    if-ne v3, p1, :cond_4

    .line 29
    .line 30
    iget p1, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->j:I

    .line 31
    .line 32
    return p1

    .line 33
    :cond_4
    iget v4, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->j:I

    .line 34
    .line 35
    if-gez v4, :cond_5

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    goto :goto_1

    .line 39
    :cond_5
    if-lt v4, v2, :cond_6

    .line 40
    .line 41
    add-int/lit8 v4, v2, -0x1

    .line 42
    .line 43
    :cond_6
    :goto_1
    if-ge v3, p1, :cond_8

    .line 44
    .line 45
    invoke-static {p1, v0, v2, v4}, Lcom/mycompany/app/web/WebTabBarAdapter;->A(ILjava/util/ArrayList;II)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eq v2, v1, :cond_7

    .line 50
    .line 51
    return v2

    .line 52
    :cond_7
    add-int/lit8 v4, v4, -0x1

    .line 53
    .line 54
    invoke-static {v0, p1, v4}, Lcom/mycompany/app/web/WebTabBarAdapter;->z(Ljava/util/ArrayList;II)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    return p1

    .line 59
    :cond_8
    invoke-static {v0, p1, v4}, Lcom/mycompany/app/web/WebTabBarAdapter;->z(Ljava/util/ArrayList;II)I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eq v3, v1, :cond_9

    .line 64
    .line 65
    return v3

    .line 66
    :cond_9
    add-int/lit8 v4, v4, 0x1

    .line 67
    .line 68
    invoke-static {p1, v0, v2, v4}, Lcom/mycompany/app/web/WebTabBarAdapter;->A(ILjava/util/ArrayList;II)I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    return p1
.end method

.method public final E(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->g:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v1, :cond_1

    .line 5
    .line 6
    if-ltz p1, :cond_1

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-lt p1, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->g:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    return-object p1

    .line 24
    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public final G(Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;I)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move/from16 v4, p2

    .line 6
    .line 7
    iget-object v1, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 8
    .line 9
    if-eqz v1, :cond_37

    .line 10
    .line 11
    iget-object v1, v7, Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;->u:Lcom/mycompany/app/view/MyTabFrame;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto/16 :goto_1c

    .line 16
    .line 17
    :cond_0
    invoke-virtual {v0, v4}, Lcom/mycompany/app/web/WebTabBarAdapter;->B(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 18
    .line 19
    .line 20
    move-result-object v8

    .line 21
    if-nez v8, :cond_1

    .line 22
    .line 23
    goto/16 :goto_1c

    .line 24
    .line 25
    :cond_1
    invoke-static {v8}, Lcom/mycompany/app/web/WebTabBarAdapter;->D(Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebTabBarAdapter;->E(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-nez v1, :cond_2

    .line 34
    .line 35
    goto/16 :goto_1c

    .line 36
    .line 37
    :cond_2
    iget-object v2, v7, Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;->u:Lcom/mycompany/app/view/MyTabFrame;

    .line 38
    .line 39
    invoke-virtual {v2, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget-object v2, v7, Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;->v:Lcom/mycompany/app/view/MyTextImage;

    .line 43
    .line 44
    invoke-virtual {v2, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object v2, v7, Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;->x:Lcom/mycompany/app/view/MyButtonImage;

    .line 48
    .line 49
    invoke-virtual {v2, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->p:Z

    .line 53
    .line 54
    if-eqz v2, :cond_3

    .line 55
    .line 56
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->q:Z

    .line 57
    .line 58
    iget v3, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->r:I

    .line 59
    .line 60
    iget-boolean v5, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->s:Z

    .line 61
    .line 62
    iget v6, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->t:I

    .line 63
    .line 64
    :goto_0
    move v9, v2

    .line 65
    move v10, v5

    .line 66
    goto :goto_1

    .line 67
    :cond_3
    sget-boolean v2, Lcom/mycompany/app/pref/PrefWeb;->y:Z

    .line 68
    .line 69
    sget v3, Lcom/mycompany/app/pref/PrefWeb;->z:I

    .line 70
    .line 71
    sget-boolean v5, Lcom/mycompany/app/pref/PrefPdf;->D:Z

    .line 72
    .line 73
    sget v6, Lcom/mycompany/app/pref/PrefPdf;->E:I

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :goto_1
    iget v2, v7, Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;->y:I

    .line 77
    .line 78
    if-eq v2, v6, :cond_4

    .line 79
    .line 80
    iput v6, v7, Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;->y:I

    .line 81
    .line 82
    iget-object v2, v7, Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;->u:Lcom/mycompany/app/view/MyTabFrame;

    .line 83
    .line 84
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    if-eqz v2, :cond_4

    .line 89
    .line 90
    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 91
    .line 92
    if-eq v5, v6, :cond_4

    .line 93
    .line 94
    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 95
    .line 96
    iget-object v2, v7, Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;->u:Lcom/mycompany/app/view/MyTabFrame;

    .line 97
    .line 98
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 99
    .line 100
    .line 101
    :cond_4
    iget v2, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->x:I

    .line 102
    .line 103
    if-eqz v10, :cond_5

    .line 104
    .line 105
    move v5, v2

    .line 106
    goto :goto_2

    .line 107
    :cond_5
    iget v5, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->y:I

    .line 108
    .line 109
    :goto_2
    iget v6, v7, Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;->z:I

    .line 110
    .line 111
    if-nez v6, :cond_6

    .line 112
    .line 113
    iput v2, v7, Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;->z:I

    .line 114
    .line 115
    :cond_6
    iget v2, v7, Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;->z:I

    .line 116
    .line 117
    const/4 v11, 0x0

    .line 118
    if-eq v2, v5, :cond_7

    .line 119
    .line 120
    iput v5, v7, Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;->z:I

    .line 121
    .line 122
    iget-object v2, v7, Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;->w:Lcom/mycompany/app/view/MyTextFast;

    .line 123
    .line 124
    invoke-virtual {v2}, Landroid/view/View;->getPaddingEnd()I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-eq v2, v5, :cond_7

    .line 129
    .line 130
    iget-object v2, v7, Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;->w:Lcom/mycompany/app/view/MyTextFast;

    .line 131
    .line 132
    iget v6, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->w:I

    .line 133
    .line 134
    invoke-virtual {v2, v6, v11, v5, v11}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 135
    .line 136
    .line 137
    :cond_7
    iget v2, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->j:I

    .line 138
    .line 139
    const/4 v12, 0x1

    .line 140
    if-ne v4, v2, :cond_8

    .line 141
    .line 142
    move v13, v12

    .line 143
    goto :goto_3

    .line 144
    :cond_8
    move v13, v11

    .line 145
    :goto_3
    if-eqz v13, :cond_9

    .line 146
    .line 147
    if-nez v9, :cond_9

    .line 148
    .line 149
    move v5, v12

    .line 150
    goto :goto_4

    .line 151
    :cond_9
    move v5, v11

    .line 152
    :goto_4
    if-eqz v13, :cond_d

    .line 153
    .line 154
    if-ltz v3, :cond_a

    .line 155
    .line 156
    sget-object v2, Lcom/mycompany/app/main/MainConst;->s:[I

    .line 157
    .line 158
    array-length v2, v2

    .line 159
    if-lt v3, v2, :cond_b

    .line 160
    .line 161
    :cond_a
    const/4 v3, 0x5

    .line 162
    :cond_b
    if-eqz v5, :cond_c

    .line 163
    .line 164
    sget-object v2, Lcom/mycompany/app/main/MainConst;->t:[I

    .line 165
    .line 166
    aget v2, v2, v3

    .line 167
    .line 168
    :goto_5
    move v14, v2

    .line 169
    goto :goto_6

    .line 170
    :cond_c
    sget-object v2, Lcom/mycompany/app/main/MainConst;->s:[I

    .line 171
    .line 172
    aget v2, v2, v3

    .line 173
    .line 174
    goto :goto_5

    .line 175
    :cond_d
    move v14, v11

    .line 176
    :goto_6
    iget-object v2, v8, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 177
    .line 178
    if-eqz v2, :cond_12

    .line 179
    .line 180
    iget v2, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->g:I

    .line 181
    .line 182
    if-nez v2, :cond_e

    .line 183
    .line 184
    sget v2, Lcom/mycompany/app/pref/PrefWeb;->b0:I

    .line 185
    .line 186
    :cond_e
    if-eqz v13, :cond_f

    .line 187
    .line 188
    iget v3, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->h:I

    .line 189
    .line 190
    invoke-static {v8}, Lcom/mycompany/app/web/WebTabBarAdapter;->D(Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;)I

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    sub-int/2addr v3, v4

    .line 195
    goto :goto_7

    .line 196
    :cond_f
    move v3, v11

    .line 197
    :goto_7
    iget-object v4, v8, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 198
    .line 199
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 200
    .line 201
    .line 202
    move-result v4

    .line 203
    iget-object v6, v7, Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;->v:Lcom/mycompany/app/view/MyTextImage;

    .line 204
    .line 205
    iget v15, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->o:I

    .line 206
    .line 207
    if-eqz v15, :cond_10

    .line 208
    .line 209
    move v15, v12

    .line 210
    goto :goto_8

    .line 211
    :cond_10
    move v15, v11

    .line 212
    :goto_8
    invoke-static {v2, v15}, Lcom/mycompany/app/web/WebTabBarAdapter;->y(IZ)I

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    invoke-virtual {v6, v2, v4}, Lcom/mycompany/app/view/MyTextImage;->c(II)V

    .line 217
    .line 218
    .line 219
    iget-object v2, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->f:Ljava/lang/String;

    .line 220
    .line 221
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    if-nez v2, :cond_11

    .line 226
    .line 227
    iget-object v2, v7, Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;->w:Lcom/mycompany/app/view/MyTextFast;

    .line 228
    .line 229
    iget-object v1, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->f:Ljava/lang/String;

    .line 230
    .line 231
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    .line 233
    .line 234
    goto :goto_9

    .line 235
    :cond_11
    iget-object v1, v7, Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;->w:Lcom/mycompany/app/view/MyTextFast;

    .line 236
    .line 237
    sget v2, Lnet/kaki87/soul2/testing/R$string;->group_title:I

    .line 238
    .line 239
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 240
    .line 241
    .line 242
    goto :goto_9

    .line 243
    :cond_12
    iget-object v2, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->d:Landroid/content/Context;

    .line 244
    .line 245
    invoke-static {v2, v1}, Lcom/mycompany/app/web/WebViewActivity;->q3(Landroid/content/Context;Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    iget-object v2, v7, Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;->v:Lcom/mycompany/app/view/MyTextImage;

    .line 250
    .line 251
    const/4 v6, 0x0

    .line 252
    invoke-virtual/range {v0 .. v6}, Lcom/mycompany/app/web/WebTabBarAdapter;->K(Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;Lcom/mycompany/app/view/MyTextImage;Ljava/lang/String;IZLandroid/graphics/Bitmap;)V

    .line 253
    .line 254
    .line 255
    iget-object v1, v7, Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;->w:Lcom/mycompany/app/view/MyTextFast;

    .line 256
    .line 257
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    .line 259
    .line 260
    move v3, v11

    .line 261
    move v4, v3

    .line 262
    :goto_9
    iget-object v1, v7, Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;->u:Lcom/mycompany/app/view/MyTabFrame;

    .line 263
    .line 264
    const/high16 v2, 0x3f800000    # 1.0f

    .line 265
    .line 266
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 267
    .line 268
    .line 269
    iget-object v1, v7, Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;->u:Lcom/mycompany/app/view/MyTabFrame;

    .line 270
    .line 271
    iget v2, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->o:I

    .line 272
    .line 273
    iget v6, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->n:I

    .line 274
    .line 275
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 276
    .line 277
    .line 278
    const/high16 v16, -0x1000000

    .line 279
    .line 280
    if-eqz v13, :cond_16

    .line 281
    .line 282
    if-eqz v9, :cond_15

    .line 283
    .line 284
    sget v6, Lcom/mycompany/app/view/MyIconView;->k1:I

    .line 285
    .line 286
    if-nez v2, :cond_13

    .line 287
    .line 288
    const/4 v6, -0x1

    .line 289
    goto :goto_a

    .line 290
    :cond_13
    if-ne v2, v12, :cond_14

    .line 291
    .line 292
    move/from16 v6, v16

    .line 293
    .line 294
    goto :goto_a

    .line 295
    :cond_14
    move v6, v2

    .line 296
    :goto_a
    move v9, v14

    .line 297
    goto :goto_c

    .line 298
    :cond_15
    move v9, v11

    .line 299
    move v6, v14

    .line 300
    goto :goto_c

    .line 301
    :cond_16
    sget v4, Lcom/mycompany/app/view/MyIconView;->k1:I

    .line 302
    .line 303
    if-nez v2, :cond_17

    .line 304
    .line 305
    const v6, -0x70708

    .line 306
    .line 307
    .line 308
    goto :goto_b

    .line 309
    :cond_17
    if-ne v2, v12, :cond_18

    .line 310
    .line 311
    const v6, -0xdededf

    .line 312
    .line 313
    .line 314
    :cond_18
    :goto_b
    move v4, v11

    .line 315
    move v9, v4

    .line 316
    :goto_c
    iget v13, v1, Lcom/mycompany/app/view/MyTabFrame;->i:I

    .line 317
    .line 318
    const/4 v15, 0x0

    .line 319
    const/high16 v17, 0x40000000    # 2.0f

    .line 320
    .line 321
    if-eq v13, v6, :cond_1d

    .line 322
    .line 323
    iput v6, v1, Lcom/mycompany/app/view/MyTabFrame;->i:I

    .line 324
    .line 325
    if-eqz v6, :cond_1c

    .line 326
    .line 327
    iget-object v6, v1, Lcom/mycompany/app/view/MyTabFrame;->h:Landroid/graphics/RectF;

    .line 328
    .line 329
    if-nez v6, :cond_19

    .line 330
    .line 331
    new-instance v6, Landroid/graphics/RectF;

    .line 332
    .line 333
    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    .line 334
    .line 335
    .line 336
    iput-object v6, v1, Lcom/mycompany/app/view/MyTabFrame;->h:Landroid/graphics/RectF;

    .line 337
    .line 338
    :cond_19
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 339
    .line 340
    .line 341
    move-result v6

    .line 342
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 343
    .line 344
    .line 345
    move-result v13

    .line 346
    if-eqz v6, :cond_1a

    .line 347
    .line 348
    if-eqz v13, :cond_1a

    .line 349
    .line 350
    int-to-float v11, v6

    .line 351
    div-float v11, v11, v17

    .line 352
    .line 353
    iput v11, v1, Lcom/mycompany/app/view/MyTabFrame;->u:F

    .line 354
    .line 355
    int-to-float v11, v13

    .line 356
    div-float v11, v11, v17

    .line 357
    .line 358
    iput v11, v1, Lcom/mycompany/app/view/MyTabFrame;->v:F

    .line 359
    .line 360
    invoke-virtual {v1, v6, v13}, Lcom/mycompany/app/view/MyTabFrame;->f(II)V

    .line 361
    .line 362
    .line 363
    :cond_1a
    iget-object v6, v1, Lcom/mycompany/app/view/MyTabFrame;->j:Landroid/graphics/Paint;

    .line 364
    .line 365
    if-nez v6, :cond_1b

    .line 366
    .line 367
    new-instance v6, Landroid/graphics/Paint;

    .line 368
    .line 369
    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 370
    .line 371
    .line 372
    iput-object v6, v1, Lcom/mycompany/app/view/MyTabFrame;->j:Landroid/graphics/Paint;

    .line 373
    .line 374
    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 375
    .line 376
    .line 377
    iget-object v6, v1, Lcom/mycompany/app/view/MyTabFrame;->j:Landroid/graphics/Paint;

    .line 378
    .line 379
    sget-object v11, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 380
    .line 381
    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 382
    .line 383
    .line 384
    :cond_1b
    iget-object v6, v1, Lcom/mycompany/app/view/MyTabFrame;->j:Landroid/graphics/Paint;

    .line 385
    .line 386
    iget v11, v1, Lcom/mycompany/app/view/MyTabFrame;->i:I

    .line 387
    .line 388
    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 389
    .line 390
    .line 391
    goto :goto_d

    .line 392
    :cond_1c
    iput-object v15, v1, Lcom/mycompany/app/view/MyTabFrame;->h:Landroid/graphics/RectF;

    .line 393
    .line 394
    iput-object v15, v1, Lcom/mycompany/app/view/MyTabFrame;->j:Landroid/graphics/Paint;

    .line 395
    .line 396
    :goto_d
    move v6, v12

    .line 397
    :goto_e
    const/4 v11, 0x0

    .line 398
    goto :goto_f

    .line 399
    :cond_1d
    const/4 v6, 0x0

    .line 400
    goto :goto_e

    .line 401
    :goto_f
    invoke-virtual {v1, v9, v11, v11}, Lcom/mycompany/app/view/MyTabFrame;->i(IZZ)Z

    .line 402
    .line 403
    .line 404
    move-result v9

    .line 405
    if-eqz v9, :cond_1e

    .line 406
    .line 407
    move v6, v12

    .line 408
    :cond_1e
    if-nez v4, :cond_22

    .line 409
    .line 410
    iget v2, v1, Lcom/mycompany/app/view/MyTabFrame;->q:I

    .line 411
    .line 412
    if-nez v2, :cond_1f

    .line 413
    .line 414
    iget-object v2, v1, Lcom/mycompany/app/view/MyTabFrame;->r:Landroid/graphics/RectF;

    .line 415
    .line 416
    if-nez v2, :cond_1f

    .line 417
    .line 418
    iget-object v2, v1, Lcom/mycompany/app/view/MyTabFrame;->t:Landroid/graphics/Paint;

    .line 419
    .line 420
    if-eqz v2, :cond_20

    .line 421
    .line 422
    :cond_1f
    const/4 v11, 0x0

    .line 423
    goto :goto_10

    .line 424
    :cond_20
    const/4 v11, 0x0

    .line 425
    goto/16 :goto_16

    .line 426
    .line 427
    :goto_10
    iput v11, v1, Lcom/mycompany/app/view/MyTabFrame;->p:I

    .line 428
    .line 429
    iput v11, v1, Lcom/mycompany/app/view/MyTabFrame;->q:I

    .line 430
    .line 431
    iput-object v15, v1, Lcom/mycompany/app/view/MyTabFrame;->r:Landroid/graphics/RectF;

    .line 432
    .line 433
    iput-object v15, v1, Lcom/mycompany/app/view/MyTabFrame;->t:Landroid/graphics/Paint;

    .line 434
    .line 435
    :cond_21
    :goto_11
    move v11, v12

    .line 436
    goto/16 :goto_16

    .line 437
    .line 438
    :cond_22
    if-gez v3, :cond_23

    .line 439
    .line 440
    const/4 v3, 0x0

    .line 441
    goto :goto_12

    .line 442
    :cond_23
    if-lt v3, v4, :cond_24

    .line 443
    .line 444
    add-int/lit8 v3, v4, -0x1

    .line 445
    .line 446
    :cond_24
    :goto_12
    if-nez v2, :cond_25

    .line 447
    .line 448
    move/from16 v2, v16

    .line 449
    .line 450
    goto :goto_13

    .line 451
    :cond_25
    const v2, -0x3f3f40

    .line 452
    .line 453
    .line 454
    :goto_13
    iget v9, v1, Lcom/mycompany/app/view/MyTabFrame;->p:I

    .line 455
    .line 456
    if-ne v9, v3, :cond_27

    .line 457
    .line 458
    iget v9, v1, Lcom/mycompany/app/view/MyTabFrame;->q:I

    .line 459
    .line 460
    if-eq v9, v4, :cond_26

    .line 461
    .line 462
    goto :goto_14

    .line 463
    :cond_26
    const/4 v11, 0x0

    .line 464
    goto :goto_15

    .line 465
    :cond_27
    :goto_14
    iput v3, v1, Lcom/mycompany/app/view/MyTabFrame;->p:I

    .line 466
    .line 467
    iput v4, v1, Lcom/mycompany/app/view/MyTabFrame;->q:I

    .line 468
    .line 469
    move v11, v12

    .line 470
    :goto_15
    iget-object v3, v1, Lcom/mycompany/app/view/MyTabFrame;->r:Landroid/graphics/RectF;

    .line 471
    .line 472
    if-nez v3, :cond_28

    .line 473
    .line 474
    new-instance v3, Landroid/graphics/RectF;

    .line 475
    .line 476
    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 477
    .line 478
    .line 479
    iput-object v3, v1, Lcom/mycompany/app/view/MyTabFrame;->r:Landroid/graphics/RectF;

    .line 480
    .line 481
    move v11, v12

    .line 482
    :cond_28
    iget-object v3, v1, Lcom/mycompany/app/view/MyTabFrame;->t:Landroid/graphics/Paint;

    .line 483
    .line 484
    if-nez v3, :cond_29

    .line 485
    .line 486
    new-instance v3, Landroid/graphics/Paint;

    .line 487
    .line 488
    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 489
    .line 490
    .line 491
    iput-object v3, v1, Lcom/mycompany/app/view/MyTabFrame;->t:Landroid/graphics/Paint;

    .line 492
    .line 493
    invoke-virtual {v3, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 494
    .line 495
    .line 496
    iget-object v3, v1, Lcom/mycompany/app/view/MyTabFrame;->t:Landroid/graphics/Paint;

    .line 497
    .line 498
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 499
    .line 500
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 501
    .line 502
    .line 503
    iget-object v3, v1, Lcom/mycompany/app/view/MyTabFrame;->t:Landroid/graphics/Paint;

    .line 504
    .line 505
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 506
    .line 507
    .line 508
    iput v2, v1, Lcom/mycompany/app/view/MyTabFrame;->s:I

    .line 509
    .line 510
    move v11, v12

    .line 511
    :cond_29
    iget v3, v1, Lcom/mycompany/app/view/MyTabFrame;->s:I

    .line 512
    .line 513
    if-eq v3, v2, :cond_2a

    .line 514
    .line 515
    iput v2, v1, Lcom/mycompany/app/view/MyTabFrame;->s:I

    .line 516
    .line 517
    iget-object v3, v1, Lcom/mycompany/app/view/MyTabFrame;->t:Landroid/graphics/Paint;

    .line 518
    .line 519
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 520
    .line 521
    .line 522
    move v11, v12

    .line 523
    :cond_2a
    if-eqz v11, :cond_20

    .line 524
    .line 525
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 526
    .line 527
    .line 528
    move-result v2

    .line 529
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 530
    .line 531
    .line 532
    move-result v3

    .line 533
    if-eqz v2, :cond_21

    .line 534
    .line 535
    if-eqz v3, :cond_21

    .line 536
    .line 537
    int-to-float v4, v2

    .line 538
    div-float v4, v4, v17

    .line 539
    .line 540
    iput v4, v1, Lcom/mycompany/app/view/MyTabFrame;->u:F

    .line 541
    .line 542
    int-to-float v4, v3

    .line 543
    div-float v4, v4, v17

    .line 544
    .line 545
    iput v4, v1, Lcom/mycompany/app/view/MyTabFrame;->v:F

    .line 546
    .line 547
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyTabFrame;->h(II)V

    .line 548
    .line 549
    .line 550
    goto :goto_11

    .line 551
    :goto_16
    if-eqz v11, :cond_2b

    .line 552
    .line 553
    move v6, v12

    .line 554
    :cond_2b
    if-eqz v6, :cond_2c

    .line 555
    .line 556
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyTabFrame;->invalidate()V

    .line 557
    .line 558
    .line 559
    :cond_2c
    iget-object v1, v7, Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;->x:Lcom/mycompany/app/view/MyButtonImage;

    .line 560
    .line 561
    if-eqz v10, :cond_2d

    .line 562
    .line 563
    const/4 v11, 0x0

    .line 564
    goto :goto_17

    .line 565
    :cond_2d
    const/16 v11, 0x8

    .line 566
    .line 567
    :goto_17
    invoke-virtual {v1, v11}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 568
    .line 569
    .line 570
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->p:Z

    .line 571
    .line 572
    if-nez v1, :cond_2e

    .line 573
    .line 574
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->S4()Z

    .line 575
    .line 576
    .line 577
    move-result v1

    .line 578
    if-eqz v1, :cond_2e

    .line 579
    .line 580
    iget-object v1, v7, Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;->x:Lcom/mycompany/app/view/MyButtonImage;

    .line 581
    .line 582
    invoke-virtual {v1, v12}, Lcom/mycompany/app/view/MyButtonImage;->setNoAnim(Z)V

    .line 583
    .line 584
    .line 585
    goto :goto_18

    .line 586
    :cond_2e
    iget-object v1, v7, Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;->x:Lcom/mycompany/app/view/MyButtonImage;

    .line 587
    .line 588
    const/4 v11, 0x0

    .line 589
    invoke-virtual {v1, v11}, Lcom/mycompany/app/view/MyButtonImage;->setNoAnim(Z)V

    .line 590
    .line 591
    .line 592
    :goto_18
    iget-object v1, v7, Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;->u:Lcom/mycompany/app/view/MyTabFrame;

    .line 593
    .line 594
    new-instance v2, Lcom/mycompany/app/web/WebTabBarAdapter$6;

    .line 595
    .line 596
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebTabBarAdapter$6;-><init>(Lcom/mycompany/app/web/WebTabBarAdapter;)V

    .line 597
    .line 598
    .line 599
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyTabFrame;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 600
    .line 601
    .line 602
    iget-object v1, v7, Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;->u:Lcom/mycompany/app/view/MyTabFrame;

    .line 603
    .line 604
    new-instance v2, Lcom/mycompany/app/web/WebTabBarAdapter$7;

    .line 605
    .line 606
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebTabBarAdapter$7;-><init>(Lcom/mycompany/app/web/WebTabBarAdapter;)V

    .line 607
    .line 608
    .line 609
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyTabFrame;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 610
    .line 611
    .line 612
    iget-object v1, v7, Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;->x:Lcom/mycompany/app/view/MyButtonImage;

    .line 613
    .line 614
    new-instance v2, Lcom/mycompany/app/web/WebTabBarAdapter$8;

    .line 615
    .line 616
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebTabBarAdapter$8;-><init>(Lcom/mycompany/app/web/WebTabBarAdapter;)V

    .line 617
    .line 618
    .line 619
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 620
    .line 621
    .line 622
    iget-object v1, v7, Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;->w:Lcom/mycompany/app/view/MyTextFast;

    .line 623
    .line 624
    if-eqz v5, :cond_2f

    .line 625
    .line 626
    const/4 v15, -0x1

    .line 627
    goto :goto_19

    .line 628
    :cond_2f
    iget v2, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->o:I

    .line 629
    .line 630
    if-nez v2, :cond_30

    .line 631
    .line 632
    move/from16 v15, v16

    .line 633
    .line 634
    goto :goto_19

    .line 635
    :cond_30
    const v15, -0x3e000001    # -31.999998f

    .line 636
    .line 637
    .line 638
    :goto_19
    invoke-virtual {v1, v15}, Lcom/mycompany/app/view/MyTextFast;->setTextColor(I)V

    .line 639
    .line 640
    .line 641
    if-eqz v5, :cond_31

    .line 642
    .line 643
    goto :goto_1a

    .line 644
    :cond_31
    iget v1, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->o:I

    .line 645
    .line 646
    iget v2, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->n:I

    .line 647
    .line 648
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->P1(II)I

    .line 649
    .line 650
    .line 651
    move-result v14

    .line 652
    :goto_1a
    iget-object v1, v7, Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;->u:Lcom/mycompany/app/view/MyTabFrame;

    .line 653
    .line 654
    invoke-virtual {v1, v14}, Lcom/mycompany/app/view/MyTabFrame;->setBgPreColor(I)V

    .line 655
    .line 656
    .line 657
    iget-object v1, v7, Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;->x:Lcom/mycompany/app/view/MyButtonImage;

    .line 658
    .line 659
    invoke-virtual {v1, v14}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 660
    .line 661
    .line 662
    iget-object v1, v8, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 663
    .line 664
    if-eqz v1, :cond_34

    .line 665
    .line 666
    if-eqz v5, :cond_32

    .line 667
    .line 668
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_more_vert_white_20:I

    .line 669
    .line 670
    goto :goto_1b

    .line 671
    :cond_32
    iget v1, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->o:I

    .line 672
    .line 673
    if-nez v1, :cond_33

    .line 674
    .line 675
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_more_vert_black_20:I

    .line 676
    .line 677
    goto :goto_1b

    .line 678
    :cond_33
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_more_vert_dark_20:I

    .line 679
    .line 680
    goto :goto_1b

    .line 681
    :cond_34
    if-eqz v5, :cond_35

    .line 682
    .line 683
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_white_18:I

    .line 684
    .line 685
    goto :goto_1b

    .line 686
    :cond_35
    iget v1, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->o:I

    .line 687
    .line 688
    if-nez v1, :cond_36

    .line 689
    .line 690
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_black_18:I

    .line 691
    .line 692
    goto :goto_1b

    .line 693
    :cond_36
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_dark_18:I

    .line 694
    .line 695
    :goto_1b
    iget-object v2, v7, Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;->x:Lcom/mycompany/app/view/MyButtonImage;

    .line 696
    .line 697
    invoke-virtual {v2, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 698
    .line 699
    .line 700
    :cond_37
    :goto_1c
    return-void
.end method

.method public final H()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebTabBarAdapter;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->F:I

    .line 6
    .line 7
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->u:Lcom/mycompany/app/main/MainListLoader;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListLoader;->f()V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->u:Lcom/mycompany/app/main/MainListLoader;

    .line 16
    .line 17
    :cond_0
    iput-object v1, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->d:Landroid/content/Context;

    .line 18
    .line 19
    iput-object v1, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->e:Lcom/mycompany/app/view/MyRecyclerView;

    .line 20
    .line 21
    iput-object v1, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->f:Lcom/mycompany/app/view/MyManagerLinear;

    .line 22
    .line 23
    iput-object v1, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->l:Lcom/mycompany/app/web/WebTabBarAdapter$TabBarListener;

    .line 24
    .line 25
    iput-object v1, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->g:Ljava/util/List;

    .line 26
    .line 27
    iput-object v1, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->i:Ljava/util/ArrayList;

    .line 28
    .line 29
    iput-object v1, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->v:Ljava/util/regex/Pattern;

    .line 30
    .line 31
    return-void
.end method

.method public final I(II)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->i:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    if-ltz p1, :cond_4

    .line 7
    .line 8
    if-gez p2, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-ge p1, v0, :cond_4

    .line 16
    .line 17
    if-lt p2, v0, :cond_2

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->i:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 27
    .line 28
    if-nez v0, :cond_3

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->i:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->j(II)V

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    return p1

    .line 41
    :cond_4
    :goto_0
    const/4 p1, 0x0

    .line 42
    return p1
.end method

.method public final J(ILjava/util/List;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iput-object v2, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->g:Ljava/util/List;

    .line 8
    .line 9
    iput v1, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->h:I

    .line 10
    .line 11
    const/4 v3, -0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    if-eqz v2, :cond_b

    .line 14
    .line 15
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    if-eqz v5, :cond_0

    .line 20
    .line 21
    goto/16 :goto_4

    .line 22
    .line 23
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const/4 v8, 0x0

    .line 33
    move-object v9, v4

    .line 34
    move v12, v8

    .line 35
    const-wide/16 v10, 0x0

    .line 36
    .line 37
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v13

    .line 41
    const/4 v14, 0x1

    .line 42
    if-eqz v13, :cond_8

    .line 43
    .line 44
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v13

    .line 48
    check-cast v13, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 49
    .line 50
    if-nez v13, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    new-instance v15, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 54
    .line 55
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 56
    .line 57
    .line 58
    const-wide/16 v16, 0x0

    .line 59
    .line 60
    iget-wide v6, v13, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->d:J

    .line 61
    .line 62
    iput-wide v6, v15, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->d:J

    .line 63
    .line 64
    iget v6, v13, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 65
    .line 66
    iput v6, v15, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 67
    .line 68
    if-eqz v9, :cond_4

    .line 69
    .line 70
    iget-wide v6, v13, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->e:J

    .line 71
    .line 72
    cmp-long v18, v6, v16

    .line 73
    .line 74
    if-eqz v18, :cond_2

    .line 75
    .line 76
    cmp-long v6, v6, v10

    .line 77
    .line 78
    if-eqz v6, :cond_4

    .line 79
    .line 80
    :cond_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-ne v6, v14, :cond_3

    .line 85
    .line 86
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    check-cast v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 91
    .line 92
    iput-object v4, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    new-instance v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 96
    .line 97
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object v9, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 101
    .line 102
    :goto_1
    iput v12, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->i:I

    .line 103
    .line 104
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    add-int/lit8 v12, v12, 0x1

    .line 108
    .line 109
    move-object v9, v4

    .line 110
    :cond_4
    iget v6, v13, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 111
    .line 112
    if-ne v1, v6, :cond_5

    .line 113
    .line 114
    move v3, v12

    .line 115
    :cond_5
    iget-wide v6, v13, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->e:J

    .line 116
    .line 117
    cmp-long v6, v6, v16

    .line 118
    .line 119
    if-eqz v6, :cond_7

    .line 120
    .line 121
    if-nez v9, :cond_6

    .line 122
    .line 123
    new-instance v9, Ljava/util/ArrayList;

    .line 124
    .line 125
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .line 127
    .line 128
    :cond_6
    invoke-interface {v9, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_7
    iput v12, v15, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->i:I

    .line 133
    .line 134
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    add-int/lit8 v12, v12, 0x1

    .line 138
    .line 139
    :goto_2
    iget-wide v10, v13, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->e:J

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_8
    if-eqz v9, :cond_a

    .line 143
    .line 144
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-ne v1, v14, :cond_9

    .line 149
    .line 150
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    check-cast v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 155
    .line 156
    iput-object v4, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_9
    new-instance v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 160
    .line 161
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 162
    .line 163
    .line 164
    iput-object v9, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 165
    .line 166
    :goto_3
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    :cond_a
    iput-object v5, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->i:Ljava/util/ArrayList;

    .line 170
    .line 171
    iput v3, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->j:I

    .line 172
    .line 173
    return-void

    .line 174
    :cond_b
    :goto_4
    iput-object v4, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->i:Ljava/util/ArrayList;

    .line 175
    .line 176
    iput v3, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->j:I

    .line 177
    .line 178
    return-void
.end method

.method public final K(Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;Lcom/mycompany/app/view/MyTextImage;Ljava/lang/String;IZLandroid/graphics/Bitmap;)V
    .locals 7

    .line 1
    if-eqz p2, :cond_15

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->u:Lcom/mycompany/app/main/MainListLoader;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_6

    .line 8
    .line 9
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const-string v1, "\\p{Punct}"

    .line 16
    .line 17
    const v2, -0x3e000001    # -31.999998f

    .line 18
    .line 19
    .line 20
    const/high16 v3, -0x1000000

    .line 21
    .line 22
    const/4 v4, -0x1

    .line 23
    if-eqz v0, :cond_6

    .line 24
    .line 25
    if-eqz p5, :cond_1

    .line 26
    .line 27
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_white_24:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget p1, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->o:I

    .line 31
    .line 32
    if-nez p1, :cond_2

    .line 33
    .line 34
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_dark_24:I

    .line 38
    .line 39
    :goto_0
    if-eqz p5, :cond_3

    .line 40
    .line 41
    move v2, v4

    .line 42
    goto :goto_1

    .line 43
    :cond_3
    iget p4, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->o:I

    .line 44
    .line 45
    if-nez p4, :cond_4

    .line 46
    .line 47
    move v2, v3

    .line 48
    :cond_4
    :goto_1
    iget-object p4, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->v:Ljava/util/regex/Pattern;

    .line 49
    .line 50
    if-nez p4, :cond_5

    .line 51
    .line 52
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 53
    .line 54
    .line 55
    move-result-object p4

    .line 56
    iput-object p4, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->v:Ljava/util/regex/Pattern;

    .line 57
    .line 58
    :cond_5
    iget-object p4, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->v:Ljava/util/regex/Pattern;

    .line 59
    .line 60
    invoke-virtual {p2, p1, v2, p3, p4}, Lcom/mycompany/app/view/MyTextImage;->b(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_6
    iget-object v0, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 65
    .line 66
    const-string v5, "file:///"

    .line 67
    .line 68
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_f

    .line 73
    .line 74
    iget-object v0, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 75
    .line 76
    const-string v5, "/data/"

    .line 77
    .line 78
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_7

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_7
    new-instance v0, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 86
    .line 87
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 88
    .line 89
    .line 90
    const/16 v5, 0x28

    .line 91
    .line 92
    iput v5, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 93
    .line 94
    const/16 v5, 0xb

    .line 95
    .line 96
    iput v5, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 97
    .line 98
    iget-wide v5, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 99
    .line 100
    iput-wide v5, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 101
    .line 102
    iget-object p1, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 103
    .line 104
    iput-object p1, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 105
    .line 106
    iput p4, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 107
    .line 108
    invoke-static {p6}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-nez p1, :cond_8

    .line 113
    .line 114
    invoke-static {v0}, Lcom/mycompany/app/main/MainListLoader;->b(Lcom/mycompany/app/main/MainItem$ChildItem;)Landroid/graphics/Bitmap;

    .line 115
    .line 116
    .line 117
    move-result-object p6

    .line 118
    :cond_8
    invoke-static {p6}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-eqz p1, :cond_9

    .line 123
    .line 124
    invoke-virtual {p2, p6}, Lcom/mycompany/app/view/MyTextImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :cond_9
    if-eqz p5, :cond_a

    .line 129
    .line 130
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_white_24:I

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_a
    iget p1, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->o:I

    .line 134
    .line 135
    if-nez p1, :cond_b

    .line 136
    .line 137
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_b
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_dark_24:I

    .line 141
    .line 142
    :goto_2
    if-eqz p5, :cond_c

    .line 143
    .line 144
    move v2, v4

    .line 145
    goto :goto_3

    .line 146
    :cond_c
    iget p4, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->o:I

    .line 147
    .line 148
    if-nez p4, :cond_d

    .line 149
    .line 150
    move v2, v3

    .line 151
    :cond_d
    :goto_3
    iget-object p4, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->v:Ljava/util/regex/Pattern;

    .line 152
    .line 153
    if-nez p4, :cond_e

    .line 154
    .line 155
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 156
    .line 157
    .line 158
    move-result-object p4

    .line 159
    iput-object p4, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->v:Ljava/util/regex/Pattern;

    .line 160
    .line 161
    :cond_e
    iget-object p4, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->v:Ljava/util/regex/Pattern;

    .line 162
    .line 163
    invoke-virtual {p2, p1, v2, p3, p4}, Lcom/mycompany/app/view/MyTextImage;->b(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 164
    .line 165
    .line 166
    iget-object p1, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->u:Lcom/mycompany/app/main/MainListLoader;

    .line 167
    .line 168
    invoke-virtual {p1, v0, p2}, Lcom/mycompany/app/main/MainListLoader;->e(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;)V

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    :cond_f
    :goto_4
    const-string p3, "file:///android_asset/shortcut.html"

    .line 173
    .line 174
    iget-object p1, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    if-eqz p1, :cond_12

    .line 181
    .line 182
    if-eqz p5, :cond_10

    .line 183
    .line 184
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_home_white_24:I

    .line 185
    .line 186
    goto :goto_5

    .line 187
    :cond_10
    iget p1, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->o:I

    .line 188
    .line 189
    if-nez p1, :cond_11

    .line 190
    .line 191
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_home_black_24:I

    .line 192
    .line 193
    goto :goto_5

    .line 194
    :cond_11
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_home_dark_24:I

    .line 195
    .line 196
    goto :goto_5

    .line 197
    :cond_12
    if-eqz p5, :cond_13

    .line 198
    .line 199
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_offline_pin_white_24:I

    .line 200
    .line 201
    goto :goto_5

    .line 202
    :cond_13
    iget p1, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->o:I

    .line 203
    .line 204
    if-nez p1, :cond_14

    .line 205
    .line 206
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_offline_pin_black_24:I

    .line 207
    .line 208
    goto :goto_5

    .line 209
    :cond_14
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_offline_pin_dark_24:I

    .line 210
    .line 211
    :goto_5
    invoke-virtual {p2, p1}, Lcom/mycompany/app/view/MyTextImage;->setImageResource(I)V

    .line 212
    .line 213
    .line 214
    :cond_15
    :goto_6
    return-void
.end method

.method public final L(Ljava/util/List;IZIIZ)V
    .locals 3

    .line 1
    invoke-static {p4, p3}, Lcom/mycompany/app/main/MainUtil;->j(IZ)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move p4, v1

    .line 9
    move p5, p4

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->u:Lcom/mycompany/app/main/MainListLoader;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    iput-object v2, v0, Lcom/mycompany/app/main/MainListLoader;->c:Ljava/util/ArrayList;

    .line 16
    .line 17
    :cond_1
    if-nez p6, :cond_3

    .line 18
    .line 19
    iget-object p6, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->g:Ljava/util/List;

    .line 20
    .line 21
    if-eqz p6, :cond_3

    .line 22
    .line 23
    invoke-interface {p6}, Ljava/util/List;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result p6

    .line 27
    if-eqz p6, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    invoke-virtual {p0, p2}, Lcom/mycompany/app/web/WebTabBarAdapter;->C(I)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iput p1, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->j:I

    .line 35
    .line 36
    iput p2, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->h:I

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    :goto_0
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lcom/mycompany/app/web/WebTabBarAdapter;->J(ILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :catch_0
    iget-object p1, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->l:Lcom/mycompany/app/web/WebTabBarAdapter$TabBarListener;

    .line 44
    .line 45
    if-eqz p1, :cond_4

    .line 46
    .line 47
    invoke-interface {p1}, Lcom/mycompany/app/web/WebTabBarAdapter$TabBarListener;->a()V

    .line 48
    .line 49
    .line 50
    :cond_4
    :goto_1
    invoke-static {p3}, Lcom/mycompany/app/main/MainUtil;->k5(Z)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    iput-boolean p1, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->k:Z

    .line 55
    .line 56
    iput p4, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->m:I

    .line 57
    .line 58
    if-nez p4, :cond_5

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_5
    move v1, p5

    .line 62
    :goto_2
    iput v1, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->n:I

    .line 63
    .line 64
    invoke-static {p4, p3}, Lcom/mycompany/app/main/MainUtil;->s0(IZ)I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    iput p1, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->o:I

    .line 69
    .line 70
    iget-object p1, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->e:Lcom/mycompany/app/view/MyRecyclerView;

    .line 71
    .line 72
    if-nez p1, :cond_6

    .line 73
    .line 74
    return-void

    .line 75
    :cond_6
    new-instance p2, Lcom/mycompany/app/web/WebTabBarAdapter$2;

    .line 76
    .line 77
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebTabBarAdapter$2;-><init>(Lcom/mycompany/app/web/WebTabBarAdapter;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public final M(Z)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->i:Ljava/util/ArrayList;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_1f

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v5

    .line 12
    if-eqz v5, :cond_0

    .line 13
    .line 14
    goto/16 :goto_10

    .line 15
    .line 16
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    const-wide/16 v7, -0x1

    .line 26
    .line 27
    const/4 v9, -0x1

    .line 28
    const/4 v10, -0x1

    .line 29
    const/4 v11, 0x0

    .line 30
    const/4 v12, -0x1

    .line 31
    const/4 v13, 0x0

    .line 32
    const/4 v14, 0x0

    .line 33
    const/4 v15, 0x0

    .line 34
    :goto_0
    if-ge v15, v6, :cond_19

    .line 35
    .line 36
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v16

    .line 40
    add-int/lit8 v15, v15, 0x1

    .line 41
    .line 42
    move-object/from16 v4, v16

    .line 43
    .line 44
    check-cast v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 45
    .line 46
    if-nez v4, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget-object v3, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 50
    .line 51
    if-nez v3, :cond_c

    .line 52
    .line 53
    iget v3, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 54
    .line 55
    invoke-virtual {v0, v3}, Lcom/mycompany/app/web/WebTabBarAdapter;->E(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    if-nez v3, :cond_2

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    move-object/from16 v17, v1

    .line 63
    .line 64
    iget v1, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->h:I

    .line 65
    .line 66
    move/from16 v18, v6

    .line 67
    .line 68
    iget v6, v3, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 69
    .line 70
    if-ne v1, v6, :cond_3

    .line 71
    .line 72
    move v11, v13

    .line 73
    move v12, v14

    .line 74
    :cond_3
    iput-wide v7, v3, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->d:J

    .line 75
    .line 76
    iput v13, v3, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 77
    .line 78
    iput v13, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 79
    .line 80
    iget-boolean v1, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->n:Z

    .line 81
    .line 82
    if-nez v1, :cond_5

    .line 83
    .line 84
    move v1, v11

    .line 85
    move v6, v12

    .line 86
    iget-wide v11, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->d:J

    .line 87
    .line 88
    cmp-long v11, v11, v7

    .line 89
    .line 90
    if-eqz v11, :cond_4

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_4
    const/4 v7, 0x0

    .line 94
    goto :goto_2

    .line 95
    :cond_5
    move v1, v11

    .line 96
    move v6, v12

    .line 97
    :goto_1
    iput-wide v7, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->d:J

    .line 98
    .line 99
    const/4 v7, 0x0

    .line 100
    iput-boolean v7, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->n:Z

    .line 101
    .line 102
    if-nez v2, :cond_6

    .line 103
    .line 104
    new-instance v2, Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .line 108
    .line 109
    :cond_6
    new-instance v7, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 110
    .line 111
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 112
    .line 113
    .line 114
    iget-wide v11, v3, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 115
    .line 116
    iput-wide v11, v7, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 117
    .line 118
    iget-wide v11, v3, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->d:J

    .line 119
    .line 120
    iput-wide v11, v7, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->d:J

    .line 121
    .line 122
    iget-wide v11, v3, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->e:J

    .line 123
    .line 124
    iput-wide v11, v7, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->e:J

    .line 125
    .line 126
    iget-object v8, v3, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->f:Ljava/lang/String;

    .line 127
    .line 128
    iput-object v8, v7, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->f:Ljava/lang/String;

    .line 129
    .line 130
    iget v8, v3, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->g:I

    .line 131
    .line 132
    iput v8, v7, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->g:I

    .line 133
    .line 134
    iget v8, v3, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 135
    .line 136
    iput v8, v7, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 137
    .line 138
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move/from16 v7, p1

    .line 142
    .line 143
    :goto_2
    if-nez v7, :cond_7

    .line 144
    .line 145
    iget v7, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->i:I

    .line 146
    .line 147
    if-eq v7, v14, :cond_b

    .line 148
    .line 149
    :cond_7
    iput v14, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->i:I

    .line 150
    .line 151
    if-eqz p1, :cond_b

    .line 152
    .line 153
    const/4 v4, -0x1

    .line 154
    if-ne v9, v4, :cond_8

    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_8
    if-ge v14, v9, :cond_9

    .line 158
    .line 159
    :goto_3
    move v9, v14

    .line 160
    :cond_9
    if-ne v10, v4, :cond_a

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_a
    if-le v14, v10, :cond_b

    .line 164
    .line 165
    :goto_4
    move v10, v14

    .line 166
    :cond_b
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    iget-wide v7, v3, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 170
    .line 171
    add-int/lit8 v13, v13, 0x1

    .line 172
    .line 173
    add-int/lit8 v14, v14, 0x1

    .line 174
    .line 175
    move v11, v1

    .line 176
    move v12, v6

    .line 177
    move-object/from16 v1, v17

    .line 178
    .line 179
    :goto_5
    move/from16 v6, v18

    .line 180
    .line 181
    goto/16 :goto_0

    .line 182
    .line 183
    :cond_c
    move-object/from16 v17, v1

    .line 184
    .line 185
    move/from16 v18, v6

    .line 186
    .line 187
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    move v3, v11

    .line 192
    move v6, v12

    .line 193
    move-wide v11, v7

    .line 194
    const/4 v7, 0x0

    .line 195
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 196
    .line 197
    .line 198
    move-result v8

    .line 199
    if-eqz v8, :cond_12

    .line 200
    .line 201
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v8

    .line 205
    check-cast v8, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 206
    .line 207
    move-object/from16 v19, v1

    .line 208
    .line 209
    iget v1, v8, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 210
    .line 211
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebTabBarAdapter;->E(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    if-nez v1, :cond_d

    .line 216
    .line 217
    move-object/from16 v1, v19

    .line 218
    .line 219
    goto :goto_6

    .line 220
    :cond_d
    move-object/from16 v20, v2

    .line 221
    .line 222
    iget v2, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->h:I

    .line 223
    .line 224
    move/from16 v21, v3

    .line 225
    .line 226
    iget v3, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 227
    .line 228
    if-ne v2, v3, :cond_e

    .line 229
    .line 230
    move v3, v13

    .line 231
    move v6, v14

    .line 232
    goto :goto_7

    .line 233
    :cond_e
    move/from16 v3, v21

    .line 234
    .line 235
    :goto_7
    iput-wide v11, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->d:J

    .line 236
    .line 237
    iput v13, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 238
    .line 239
    iput v13, v8, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 240
    .line 241
    iget-boolean v2, v8, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->n:Z

    .line 242
    .line 243
    move/from16 v21, v3

    .line 244
    .line 245
    if-nez v2, :cond_10

    .line 246
    .line 247
    iget-wide v2, v8, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->d:J

    .line 248
    .line 249
    cmp-long v2, v2, v11

    .line 250
    .line 251
    if-eqz v2, :cond_f

    .line 252
    .line 253
    goto :goto_8

    .line 254
    :cond_f
    move-object/from16 v2, v20

    .line 255
    .line 256
    goto :goto_a

    .line 257
    :cond_10
    :goto_8
    iput-wide v11, v8, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->d:J

    .line 258
    .line 259
    const/4 v7, 0x0

    .line 260
    iput-boolean v7, v8, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->n:Z

    .line 261
    .line 262
    if-nez v20, :cond_11

    .line 263
    .line 264
    new-instance v2, Ljava/util/ArrayList;

    .line 265
    .line 266
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .line 268
    .line 269
    goto :goto_9

    .line 270
    :cond_11
    move-object/from16 v2, v20

    .line 271
    .line 272
    :goto_9
    new-instance v3, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 273
    .line 274
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 275
    .line 276
    .line 277
    iget-wide v7, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 278
    .line 279
    iput-wide v7, v3, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 280
    .line 281
    iget-wide v7, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->d:J

    .line 282
    .line 283
    iput-wide v7, v3, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->d:J

    .line 284
    .line 285
    iget-wide v7, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->e:J

    .line 286
    .line 287
    iput-wide v7, v3, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->e:J

    .line 288
    .line 289
    iget-object v7, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->f:Ljava/lang/String;

    .line 290
    .line 291
    iput-object v7, v3, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->f:Ljava/lang/String;

    .line 292
    .line 293
    iget v7, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->g:I

    .line 294
    .line 295
    iput v7, v3, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->g:I

    .line 296
    .line 297
    iget v7, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 298
    .line 299
    iput v7, v3, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 300
    .line 301
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move/from16 v7, p1

    .line 305
    .line 306
    :goto_a
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    iget-wide v11, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 310
    .line 311
    add-int/lit8 v13, v13, 0x1

    .line 312
    .line 313
    move-object/from16 v1, v19

    .line 314
    .line 315
    move/from16 v3, v21

    .line 316
    .line 317
    goto :goto_6

    .line 318
    :cond_12
    move-object/from16 v20, v2

    .line 319
    .line 320
    move/from16 v21, v3

    .line 321
    .line 322
    if-nez v7, :cond_14

    .line 323
    .line 324
    iget v1, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->i:I

    .line 325
    .line 326
    if-eq v1, v14, :cond_13

    .line 327
    .line 328
    goto :goto_b

    .line 329
    :cond_13
    const/4 v4, -0x1

    .line 330
    goto :goto_e

    .line 331
    :cond_14
    :goto_b
    iput v14, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->i:I

    .line 332
    .line 333
    if-eqz p1, :cond_13

    .line 334
    .line 335
    const/4 v4, -0x1

    .line 336
    if-ne v9, v4, :cond_15

    .line 337
    .line 338
    goto :goto_c

    .line 339
    :cond_15
    if-ge v14, v9, :cond_16

    .line 340
    .line 341
    :goto_c
    move v9, v14

    .line 342
    :cond_16
    if-ne v10, v4, :cond_17

    .line 343
    .line 344
    goto :goto_d

    .line 345
    :cond_17
    if-le v14, v10, :cond_18

    .line 346
    .line 347
    :goto_d
    move v10, v14

    .line 348
    :cond_18
    :goto_e
    add-int/lit8 v14, v14, 0x1

    .line 349
    .line 350
    move-wide v7, v11

    .line 351
    move-object/from16 v1, v17

    .line 352
    .line 353
    move-object/from16 v2, v20

    .line 354
    .line 355
    move/from16 v11, v21

    .line 356
    .line 357
    move v12, v6

    .line 358
    goto/16 :goto_5

    .line 359
    .line 360
    :cond_19
    const/4 v4, -0x1

    .line 361
    if-eq v9, v4, :cond_1d

    .line 362
    .line 363
    if-eq v10, v4, :cond_1d

    .line 364
    .line 365
    if-ltz v9, :cond_1d

    .line 366
    .line 367
    if-ge v10, v9, :cond_1a

    .line 368
    .line 369
    goto :goto_f

    .line 370
    :cond_1a
    iget-object v1, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->i:Ljava/util/ArrayList;

    .line 371
    .line 372
    if-eqz v1, :cond_1d

    .line 373
    .line 374
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 375
    .line 376
    .line 377
    move-result v1

    .line 378
    if-lt v10, v1, :cond_1b

    .line 379
    .line 380
    goto :goto_f

    .line 381
    :cond_1b
    sub-int/2addr v10, v9

    .line 382
    add-int/lit8 v10, v10, 0x1

    .line 383
    .line 384
    iget-object v1, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->e:Lcom/mycompany/app/view/MyRecyclerView;

    .line 385
    .line 386
    if-nez v1, :cond_1c

    .line 387
    .line 388
    goto :goto_f

    .line 389
    :cond_1c
    new-instance v3, Lcom/mycompany/app/web/WebTabBarAdapter$9;

    .line 390
    .line 391
    invoke-direct {v3, v0, v9, v10}, Lcom/mycompany/app/web/WebTabBarAdapter$9;-><init>(Lcom/mycompany/app/web/WebTabBarAdapter;II)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v1, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 395
    .line 396
    .line 397
    :cond_1d
    :goto_f
    if-eqz v2, :cond_1e

    .line 398
    .line 399
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 400
    .line 401
    .line 402
    move-result v1

    .line 403
    if-nez v1, :cond_1e

    .line 404
    .line 405
    iget-object v1, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->d:Landroid/content/Context;

    .line 406
    .line 407
    invoke-static {v1, v2}, Lcom/mycompany/app/db/book/DbBookTab;->A(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 408
    .line 409
    .line 410
    :cond_1e
    iput-object v5, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->g:Ljava/util/List;

    .line 411
    .line 412
    iput v11, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->h:I

    .line 413
    .line 414
    iput v12, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->j:I

    .line 415
    .line 416
    iget-object v1, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->l:Lcom/mycompany/app/web/WebTabBarAdapter$TabBarListener;

    .line 417
    .line 418
    if-eqz v1, :cond_20

    .line 419
    .line 420
    invoke-interface {v1, v11, v5}, Lcom/mycompany/app/web/WebTabBarAdapter$TabBarListener;->e(ILjava/util/ArrayList;)V

    .line 421
    .line 422
    .line 423
    return-void

    .line 424
    :cond_1f
    :goto_10
    iput-object v2, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->g:Ljava/util/List;

    .line 425
    .line 426
    const/4 v7, 0x0

    .line 427
    iput v7, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->h:I

    .line 428
    .line 429
    const/4 v4, -0x1

    .line 430
    iput v4, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->j:I

    .line 431
    .line 432
    iget-object v1, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->l:Lcom/mycompany/app/web/WebTabBarAdapter$TabBarListener;

    .line 433
    .line 434
    if-eqz v1, :cond_20

    .line 435
    .line 436
    invoke-interface {v1, v7, v2}, Lcom/mycompany/app/web/WebTabBarAdapter$TabBarListener;->e(ILjava/util/ArrayList;)V

    .line 437
    .line 438
    .line 439
    :cond_20
    return-void
.end method

.method public final N(IZ)V
    .locals 0

    .line 1
    iput-boolean p2, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->q:Z

    .line 2
    .line 3
    iput p1, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->r:I

    .line 4
    .line 5
    iget-object p1, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->i:Ljava/util/ArrayList;

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget p2, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->j:I

    .line 10
    .line 11
    if-ltz p2, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-lt p2, p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget p1, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->j:I

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/mycompany/app/web/WebTabBarAdapter;->x(I)V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    return-void
.end method

.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->F:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->i:Ljava/util/ArrayList;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    return v0

    .line 12
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public final bridge synthetic n(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/mycompany/app/web/WebTabBarAdapter;->G(Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final o(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    new-instance p2, Lcom/mycompany/app/view/MyTabFrame;

    .line 10
    .line 11
    invoke-direct {p2, p1}, Lcom/mycompany/app/view/MyTabFrame;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 15
    .line 16
    sget v1, Lcom/mycompany/app/main/MainApp;->Z0:I

    .line 17
    .line 18
    const/4 v2, -0x1

    .line 19
    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Lcom/mycompany/app/view/MyTextImage;

    .line 26
    .line 27
    invoke-direct {v0, p1}, Lcom/mycompany/app/view/MyTextImage;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyTextImage;->setRoundClip(Z)V

    .line 37
    .line 38
    .line 39
    const/high16 v3, 0x41a00000    # 20.0f

    .line 40
    .line 41
    invoke-static {p1, v3}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    float-to-int v3, v3

    .line 46
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 47
    .line 48
    invoke-direct {v4, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 49
    .line 50
    .line 51
    const v3, 0x800013

    .line 52
    .line 53
    .line 54
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 55
    .line 56
    const/high16 v5, 0x41600000    # 14.0f

    .line 57
    .line 58
    invoke-static {p1, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    float-to-int v6, v6

    .line 63
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    .line 68
    .line 69
    new-instance v4, Lcom/mycompany/app/view/MyButtonImage;

    .line 70
    .line 71
    invoke-direct {v4, p1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 72
    .line 73
    .line 74
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 75
    .line 76
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 77
    .line 78
    .line 79
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 80
    .line 81
    sget v7, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 82
    .line 83
    invoke-direct {v6, v7, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 84
    .line 85
    .line 86
    const v7, 0x800005

    .line 87
    .line 88
    .line 89
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 90
    .line 91
    invoke-virtual {p2, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    .line 93
    .line 94
    new-instance v6, Lcom/mycompany/app/view/MyTextFast;

    .line 95
    .line 96
    invoke-direct {v6, p1}, Lcom/mycompany/app/view/MyTextFast;-><init>(Landroid/content/Context;)V

    .line 97
    .line 98
    .line 99
    const/high16 v7, 0x42300000    # 44.0f

    .line 100
    .line 101
    invoke-static {p1, v7}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    float-to-int v7, v7

    .line 106
    const/high16 v8, 0x42000000    # 32.0f

    .line 107
    .line 108
    invoke-static {p1, v8}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    float-to-int p1, p1

    .line 113
    const/4 v8, 0x0

    .line 114
    invoke-virtual {v6, v7, v8, p1, v8}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v6, v1, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 121
    .line 122
    .line 123
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 124
    .line 125
    const/4 v1, -0x2

    .line 126
    invoke-direct {p1, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 127
    .line 128
    .line 129
    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 130
    .line 131
    invoke-virtual {p2, v6, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    .line 133
    .line 134
    new-instance p1, Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;

    .line 135
    .line 136
    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 137
    .line 138
    .line 139
    iput-object p2, p1, Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;->u:Lcom/mycompany/app/view/MyTabFrame;

    .line 140
    .line 141
    iput-object v0, p1, Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;->v:Lcom/mycompany/app/view/MyTextImage;

    .line 142
    .line 143
    iput-object v4, p1, Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;->x:Lcom/mycompany/app/view/MyButtonImage;

    .line 144
    .line 145
    iput-object v6, p1, Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;->w:Lcom/mycompany/app/view/MyTextFast;

    .line 146
    .line 147
    sget p2, Lcom/mycompany/app/main/MainApp;->Z0:I

    .line 148
    .line 149
    iput p2, p1, Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;->y:I

    .line 150
    .line 151
    iput v8, p1, Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;->z:I

    .line 152
    .line 153
    return-object p1
.end method

.method public final v(Ljava/util/List;IIZLcom/mycompany/app/web/WebTabBarAdapter$TabBarChangeListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->z:Lcom/mycompany/app/web/WebTabBarAdapter$TabBarChangeListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    iput-object p5, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->z:Lcom/mycompany/app/web/WebTabBarAdapter$TabBarChangeListener;

    .line 7
    .line 8
    iget p5, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->j:I

    .line 9
    .line 10
    invoke-virtual {p0, p3}, Lcom/mycompany/app/web/WebTabBarAdapter;->C(I)I

    .line 11
    .line 12
    .line 13
    move-result p3

    .line 14
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->i:Ljava/util/ArrayList;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move v0, v1

    .line 25
    :goto_0
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lcom/mycompany/app/web/WebTabBarAdapter;->J(ILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :catch_0
    iget-object p1, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->l:Lcom/mycompany/app/web/WebTabBarAdapter$TabBarListener;

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    invoke-interface {p1}, Lcom/mycompany/app/web/WebTabBarAdapter$TabBarListener;->a()V

    .line 34
    .line 35
    .line 36
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->i:Ljava/util/ArrayList;

    .line 37
    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    :cond_3
    iput-boolean p4, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->A:Z

    .line 45
    .line 46
    iput p5, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->B:I

    .line 47
    .line 48
    iput p3, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->C:I

    .line 49
    .line 50
    iput v0, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->D:I

    .line 51
    .line 52
    iput v1, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->E:I

    .line 53
    .line 54
    iget-object p1, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->e:Lcom/mycompany/app/view/MyRecyclerView;

    .line 55
    .line 56
    if-nez p1, :cond_4

    .line 57
    .line 58
    :goto_2
    return-void

    .line 59
    :cond_4
    new-instance p2, Lcom/mycompany/app/web/WebTabBarAdapter$4;

    .line 60
    .line 61
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebTabBarAdapter$4;-><init>(Lcom/mycompany/app/web/WebTabBarAdapter;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final w()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->e:Lcom/mycompany/app/view/MyRecyclerView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_4

    .line 12
    .line 13
    iget-object v2, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->e:Lcom/mycompany/app/view/MyRecyclerView;

    .line 14
    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-nez v2, :cond_2

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_2
    invoke-static {v2}, Lcom/mycompany/app/web/WebTabBarAdapter;->F(Landroid/view/View;)Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-nez v2, :cond_3

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_3
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-virtual {p0, v2, v3}, Lcom/mycompany/app/web/WebTabBarAdapter;->G(Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    :catch_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_4
    :goto_2
    return-void
.end method

.method public final x(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabBarAdapter;->f:Lcom/mycompany/app/view/MyManagerLinear;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->s(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    invoke-static {v0}, Lcom/mycompany/app/web/WebTabBarAdapter;->F(Landroid/view/View;)Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    invoke-virtual {p0, v0, p1}, Lcom/mycompany/app/web/WebTabBarAdapter;->G(Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    :catch_0
    :goto_0
    return-void
.end method
