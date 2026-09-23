.class public Lcom/mycompany/app/web/WebTabAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/web/WebTabAdapter$WebTabListener;,
        Lcom/mycompany/app/web/WebTabAdapter$WebTabSubListener;,
        Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;,
        Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public A:Lcom/mycompany/app/view/MyRecyclerView;

.field public B:Lcom/mycompany/app/web/WebNestFrame;

.field public C:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

.field public D:I

.field public E:Ljava/util/ArrayList;

.field public F:Ljava/util/List;

.field public G:Z

.field public H:J

.field public I:I

.field public J:I

.field public K:Ljava/util/regex/Pattern;

.field public L:I

.field public M:Ljava/util/List;

.field public final d:I

.field public e:Landroid/content/Context;

.field public final f:Z

.field public g:I

.field public h:Lcom/mycompany/app/view/MyRecyclerView;

.field public i:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public j:Ljava/util/List;

.field public k:Ljava/util/List;

.field public l:J

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public final t:Z

.field public u:Z

.field public selectionAnchor:I

.field public v:I

.field public w:I

.field public x:Lcom/mycompany/app/web/WebTabAdapter$WebTabListener;

.field public y:Lcom/mycompany/app/web/WebTabAdapter$WebTabSubListener;

.field public z:Lcom/mycompany/app/main/MainListLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mycompany/app/view/MyRecyclerView;ZLjava/util/List;Ljava/util/List;JIIIIZLandroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->d:I

    .line 6
    .line 7
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZone;->D:Z

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    sget v1, Lcom/mycompany/app/pref/PrefZone;->C:I

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    move v1, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v1, v2

    .line 19
    :goto_0
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebTabAdapter;->f:Z

    .line 20
    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    if-eqz p3, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    iput v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->d:I

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_2
    :goto_1
    iput v2, p0, Lcom/mycompany/app/web/WebTabAdapter;->d:I

    .line 30
    .line 31
    :goto_2
    iput-object p1, p0, Lcom/mycompany/app/web/WebTabAdapter;->e:Landroid/content/Context;

    .line 32
    .line 33
    iput-object p2, p0, Lcom/mycompany/app/web/WebTabAdapter;->h:Lcom/mycompany/app/view/MyRecyclerView;

    .line 34
    .line 35
    iput-object p4, p0, Lcom/mycompany/app/web/WebTabAdapter;->j:Ljava/util/List;

    .line 36
    .line 37
    iput-object p5, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 38
    .line 39
    iput-wide p6, p0, Lcom/mycompany/app/web/WebTabAdapter;->l:J

    .line 40
    .line 41
    iput p8, p0, Lcom/mycompany/app/web/WebTabAdapter;->m:I

    .line 42
    .line 43
    iput p9, p0, Lcom/mycompany/app/web/WebTabAdapter;->n:I

    .line 44
    .line 45
    sget p1, Lcom/mycompany/app/pref/PrefZone;->C:I

    .line 46
    .line 47
    iput p1, p0, Lcom/mycompany/app/web/WebTabAdapter;->o:I

    .line 48
    .line 49
    iput p10, p0, Lcom/mycompany/app/web/WebTabAdapter;->p:I

    .line 50
    .line 51
    iput p11, p0, Lcom/mycompany/app/web/WebTabAdapter;->q:I

    .line 52
    .line 53
    iput-boolean p12, p0, Lcom/mycompany/app/web/WebTabAdapter;->t:Z

    .line 54
    .line 55
    move-object/from16 p1, p13

    .line 56
    .line 57
    iput-object p1, p0, Lcom/mycompany/app/web/WebTabAdapter;->i:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebTabAdapter;->W()V

    .line 60
    .line 61
    .line 62
    new-instance p1, Lcom/mycompany/app/main/MainListLoader;

    .line 63
    .line 64
    iget-object p2, p0, Lcom/mycompany/app/web/WebTabAdapter;->e:Landroid/content/Context;

    .line 65
    .line 66
    new-instance p3, Lcom/mycompany/app/web/WebTabAdapter$1;

    .line 67
    .line 68
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-direct {p1, p2, v2, p3}, Lcom/mycompany/app/main/MainListLoader;-><init>(Landroid/content/Context;ZLcom/mycompany/app/main/MainListLoader$ListLoadListener;)V

    .line 72
    .line 73
    .line 74
    iput-object p1, p0, Lcom/mycompany/app/web/WebTabAdapter;->z:Lcom/mycompany/app/main/MainListLoader;

    .line 75
    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->selectionAnchor:I

    return-void
.end method

.method public static L(Landroid/view/View;)Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;
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
    instance-of v0, p0, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;

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
    check-cast p0, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;

    .line 18
    .line 19
    return-object p0
.end method


# virtual methods
.method public final A(IZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->i:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->s(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_1
    invoke-static {v0}, Lcom/mycompany/app/web/WebTabAdapter;->L(Landroid/view/View;)Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_2
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {p0, v2}, Lcom/mycompany/app/web/WebTabAdapter;->H(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-eqz v2, :cond_7

    .line 31
    .line 32
    iget v3, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->a:I

    .line 33
    .line 34
    if-eqz v3, :cond_3

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_3
    iget-object v3, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->y:Lcom/mycompany/app/web/WebTabGridItem;

    .line 38
    .line 39
    invoke-virtual {p0, v3, p1}, Lcom/mycompany/app/web/WebTabAdapter;->V(Lcom/mycompany/app/web/WebTabGridItem;I)V

    .line 40
    .line 41
    .line 42
    iget-object p1, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 43
    .line 44
    iget-boolean v3, p0, Lcom/mycompany/app/web/WebTabAdapter;->u:Z

    .line 45
    .line 46
    xor-int/lit8 v3, v3, 0x1

    .line 47
    .line 48
    invoke-virtual {p1, v3, p2}, Lcom/mycompany/app/view/MyButtonImage;->r(ZZ)V

    .line 49
    .line 50
    .line 51
    iget-object p1, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->G:Lcom/mycompany/app/view/MyButtonCheck;

    .line 52
    .line 53
    iget-boolean v3, p0, Lcom/mycompany/app/web/WebTabAdapter;->u:Z

    .line 54
    .line 55
    invoke-virtual {p1, v3, p2}, Lcom/mycompany/app/view/MyButtonCheck;->t(ZZ)V

    .line 56
    .line 57
    .line 58
    iget-object p1, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->G:Lcom/mycompany/app/view/MyButtonCheck;

    .line 59
    .line 60
    iget-boolean v3, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->m:Z

    .line 61
    .line 62
    invoke-virtual {p1, v3, p2}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 63
    .line 64
    .line 65
    iget-object p1, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->C:Lcom/mycompany/app/view/MyFadeView;

    .line 66
    .line 67
    if-eqz p1, :cond_5

    .line 68
    .line 69
    iget-boolean v3, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->m:Z

    .line 70
    .line 71
    if-eqz v3, :cond_4

    .line 72
    .line 73
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyFadeView;->f(Z)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_4
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyFadeView;->d(Z)V

    .line 78
    .line 79
    .line 80
    :cond_5
    :goto_0
    iget p1, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->v:I

    .line 81
    .line 82
    if-eqz p1, :cond_7

    .line 83
    .line 84
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 85
    .line 86
    if-eqz p1, :cond_6

    .line 87
    .line 88
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_dark:I

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_6
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back:I

    .line 92
    .line 93
    :goto_1
    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 94
    .line 95
    .line 96
    iget-boolean p1, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->m:Z

    .line 97
    .line 98
    invoke-virtual {v1, p1}, Landroid/view/View;->setActivated(Z)V

    .line 99
    .line 100
    .line 101
    :cond_7
    :goto_2
    return-void
.end method

.method public final B()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->n:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 4
    .line 5
    if-eqz v1, :cond_6

    .line 6
    .line 7
    if-ltz v0, :cond_6

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-lt v0, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/web/WebTabAdapter;->i:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->s(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    invoke-static {v1}, Lcom/mycompany/app/web/WebTabAdapter;->L(Landroid/view/View;)Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_3
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-virtual {p0, v2}, Lcom/mycompany/app/web/WebTabAdapter;->H(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    if-eqz v2, :cond_6

    .line 44
    .line 45
    iget v3, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->a:I

    .line 46
    .line 47
    if-eqz v3, :cond_4

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_4
    iget v3, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->v:I

    .line 51
    .line 52
    const/4 v4, 0x2

    .line 53
    if-ne v3, v4, :cond_5

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_5
    iget-object v1, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->z:Lcom/mycompany/app/view/MyThumbView;

    .line 57
    .line 58
    invoke-virtual {p0, v2, v1, v3, v0}, Lcom/mycompany/app/web/WebTabAdapter;->a0(Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;Lcom/mycompany/app/view/MyThumbView;II)V

    .line 59
    .line 60
    .line 61
    :cond_6
    :goto_0
    return-void
.end method

.method public final C(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->i:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
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
    invoke-static {v0}, Lcom/mycompany/app/web/WebTabAdapter;->L(Landroid/view/View;)Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;

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
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {p0, v1}, Lcom/mycompany/app/web/WebTabAdapter;->H(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_4

    .line 29
    .line 30
    iget v1, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->a:I

    .line 31
    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_3
    iget-object v0, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->y:Lcom/mycompany/app/web/WebTabGridItem;

    .line 36
    .line 37
    invoke-virtual {p0, v0, p1}, Lcom/mycompany/app/web/WebTabAdapter;->V(Lcom/mycompany/app/web/WebTabGridItem;I)V

    .line 38
    .line 39
    .line 40
    :cond_4
    :goto_0
    return-void
.end method

.method public final D(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->n:I

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/mycompany/app/web/WebTabAdapter;->C(I)V

    .line 15
    .line 16
    .line 17
    if-eqz p1, :cond_3

    .line 18
    .line 19
    iget p1, p0, Lcom/mycompany/app/web/WebTabAdapter;->n:I

    .line 20
    .line 21
    iget v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->d:I

    .line 22
    .line 23
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    if-eq p1, v0, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    add-int/lit8 v0, v0, -0x1

    .line 34
    .line 35
    if-ne p1, v0, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget p1, p0, Lcom/mycompany/app/web/WebTabAdapter;->n:I

    .line 39
    .line 40
    add-int/lit8 p1, p1, 0x1

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lcom/mycompany/app/web/WebTabAdapter;->C(I)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    :goto_0
    iget p1, p0, Lcom/mycompany/app/web/WebTabAdapter;->n:I

    .line 47
    .line 48
    add-int/lit8 p1, p1, -0x1

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lcom/mycompany/app/web/WebTabAdapter;->C(I)V

    .line 51
    .line 52
    .line 53
    :cond_3
    :goto_1
    return-void
.end method

.method public final E()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_3

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    iget v3, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->a:I

    .line 34
    .line 35
    if-eqz v3, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    iget-boolean v2, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->m:Z

    .line 39
    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    add-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    :goto_1
    return v1
.end method

.method public final F()Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->u:Z

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->d:I

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/mycompany/app/web/WebTabAdapter;->H(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_4

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    iget v2, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->a:I

    .line 44
    .line 45
    if-eqz v2, :cond_3

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    iget-boolean v2, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->m:Z

    .line 49
    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    return-object v1

    .line 53
    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 54
    return-object v0
.end method

.method public final G(I)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_1

    .line 3
    .line 4
    iget p1, p0, Lcom/mycompany/app/web/WebTabAdapter;->r:I

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/mycompany/app/web/WebTabAdapter;->e:Landroid/content/Context;

    .line 9
    .line 10
    const/high16 v0, 0x42a00000    # 80.0f

    .line 11
    .line 12
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iput p1, p0, Lcom/mycompany/app/web/WebTabAdapter;->r:I

    .line 21
    .line 22
    :cond_0
    iget p1, p0, Lcom/mycompany/app/web/WebTabAdapter;->r:I

    .line 23
    .line 24
    return p1

    .line 25
    :cond_1
    const/4 v0, 0x2

    .line 26
    if-ne p1, v0, :cond_3

    .line 27
    .line 28
    iget p1, p0, Lcom/mycompany/app/web/WebTabAdapter;->s:I

    .line 29
    .line 30
    if-nez p1, :cond_2

    .line 31
    .line 32
    iget-object p1, p0, Lcom/mycompany/app/web/WebTabAdapter;->e:Landroid/content/Context;

    .line 33
    .line 34
    const/high16 v0, 0x42600000    # 56.0f

    .line 35
    .line 36
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iput p1, p0, Lcom/mycompany/app/web/WebTabAdapter;->s:I

    .line 45
    .line 46
    :cond_2
    iget p1, p0, Lcom/mycompany/app/web/WebTabAdapter;->s:I

    .line 47
    .line 48
    return p1

    .line 49
    :cond_3
    iget p1, p0, Lcom/mycompany/app/web/WebTabAdapter;->q:I

    .line 50
    .line 51
    return p1
.end method

.method public final H(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

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
    iget-object v1, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

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

.method public final I(Ljava/util/List;Z)Ljava/util/ArrayList;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    :cond_0
    move-object v7, v1

    .line 13
    goto/16 :goto_12

    .line 14
    .line 15
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const/4 v4, 0x0

    .line 25
    const-wide/16 v6, -0x1

    .line 26
    .line 27
    iget v8, v0, Lcom/mycompany/app/web/WebTabAdapter;->d:I

    .line 28
    .line 29
    move-object v11, v1

    .line 30
    move v12, v4

    .line 31
    const/4 v9, -0x1

    .line 32
    const/4 v10, -0x1

    .line 33
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v13

    .line 37
    const/4 v14, 0x1

    .line 38
    if-eqz v13, :cond_1f

    .line 39
    .line 40
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v13

    .line 44
    check-cast v13, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 45
    .line 46
    if-nez v13, :cond_2

    .line 47
    .line 48
    :goto_1
    move-wide/from16 v16, v6

    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_2
    iget v15, v13, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->a:I

    .line 52
    .line 53
    if-eqz v15, :cond_3

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    iget-object v15, v13, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 57
    .line 58
    move-wide/from16 v16, v6

    .line 59
    .line 60
    if-eqz v15, :cond_7

    .line 61
    .line 62
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    if-nez v7, :cond_4

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_4
    if-ne v7, v14, :cond_7

    .line 70
    .line 71
    iget-object v7, v13, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 72
    .line 73
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    check-cast v7, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 78
    .line 79
    if-nez v7, :cond_5

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_5
    const-wide/16 v18, 0x0

    .line 83
    .line 84
    iget-wide v4, v7, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 85
    .line 86
    cmp-long v6, v4, v18

    .line 87
    .line 88
    if-gtz v6, :cond_6

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_6
    iput-wide v4, v13, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 92
    .line 93
    iget-object v4, v7, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 94
    .line 95
    iput-object v4, v13, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 96
    .line 97
    iget-object v4, v7, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->k:Ljava/lang/String;

    .line 98
    .line 99
    iput-object v4, v13, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->k:Ljava/lang/String;

    .line 100
    .line 101
    iget-boolean v4, v7, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->l:Z

    .line 102
    .line 103
    iput-boolean v4, v13, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->l:Z

    .line 104
    .line 105
    iget-object v4, v7, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->p:Lcom/mycompany/app/web/WebNestFrame;

    .line 106
    .line 107
    iput-object v4, v13, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->p:Lcom/mycompany/app/web/WebNestFrame;

    .line 108
    .line 109
    iput-object v1, v13, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 110
    .line 111
    iput-boolean v14, v13, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->n:Z

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_7
    const-wide/16 v18, 0x0

    .line 115
    .line 116
    :goto_2
    iget-object v4, v13, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 117
    .line 118
    if-nez v4, :cond_12

    .line 119
    .line 120
    iget-wide v4, v13, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 121
    .line 122
    cmp-long v6, v4, v18

    .line 123
    .line 124
    if-gtz v6, :cond_8

    .line 125
    .line 126
    :goto_3
    move-wide/from16 v6, v16

    .line 127
    .line 128
    :goto_4
    const/4 v4, 0x0

    .line 129
    goto :goto_0

    .line 130
    :cond_8
    new-instance v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 131
    .line 132
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 133
    .line 134
    .line 135
    iput-wide v4, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 136
    .line 137
    iget-object v7, v13, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 138
    .line 139
    iput-object v7, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 140
    .line 141
    iget-object v7, v13, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->k:Ljava/lang/String;

    .line 142
    .line 143
    iput-object v7, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->k:Ljava/lang/String;

    .line 144
    .line 145
    iget-boolean v7, v13, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->l:Z

    .line 146
    .line 147
    iput-boolean v7, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->l:Z

    .line 148
    .line 149
    iget-object v7, v13, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->p:Lcom/mycompany/app/web/WebNestFrame;

    .line 150
    .line 151
    iput-object v7, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->p:Lcom/mycompany/app/web/WebNestFrame;

    .line 152
    .line 153
    move-object/from16 v20, v2

    .line 154
    .line 155
    iget-wide v1, v0, Lcom/mycompany/app/web/WebTabAdapter;->l:J

    .line 156
    .line 157
    cmp-long v1, v1, v4

    .line 158
    .line 159
    if-nez v1, :cond_9

    .line 160
    .line 161
    iput v12, v0, Lcom/mycompany/app/web/WebTabAdapter;->m:I

    .line 162
    .line 163
    iput v8, v0, Lcom/mycompany/app/web/WebTabAdapter;->n:I

    .line 164
    .line 165
    :cond_9
    move-wide/from16 v1, v16

    .line 166
    .line 167
    iput-wide v1, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->d:J

    .line 168
    .line 169
    iput v12, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 170
    .line 171
    iput v12, v13, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 172
    .line 173
    iget-boolean v4, v13, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->n:Z

    .line 174
    .line 175
    if-nez v4, :cond_b

    .line 176
    .line 177
    iget-wide v4, v13, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->d:J

    .line 178
    .line 179
    cmp-long v4, v4, v1

    .line 180
    .line 181
    if-eqz v4, :cond_a

    .line 182
    .line 183
    goto :goto_5

    .line 184
    :cond_a
    const/4 v1, 0x0

    .line 185
    goto :goto_6

    .line 186
    :cond_b
    :goto_5
    iput-wide v1, v13, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->d:J

    .line 187
    .line 188
    move-wide/from16 v1, v18

    .line 189
    .line 190
    iput-wide v1, v13, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->e:J

    .line 191
    .line 192
    const/4 v7, 0x0

    .line 193
    iput-object v7, v13, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->f:Ljava/lang/String;

    .line 194
    .line 195
    const/4 v15, 0x0

    .line 196
    iput v15, v13, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->g:I

    .line 197
    .line 198
    iput-object v7, v13, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 199
    .line 200
    iput-boolean v15, v13, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->n:Z

    .line 201
    .line 202
    if-nez v11, :cond_c

    .line 203
    .line 204
    new-instance v11, Ljava/util/ArrayList;

    .line 205
    .line 206
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .line 208
    .line 209
    :cond_c
    new-instance v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 210
    .line 211
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 212
    .line 213
    .line 214
    iget-wide v4, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 215
    .line 216
    iput-wide v4, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 217
    .line 218
    iget-wide v4, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->d:J

    .line 219
    .line 220
    iput-wide v4, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->d:J

    .line 221
    .line 222
    iget-wide v4, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->e:J

    .line 223
    .line 224
    iput-wide v4, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->e:J

    .line 225
    .line 226
    iget-object v2, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->f:Ljava/lang/String;

    .line 227
    .line 228
    iput-object v2, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->f:Ljava/lang/String;

    .line 229
    .line 230
    iget v2, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->g:I

    .line 231
    .line 232
    iput v2, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->g:I

    .line 233
    .line 234
    iput v12, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 235
    .line 236
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move/from16 v1, p2

    .line 240
    .line 241
    :goto_6
    if-nez v1, :cond_d

    .line 242
    .line 243
    iget v1, v13, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->i:I

    .line 244
    .line 245
    if-eq v1, v8, :cond_11

    .line 246
    .line 247
    :cond_d
    iput v8, v13, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->i:I

    .line 248
    .line 249
    if-eqz p2, :cond_11

    .line 250
    .line 251
    const/4 v1, -0x1

    .line 252
    if-ne v9, v1, :cond_e

    .line 253
    .line 254
    goto :goto_7

    .line 255
    :cond_e
    if-ge v8, v9, :cond_f

    .line 256
    .line 257
    :goto_7
    move v9, v8

    .line 258
    :cond_f
    if-ne v10, v1, :cond_10

    .line 259
    .line 260
    goto :goto_8

    .line 261
    :cond_10
    if-le v8, v10, :cond_11

    .line 262
    .line 263
    :goto_8
    move v10, v8

    .line 264
    :cond_11
    move-object/from16 v5, v20

    .line 265
    .line 266
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    iget-wide v1, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 270
    .line 271
    add-int/lit8 v12, v12, 0x1

    .line 272
    .line 273
    add-int/lit8 v8, v8, 0x1

    .line 274
    .line 275
    move-wide v6, v1

    .line 276
    move-object v2, v5

    .line 277
    const/4 v1, 0x0

    .line 278
    goto/16 :goto_4

    .line 279
    .line 280
    :cond_12
    move-object v5, v2

    .line 281
    move-wide/from16 v1, v16

    .line 282
    .line 283
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 284
    .line 285
    .line 286
    move-result-object v4

    .line 287
    const/4 v6, 0x0

    .line 288
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 289
    .line 290
    .line 291
    move-result v14

    .line 292
    if-eqz v14, :cond_18

    .line 293
    .line 294
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v14

    .line 298
    check-cast v14, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 299
    .line 300
    move/from16 v17, v8

    .line 301
    .line 302
    iget-wide v7, v14, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 303
    .line 304
    const-wide/16 v18, 0x0

    .line 305
    .line 306
    cmp-long v20, v7, v18

    .line 307
    .line 308
    if-gtz v20, :cond_13

    .line 309
    .line 310
    move/from16 v8, v17

    .line 311
    .line 312
    goto :goto_9

    .line 313
    :cond_13
    new-instance v15, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 314
    .line 315
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 316
    .line 317
    .line 318
    iput-wide v7, v15, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 319
    .line 320
    move-object/from16 v21, v3

    .line 321
    .line 322
    move-object/from16 v22, v4

    .line 323
    .line 324
    iget-wide v3, v14, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->e:J

    .line 325
    .line 326
    iput-wide v3, v15, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->e:J

    .line 327
    .line 328
    iget-object v3, v14, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->f:Ljava/lang/String;

    .line 329
    .line 330
    iput-object v3, v15, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->f:Ljava/lang/String;

    .line 331
    .line 332
    iget v3, v14, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->g:I

    .line 333
    .line 334
    iput v3, v15, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->g:I

    .line 335
    .line 336
    iget-object v3, v14, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 337
    .line 338
    iput-object v3, v15, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 339
    .line 340
    iget-object v3, v14, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->k:Ljava/lang/String;

    .line 341
    .line 342
    iput-object v3, v15, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->k:Ljava/lang/String;

    .line 343
    .line 344
    iget-boolean v3, v14, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->l:Z

    .line 345
    .line 346
    iput-boolean v3, v15, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->l:Z

    .line 347
    .line 348
    iget-object v3, v14, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->p:Lcom/mycompany/app/web/WebNestFrame;

    .line 349
    .line 350
    iput-object v3, v15, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->p:Lcom/mycompany/app/web/WebNestFrame;

    .line 351
    .line 352
    iget-wide v3, v0, Lcom/mycompany/app/web/WebTabAdapter;->l:J

    .line 353
    .line 354
    cmp-long v3, v3, v7

    .line 355
    .line 356
    if-nez v3, :cond_14

    .line 357
    .line 358
    iput v12, v0, Lcom/mycompany/app/web/WebTabAdapter;->m:I

    .line 359
    .line 360
    move/from16 v8, v17

    .line 361
    .line 362
    iput v8, v0, Lcom/mycompany/app/web/WebTabAdapter;->n:I

    .line 363
    .line 364
    goto :goto_a

    .line 365
    :cond_14
    move/from16 v8, v17

    .line 366
    .line 367
    :goto_a
    iput-wide v1, v15, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->d:J

    .line 368
    .line 369
    iput v12, v15, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 370
    .line 371
    iput v12, v14, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 372
    .line 373
    iget-boolean v3, v14, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->n:Z

    .line 374
    .line 375
    if-nez v3, :cond_16

    .line 376
    .line 377
    iget-wide v3, v14, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->d:J

    .line 378
    .line 379
    cmp-long v3, v3, v1

    .line 380
    .line 381
    if-eqz v3, :cond_15

    .line 382
    .line 383
    goto :goto_b

    .line 384
    :cond_15
    const/4 v3, 0x0

    .line 385
    goto :goto_c

    .line 386
    :cond_16
    :goto_b
    iput-wide v1, v14, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->d:J

    .line 387
    .line 388
    const/4 v3, 0x0

    .line 389
    iput-boolean v3, v14, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->n:Z

    .line 390
    .line 391
    if-nez v11, :cond_17

    .line 392
    .line 393
    new-instance v11, Ljava/util/ArrayList;

    .line 394
    .line 395
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 396
    .line 397
    .line 398
    :cond_17
    new-instance v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 399
    .line 400
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 401
    .line 402
    .line 403
    iget-wide v6, v15, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 404
    .line 405
    iput-wide v6, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 406
    .line 407
    iget-wide v6, v15, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->d:J

    .line 408
    .line 409
    iput-wide v6, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->d:J

    .line 410
    .line 411
    iget-wide v6, v15, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->e:J

    .line 412
    .line 413
    iput-wide v6, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->e:J

    .line 414
    .line 415
    iget-object v2, v15, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->f:Ljava/lang/String;

    .line 416
    .line 417
    iput-object v2, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->f:Ljava/lang/String;

    .line 418
    .line 419
    iget v2, v15, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->g:I

    .line 420
    .line 421
    iput v2, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->g:I

    .line 422
    .line 423
    iput v12, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 424
    .line 425
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    .line 427
    .line 428
    move/from16 v6, p2

    .line 429
    .line 430
    :goto_c
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    .line 432
    .line 433
    iget-wide v1, v15, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 434
    .line 435
    add-int/lit8 v12, v12, 0x1

    .line 436
    .line 437
    move-object/from16 v3, v21

    .line 438
    .line 439
    move-object/from16 v4, v22

    .line 440
    .line 441
    goto/16 :goto_9

    .line 442
    .line 443
    :cond_18
    move-object/from16 v21, v3

    .line 444
    .line 445
    const/4 v3, 0x0

    .line 446
    if-nez v6, :cond_1a

    .line 447
    .line 448
    iget v4, v13, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->i:I

    .line 449
    .line 450
    if-eq v4, v8, :cond_19

    .line 451
    .line 452
    goto :goto_d

    .line 453
    :cond_19
    const/4 v4, -0x1

    .line 454
    goto :goto_10

    .line 455
    :cond_1a
    :goto_d
    iput v8, v13, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->i:I

    .line 456
    .line 457
    if-eqz p2, :cond_19

    .line 458
    .line 459
    const/4 v4, -0x1

    .line 460
    if-ne v9, v4, :cond_1b

    .line 461
    .line 462
    goto :goto_e

    .line 463
    :cond_1b
    if-ge v8, v9, :cond_1c

    .line 464
    .line 465
    :goto_e
    move v9, v8

    .line 466
    :cond_1c
    if-ne v10, v4, :cond_1d

    .line 467
    .line 468
    goto :goto_f

    .line 469
    :cond_1d
    if-le v8, v10, :cond_1e

    .line 470
    .line 471
    :goto_f
    move v10, v8

    .line 472
    :cond_1e
    :goto_10
    add-int/lit8 v8, v8, 0x1

    .line 473
    .line 474
    move-wide v6, v1

    .line 475
    move v4, v3

    .line 476
    move-object v2, v5

    .line 477
    move-object/from16 v3, v21

    .line 478
    .line 479
    const/4 v1, 0x0

    .line 480
    goto/16 :goto_0

    .line 481
    .line 482
    :cond_1f
    move-object v5, v2

    .line 483
    const/4 v4, -0x1

    .line 484
    if-eq v9, v4, :cond_23

    .line 485
    .line 486
    if-eq v10, v4, :cond_23

    .line 487
    .line 488
    if-ltz v9, :cond_23

    .line 489
    .line 490
    if-ge v10, v9, :cond_20

    .line 491
    .line 492
    goto :goto_11

    .line 493
    :cond_20
    iget-object v1, v0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 494
    .line 495
    if-eqz v1, :cond_23

    .line 496
    .line 497
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 498
    .line 499
    .line 500
    move-result v1

    .line 501
    if-lt v10, v1, :cond_21

    .line 502
    .line 503
    goto :goto_11

    .line 504
    :cond_21
    sub-int/2addr v10, v9

    .line 505
    add-int/2addr v10, v14

    .line 506
    iget-object v1, v0, Lcom/mycompany/app/web/WebTabAdapter;->h:Lcom/mycompany/app/view/MyRecyclerView;

    .line 507
    .line 508
    if-nez v1, :cond_22

    .line 509
    .line 510
    goto :goto_11

    .line 511
    :cond_22
    new-instance v2, Lcom/mycompany/app/web/WebTabAdapter$2;

    .line 512
    .line 513
    invoke-direct {v2, v0, v9, v10}, Lcom/mycompany/app/web/WebTabAdapter$2;-><init>(Lcom/mycompany/app/web/WebTabAdapter;II)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 517
    .line 518
    .line 519
    :cond_23
    :goto_11
    if-eqz v11, :cond_24

    .line 520
    .line 521
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    .line 522
    .line 523
    .line 524
    move-result v1

    .line 525
    if-nez v1, :cond_24

    .line 526
    .line 527
    iget-object v1, v0, Lcom/mycompany/app/web/WebTabAdapter;->e:Landroid/content/Context;

    .line 528
    .line 529
    invoke-static {v1, v11}, Lcom/mycompany/app/db/book/DbBookTab;->A(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 530
    .line 531
    .line 532
    :cond_24
    return-object v5

    .line 533
    :goto_12
    return-object v7
.end method

.method public final J()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget v1, p0, Lcom/mycompany/app/web/WebTabAdapter;->d:I

    .line 19
    .line 20
    sub-int/2addr v0, v1

    .line 21
    if-gez v0, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    return v0

    .line 25
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 26
    return v0
.end method

.method public final K()Ljava/util/regex/Pattern;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->K:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "\\p{Punct}"

    .line 6
    .line 7
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->K:Ljava/util/regex/Pattern;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->K:Ljava/util/regex/Pattern;

    .line 14
    .line 15
    return-object v0
.end method

.method public final M(Landroid/view/View;II)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_2

    .line 6
    .line 7
    :cond_0
    iget v1, p0, Lcom/mycompany/app/web/WebTabAdapter;->d:I

    .line 8
    .line 9
    if-lt p2, v1, :cond_e

    .line 10
    .line 11
    if-ge p3, v1, :cond_1

    .line 12
    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-ge p2, v0, :cond_e

    .line 20
    .line 21
    if-lt p3, v0, :cond_2

    .line 22
    .line 23
    goto/16 :goto_2

    .line 24
    .line 25
    :cond_2
    invoke-virtual {p0, p2}, Lcom/mycompany/app/web/WebTabAdapter;->H(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-nez v0, :cond_3

    .line 30
    .line 31
    goto/16 :goto_2

    .line 32
    .line 33
    :cond_3
    invoke-virtual {p0, p3}, Lcom/mycompany/app/web/WebTabAdapter;->H(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-nez v1, :cond_4

    .line 38
    .line 39
    goto/16 :goto_2

    .line 40
    .line 41
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v2

    .line 45
    iget-object v4, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    const/4 v6, 0x1

    .line 49
    if-eqz v4, :cond_8

    .line 50
    .line 51
    iget-object p2, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 52
    .line 53
    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    iget-object p2, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 57
    .line 58
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    check-cast p2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 63
    .line 64
    if-eqz p2, :cond_6

    .line 65
    .line 66
    iget-object p3, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 67
    .line 68
    if-eqz p3, :cond_5

    .line 69
    .line 70
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_6

    .line 79
    .line 80
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 85
    .line 86
    iget-wide v2, p2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->e:J

    .line 87
    .line 88
    iput-wide v2, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->e:J

    .line 89
    .line 90
    iget-object v2, p2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->f:Ljava/lang/String;

    .line 91
    .line 92
    iput-object v2, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->f:Ljava/lang/String;

    .line 93
    .line 94
    iget v2, p2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->g:I

    .line 95
    .line 96
    iput v2, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->g:I

    .line 97
    .line 98
    iput-boolean v6, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->n:Z

    .line 99
    .line 100
    iget-object v2, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 101
    .line 102
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_5
    iget-wide v2, p2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->e:J

    .line 107
    .line 108
    iput-wide v2, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->e:J

    .line 109
    .line 110
    iget-object p3, p2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->f:Ljava/lang/String;

    .line 111
    .line 112
    iput-object p3, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->f:Ljava/lang/String;

    .line 113
    .line 114
    iget p2, p2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->g:I

    .line 115
    .line 116
    iput p2, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->g:I

    .line 117
    .line 118
    iput-boolean v6, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->n:Z

    .line 119
    .line 120
    iget-object p2, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 121
    .line 122
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    :cond_6
    iget-object p2, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 126
    .line 127
    invoke-virtual {p0, p2, v5}, Lcom/mycompany/app/web/WebTabAdapter;->I(Ljava/util/List;Z)Ljava/util/ArrayList;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    iput-object p2, p0, Lcom/mycompany/app/web/WebTabAdapter;->j:Ljava/util/List;

    .line 132
    .line 133
    if-nez p1, :cond_7

    .line 134
    .line 135
    goto/16 :goto_2

    .line 136
    .line 137
    :cond_7
    new-instance p2, Lcom/mycompany/app/web/WebTabAdapter$11;

    .line 138
    .line 139
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebTabAdapter$11;-><init>(Lcom/mycompany/app/web/WebTabAdapter;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :cond_8
    iget-object v4, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 147
    .line 148
    invoke-interface {v4, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    iget-object v4, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 152
    .line 153
    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    iput-wide v2, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->e:J

    .line 157
    .line 158
    iput-boolean v6, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->n:Z

    .line 159
    .line 160
    iget-object v4, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 161
    .line 162
    if-eqz v4, :cond_9

    .line 163
    .line 164
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    check-cast v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 169
    .line 170
    if-eqz v4, :cond_9

    .line 171
    .line 172
    iget-object v7, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->f:Ljava/lang/String;

    .line 173
    .line 174
    iput-object v7, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->f:Ljava/lang/String;

    .line 175
    .line 176
    iget v4, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->g:I

    .line 177
    .line 178
    iput v4, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->g:I

    .line 179
    .line 180
    :cond_9
    new-instance v4, Ljava/util/ArrayList;

    .line 181
    .line 182
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    iget-object v1, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 189
    .line 190
    if-eqz v1, :cond_a

    .line 191
    .line 192
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    if-eqz v1, :cond_b

    .line 201
    .line 202
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    check-cast v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 207
    .line 208
    iput-wide v2, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->e:J

    .line 209
    .line 210
    iput-boolean v6, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->n:Z

    .line 211
    .line 212
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    goto :goto_1

    .line 216
    :cond_a
    iput-wide v2, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->e:J

    .line 217
    .line 218
    iput-boolean v6, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->n:Z

    .line 219
    .line 220
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    :cond_b
    if-ge p2, p3, :cond_c

    .line 224
    .line 225
    add-int/lit8 p3, p3, -0x1

    .line 226
    .line 227
    :cond_c
    new-instance p2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 228
    .line 229
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 230
    .line 231
    .line 232
    iput-object v4, p2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 233
    .line 234
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 235
    .line 236
    invoke-interface {v0, p3, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    iget-object p2, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 240
    .line 241
    invoke-virtual {p0, p2, v5}, Lcom/mycompany/app/web/WebTabAdapter;->I(Ljava/util/List;Z)Ljava/util/ArrayList;

    .line 242
    .line 243
    .line 244
    move-result-object p2

    .line 245
    iput-object p2, p0, Lcom/mycompany/app/web/WebTabAdapter;->j:Ljava/util/List;

    .line 246
    .line 247
    if-nez p1, :cond_d

    .line 248
    .line 249
    goto :goto_2

    .line 250
    :cond_d
    new-instance p2, Lcom/mycompany/app/web/WebTabAdapter$12;

    .line 251
    .line 252
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebTabAdapter$12;-><init>(Lcom/mycompany/app/web/WebTabAdapter;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 256
    .line 257
    .line 258
    :cond_e
    :goto_2
    return-void
.end method

.method public final N()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    move v2, v1

    .line 20
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_3

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    iget v4, v3, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->a:I

    .line 35
    .line 36
    if-eqz v4, :cond_2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    iget-boolean v3, v3, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->m:Z

    .line 40
    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iget v3, p0, Lcom/mycompany/app/web/WebTabAdapter;->d:I

    .line 53
    .line 54
    sub-int/2addr v0, v3

    .line 55
    if-gtz v0, :cond_4

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_4
    if-lt v2, v0, :cond_5

    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    return v0

    .line 62
    :cond_5
    :goto_1
    return v1
.end method

.method public final O(II)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_1

    .line 6
    .line 7
    :cond_0
    iget v1, p0, Lcom/mycompany/app/web/WebTabAdapter;->d:I

    .line 8
    .line 9
    if-ge p1, v1, :cond_1

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-lt p1, v0, :cond_2

    .line 18
    .line 19
    goto/16 :goto_1

    .line 20
    .line 21
    :cond_2
    invoke-virtual {p0, p1}, Lcom/mycompany/app/web/WebTabAdapter;->H(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_7

    .line 26
    .line 27
    iget-object v1, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 28
    .line 29
    if-eqz v1, :cond_7

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 45
    .line 46
    if-nez v1, :cond_4

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_4
    iget-object v2, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 50
    .line 51
    invoke-interface {v2, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    const-wide/16 v2, 0x0

    .line 55
    .line 56
    iput-wide v2, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->e:J

    .line 57
    .line 58
    const/4 p2, 0x0

    .line 59
    iput-object p2, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->f:Ljava/lang/String;

    .line 60
    .line 61
    const/4 v4, 0x0

    .line 62
    iput v4, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->g:I

    .line 63
    .line 64
    const/4 v5, 0x1

    .line 65
    iput-boolean v5, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->n:Z

    .line 66
    .line 67
    iget-object v6, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 68
    .line 69
    add-int/lit8 v7, p1, 0x1

    .line 70
    .line 71
    invoke-interface {v6, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    iget-object v1, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 75
    .line 76
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-nez v1, :cond_5

    .line 81
    .line 82
    iget-object p2, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 83
    .line 84
    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_5
    iget-object v1, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 89
    .line 90
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-ne v1, v5, :cond_6

    .line 95
    .line 96
    iget-object v1, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 97
    .line 98
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    iget-object v1, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 102
    .line 103
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    check-cast v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 108
    .line 109
    if-eqz v1, :cond_6

    .line 110
    .line 111
    iget-object v0, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 112
    .line 113
    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    iput-wide v2, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->e:J

    .line 117
    .line 118
    iput-object p2, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->f:Ljava/lang/String;

    .line 119
    .line 120
    iput v4, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->g:I

    .line 121
    .line 122
    iput-boolean v5, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->n:Z

    .line 123
    .line 124
    iget-object p2, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 125
    .line 126
    invoke-interface {p2, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    :cond_6
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->h(I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, v7}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->i(I)V

    .line 133
    .line 134
    .line 135
    iget-object p1, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 136
    .line 137
    invoke-virtual {p0, p1, v5}, Lcom/mycompany/app/web/WebTabAdapter;->I(Ljava/util/List;Z)Ljava/util/ArrayList;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    iput-object p1, p0, Lcom/mycompany/app/web/WebTabAdapter;->j:Ljava/util/List;

    .line 142
    .line 143
    :cond_7
    :goto_1
    return-void
.end method

.method public final P()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebTabAdapter;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->L:I

    .line 6
    .line 7
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->z:Lcom/mycompany/app/main/MainListLoader;

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
    iput-object v1, p0, Lcom/mycompany/app/web/WebTabAdapter;->z:Lcom/mycompany/app/main/MainListLoader;

    .line 16
    .line 17
    :cond_0
    iput-object v1, p0, Lcom/mycompany/app/web/WebTabAdapter;->e:Landroid/content/Context;

    .line 18
    .line 19
    iput-object v1, p0, Lcom/mycompany/app/web/WebTabAdapter;->h:Lcom/mycompany/app/view/MyRecyclerView;

    .line 20
    .line 21
    iput-object v1, p0, Lcom/mycompany/app/web/WebTabAdapter;->i:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 22
    .line 23
    iput-object v1, p0, Lcom/mycompany/app/web/WebTabAdapter;->j:Ljava/util/List;

    .line 24
    .line 25
    iput-object v1, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 26
    .line 27
    iput-object v1, p0, Lcom/mycompany/app/web/WebTabAdapter;->x:Lcom/mycompany/app/web/WebTabAdapter$WebTabListener;

    .line 28
    .line 29
    iput-object v1, p0, Lcom/mycompany/app/web/WebTabAdapter;->y:Lcom/mycompany/app/web/WebTabAdapter$WebTabSubListener;

    .line 30
    .line 31
    iput-object v1, p0, Lcom/mycompany/app/web/WebTabAdapter;->A:Lcom/mycompany/app/view/MyRecyclerView;

    .line 32
    .line 33
    iput-object v1, p0, Lcom/mycompany/app/web/WebTabAdapter;->B:Lcom/mycompany/app/web/WebNestFrame;

    .line 34
    .line 35
    iput-object v1, p0, Lcom/mycompany/app/web/WebTabAdapter;->K:Ljava/util/regex/Pattern;

    .line 36
    .line 37
    return-void
.end method

.method public final Q()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->G:Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/mycompany/app/web/WebTabAdapter;->E:Ljava/util/ArrayList;

    .line 6
    .line 7
    iput-object v1, p0, Lcom/mycompany/app/web/WebTabAdapter;->F:Ljava/util/List;

    .line 8
    .line 9
    iput-object v1, p0, Lcom/mycompany/app/web/WebTabAdapter;->C:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 10
    .line 11
    iput v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->D:I

    .line 12
    .line 13
    const-wide/16 v1, 0x0

    .line 14
    .line 15
    iput-wide v1, p0, Lcom/mycompany/app/web/WebTabAdapter;->H:J

    .line 16
    .line 17
    iput v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->I:I

    .line 18
    .line 19
    iput v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->J:I

    .line 20
    .line 21
    return-void
.end method

.method public final R(IZ)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->u:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->d:I

    .line 7
    .line 8
    if-lt p1, v0, :cond_5

    .line 9
    .line 10
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 11
    .line 12
    if-eqz v0, :cond_5

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-lt p1, v0, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebTabAdapter;->Q()V

    .line 22
    .line 23
    .line 24
    if-eqz p2, :cond_3

    .line 25
    .line 26
    iput p1, p0, Lcom/mycompany/app/web/WebTabAdapter;->D:I

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/mycompany/app/web/WebTabAdapter;->H(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    iput-object p2, p0, Lcom/mycompany/app/web/WebTabAdapter;->C:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 33
    .line 34
    if-nez p2, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    iget-wide v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->l:J

    .line 38
    .line 39
    iput-wide v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->H:J

    .line 40
    .line 41
    iget p2, p0, Lcom/mycompany/app/web/WebTabAdapter;->m:I

    .line 42
    .line 43
    iput p2, p0, Lcom/mycompany/app/web/WebTabAdapter;->I:I

    .line 44
    .line 45
    iget p2, p0, Lcom/mycompany/app/web/WebTabAdapter;->n:I

    .line 46
    .line 47
    iput p2, p0, Lcom/mycompany/app/web/WebTabAdapter;->J:I

    .line 48
    .line 49
    :cond_3
    iget-object p2, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 50
    .line 51
    invoke-interface {p2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    iget p2, p0, Lcom/mycompany/app/web/WebTabAdapter;->n:I

    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    if-gt p1, p2, :cond_4

    .line 58
    .line 59
    sub-int/2addr p2, v0

    .line 60
    iput p2, p0, Lcom/mycompany/app/web/WebTabAdapter;->n:I

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebTabAdapter;->d0()V

    .line 63
    .line 64
    .line 65
    :cond_4
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->l(I)V

    .line 66
    .line 67
    .line 68
    return v0

    .line 69
    :cond_5
    :goto_0
    const/4 p1, 0x0

    .line 70
    return p1
.end method

.method public final S(II)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v1, p0, Lcom/mycompany/app/web/WebTabAdapter;->d:I

    .line 7
    .line 8
    if-lt p1, v1, :cond_4

    .line 9
    .line 10
    if-ge p2, v1, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-ge p1, v0, :cond_4

    .line 18
    .line 19
    if-lt p2, v0, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 29
    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->j(II)V

    .line 39
    .line 40
    .line 41
    const/4 p1, 0x1

    .line 42
    return p1

    .line 43
    :cond_4
    :goto_0
    const/4 p1, 0x0

    .line 44
    return p1
.end method

.method public final T(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/mycompany/app/web/WebTabAdapter;->I(Ljava/util/List;Z)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/mycompany/app/web/WebTabAdapter;->j:Ljava/util/List;

    .line 8
    .line 9
    return-void
.end method

.method public final U()I
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->u:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->C:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 7
    .line 8
    iget v1, p0, Lcom/mycompany/app/web/WebTabAdapter;->D:I

    .line 9
    .line 10
    iget-wide v2, p0, Lcom/mycompany/app/web/WebTabAdapter;->H:J

    .line 11
    .line 12
    iget v4, p0, Lcom/mycompany/app/web/WebTabAdapter;->I:I

    .line 13
    .line 14
    iget v5, p0, Lcom/mycompany/app/web/WebTabAdapter;->J:I

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebTabAdapter;->Q()V

    .line 17
    .line 18
    .line 19
    iget v6, p0, Lcom/mycompany/app/web/WebTabAdapter;->d:I

    .line 20
    .line 21
    if-lt v1, v6, :cond_6

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    iget v6, p0, Lcom/mycompany/app/web/WebTabAdapter;->n:I

    .line 27
    .line 28
    iput-wide v2, p0, Lcom/mycompany/app/web/WebTabAdapter;->l:J

    .line 29
    .line 30
    iput v4, p0, Lcom/mycompany/app/web/WebTabAdapter;->m:I

    .line 31
    .line 32
    iput v5, p0, Lcom/mycompany/app/web/WebTabAdapter;->n:I

    .line 33
    .line 34
    iget-object v2, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v2, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 50
    .line 51
    :cond_3
    iget-object v2, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 52
    .line 53
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-ge v1, v2, :cond_4

    .line 58
    .line 59
    iget-object v2, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 60
    .line 61
    invoke-interface {v2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    iget-object v2, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 66
    .line 67
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    :goto_0
    iget v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->n:I

    .line 71
    .line 72
    if-eq v6, v0, :cond_5

    .line 73
    .line 74
    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->h(I)V

    .line 75
    .line 76
    .line 77
    :cond_5
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->i(I)V

    .line 78
    .line 79
    .line 80
    return v1

    .line 81
    :cond_6
    :goto_1
    const/4 v0, -0x1

    .line 82
    return v0
.end method

.method public final V(Lcom/mycompany/app/web/WebTabGridItem;I)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->n:I

    .line 5
    .line 6
    if-ne p2, v0, :cond_1

    .line 7
    .line 8
    sget p2, Lcom/mycompany/app/pref/PrefEditor;->H:I

    .line 9
    .line 10
    iget v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->w:I

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {p1, p2, v0, v1}, Lcom/mycompany/app/web/WebTabGridItem;->a(IIZ)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    sget-boolean p2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 18
    .line 19
    if-eqz p2, :cond_2

    .line 20
    .line 21
    const p2, -0xc0c0c1

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    const p2, -0x252526

    .line 26
    .line 27
    .line 28
    :goto_0
    iget v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->v:I

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {p1, p2, v0, v1}, Lcom/mycompany/app/web/WebTabGridItem;->a(IIZ)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final W()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->o:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget v0, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 6
    .line 7
    iput v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->v:I

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->e:Landroid/content/Context;

    .line 10
    .line 11
    const/high16 v1, 0x40a00000    # 5.0f

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iput v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->w:I

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const/4 v0, 0x1

    .line 25
    iput v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->v:I

    .line 26
    .line 27
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->e:Landroid/content/Context;

    .line 28
    .line 29
    const/high16 v1, 0x40400000    # 3.0f

    .line 30
    .line 31
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iput v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->w:I

    .line 40
    .line 41
    return-void
.end method

.method public final X(ZZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_3

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    iget v2, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->a:I

    .line 33
    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    iput-boolean p1, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->m:Z

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/web/WebTabAdapter;->i:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 41
    .line 42
    if-nez p1, :cond_4

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->U0()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->V0()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    add-int/lit8 p1, p1, 0x1

    .line 54
    .line 55
    :goto_1
    if-ge v0, p1, :cond_5

    .line 56
    .line 57
    invoke-virtual {p0, v0, p2}, Lcom/mycompany/app/web/WebTabAdapter;->A(IZ)V

    .line 58
    .line 59
    .line 60
    add-int/lit8 v0, v0, 0x1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_5
    :goto_2
    return-void
.end method

.method public final Y(IZ)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->u:Z

    .line 2
    .line 3
    if-ne v0, p2, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iput-boolean p2, p0, Lcom/mycompany/app/web/WebTabAdapter;->u:Z

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p2, :cond_4

    .line 10
    .line 11
    iput p1, p0, Lcom/mycompany/app/web/WebTabAdapter;->selectionAnchor:I

    invoke-virtual {p0, p1}, Lcom/mycompany/app/web/WebTabAdapter;->H(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 p2, 0x1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget v1, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->a:I

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    iput-boolean p2, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->m:Z

    .line 23
    .line 24
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/web/WebTabAdapter;->i:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 25
    .line 26
    if-nez p1, :cond_2

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->U0()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->V0()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    add-int/2addr p1, p2

    .line 38
    :goto_0
    if-ge v1, p1, :cond_3

    .line 39
    .line 40
    invoke-virtual {p0, v1, v0}, Lcom/mycompany/app/web/WebTabAdapter;->A(IZ)V

    .line 41
    .line 42
    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    :goto_1
    return-void

    .line 47
    :cond_4
    const/4 p1, -0x1

    iput p1, p0, Lcom/mycompany/app/web/WebTabAdapter;->selectionAnchor:I

    invoke-virtual {p0, v0, v0}, Lcom/mycompany/app/web/WebTabAdapter;->X(ZZ)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final Z(IIIZ)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->o:I

    .line 2
    .line 3
    sget v1, Lcom/mycompany/app/pref/PrefZone;->C:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    iget v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->p:I

    .line 10
    .line 11
    if-ne v0, p2, :cond_1

    .line 12
    .line 13
    iget v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->q:I

    .line 14
    .line 15
    if-eq v0, p3, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, v2

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    move v0, v3

    .line 21
    :goto_1
    iput v1, p0, Lcom/mycompany/app/web/WebTabAdapter;->o:I

    .line 22
    .line 23
    iput p2, p0, Lcom/mycompany/app/web/WebTabAdapter;->p:I

    .line 24
    .line 25
    iput p3, p0, Lcom/mycompany/app/web/WebTabAdapter;->q:I

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebTabAdapter;->W()V

    .line 28
    .line 29
    .line 30
    iget p2, p0, Lcom/mycompany/app/web/WebTabAdapter;->g:I

    .line 31
    .line 32
    iget-boolean p3, p0, Lcom/mycompany/app/web/WebTabAdapter;->f:Z

    .line 33
    .line 34
    if-eqz p3, :cond_2

    .line 35
    .line 36
    iput v2, p0, Lcom/mycompany/app/web/WebTabAdapter;->g:I

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_2
    if-eqz p4, :cond_4

    .line 40
    .line 41
    sget p3, Lcom/mycompany/app/pref/PrefZone;->C:I

    .line 42
    .line 43
    if-eqz p3, :cond_3

    .line 44
    .line 45
    iget p3, p0, Lcom/mycompany/app/web/WebTabAdapter;->o:I

    .line 46
    .line 47
    invoke-virtual {p0, p3}, Lcom/mycompany/app/web/WebTabAdapter;->G(I)I

    .line 48
    .line 49
    .line 50
    move-result p3

    .line 51
    sub-int/2addr p1, p3

    .line 52
    sget p3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 53
    .line 54
    sub-int/2addr p1, p3

    .line 55
    iput p1, p0, Lcom/mycompany/app/web/WebTabAdapter;->g:I

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_3
    iget p3, p0, Lcom/mycompany/app/web/WebTabAdapter;->o:I

    .line 59
    .line 60
    invoke-virtual {p0, p3}, Lcom/mycompany/app/web/WebTabAdapter;->G(I)I

    .line 61
    .line 62
    .line 63
    move-result p3

    .line 64
    sub-int/2addr p1, p3

    .line 65
    iput p1, p0, Lcom/mycompany/app/web/WebTabAdapter;->g:I

    .line 66
    .line 67
    :goto_2
    iget p1, p0, Lcom/mycompany/app/web/WebTabAdapter;->g:I

    .line 68
    .line 69
    if-ge p1, v3, :cond_5

    .line 70
    .line 71
    iput v3, p0, Lcom/mycompany/app/web/WebTabAdapter;->g:I

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_4
    iput v3, p0, Lcom/mycompany/app/web/WebTabAdapter;->g:I

    .line 75
    .line 76
    :cond_5
    :goto_3
    if-nez v0, :cond_7

    .line 77
    .line 78
    iget p1, p0, Lcom/mycompany/app/web/WebTabAdapter;->g:I

    .line 79
    .line 80
    if-eq p1, p2, :cond_6

    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_6
    return-void

    .line 84
    :cond_7
    :goto_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public final a0(Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;Lcom/mycompany/app/view/MyThumbView;II)V
    .locals 4

    .line 1
    if-eqz p2, :cond_e

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->z:Lcom/mycompany/app/main/MainListLoader;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_3

    .line 8
    .line 9
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/mycompany/app/web/WebTabAdapter;->t:Z

    .line 12
    .line 13
    const/4 v2, -0x1

    .line 14
    const/high16 v3, -0x1000000

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    move v2, v3

    .line 23
    :cond_1
    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 27
    .line 28
    invoke-virtual {p2, p4, p3, p1, v1}, Lcom/mycompany/app/view/MyThumbView;->o(IILjava/util/List;Z)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    const/4 p4, 0x0

    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p2, v0, p3, p4, v0}, Lcom/mycompany/app/view/MyThumbView;->o(IILjava/util/List;Z)V

    .line 35
    .line 36
    .line 37
    iget-object p3, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result p3

    .line 43
    if-eqz p3, :cond_5

    .line 44
    .line 45
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_web_24:I

    .line 50
    .line 51
    invoke-virtual {p2, p1}, Lcom/mycompany/app/view/MyThumbView;->setImageResource(I)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_dark_web_24:I

    .line 56
    .line 57
    invoke-virtual {p2, p1}, Lcom/mycompany/app/view/MyThumbView;->setImageResource(I)V

    .line 58
    .line 59
    .line 60
    :goto_0
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 61
    .line 62
    if-eqz p1, :cond_4

    .line 63
    .line 64
    move v2, v3

    .line 65
    :cond_4
    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_5
    new-instance p3, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    iget-object p4, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-boolean p4, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->l:Z

    .line 80
    .line 81
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    const/4 p4, 0x2

    .line 92
    invoke-static {p4, p3}, Lcom/nostra13/universalimageloader/utils/MemoryCacheUtils;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p4

    .line 96
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->g()Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0, p4}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 105
    .line 106
    .line 107
    move-result-object p4

    .line 108
    invoke-static {p4}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_6

    .line 113
    .line 114
    invoke-virtual {p2, p4}, Lcom/mycompany/app/view/MyThumbView;->l(Landroid/graphics/Bitmap;)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :cond_6
    new-instance p4, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 119
    .line 120
    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    .line 121
    .line 122
    .line 123
    const/16 v0, 0x29

    .line 124
    .line 125
    iput v0, p4, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 126
    .line 127
    const/16 v0, 0xb

    .line 128
    .line 129
    iput v0, p4, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 130
    .line 131
    iget-wide v0, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 132
    .line 133
    iput-wide v0, p4, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 134
    .line 135
    iput-object p3, p4, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 136
    .line 137
    iget-object p3, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 138
    .line 139
    const-string v0, "file:///"

    .line 140
    .line 141
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 142
    .line 143
    .line 144
    move-result p3

    .line 145
    if-nez p3, :cond_9

    .line 146
    .line 147
    iget-object p3, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 148
    .line 149
    const-string v0, "/data/"

    .line 150
    .line 151
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 152
    .line 153
    .line 154
    move-result p3

    .line 155
    if-eqz p3, :cond_7

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_7
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 159
    .line 160
    if-eqz p1, :cond_8

    .line 161
    .line 162
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_web_24:I

    .line 163
    .line 164
    invoke-virtual {p2, p1}, Lcom/mycompany/app/view/MyThumbView;->setImageResource(I)V

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_8
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_dark_web_24:I

    .line 169
    .line 170
    invoke-virtual {p2, p1}, Lcom/mycompany/app/view/MyThumbView;->setImageResource(I)V

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_9
    :goto_1
    const-string p3, "file:///android_asset/shortcut.html"

    .line 175
    .line 176
    iget-object p1, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 177
    .line 178
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    if-eqz p1, :cond_b

    .line 183
    .line 184
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 185
    .line 186
    if-eqz p1, :cond_a

    .line 187
    .line 188
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_home_black_web_24:I

    .line 189
    .line 190
    invoke-virtual {p2, p1}, Lcom/mycompany/app/view/MyThumbView;->setImageResource(I)V

    .line 191
    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_a
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_home_dark_web_24:I

    .line 195
    .line 196
    invoke-virtual {p2, p1}, Lcom/mycompany/app/view/MyThumbView;->setImageResource(I)V

    .line 197
    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_b
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 201
    .line 202
    if-eqz p1, :cond_c

    .line 203
    .line 204
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_offline_pin_black_web_24:I

    .line 205
    .line 206
    invoke-virtual {p2, p1}, Lcom/mycompany/app/view/MyThumbView;->setImageResource(I)V

    .line 207
    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_c
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_offline_pin_dark_web_24:I

    .line 211
    .line 212
    invoke-virtual {p2, p1}, Lcom/mycompany/app/view/MyThumbView;->setImageResource(I)V

    .line 213
    .line 214
    .line 215
    :goto_2
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 216
    .line 217
    if-eqz p1, :cond_d

    .line 218
    .line 219
    move v2, v3

    .line 220
    :cond_d
    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 221
    .line 222
    .line 223
    iget-object p1, p0, Lcom/mycompany/app/web/WebTabAdapter;->z:Lcom/mycompany/app/main/MainListLoader;

    .line 224
    .line 225
    invoke-virtual {p1, p4, p2}, Lcom/mycompany/app/main/MainListLoader;->e(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;)V

    .line 226
    .line 227
    .line 228
    :cond_e
    :goto_3
    return-void
.end method

.method public final b0(Ljava/util/List;Ljava/util/List;JII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->z:Lcom/mycompany/app/main/MainListLoader;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-object v1, v0, Lcom/mycompany/app/main/MainListLoader;->c:Ljava/util/ArrayList;

    .line 7
    .line 8
    :cond_0
    iput-object p1, p0, Lcom/mycompany/app/web/WebTabAdapter;->j:Ljava/util/List;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 11
    .line 12
    iput-wide p3, p0, Lcom/mycompany/app/web/WebTabAdapter;->l:J

    .line 13
    .line 14
    iput p5, p0, Lcom/mycompany/app/web/WebTabAdapter;->m:I

    .line 15
    .line 16
    iput p6, p0, Lcom/mycompany/app/web/WebTabAdapter;->n:I

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final c0(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->i:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->U0()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-ge p1, v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->x0(I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->V0()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-le p1, v1, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->x0(I)V

    .line 23
    .line 24
    .line 25
    :cond_2
    :goto_0
    return-void
.end method

.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->L:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

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
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public final d0()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->n:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/mycompany/app/web/WebTabAdapter;->H(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->l:J

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->m:I

    .line 15
    .line 16
    iget v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->d:I

    .line 17
    .line 18
    iput v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->n:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    iget-object v1, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    add-int/lit8 v2, v2, -0x1

    .line 38
    .line 39
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    iget-wide v2, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 48
    .line 49
    iput-wide v2, p0, Lcom/mycompany/app/web/WebTabAdapter;->l:J

    .line 50
    .line 51
    iget v0, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 52
    .line 53
    iput v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->m:I

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iget-wide v1, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 57
    .line 58
    iput-wide v1, p0, Lcom/mycompany/app/web/WebTabAdapter;->l:J

    .line 59
    .line 60
    iget v0, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 61
    .line 62
    iput v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->m:I

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    iget-wide v1, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 66
    .line 67
    iput-wide v1, p0, Lcom/mycompany/app/web/WebTabAdapter;->l:J

    .line 68
    .line 69
    iget v0, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 70
    .line 71
    iput v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->m:I

    .line 72
    .line 73
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->y:Lcom/mycompany/app/web/WebTabAdapter$WebTabSubListener;

    .line 74
    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    iget-wide v1, p0, Lcom/mycompany/app/web/WebTabAdapter;->l:J

    .line 78
    .line 79
    invoke-interface {v0, v1, v2}, Lcom/mycompany/app/web/WebTabAdapter$WebTabSubListener;->a(J)V

    .line 80
    .line 81
    .line 82
    :cond_3
    return-void
.end method

.method public final e0(Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;Lcom/mycompany/app/view/MyTextImage;Ljava/lang/String;IZ)V
    .locals 5

    .line 1
    if-eqz p2, :cond_10

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->z:Lcom/mycompany/app/main/MainListLoader;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    if-eqz p5, :cond_1

    .line 14
    .line 15
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_folder_white_24:I

    .line 16
    .line 17
    invoke-virtual {p2, p1}, Lcom/mycompany/app/view/MyTextImage;->setImageResource(I)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 22
    .line 23
    invoke-static {p4, p1}, Lcom/mycompany/app/web/WebTabBarAdapter;->y(IZ)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-virtual {p2, p1}, Lcom/mycompany/app/view/MyTextImage;->setImageResource(I)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    iget-object p4, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result p4

    .line 37
    const v0, -0x878788

    .line 38
    .line 39
    .line 40
    const v1, -0x4f4f50

    .line 41
    .line 42
    .line 43
    const v2, -0x50506

    .line 44
    .line 45
    .line 46
    if-eqz p4, :cond_5

    .line 47
    .line 48
    if-eqz p5, :cond_3

    .line 49
    .line 50
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_dark_24:I

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebTabAdapter;->K()Ljava/util/regex/Pattern;

    .line 53
    .line 54
    .line 55
    move-result-object p4

    .line 56
    invoke-virtual {p2, p1, v2, p3, p4}, Lcom/mycompany/app/view/MyTextImage;->a(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_3
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 61
    .line 62
    if-eqz p1, :cond_4

    .line 63
    .line 64
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_dark_web_24:I

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebTabAdapter;->K()Ljava/util/regex/Pattern;

    .line 67
    .line 68
    .line 69
    move-result-object p4

    .line 70
    invoke-virtual {p2, p1, v1, p3, p4}, Lcom/mycompany/app/view/MyTextImage;->a(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_4
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_web_24:I

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebTabAdapter;->K()Ljava/util/regex/Pattern;

    .line 77
    .line 78
    .line 79
    move-result-object p4

    .line 80
    invoke-virtual {p2, p1, v0, p3, p4}, Lcom/mycompany/app/view/MyTextImage;->a(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_5
    iget-object p4, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 85
    .line 86
    const-string v3, "file:///"

    .line 87
    .line 88
    invoke-virtual {p4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result p4

    .line 92
    if-nez p4, :cond_a

    .line 93
    .line 94
    iget-object p4, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 95
    .line 96
    const-string v3, "/data/"

    .line 97
    .line 98
    invoke-virtual {p4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result p4

    .line 102
    if-eqz p4, :cond_6

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_6
    new-instance p4, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 106
    .line 107
    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    .line 108
    .line 109
    .line 110
    const/16 v3, 0x28

    .line 111
    .line 112
    iput v3, p4, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 113
    .line 114
    const/16 v3, 0xb

    .line 115
    .line 116
    iput v3, p4, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 117
    .line 118
    iget-wide v3, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 119
    .line 120
    iput-wide v3, p4, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 121
    .line 122
    iget-object p1, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 123
    .line 124
    iput-object p1, p4, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 125
    .line 126
    invoke-static {p4}, Lcom/mycompany/app/main/MainListLoader;->b(Lcom/mycompany/app/main/MainItem$ChildItem;)Landroid/graphics/Bitmap;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    if-eqz v3, :cond_7

    .line 135
    .line 136
    invoke-virtual {p2, p1}, Lcom/mycompany/app/view/MyTextImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :cond_7
    if-eqz p5, :cond_8

    .line 141
    .line 142
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_dark_24:I

    .line 143
    .line 144
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebTabAdapter;->K()Ljava/util/regex/Pattern;

    .line 145
    .line 146
    .line 147
    move-result-object p5

    .line 148
    invoke-virtual {p2, p1, v2, p3, p5}, Lcom/mycompany/app/view/MyTextImage;->a(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_8
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 153
    .line 154
    if-eqz p1, :cond_9

    .line 155
    .line 156
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_dark_web_24:I

    .line 157
    .line 158
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebTabAdapter;->K()Ljava/util/regex/Pattern;

    .line 159
    .line 160
    .line 161
    move-result-object p5

    .line 162
    invoke-virtual {p2, p1, v1, p3, p5}, Lcom/mycompany/app/view/MyTextImage;->a(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 163
    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_9
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_web_24:I

    .line 167
    .line 168
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebTabAdapter;->K()Ljava/util/regex/Pattern;

    .line 169
    .line 170
    .line 171
    move-result-object p5

    .line 172
    invoke-virtual {p2, p1, v0, p3, p5}, Lcom/mycompany/app/view/MyTextImage;->a(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 173
    .line 174
    .line 175
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/web/WebTabAdapter;->z:Lcom/mycompany/app/main/MainListLoader;

    .line 176
    .line 177
    invoke-virtual {p1, p4, p2}, Lcom/mycompany/app/main/MainListLoader;->e(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;)V

    .line 178
    .line 179
    .line 180
    return-void

    .line 181
    :cond_a
    :goto_1
    const-string p3, "file:///android_asset/shortcut.html"

    .line 182
    .line 183
    iget-object p1, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 184
    .line 185
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    if-eqz p1, :cond_d

    .line 190
    .line 191
    if-eqz p5, :cond_b

    .line 192
    .line 193
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_home_dark_24:I

    .line 194
    .line 195
    invoke-virtual {p2, p1}, Lcom/mycompany/app/view/MyTextImage;->setImageResource(I)V

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :cond_b
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 200
    .line 201
    if-eqz p1, :cond_c

    .line 202
    .line 203
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_home_dark_web_24:I

    .line 204
    .line 205
    invoke-virtual {p2, p1}, Lcom/mycompany/app/view/MyTextImage;->setImageResource(I)V

    .line 206
    .line 207
    .line 208
    return-void

    .line 209
    :cond_c
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_home_black_web_24:I

    .line 210
    .line 211
    invoke-virtual {p2, p1}, Lcom/mycompany/app/view/MyTextImage;->setImageResource(I)V

    .line 212
    .line 213
    .line 214
    return-void

    .line 215
    :cond_d
    if-eqz p5, :cond_e

    .line 216
    .line 217
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_offline_pin_dark_24:I

    .line 218
    .line 219
    invoke-virtual {p2, p1}, Lcom/mycompany/app/view/MyTextImage;->setImageResource(I)V

    .line 220
    .line 221
    .line 222
    return-void

    .line 223
    :cond_e
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 224
    .line 225
    if-eqz p1, :cond_f

    .line 226
    .line 227
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_offline_pin_dark_web_24:I

    .line 228
    .line 229
    invoke-virtual {p2, p1}, Lcom/mycompany/app/view/MyTextImage;->setImageResource(I)V

    .line 230
    .line 231
    .line 232
    return-void

    .line 233
    :cond_f
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_offline_pin_black_web_24:I

    .line 234
    .line 235
    invoke-virtual {p2, p1}, Lcom/mycompany/app/view/MyTextImage;->setImageResource(I)V

    .line 236
    .line 237
    .line 238
    :cond_10
    :goto_2
    return-void
.end method

.method public final f(I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->d:I

    .line 2
    .line 3
    if-ge p1, v0, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lcom/mycompany/app/web/WebTabAdapter;->g:I

    .line 6
    .line 7
    add-int/lit8 p1, p1, 0x3

    .line 8
    .line 9
    return p1

    .line 10
    :cond_0
    iget p1, p0, Lcom/mycompany/app/web/WebTabAdapter;->o:I

    .line 11
    .line 12
    return p1
.end method

.method public final f0(I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/mycompany/app/web/WebTabAdapter;->H(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget v1, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->a:I

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->m:Z

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    xor-int/2addr v1, v2

    .line 16
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->m:Z

    .line 17
    .line 18
    if-eqz v1, :cond_f0_anchor

    iput p1, p0, Lcom/mycompany/app/web/WebTabAdapter;->selectionAnchor:I

    :cond_f0_anchor
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/web/WebTabAdapter;->A(IZ)V

    .line 19
    .line 20
    .line 21
    :cond_1
    :goto_0
    return-void
.end method

.method public final n(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 13

    .line 1
    check-cast p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, p2}, Lcom/mycompany/app/web/WebTabAdapter;->H(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    iget-wide v3, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 16
    .line 17
    iput-wide v3, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->u:J

    .line 18
    .line 19
    iget v1, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->a:I

    .line 20
    .line 21
    iput v1, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->w:I

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v7, 0x1

    .line 25
    if-ne v1, v7, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZone;->D:Z

    .line 32
    .line 33
    if-nez v1, :cond_3

    .line 34
    .line 35
    iget v1, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->v:I

    .line 36
    .line 37
    if-nez v1, :cond_3

    .line 38
    .line 39
    iget v1, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->x:I

    .line 40
    .line 41
    iget v4, p0, Lcom/mycompany/app/web/WebTabAdapter;->q:I

    .line 42
    .line 43
    if-eq v1, v4, :cond_3

    .line 44
    .line 45
    iput v4, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->x:I

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 54
    .line 55
    iget v5, p0, Lcom/mycompany/app/web/WebTabAdapter;->q:I

    .line 56
    .line 57
    if-eq v4, v5, :cond_3

    .line 58
    .line 59
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 62
    .line 63
    .line 64
    :cond_3
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iget-object v1, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->y:Lcom/mycompany/app/web/WebTabGridItem;

    .line 68
    .line 69
    invoke-virtual {p0, v1, p2}, Lcom/mycompany/app/web/WebTabAdapter;->V(Lcom/mycompany/app/web/WebTabGridItem;I)V

    .line 70
    .line 71
    .line 72
    iget-object v1, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->y:Lcom/mycompany/app/web/WebTabGridItem;

    .line 73
    .line 74
    new-instance v4, Lcom/mycompany/app/web/WebTabAdapter$3;

    .line 75
    .line 76
    invoke-direct {v4, p0}, Lcom/mycompany/app/web/WebTabAdapter$3;-><init>(Lcom/mycompany/app/web/WebTabAdapter;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v4}, Lcom/mycompany/app/web/WebTabGridItem;->setListener(Lcom/mycompany/app/web/WebTabGridItem$TabGridListener;)V

    .line 80
    .line 81
    .line 82
    iget-object v1, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 83
    .line 84
    const/4 v8, 0x0

    .line 85
    if-eqz v1, :cond_6

    .line 86
    .line 87
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-lez v1, :cond_4

    .line 92
    .line 93
    iget-object v1, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 94
    .line 95
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    check-cast v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 100
    .line 101
    if-eqz v1, :cond_4

    .line 102
    .line 103
    iget v1, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->g:I

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_4
    move v1, v8

    .line 107
    :goto_1
    if-nez v1, :cond_5

    .line 108
    .line 109
    sget v1, Lcom/mycompany/app/pref/PrefWeb;->b0:I

    .line 110
    .line 111
    :cond_5
    move v5, v1

    .line 112
    goto :goto_2

    .line 113
    :cond_6
    move v5, v8

    .line 114
    :goto_2
    iget-object v1, p0, Lcom/mycompany/app/web/WebTabAdapter;->e:Landroid/content/Context;

    .line 115
    .line 116
    invoke-static {v1, v2}, Lcom/mycompany/app/web/WebViewActivity;->q3(Landroid/content/Context;Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    iget-object v1, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->D:Lcom/mycompany/app/view/MyTextFast;

    .line 121
    .line 122
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    .line 124
    .line 125
    iget-object v1, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->E:Lcom/mycompany/app/view/MyTextFast;

    .line 126
    .line 127
    const-string v6, "file:///android_asset/shortcut.html"

    .line 128
    .line 129
    const-string v9, "/data/"

    .line 130
    .line 131
    const-string v10, "file:///"

    .line 132
    .line 133
    if-eqz v1, :cond_d

    .line 134
    .line 135
    iget-object v11, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 136
    .line 137
    if-eqz v11, :cond_7

    .line 138
    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string v11, ""

    .line 142
    .line 143
    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iget-object v11, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 147
    .line 148
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 149
    .line 150
    .line 151
    move-result v11

    .line 152
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_7
    iget-object v1, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 164
    .line 165
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    if-eqz v1, :cond_8

    .line 170
    .line 171
    iget-object v1, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->E:Lcom/mycompany/app/view/MyTextFast;

    .line 172
    .line 173
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_8
    iget-object v1, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 178
    .line 179
    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    if-nez v1, :cond_a

    .line 184
    .line 185
    iget-object v1, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 186
    .line 187
    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    if-eqz v1, :cond_9

    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_9
    iget-object v1, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->E:Lcom/mycompany/app/view/MyTextFast;

    .line 195
    .line 196
    iget-object v3, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 197
    .line 198
    invoke-static {v3, v7}, Lcom/mycompany/app/main/MainUtil;->I1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    .line 204
    .line 205
    goto :goto_4

    .line 206
    :cond_a
    :goto_3
    iget-object v1, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 207
    .line 208
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    if-eqz v1, :cond_b

    .line 213
    .line 214
    iget-object v1, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->E:Lcom/mycompany/app/view/MyTextFast;

    .line 215
    .line 216
    const-string v3, "home"

    .line 217
    .line 218
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    .line 220
    .line 221
    goto :goto_4

    .line 222
    :cond_b
    iget-object v1, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 223
    .line 224
    const-string v3, "file:///expired"

    .line 225
    .line 226
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    if-eqz v1, :cond_c

    .line 231
    .line 232
    iget-object v1, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->E:Lcom/mycompany/app/view/MyTextFast;

    .line 233
    .line 234
    const-string v3, "expired"

    .line 235
    .line 236
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    .line 238
    .line 239
    goto :goto_4

    .line 240
    :cond_c
    iget-object v1, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->E:Lcom/mycompany/app/view/MyTextFast;

    .line 241
    .line 242
    const-string v3, "offline"

    .line 243
    .line 244
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    .line 246
    .line 247
    :cond_d
    :goto_4
    iget-object v1, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 248
    .line 249
    iget-boolean v3, p0, Lcom/mycompany/app/web/WebTabAdapter;->u:Z

    .line 250
    .line 251
    xor-int/2addr v3, v7

    .line 252
    invoke-virtual {v1, v3, v8}, Lcom/mycompany/app/view/MyButtonImage;->r(ZZ)V

    .line 253
    .line 254
    .line 255
    iget-object v1, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->G:Lcom/mycompany/app/view/MyButtonCheck;

    .line 256
    .line 257
    iget-boolean v3, p0, Lcom/mycompany/app/web/WebTabAdapter;->u:Z

    .line 258
    .line 259
    invoke-virtual {v1, v3, v8}, Lcom/mycompany/app/view/MyButtonCheck;->t(ZZ)V

    .line 260
    .line 261
    .line 262
    iget-object v1, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->G:Lcom/mycompany/app/view/MyButtonCheck;

    .line 263
    .line 264
    iget-boolean v3, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->m:Z

    .line 265
    .line 266
    invoke-virtual {v1, v3, v8}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 267
    .line 268
    .line 269
    iget-object v1, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->C:Lcom/mycompany/app/view/MyFadeView;

    .line 270
    .line 271
    if-eqz v1, :cond_f

    .line 272
    .line 273
    iget-boolean v3, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->m:Z

    .line 274
    .line 275
    if-eqz v3, :cond_e

    .line 276
    .line 277
    invoke-virtual {v1, v8}, Lcom/mycompany/app/view/MyFadeView;->f(Z)V

    .line 278
    .line 279
    .line 280
    goto :goto_5

    .line 281
    :cond_e
    invoke-virtual {v1, v8}, Lcom/mycompany/app/view/MyFadeView;->d(Z)V

    .line 282
    .line 283
    .line 284
    :cond_f
    :goto_5
    iget-object v1, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->z:Lcom/mycompany/app/view/MyThumbView;

    .line 285
    .line 286
    const v11, -0xc0c0c1

    .line 287
    .line 288
    .line 289
    if-eqz v1, :cond_12

    .line 290
    .line 291
    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    iget v1, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->v:I

    .line 295
    .line 296
    if-ne v1, v7, :cond_11

    .line 297
    .line 298
    iget-object v1, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->z:Lcom/mycompany/app/view/MyThumbView;

    .line 299
    .line 300
    invoke-virtual {v1, v7}, Lcom/mycompany/app/view/MyThumbView;->setRoundClip(Z)V

    .line 301
    .line 302
    .line 303
    iget-object v1, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->z:Lcom/mycompany/app/view/MyThumbView;

    .line 304
    .line 305
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 306
    .line 307
    if-eqz v3, :cond_10

    .line 308
    .line 309
    move v3, v11

    .line 310
    goto :goto_6

    .line 311
    :cond_10
    const v3, -0x252526

    .line 312
    .line 313
    .line 314
    :goto_6
    iget v12, p0, Lcom/mycompany/app/web/WebTabAdapter;->v:I

    .line 315
    .line 316
    invoke-virtual {v1, v3, v12}, Lcom/mycompany/app/view/MyThumbView;->k(II)V

    .line 317
    .line 318
    .line 319
    goto :goto_7

    .line 320
    :cond_11
    iget-object v1, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->z:Lcom/mycompany/app/view/MyThumbView;

    .line 321
    .line 322
    invoke-virtual {v1, v7}, Lcom/mycompany/app/view/MyThumbView;->setRoundClip(Z)V

    .line 323
    .line 324
    .line 325
    iget-object v1, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->z:Lcom/mycompany/app/view/MyThumbView;

    .line 326
    .line 327
    invoke-virtual {v1, v8, v8}, Lcom/mycompany/app/view/MyThumbView;->k(II)V

    .line 328
    .line 329
    .line 330
    :cond_12
    :goto_7
    iget v1, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->v:I

    .line 331
    .line 332
    if-nez v1, :cond_13

    .line 333
    .line 334
    iget-object v0, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->z:Lcom/mycompany/app/view/MyThumbView;

    .line 335
    .line 336
    new-instance v1, Lcom/mycompany/app/web/WebTabAdapter$4;

    .line 337
    .line 338
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebTabAdapter$4;-><init>(Lcom/mycompany/app/web/WebTabAdapter;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    .line 343
    .line 344
    iget-object v0, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->z:Lcom/mycompany/app/view/MyThumbView;

    .line 345
    .line 346
    new-instance v1, Lcom/mycompany/app/web/WebTabAdapter$5;

    .line 347
    .line 348
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebTabAdapter$5;-><init>(Lcom/mycompany/app/web/WebTabAdapter;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 352
    .line 353
    .line 354
    iget-object v0, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->G:Lcom/mycompany/app/view/MyButtonCheck;

    .line 355
    .line 356
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 357
    .line 358
    .line 359
    iget-object v0, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->G:Lcom/mycompany/app/view/MyButtonCheck;

    .line 360
    .line 361
    new-instance v1, Lcom/mycompany/app/web/WebTabAdapter$6;

    .line 362
    .line 363
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebTabAdapter$6;-><init>(Lcom/mycompany/app/web/WebTabAdapter;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    .line 368
    .line 369
    goto :goto_9

    .line 370
    :cond_13
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 371
    .line 372
    if-eqz v1, :cond_14

    .line 373
    .line 374
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_dark:I

    .line 375
    .line 376
    goto :goto_8

    .line 377
    :cond_14
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back:I

    .line 378
    .line 379
    :goto_8
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 380
    .line 381
    .line 382
    iget-boolean v1, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->m:Z

    .line 383
    .line 384
    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 385
    .line 386
    .line 387
    new-instance v1, Lcom/mycompany/app/web/WebTabAdapter$7;

    .line 388
    .line 389
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebTabAdapter$7;-><init>(Lcom/mycompany/app/web/WebTabAdapter;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    .line 394
    .line 395
    new-instance v1, Lcom/mycompany/app/web/WebTabAdapter$8;

    .line 396
    .line 397
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebTabAdapter$8;-><init>(Lcom/mycompany/app/web/WebTabAdapter;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 401
    .line 402
    .line 403
    :goto_9
    iget-object v0, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 404
    .line 405
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 406
    .line 407
    .line 408
    iget-object v0, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 409
    .line 410
    new-instance v1, Lcom/mycompany/app/web/WebTabAdapter$9;

    .line 411
    .line 412
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebTabAdapter$9;-><init>(Lcom/mycompany/app/web/WebTabAdapter;)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    .line 417
    .line 418
    iget v0, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->v:I

    .line 419
    .line 420
    const/4 v12, 0x2

    .line 421
    if-ne v0, v12, :cond_1d

    .line 422
    .line 423
    iget-object p2, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->A:Lcom/mycompany/app/view/MyRoundImage;

    .line 424
    .line 425
    if-eqz p2, :cond_1c

    .line 426
    .line 427
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 428
    .line 429
    .line 430
    iget-object p2, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->A:Lcom/mycompany/app/view/MyRoundImage;

    .line 431
    .line 432
    if-eqz p2, :cond_1c

    .line 433
    .line 434
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->z:Lcom/mycompany/app/main/MainListLoader;

    .line 435
    .line 436
    if-nez v0, :cond_15

    .line 437
    .line 438
    goto/16 :goto_b

    .line 439
    .line 440
    :cond_15
    iget-object v0, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 441
    .line 442
    if-eqz v0, :cond_16

    .line 443
    .line 444
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 445
    .line 446
    invoke-static {v5, v0}, Lcom/mycompany/app/web/WebTabBarAdapter;->y(IZ)I

    .line 447
    .line 448
    .line 449
    move-result v0

    .line 450
    invoke-virtual {p2, v0}, Lcom/mycompany/app/view/MyRoundImage;->setImageResource(I)V

    .line 451
    .line 452
    .line 453
    goto :goto_b

    .line 454
    :cond_16
    iget-object v0, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 455
    .line 456
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 457
    .line 458
    .line 459
    move-result v0

    .line 460
    const v1, -0x70708

    .line 461
    .line 462
    .line 463
    if-eqz v0, :cond_17

    .line 464
    .line 465
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 466
    .line 467
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebTabAdapter;->K()Ljava/util/regex/Pattern;

    .line 468
    .line 469
    .line 470
    move-result-object v3

    .line 471
    invoke-virtual {p2, v1, v0, v4, v3}, Lcom/mycompany/app/view/MyRoundImage;->p(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 472
    .line 473
    .line 474
    goto :goto_b

    .line 475
    :cond_17
    iget-object v0, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 476
    .line 477
    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 478
    .line 479
    .line 480
    move-result v0

    .line 481
    if-nez v0, :cond_1a

    .line 482
    .line 483
    iget-object v0, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 484
    .line 485
    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 486
    .line 487
    .line 488
    move-result v0

    .line 489
    if-eqz v0, :cond_18

    .line 490
    .line 491
    goto :goto_a

    .line 492
    :cond_18
    new-instance v0, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 493
    .line 494
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 495
    .line 496
    .line 497
    const/16 v3, 0x28

    .line 498
    .line 499
    iput v3, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 500
    .line 501
    const/16 v3, 0xb

    .line 502
    .line 503
    iput v3, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 504
    .line 505
    iget-wide v9, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 506
    .line 507
    iput-wide v9, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 508
    .line 509
    iget-object v3, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 510
    .line 511
    iput-object v3, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 512
    .line 513
    invoke-static {v0}, Lcom/mycompany/app/main/MainListLoader;->b(Lcom/mycompany/app/main/MainItem$ChildItem;)Landroid/graphics/Bitmap;

    .line 514
    .line 515
    .line 516
    move-result-object v3

    .line 517
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 518
    .line 519
    .line 520
    move-result v6

    .line 521
    if-eqz v6, :cond_19

    .line 522
    .line 523
    invoke-virtual {p2, v3}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 524
    .line 525
    .line 526
    goto :goto_b

    .line 527
    :cond_19
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 528
    .line 529
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebTabAdapter;->K()Ljava/util/regex/Pattern;

    .line 530
    .line 531
    .line 532
    move-result-object v6

    .line 533
    invoke-virtual {p2, v1, v3, v4, v6}, Lcom/mycompany/app/view/MyRoundImage;->p(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 534
    .line 535
    .line 536
    iget-object v1, p0, Lcom/mycompany/app/web/WebTabAdapter;->z:Lcom/mycompany/app/main/MainListLoader;

    .line 537
    .line 538
    invoke-virtual {v1, v0, p2}, Lcom/mycompany/app/main/MainListLoader;->e(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;)V

    .line 539
    .line 540
    .line 541
    goto :goto_b

    .line 542
    :cond_1a
    :goto_a
    iget-object v0, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 543
    .line 544
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 545
    .line 546
    .line 547
    move-result v0

    .line 548
    if-eqz v0, :cond_1b

    .line 549
    .line 550
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_home_black_24:I

    .line 551
    .line 552
    invoke-virtual {p2, v8, v0}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 553
    .line 554
    .line 555
    goto :goto_b

    .line 556
    :cond_1b
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_offline_pin_black_24:I

    .line 557
    .line 558
    invoke-virtual {p2, v8, v0}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 559
    .line 560
    .line 561
    :cond_1c
    :goto_b
    move-object v1, p0

    .line 562
    goto :goto_d

    .line 563
    :cond_1d
    if-nez v0, :cond_1f

    .line 564
    .line 565
    iget-object v0, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->B:Lcom/mycompany/app/view/MyTextImage;

    .line 566
    .line 567
    if-eqz v0, :cond_1e

    .line 568
    .line 569
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 570
    .line 571
    .line 572
    iget-object v3, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->B:Lcom/mycompany/app/view/MyTextImage;

    .line 573
    .line 574
    const/4 v6, 0x1

    .line 575
    move-object v1, p0

    .line 576
    invoke-virtual/range {v1 .. v6}, Lcom/mycompany/app/web/WebTabAdapter;->e0(Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;Lcom/mycompany/app/view/MyTextImage;Ljava/lang/String;IZ)V

    .line 577
    .line 578
    .line 579
    goto :goto_c

    .line 580
    :cond_1e
    move-object v1, p0

    .line 581
    :goto_c
    iget-object v0, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->z:Lcom/mycompany/app/view/MyThumbView;

    .line 582
    .line 583
    iget v3, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->v:I

    .line 584
    .line 585
    invoke-virtual {p0, v2, v0, v3, p2}, Lcom/mycompany/app/web/WebTabAdapter;->a0(Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;Lcom/mycompany/app/view/MyThumbView;II)V

    .line 586
    .line 587
    .line 588
    goto :goto_d

    .line 589
    :cond_1f
    move-object v1, p0

    .line 590
    iget-object v0, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->B:Lcom/mycompany/app/view/MyTextImage;

    .line 591
    .line 592
    if-eqz v0, :cond_20

    .line 593
    .line 594
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 595
    .line 596
    .line 597
    iget-object v3, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->B:Lcom/mycompany/app/view/MyTextImage;

    .line 598
    .line 599
    const/4 v6, 0x0

    .line 600
    invoke-virtual/range {v1 .. v6}, Lcom/mycompany/app/web/WebTabAdapter;->e0(Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;Lcom/mycompany/app/view/MyTextImage;Ljava/lang/String;IZ)V

    .line 601
    .line 602
    .line 603
    :cond_20
    iget-object v0, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->z:Lcom/mycompany/app/view/MyThumbView;

    .line 604
    .line 605
    iget v3, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->v:I

    .line 606
    .line 607
    invoke-virtual {p0, v2, v0, v3, p2}, Lcom/mycompany/app/web/WebTabAdapter;->a0(Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;Lcom/mycompany/app/view/MyThumbView;II)V

    .line 608
    .line 609
    .line 610
    :goto_d
    iget p2, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->v:I

    .line 611
    .line 612
    const v0, -0x1f1f20

    .line 613
    .line 614
    .line 615
    const/high16 v3, -0x1000000

    .line 616
    .line 617
    const v4, -0x50506

    .line 618
    .line 619
    .line 620
    if-ne p2, v7, :cond_24

    .line 621
    .line 622
    iget-object p2, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->y:Lcom/mycompany/app/web/WebTabGridItem;

    .line 623
    .line 624
    invoke-virtual {p2, v8}, Lcom/mycompany/app/web/WebTabGridItem;->setHeadColor(I)V

    .line 625
    .line 626
    .line 627
    sget-boolean p2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 628
    .line 629
    if-eqz p2, :cond_22

    .line 630
    .line 631
    iget-object p2, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->D:Lcom/mycompany/app/view/MyTextFast;

    .line 632
    .line 633
    invoke-virtual {p2, v4}, Lcom/mycompany/app/view/MyTextFast;->setTextColor(I)V

    .line 634
    .line 635
    .line 636
    iget-object p2, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->E:Lcom/mycompany/app/view/MyTextFast;

    .line 637
    .line 638
    const v0, -0x3e3e3f

    .line 639
    .line 640
    .line 641
    invoke-virtual {p2, v0}, Lcom/mycompany/app/view/MyTextFast;->setTextColor(I)V

    .line 642
    .line 643
    .line 644
    iget-object p2, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 645
    .line 646
    if-eqz p2, :cond_21

    .line 647
    .line 648
    iget-object p2, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 649
    .line 650
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_more_vert_dark_20:I

    .line 651
    .line 652
    invoke-virtual {p2, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 653
    .line 654
    .line 655
    goto :goto_e

    .line 656
    :cond_21
    iget-object p2, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 657
    .line 658
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_dark_18:I

    .line 659
    .line 660
    invoke-virtual {p2, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 661
    .line 662
    .line 663
    :goto_e
    iget-object p2, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 664
    .line 665
    invoke-virtual {p2, v11}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 666
    .line 667
    .line 668
    iget-object p1, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->G:Lcom/mycompany/app/view/MyButtonCheck;

    .line 669
    .line 670
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_dark_24:I

    .line 671
    .line 672
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_dark_24:I

    .line 673
    .line 674
    invoke-virtual {p1, p2, v0}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 675
    .line 676
    .line 677
    return-void

    .line 678
    :cond_22
    iget-object p2, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->D:Lcom/mycompany/app/view/MyTextFast;

    .line 679
    .line 680
    invoke-virtual {p2, v3}, Lcom/mycompany/app/view/MyTextFast;->setTextColor(I)V

    .line 681
    .line 682
    .line 683
    iget-object p2, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->E:Lcom/mycompany/app/view/MyTextFast;

    .line 684
    .line 685
    const v3, -0x9e9e9f

    .line 686
    .line 687
    .line 688
    invoke-virtual {p2, v3}, Lcom/mycompany/app/view/MyTextFast;->setTextColor(I)V

    .line 689
    .line 690
    .line 691
    iget-object p2, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 692
    .line 693
    if-eqz p2, :cond_23

    .line 694
    .line 695
    iget-object p2, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 696
    .line 697
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_more_vert_black_20:I

    .line 698
    .line 699
    invoke-virtual {p2, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 700
    .line 701
    .line 702
    goto :goto_f

    .line 703
    :cond_23
    iget-object p2, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 704
    .line 705
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_black_18:I

    .line 706
    .line 707
    invoke-virtual {p2, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 708
    .line 709
    .line 710
    :goto_f
    iget-object p2, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 711
    .line 712
    invoke-virtual {p2, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 713
    .line 714
    .line 715
    iget-object p1, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->G:Lcom/mycompany/app/view/MyButtonCheck;

    .line 716
    .line 717
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_black_24:I

    .line 718
    .line 719
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_black_24:I

    .line 720
    .line 721
    invoke-virtual {p1, p2, v0}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 722
    .line 723
    .line 724
    return-void

    .line 725
    :cond_24
    if-ne p2, v12, :cond_28

    .line 726
    .line 727
    iget-object p2, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->y:Lcom/mycompany/app/web/WebTabGridItem;

    .line 728
    .line 729
    invoke-virtual {p2, v8}, Lcom/mycompany/app/web/WebTabGridItem;->setHeadColor(I)V

    .line 730
    .line 731
    .line 732
    sget-boolean p2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 733
    .line 734
    if-eqz p2, :cond_26

    .line 735
    .line 736
    iget-object p2, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->D:Lcom/mycompany/app/view/MyTextFast;

    .line 737
    .line 738
    invoke-virtual {p2, v4}, Lcom/mycompany/app/view/MyTextFast;->setTextColor(I)V

    .line 739
    .line 740
    .line 741
    iget-object p2, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 742
    .line 743
    if-eqz p2, :cond_25

    .line 744
    .line 745
    iget-object p2, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 746
    .line 747
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_more_vert_dark_20:I

    .line 748
    .line 749
    invoke-virtual {p2, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 750
    .line 751
    .line 752
    goto :goto_10

    .line 753
    :cond_25
    iget-object p2, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 754
    .line 755
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_dark_18:I

    .line 756
    .line 757
    invoke-virtual {p2, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 758
    .line 759
    .line 760
    :goto_10
    iget-object p2, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 761
    .line 762
    invoke-virtual {p2, v11}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 763
    .line 764
    .line 765
    iget-object p1, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->G:Lcom/mycompany/app/view/MyButtonCheck;

    .line 766
    .line 767
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_dark_24:I

    .line 768
    .line 769
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_dark_24:I

    .line 770
    .line 771
    invoke-virtual {p1, p2, v0}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 772
    .line 773
    .line 774
    return-void

    .line 775
    :cond_26
    iget-object p2, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->D:Lcom/mycompany/app/view/MyTextFast;

    .line 776
    .line 777
    invoke-virtual {p2, v3}, Lcom/mycompany/app/view/MyTextFast;->setTextColor(I)V

    .line 778
    .line 779
    .line 780
    iget-object p2, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 781
    .line 782
    if-eqz p2, :cond_27

    .line 783
    .line 784
    iget-object p2, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 785
    .line 786
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_more_vert_black_20:I

    .line 787
    .line 788
    invoke-virtual {p2, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 789
    .line 790
    .line 791
    goto :goto_11

    .line 792
    :cond_27
    iget-object p2, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 793
    .line 794
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_black_18:I

    .line 795
    .line 796
    invoke-virtual {p2, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 797
    .line 798
    .line 799
    :goto_11
    iget-object p2, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 800
    .line 801
    invoke-virtual {p2, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 802
    .line 803
    .line 804
    iget-object p1, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->G:Lcom/mycompany/app/view/MyButtonCheck;

    .line 805
    .line 806
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_black_24:I

    .line 807
    .line 808
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_black_24:I

    .line 809
    .line 810
    invoke-virtual {p1, p2, v0}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 811
    .line 812
    .line 813
    return-void

    .line 814
    :cond_28
    if-eqz v5, :cond_29

    .line 815
    .line 816
    iget-object p2, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->y:Lcom/mycompany/app/web/WebTabGridItem;

    .line 817
    .line 818
    invoke-virtual {p2, v5}, Lcom/mycompany/app/web/WebTabGridItem;->setHeadColor(I)V

    .line 819
    .line 820
    .line 821
    goto :goto_12

    .line 822
    :cond_29
    iget-object p2, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->y:Lcom/mycompany/app/web/WebTabGridItem;

    .line 823
    .line 824
    invoke-virtual {p2, v11}, Lcom/mycompany/app/web/WebTabGridItem;->setHeadColor(I)V

    .line 825
    .line 826
    .line 827
    :goto_12
    iget-object p2, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->D:Lcom/mycompany/app/view/MyTextFast;

    .line 828
    .line 829
    invoke-virtual {p2, v4}, Lcom/mycompany/app/view/MyTextFast;->setTextColor(I)V

    .line 830
    .line 831
    .line 832
    iget-object p2, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 833
    .line 834
    if-eqz p2, :cond_2a

    .line 835
    .line 836
    iget-object p2, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 837
    .line 838
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_more_vert_dark_20:I

    .line 839
    .line 840
    invoke-virtual {p2, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 841
    .line 842
    .line 843
    goto :goto_13

    .line 844
    :cond_2a
    iget-object p2, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 845
    .line 846
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_dark_18:I

    .line 847
    .line 848
    invoke-virtual {p2, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 849
    .line 850
    .line 851
    :goto_13
    iget-object p2, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 852
    .line 853
    const v0, 0x41ffffff    # 31.999998f

    .line 854
    .line 855
    .line 856
    invoke-virtual {p2, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 857
    .line 858
    .line 859
    iget-object p1, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->G:Lcom/mycompany/app/view/MyButtonCheck;

    .line 860
    .line 861
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_dark_24:I

    .line 862
    .line 863
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_dark_24:I

    .line 864
    .line 865
    invoke-virtual {p1, p2, v0}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 866
    .line 867
    .line 868
    return-void
.end method

.method public final o(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    return-object v1

    .line 13
    :cond_0
    const/4 v3, 0x3

    .line 14
    const/4 v4, -0x1

    .line 15
    if-lt v1, v3, :cond_1

    .line 16
    .line 17
    new-instance v3, Landroid/view/View;

    .line 18
    .line 19
    invoke-direct {v3, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 23
    .line 24
    iget v5, v0, Lcom/mycompany/app/web/WebTabAdapter;->g:I

    .line 25
    .line 26
    invoke-direct {v2, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    .line 31
    .line 32
    new-instance v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;

    .line 33
    .line 34
    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 35
    .line 36
    .line 37
    iput v1, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->v:I

    .line 38
    .line 39
    return-object v2

    .line 40
    :cond_1
    iget-boolean v5, v0, Lcom/mycompany/app/web/WebTabAdapter;->f:Z

    .line 41
    .line 42
    const/4 v6, 0x2

    .line 43
    if-eqz v5, :cond_2

    .line 44
    .line 45
    sget v5, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 46
    .line 47
    mul-int/2addr v5, v6

    .line 48
    move v7, v4

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebTabAdapter;->G(I)I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    move v7, v5

    .line 55
    move v5, v4

    .line 56
    :goto_0
    const/4 v8, 0x0

    .line 57
    const/high16 v9, 0x41900000    # 18.0f

    .line 58
    .line 59
    const/high16 v10, 0x41800000    # 16.0f

    .line 60
    .line 61
    const/4 v11, -0x2

    .line 62
    const v12, 0x800013

    .line 63
    .line 64
    .line 65
    const/4 v15, 0x1

    .line 66
    if-ne v1, v15, :cond_3

    .line 67
    .line 68
    new-instance v13, Lcom/mycompany/app/web/WebTabGridItem;

    .line 69
    .line 70
    invoke-direct {v13, v2}, Lcom/mycompany/app/web/WebTabGridItem;-><init>(Landroid/content/Context;)V

    .line 71
    .line 72
    .line 73
    new-instance v14, Landroid/view/ViewGroup$LayoutParams;

    .line 74
    .line 75
    invoke-direct {v14, v5, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v13, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    .line 80
    .line 81
    new-instance v5, Lcom/mycompany/app/view/MyThumbView;

    .line 82
    .line 83
    invoke-direct {v5, v2}, Lcom/mycompany/app/view/MyThumbView;-><init>(Landroid/content/Context;)V

    .line 84
    .line 85
    .line 86
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 87
    .line 88
    sget v14, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 89
    .line 90
    invoke-direct {v7, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 91
    .line 92
    .line 93
    iput v12, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 94
    .line 95
    sget v14, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 96
    .line 97
    invoke-virtual {v7, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v13, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    .line 102
    .line 103
    new-instance v7, Landroid/widget/RelativeLayout;

    .line 104
    .line 105
    invoke-direct {v7, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 106
    .line 107
    .line 108
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 109
    .line 110
    invoke-direct {v14, v4, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 111
    .line 112
    .line 113
    iput v12, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 114
    .line 115
    const/high16 v4, 0x42a80000    # 84.0f

    .line 116
    .line 117
    invoke-static {v2, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    float-to-int v4, v4

    .line 122
    invoke-virtual {v14, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 123
    .line 124
    .line 125
    sget v4, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 126
    .line 127
    invoke-virtual {v14, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v13, v7, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    .line 132
    .line 133
    new-instance v4, Lcom/mycompany/app/view/MyTextFast;

    .line 134
    .line 135
    invoke-direct {v4, v2}, Lcom/mycompany/app/view/MyTextFast;-><init>(Landroid/content/Context;)V

    .line 136
    .line 137
    .line 138
    sget v14, Lnet/kaki87/soul2/testing/R$id;->tab_item_title:I

    .line 139
    .line 140
    invoke-virtual {v4, v14}, Landroid/view/View;->setId(I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 144
    .line 145
    .line 146
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 147
    .line 148
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v4, v15, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v7, v4, v11, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 155
    .line 156
    .line 157
    new-instance v6, Lcom/mycompany/app/view/MyTextImage;

    .line 158
    .line 159
    invoke-direct {v6, v2}, Lcom/mycompany/app/view/MyTextImage;-><init>(Landroid/content/Context;)V

    .line 160
    .line 161
    .line 162
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 163
    .line 164
    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v6, v15}, Lcom/mycompany/app/view/MyTextImage;->setRoundClip(Z)V

    .line 168
    .line 169
    .line 170
    invoke-static {v2, v9}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 171
    .line 172
    .line 173
    move-result v9

    .line 174
    float-to-int v9, v9

    .line 175
    invoke-static {v9, v9, v3, v14}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 176
    .line 177
    .line 178
    move-result-object v10

    .line 179
    const/high16 v3, 0x40c00000    # 6.0f

    .line 180
    .line 181
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 182
    .line 183
    .line 184
    move-result v11

    .line 185
    float-to-int v11, v11

    .line 186
    iput v11, v10, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 187
    .line 188
    invoke-virtual {v7, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    .line 190
    .line 191
    new-instance v10, Lcom/mycompany/app/view/MyTextFast;

    .line 192
    .line 193
    invoke-direct {v10, v2}, Lcom/mycompany/app/view/MyTextFast;-><init>(Landroid/content/Context;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 200
    .line 201
    .line 202
    const/4 v11, 0x0

    .line 203
    const/high16 v12, 0x3f800000    # 1.0f

    .line 204
    .line 205
    invoke-virtual {v10, v11, v12}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 209
    .line 210
    .line 211
    const/high16 v8, 0x41600000    # 14.0f

    .line 212
    .line 213
    invoke-virtual {v10, v15, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 214
    .line 215
    .line 216
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 217
    .line 218
    const/4 v11, -0x2

    .line 219
    invoke-direct {v8, v11, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 220
    .line 221
    .line 222
    const/4 v9, 0x3

    .line 223
    invoke-virtual {v8, v9, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 224
    .line 225
    .line 226
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 227
    .line 228
    .line 229
    move-result v3

    .line 230
    float-to-int v3, v3

    .line 231
    iput v3, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 232
    .line 233
    const/high16 v3, 0x41e80000    # 29.0f

    .line 234
    .line 235
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 236
    .line 237
    .line 238
    move-result v3

    .line 239
    float-to-int v3, v3

    .line 240
    invoke-virtual {v8, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v7, v10, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    .line 245
    .line 246
    new-instance v3, Lcom/mycompany/app/view/MyButtonImage;

    .line 247
    .line 248
    invoke-direct {v3, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 249
    .line 250
    .line 251
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 252
    .line 253
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 254
    .line 255
    .line 256
    const/16 v7, 0x8

    .line 257
    .line 258
    invoke-virtual {v3, v7}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 259
    .line 260
    .line 261
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 262
    .line 263
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 264
    .line 265
    invoke-direct {v8, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 266
    .line 267
    .line 268
    const v9, 0x800015

    .line 269
    .line 270
    .line 271
    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 272
    .line 273
    invoke-virtual {v13, v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    .line 275
    .line 276
    new-instance v8, Lcom/mycompany/app/view/MyButtonCheck;

    .line 277
    .line 278
    invoke-direct {v8, v2}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v8, v7}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 282
    .line 283
    .line 284
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 285
    .line 286
    sget v7, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 287
    .line 288
    invoke-direct {v2, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 289
    .line 290
    .line 291
    iput v9, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 292
    .line 293
    invoke-virtual {v13, v8, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    .line 295
    .line 296
    new-instance v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;

    .line 297
    .line 298
    invoke-direct {v2, v13}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 299
    .line 300
    .line 301
    iput v1, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->v:I

    .line 302
    .line 303
    iput-object v13, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->y:Lcom/mycompany/app/web/WebTabGridItem;

    .line 304
    .line 305
    iput-object v5, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->z:Lcom/mycompany/app/view/MyThumbView;

    .line 306
    .line 307
    iput-object v4, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->D:Lcom/mycompany/app/view/MyTextFast;

    .line 308
    .line 309
    iput-object v6, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->B:Lcom/mycompany/app/view/MyTextImage;

    .line 310
    .line 311
    iput-object v10, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->E:Lcom/mycompany/app/view/MyTextFast;

    .line 312
    .line 313
    iput-object v3, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 314
    .line 315
    iput-object v8, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->G:Lcom/mycompany/app/view/MyButtonCheck;

    .line 316
    .line 317
    return-object v2

    .line 318
    :cond_3
    if-ne v1, v6, :cond_4

    .line 319
    .line 320
    new-instance v3, Lcom/mycompany/app/web/WebTabGridItem;

    .line 321
    .line 322
    invoke-direct {v3, v2}, Lcom/mycompany/app/web/WebTabGridItem;-><init>(Landroid/content/Context;)V

    .line 323
    .line 324
    .line 325
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    .line 326
    .line 327
    invoke-direct {v8, v5, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v3, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    .line 332
    .line 333
    new-instance v5, Lcom/mycompany/app/view/MyRoundImage;

    .line 334
    .line 335
    invoke-direct {v5, v2}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 336
    .line 337
    .line 338
    const/high16 v7, 0x41c00000    # 24.0f

    .line 339
    .line 340
    invoke-static {v2, v7}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 341
    .line 342
    .line 343
    move-result v7

    .line 344
    float-to-int v7, v7

    .line 345
    div-int/lit8 v8, v7, 0x2

    .line 346
    .line 347
    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 348
    .line 349
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 350
    .line 351
    .line 352
    sget v9, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 353
    .line 354
    invoke-virtual {v5, v9}, Lcom/mycompany/app/view/MyRoundImage;->setRoundRadius(I)V

    .line 355
    .line 356
    .line 357
    int-to-float v9, v8

    .line 358
    invoke-virtual {v5, v9}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 359
    .line 360
    .line 361
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 362
    .line 363
    invoke-direct {v9, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 364
    .line 365
    .line 366
    iput v12, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 367
    .line 368
    invoke-virtual {v9, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v3, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    .line 373
    .line 374
    new-instance v7, Lcom/mycompany/app/view/MyTextFast;

    .line 375
    .line 376
    invoke-direct {v7, v2}, Lcom/mycompany/app/view/MyTextFast;-><init>(Landroid/content/Context;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 380
    .line 381
    .line 382
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 383
    .line 384
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v7, v15, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 388
    .line 389
    .line 390
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 391
    .line 392
    const/4 v11, -0x2

    .line 393
    invoke-direct {v6, v4, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 394
    .line 395
    .line 396
    iput v12, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 397
    .line 398
    sget v4, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 399
    .line 400
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 401
    .line 402
    .line 403
    sget v4, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 404
    .line 405
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v3, v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 409
    .line 410
    .line 411
    new-instance v4, Lcom/mycompany/app/view/MyButtonImage;

    .line 412
    .line 413
    invoke-direct {v4, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 414
    .line 415
    .line 416
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 417
    .line 418
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 419
    .line 420
    .line 421
    const/16 v6, 0x8

    .line 422
    .line 423
    invoke-virtual {v4, v6}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 424
    .line 425
    .line 426
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 427
    .line 428
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 429
    .line 430
    invoke-direct {v8, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 431
    .line 432
    .line 433
    const v9, 0x800015

    .line 434
    .line 435
    .line 436
    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 437
    .line 438
    invoke-virtual {v3, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 439
    .line 440
    .line 441
    new-instance v8, Lcom/mycompany/app/view/MyButtonCheck;

    .line 442
    .line 443
    invoke-direct {v8, v2}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v8, v6}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 447
    .line 448
    .line 449
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 450
    .line 451
    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 452
    .line 453
    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 454
    .line 455
    .line 456
    iput v9, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 457
    .line 458
    invoke-virtual {v3, v8, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 459
    .line 460
    .line 461
    new-instance v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;

    .line 462
    .line 463
    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 464
    .line 465
    .line 466
    iput v1, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->v:I

    .line 467
    .line 468
    iput-object v3, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->y:Lcom/mycompany/app/web/WebTabGridItem;

    .line 469
    .line 470
    iput-object v5, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->A:Lcom/mycompany/app/view/MyRoundImage;

    .line 471
    .line 472
    iput-object v7, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->D:Lcom/mycompany/app/view/MyTextFast;

    .line 473
    .line 474
    iput-object v4, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 475
    .line 476
    iput-object v8, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->G:Lcom/mycompany/app/view/MyButtonCheck;

    .line 477
    .line 478
    return-object v2

    .line 479
    :cond_4
    new-instance v3, Landroid/widget/FrameLayout;

    .line 480
    .line 481
    invoke-direct {v3, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 482
    .line 483
    .line 484
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    .line 485
    .line 486
    invoke-direct {v6, v5, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {v3, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 490
    .line 491
    .line 492
    new-instance v5, Lcom/mycompany/app/web/WebTabGridItem;

    .line 493
    .line 494
    invoke-direct {v5, v2}, Lcom/mycompany/app/web/WebTabGridItem;-><init>(Landroid/content/Context;)V

    .line 495
    .line 496
    .line 497
    sget v6, Lcom/mycompany/app/main/MainApp;->q1:I

    .line 498
    .line 499
    invoke-virtual {v5, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 500
    .line 501
    .line 502
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 503
    .line 504
    invoke-direct {v6, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 505
    .line 506
    .line 507
    invoke-virtual {v3, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 508
    .line 509
    .line 510
    const/high16 v6, 0x42000000    # 32.0f

    .line 511
    .line 512
    invoke-static {v2, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 513
    .line 514
    .line 515
    move-result v6

    .line 516
    float-to-int v6, v6

    .line 517
    new-instance v10, Lcom/mycompany/app/view/MyThumbView;

    .line 518
    .line 519
    invoke-direct {v10, v2}, Lcom/mycompany/app/view/MyThumbView;-><init>(Landroid/content/Context;)V

    .line 520
    .line 521
    .line 522
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 523
    .line 524
    invoke-direct {v11, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 525
    .line 526
    .line 527
    iput v6, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 528
    .line 529
    invoke-virtual {v5, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 530
    .line 531
    .line 532
    new-instance v11, Lcom/mycompany/app/view/MyTextFast;

    .line 533
    .line 534
    invoke-direct {v11, v2}, Lcom/mycompany/app/view/MyTextFast;-><init>(Landroid/content/Context;)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 538
    .line 539
    .line 540
    const/high16 v12, 0x41500000    # 13.0f

    .line 541
    .line 542
    invoke-virtual {v11, v15, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 543
    .line 544
    .line 545
    const/16 v12, 0x10

    .line 546
    .line 547
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {v11, v6, v8, v6, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 551
    .line 552
    .line 553
    invoke-virtual {v5, v11, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 554
    .line 555
    .line 556
    new-instance v8, Lcom/mycompany/app/view/MyTextImage;

    .line 557
    .line 558
    invoke-direct {v8, v2}, Lcom/mycompany/app/view/MyTextImage;-><init>(Landroid/content/Context;)V

    .line 559
    .line 560
    .line 561
    sget-object v12, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 562
    .line 563
    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 564
    .line 565
    .line 566
    invoke-virtual {v8, v15}, Lcom/mycompany/app/view/MyTextImage;->setRoundClip(Z)V

    .line 567
    .line 568
    .line 569
    invoke-static {v2, v9}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 570
    .line 571
    .line 572
    move-result v9

    .line 573
    float-to-int v9, v9

    .line 574
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 575
    .line 576
    invoke-direct {v12, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 577
    .line 578
    .line 579
    const/high16 v9, 0x40e00000    # 7.0f

    .line 580
    .line 581
    invoke-static {v2, v9}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 582
    .line 583
    .line 584
    move-result v9

    .line 585
    float-to-int v9, v9

    .line 586
    iput v9, v12, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 587
    .line 588
    invoke-virtual {v12, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 589
    .line 590
    .line 591
    invoke-virtual {v5, v8, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 592
    .line 593
    .line 594
    new-instance v9, Lcom/mycompany/app/view/MyFadeView;

    .line 595
    .line 596
    invoke-direct {v9, v2}, Lcom/mycompany/app/view/MyFadeView;-><init>(Landroid/content/Context;)V

    .line 597
    .line 598
    .line 599
    const/high16 v12, 0x71000000

    .line 600
    .line 601
    invoke-virtual {v9, v12}, Landroid/view/View;->setBackgroundColor(I)V

    .line 602
    .line 603
    .line 604
    const/16 v12, 0x8

    .line 605
    .line 606
    invoke-virtual {v9, v12}, Lcom/mycompany/app/view/MyFadeView;->setVisibility(I)V

    .line 607
    .line 608
    .line 609
    invoke-virtual {v5, v9, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 610
    .line 611
    .line 612
    new-instance v4, Lcom/mycompany/app/view/MyButtonImage;

    .line 613
    .line 614
    invoke-direct {v4, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 615
    .line 616
    .line 617
    sget-object v13, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 618
    .line 619
    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 620
    .line 621
    .line 622
    invoke-virtual {v4, v12}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 623
    .line 624
    .line 625
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 626
    .line 627
    invoke-direct {v13, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 628
    .line 629
    .line 630
    const v14, 0x800005

    .line 631
    .line 632
    .line 633
    iput v14, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 634
    .line 635
    invoke-virtual {v5, v4, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 636
    .line 637
    .line 638
    new-instance v13, Lcom/mycompany/app/view/MyButtonCheck;

    .line 639
    .line 640
    invoke-direct {v13, v2}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 641
    .line 642
    .line 643
    invoke-virtual {v13, v12}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 644
    .line 645
    .line 646
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 647
    .line 648
    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 649
    .line 650
    .line 651
    iput v14, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 652
    .line 653
    invoke-virtual {v5, v13, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 654
    .line 655
    .line 656
    new-instance v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;

    .line 657
    .line 658
    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 659
    .line 660
    .line 661
    iput v1, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->v:I

    .line 662
    .line 663
    iput v7, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->x:I

    .line 664
    .line 665
    iput-object v5, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->y:Lcom/mycompany/app/web/WebTabGridItem;

    .line 666
    .line 667
    iput-object v10, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->z:Lcom/mycompany/app/view/MyThumbView;

    .line 668
    .line 669
    iput-object v11, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->D:Lcom/mycompany/app/view/MyTextFast;

    .line 670
    .line 671
    iput-object v8, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->B:Lcom/mycompany/app/view/MyTextImage;

    .line 672
    .line 673
    iput-object v9, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->C:Lcom/mycompany/app/view/MyFadeView;

    .line 674
    .line 675
    iput-object v4, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 676
    .line 677
    iput-object v13, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->G:Lcom/mycompany/app/view/MyButtonCheck;

    .line 678
    .line 679
    return-object v2
.end method

.method public final v()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->E:Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/web/WebTabAdapter;->F:Ljava/util/List;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/mycompany/app/web/WebTabAdapter;->G:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebTabAdapter;->Q()V

    .line 8
    .line 9
    .line 10
    if-eqz v2, :cond_2

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    new-instance v1, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {p0, v1}, Lcom/mycompany/app/web/WebTabAdapter;->z(Ljava/util/List;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->e:Landroid/content/Context;

    .line 34
    .line 35
    iget-boolean v1, p0, Lcom/mycompany/app/web/WebTabAdapter;->t:Z

    .line 36
    .line 37
    invoke-static {v0, v1}, Lcom/mycompany/app/db/book/DbBookTab;->n(Landroid/content/Context;Z)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    if-eqz v0, :cond_4

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_4

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Lcom/mycompany/app/web/WebTabAdapter;->z(Ljava/util/List;)V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/mycompany/app/web/WebTabAdapter;->e:Landroid/content/Context;

    .line 53
    .line 54
    invoke-static {v1}, Lcom/mycompany/app/db/book/DbBookTab;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookTab;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    const/4 v3, 0x0

    .line 67
    :goto_0
    if-ge v3, v2, :cond_4

    .line 68
    .line 69
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    add-int/lit8 v3, v3, 0x1

    .line 74
    .line 75
    check-cast v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 76
    .line 77
    if-nez v4, :cond_3

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    iget-wide v4, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 81
    .line 82
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    filled-new-array {v4}, [Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    const-string v5, "DbBookTab3_table"

    .line 91
    .line 92
    const-string v6, "_uid=?"

    .line 93
    .line 94
    invoke-static {v1, v5, v6, v4}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_4
    return-void
.end method

.method public final w(Z)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_7

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget v2, p0, Lcom/mycompany/app/web/WebTabAdapter;->d:I

    .line 11
    .line 12
    if-gt v0, v2, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 v0, 0x1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 20
    .line 21
    const-wide/16 v3, 0x0

    .line 22
    .line 23
    iput-wide v3, p0, Lcom/mycompany/app/web/WebTabAdapter;->l:J

    .line 24
    .line 25
    iput v1, p0, Lcom/mycompany/app/web/WebTabAdapter;->m:I

    .line 26
    .line 27
    iput v2, p0, Lcom/mycompany/app/web/WebTabAdapter;->n:I

    .line 28
    .line 29
    invoke-virtual {p0, v1, v1}, Lcom/mycompany/app/web/WebTabAdapter;->x(ZZ)V

    .line 30
    .line 31
    .line 32
    return v0

    .line 33
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    move v3, v1

    .line 45
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_5

    .line 50
    .line 51
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    check-cast v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 56
    .line 57
    if-nez v4, :cond_3

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    iget-boolean v5, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->m:Z

    .line 61
    .line 62
    if-eqz v5, :cond_4

    .line 63
    .line 64
    iget v4, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->i:I

    .line 65
    .line 66
    iget v5, p0, Lcom/mycompany/app/web/WebTabAdapter;->n:I

    .line 67
    .line 68
    if-gt v4, v5, :cond_2

    .line 69
    .line 70
    add-int/lit8 v5, v5, -0x1

    .line 71
    .line 72
    iput v5, p0, Lcom/mycompany/app/web/WebTabAdapter;->n:I

    .line 73
    .line 74
    move v3, v0

    .line 75
    goto :goto_0

    .line 76
    :cond_4
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_5
    iput-object p1, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 81
    .line 82
    if-eqz v3, :cond_6

    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebTabAdapter;->d0()V

    .line 85
    .line 86
    .line 87
    :cond_6
    invoke-virtual {p0, v1, v1}, Lcom/mycompany/app/web/WebTabAdapter;->x(ZZ)V

    .line 88
    .line 89
    .line 90
    return v0

    .line 91
    :cond_7
    :goto_1
    return v1
.end method

.method public final x(ZZ)V
    .locals 12

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebTabAdapter;->v()V

    .line 4
    .line 5
    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/mycompany/app/web/WebTabAdapter;->t:Z

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v0, :cond_e

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget v4, p0, Lcom/mycompany/app/web/WebTabAdapter;->d:I

    .line 19
    .line 20
    if-gt v0, v4, :cond_1

    .line 21
    .line 22
    goto/16 :goto_3

    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 25
    .line 26
    invoke-virtual {p0, v0, p2}, Lcom/mycompany/app/web/WebTabAdapter;->I(Ljava/util/List;Z)Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    if-eqz p2, :cond_c

    .line 31
    .line 32
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    goto/16 :goto_2

    .line 39
    .line 40
    :cond_2
    const-string v0, "_uid=?"

    .line 41
    .line 42
    iget-object v1, p0, Lcom/mycompany/app/web/WebTabAdapter;->e:Landroid/content/Context;

    .line 43
    .line 44
    invoke-static {v1}, Lcom/mycompany/app/db/book/DbBookTab;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookTab;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    :try_start_0
    iget-object v2, p0, Lcom/mycompany/app/web/WebTabAdapter;->j:Ljava/util/List;

    .line 53
    .line 54
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_a

    .line 63
    .line 64
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    check-cast v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 69
    .line 70
    if-nez v4, :cond_3

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    const/4 v6, 0x0

    .line 78
    :cond_4
    :goto_1
    if-ge v6, v5, :cond_6

    .line 79
    .line 80
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    add-int/lit8 v6, v6, 0x1

    .line 85
    .line 86
    check-cast v7, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 87
    .line 88
    if-nez v7, :cond_5

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_5
    iget-wide v8, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 92
    .line 93
    iget-wide v10, v7, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 94
    .line 95
    cmp-long v7, v8, v10

    .line 96
    .line 97
    if-nez v7, :cond_4

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_6
    if-eqz p1, :cond_8

    .line 101
    .line 102
    iget-object v5, p0, Lcom/mycompany/app/web/WebTabAdapter;->E:Ljava/util/ArrayList;

    .line 103
    .line 104
    if-nez v5, :cond_7

    .line 105
    .line 106
    new-instance v5, Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .line 110
    .line 111
    iput-object v5, p0, Lcom/mycompany/app/web/WebTabAdapter;->E:Ljava/util/ArrayList;

    .line 112
    .line 113
    :cond_7
    iget-object v5, p0, Lcom/mycompany/app/web/WebTabAdapter;->E:Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_8
    if-nez v3, :cond_9

    .line 120
    .line 121
    new-instance v5, Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .line 125
    .line 126
    move-object v3, v5

    .line 127
    :cond_9
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    iget-wide v4, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 131
    .line 132
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    filled-new-array {v4}, [Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    const-string v5, "DbBookTab3_table"

    .line 141
    .line 142
    invoke-static {v1, v5, v0, v4}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :catch_0
    :cond_a
    if-eqz v3, :cond_b

    .line 147
    .line 148
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    if-nez p1, :cond_b

    .line 153
    .line 154
    invoke-virtual {p0, v3}, Lcom/mycompany/app/web/WebTabAdapter;->z(Ljava/util/List;)V

    .line 155
    .line 156
    .line 157
    :cond_b
    iput-object p2, p0, Lcom/mycompany/app/web/WebTabAdapter;->j:Ljava/util/List;

    .line 158
    .line 159
    return-void

    .line 160
    :cond_c
    :goto_2
    if-eqz p1, :cond_d

    .line 161
    .line 162
    iget-object p1, p0, Lcom/mycompany/app/web/WebTabAdapter;->j:Ljava/util/List;

    .line 163
    .line 164
    iput-object p1, p0, Lcom/mycompany/app/web/WebTabAdapter;->F:Ljava/util/List;

    .line 165
    .line 166
    iput-object v3, p0, Lcom/mycompany/app/web/WebTabAdapter;->j:Ljava/util/List;

    .line 167
    .line 168
    iput-boolean v2, p0, Lcom/mycompany/app/web/WebTabAdapter;->G:Z

    .line 169
    .line 170
    return-void

    .line 171
    :cond_d
    iget-object p1, p0, Lcom/mycompany/app/web/WebTabAdapter;->j:Ljava/util/List;

    .line 172
    .line 173
    invoke-virtual {p0, p1}, Lcom/mycompany/app/web/WebTabAdapter;->z(Ljava/util/List;)V

    .line 174
    .line 175
    .line 176
    iput-object v3, p0, Lcom/mycompany/app/web/WebTabAdapter;->j:Ljava/util/List;

    .line 177
    .line 178
    iget-object p1, p0, Lcom/mycompany/app/web/WebTabAdapter;->e:Landroid/content/Context;

    .line 179
    .line 180
    invoke-static {p1, v1}, Lcom/mycompany/app/db/book/DbBookTab;->n(Landroid/content/Context;Z)V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :cond_e
    :goto_3
    if-eqz p1, :cond_f

    .line 185
    .line 186
    iget-object p1, p0, Lcom/mycompany/app/web/WebTabAdapter;->j:Ljava/util/List;

    .line 187
    .line 188
    iput-object p1, p0, Lcom/mycompany/app/web/WebTabAdapter;->F:Ljava/util/List;

    .line 189
    .line 190
    iput-object v3, p0, Lcom/mycompany/app/web/WebTabAdapter;->j:Ljava/util/List;

    .line 191
    .line 192
    iput-boolean v2, p0, Lcom/mycompany/app/web/WebTabAdapter;->G:Z

    .line 193
    .line 194
    return-void

    .line 195
    :cond_f
    iget-object p1, p0, Lcom/mycompany/app/web/WebTabAdapter;->j:Ljava/util/List;

    .line 196
    .line 197
    invoke-virtual {p0, p1}, Lcom/mycompany/app/web/WebTabAdapter;->z(Ljava/util/List;)V

    .line 198
    .line 199
    .line 200
    iput-object v3, p0, Lcom/mycompany/app/web/WebTabAdapter;->j:Ljava/util/List;

    .line 201
    .line 202
    iget-object p1, p0, Lcom/mycompany/app/web/WebTabAdapter;->e:Landroid/content/Context;

    .line 203
    .line 204
    invoke-static {p1, v1}, Lcom/mycompany/app/db/book/DbBookTab;->n(Landroid/content/Context;Z)V

    .line 205
    .line 206
    .line 207
    return-void
.end method

.method public final y(I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_8

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget v2, p0, Lcom/mycompany/app/web/WebTabAdapter;->d:I

    .line 11
    .line 12
    if-gt v0, v2, :cond_0

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_0
    if-lt p1, v2, :cond_8

    .line 16
    .line 17
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-lt p1, v0, :cond_1

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

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
    if-eqz v0, :cond_8

    .line 35
    .line 36
    iget-object v2, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 37
    .line 38
    if-eqz v2, :cond_8

    .line 39
    .line 40
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    iget-object v3, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 53
    .line 54
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_5

    .line 63
    .line 64
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    check-cast v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 69
    .line 70
    if-nez v4, :cond_4

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_4
    iget-boolean v5, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->m:Z

    .line 74
    .line 75
    if-nez v5, :cond_3

    .line 76
    .line 77
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    const/4 v4, 0x1

    .line 86
    if-eqz v3, :cond_6

    .line 87
    .line 88
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 89
    .line 90
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    iget v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->n:I

    .line 94
    .line 95
    if-gt p1, v0, :cond_7

    .line 96
    .line 97
    sub-int/2addr v0, v4

    .line 98
    iput v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->n:I

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebTabAdapter;->d0()V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_6
    iput-object v2, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 105
    .line 106
    :cond_7
    :goto_1
    invoke-virtual {p0, v1, v1}, Lcom/mycompany/app/web/WebTabAdapter;->x(ZZ)V

    .line 107
    .line 108
    .line 109
    return v4

    .line 110
    :cond_8
    :goto_2
    return v1
.end method

.method public final z(Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->A:Lcom/mycompany/app/view/MyRecyclerView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    if-eqz p1, :cond_2

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iput-object p1, p0, Lcom/mycompany/app/web/WebTabAdapter;->M:Ljava/util/List;

    .line 16
    .line 17
    new-instance p1, Lcom/mycompany/app/web/WebTabAdapter$10;

    .line 18
    .line 19
    invoke-direct {p1, p0}, Lcom/mycompany/app/web/WebTabAdapter$10;-><init>(Lcom/mycompany/app/web/WebTabAdapter;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    :cond_2
    :goto_0
    return-void
.end method

.method private static appendUrl(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final selectedUrls()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    if-eqz v2, :cond_1

    iget v3, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->a:I

    if-nez v3, :cond_1

    iget-boolean v3, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->m:Z

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    if-eqz v3, :cond_4

    iget-object v3, v3, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/mycompany/app/web/WebTabAdapter;->appendUrl(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    :goto_1
    iget-object v2, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/mycompany/app/web/WebTabAdapter;->appendUrl(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    :goto_2
    const-string v0, ""

    return-object v0
.end method

.method public final copySelectedUrls(Landroid/content/Context;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebTabAdapter;->selectedUrls()Ljava/lang/String;

    move-result-object v0

    sget v1, Lnet/kaki87/soul2/testing/R$string;->copied_clipboard:I

    const-string v2, "Copied URL"

    invoke-static {v1, p1, v2, v0}, Lcom/mycompany/app/main/MainUtil;->s(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private findRangeAnchor(I)I
    .locals 7

    iget v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->selectionAnchor:I

    invoke-virtual {p0, v0}, Lcom/mycompany/app/web/WebTabAdapter;->H(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    move-result-object v1

    if-eqz v1, :cond_search

    iget v2, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->a:I

    if-nez v2, :cond_search

    iget-boolean v1, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->m:Z

    if-eqz v1, :cond_search

    return v0

    :cond_search
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    if-eqz v0, :cond_none

    const/4 v1, -0x1

    const v2, 0x7fffffff

    const/4 v3, 0x0

    :cond_loop
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_done

    invoke-virtual {p0, v3}, Lcom/mycompany/app/web/WebTabAdapter;->H(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    move-result-object v4

    if-eqz v4, :cond_next

    iget v5, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->a:I

    if-nez v5, :cond_next

    iget-boolean v4, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->m:Z

    if-eqz v4, :cond_next

    sub-int v4, v3, p1

    if-gez v4, :cond_abs

    neg-int v4, v4

    :cond_abs
    if-ge v4, v2, :cond_next

    move v2, v4

    move v1, v3

    :cond_next
    add-int/lit8 v3, v3, 0x1

    goto :cond_loop

    :cond_done
    return v1

    :cond_none
    const/4 v0, -0x1

    return v0
.end method

.method public final selectRangeTo(I)Z
    .locals 6

    iget-boolean v0, p0, Lcom/mycompany/app/web/WebTabAdapter;->u:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_fail

    invoke-direct {p0, p1}, Lcom/mycompany/app/web/WebTabAdapter;->findRangeAnchor(I)I

    move-result v0

    if-ltz v0, :cond_single

    if-gt v0, p1, :cond_swap

    move v2, v0

    move v3, p1

    goto :cond_range

    :cond_swap
    move v2, p1

    move v3, v0

    :cond_range
    move v0, v2

    :cond_loop
    if-gt v0, v3, :cond_done

    invoke-virtual {p0, v0}, Lcom/mycompany/app/web/WebTabAdapter;->H(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    move-result-object v2

    if-eqz v2, :cond_next

    iget v4, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->a:I

    if-nez v4, :cond_next

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->m:Z

    invoke-virtual {p0, v0, v4}, Lcom/mycompany/app/web/WebTabAdapter;->A(IZ)V

    :cond_next
    add-int/lit8 v0, v0, 0x1

    goto :cond_loop

    :cond_done
    iput p1, p0, Lcom/mycompany/app/web/WebTabAdapter;->selectionAnchor:I

    const/4 v0, 0x1

    return v0

    :cond_single
    invoke-virtual {p0, p1}, Lcom/mycompany/app/web/WebTabAdapter;->H(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    move-result-object v0

    if-eqz v0, :cond_fail

    iget v2, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->a:I

    if-nez v2, :cond_fail

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->m:Z

    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/web/WebTabAdapter;->A(IZ)V

    iput p1, p0, Lcom/mycompany/app/web/WebTabAdapter;->selectionAnchor:I

    return v1

    :cond_fail
    return v1
.end method
