.class public Lcom/mycompany/app/quick/QuickAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/quick/QuickAdapter$QuickRcntListener;,
        Lcom/mycompany/app/quick/QuickAdapter$QuickListener;,
        Lcom/mycompany/app/quick/QuickAdapter$QuickItem;,
        Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;,
        Lcom/mycompany/app/quick/QuickAdapter$QuickSubItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public A:Z

.field public B:Ljava/util/List;

.field public C:Lcom/mycompany/app/quick/QuickAdapter$QuickRcntListener;

.field public D:Z

.field public E:I

.field public d:I

.field public e:I

.field public f:Landroid/content/Context;

.field public final g:I

.field public h:Z

.field public i:Z

.field public j:I

.field public k:Lcom/mycompany/app/view/MyManagerGrid;

.field public l:Lcom/mycompany/app/quick/QuickAdapter$QuickListener;

.field public m:Lcom/mycompany/app/web/WebTabGridItem$TabGridListener;

.field public n:Ljava/util/List;

.field public o:Ljava/util/List;

.field public p:Z

.field public q:Z

.field public r:Lcom/mycompany/app/main/MainListLoader;

.field public s:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field public t:Landroid/os/Handler;

.field public u:Z

.field public v:Ljava/lang/String;

.field public w:Z

.field public x:Ljava/util/concurrent/ExecutorService;

.field public y:Z

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IZLcom/mycompany/app/view/MyManagerGrid;Lcom/mycompany/app/quick/QuickAdapter$QuickListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickAdapter;->f:Landroid/content/Context;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/quick/QuickAdapter;->g:I

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/mycompany/app/quick/QuickAdapter;->h:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/mycompany/app/quick/QuickAdapter;->k:Lcom/mycompany/app/view/MyManagerGrid;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/mycompany/app/quick/QuickAdapter;->l:Lcom/mycompany/app/quick/QuickAdapter$QuickListener;

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/mycompany/app/quick/QuickAdapter;->y:Z

    .line 16
    .line 17
    const/4 p2, -0x1

    .line 18
    iput p2, p0, Lcom/mycompany/app/quick/QuickAdapter;->z:I

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickAdapter;->R()V

    .line 21
    .line 22
    .line 23
    new-instance p2, Lcom/mycompany/app/main/MainListLoader;

    .line 24
    .line 25
    iget-object p3, p0, Lcom/mycompany/app/quick/QuickAdapter;->f:Landroid/content/Context;

    .line 26
    .line 27
    new-instance p4, Lcom/mycompany/app/quick/QuickAdapter$1;

    .line 28
    .line 29
    invoke-direct {p4, p0}, Lcom/mycompany/app/quick/QuickAdapter$1;-><init>(Lcom/mycompany/app/quick/QuickAdapter;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p2, p3, p1, p4}, Lcom/mycompany/app/main/MainListLoader;-><init>(Landroid/content/Context;ZLcom/mycompany/app/main/MainListLoader$ListLoadListener;)V

    .line 33
    .line 34
    .line 35
    iput-object p2, p0, Lcom/mycompany/app/quick/QuickAdapter;->r:Lcom/mycompany/app/main/MainListLoader;

    .line 36
    .line 37
    return-void
.end method

.method public static C()I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZtri;->i0:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZtwo;->y:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0

    .line 12
    :cond_1
    :goto_0
    sget v0, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 13
    .line 14
    mul-int/lit8 v0, v0, 0x2

    .line 15
    .line 16
    return v0
.end method

.method public static J(Landroid/view/View;)Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;
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
    instance-of v0, p0, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;

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
    check-cast p0, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;

    .line 18
    .line 19
    return-object p0
.end method

.method public static d0()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZtwo;->J:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZtwo;->K:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    return v0
.end method

.method public static v(Landroid/view/View;)I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/mycompany/app/quick/QuickAdapter;->J(Landroid/view/View;)Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0

    .line 17
    :cond_1
    :goto_0
    const/4 p0, -0x1

    .line 18
    return p0
.end method


# virtual methods
.method public final A()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->n:Ljava/util/List;

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
    move-result v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_3

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    iget v3, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->a:I

    .line 32
    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iget-boolean v2, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->j:Z

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    :goto_1
    return v1
.end method

.method public final B()Lcom/mycompany/app/quick/QuickAdapter$QuickItem;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->n:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_3

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
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    iget v2, v1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->a:I

    .line 31
    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    iget-boolean v2, v1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->j:Z

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    return-object v1

    .line 40
    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 41
    return-object v0
.end method

.method public final D()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->n:Ljava/util/List;

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
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->n:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget v1, p0, Lcom/mycompany/app/quick/QuickAdapter;->d:I

    .line 19
    .line 20
    sub-int/2addr v0, v1

    .line 21
    iget v1, p0, Lcom/mycompany/app/quick/QuickAdapter;->e:I

    .line 22
    .line 23
    sub-int/2addr v0, v1

    .line 24
    if-gez v0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return v0

    .line 28
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 29
    return v0
.end method

.method public final E(I)Lcom/mycompany/app/quick/QuickAdapter$QuickItem;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->n:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ltz p1, :cond_0

    .line 10
    .line 11
    if-ge p1, v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_0
    sget-boolean v0, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 21
    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickAdapter;->L()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    const/4 v0, 0x3

    .line 31
    iget v2, p0, Lcom/mycompany/app/quick/QuickAdapter;->g:I

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    if-ne v2, v0, :cond_3

    .line 36
    .line 37
    :cond_1
    iget v2, p0, Lcom/mycompany/app/quick/QuickAdapter;->d:I

    .line 38
    .line 39
    iget v3, p0, Lcom/mycompany/app/quick/QuickAdapter;->e:I

    .line 40
    .line 41
    add-int/2addr v2, v3

    .line 42
    if-ne v1, v2, :cond_3

    .line 43
    .line 44
    if-ne p1, v1, :cond_2

    .line 45
    .line 46
    new-instance p1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 47
    .line 48
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 49
    .line 50
    .line 51
    iput v0, p1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->a:I

    .line 52
    .line 53
    return-object p1

    .line 54
    :cond_2
    const/4 v0, 0x1

    .line 55
    goto :goto_0

    .line 56
    :cond_3
    const/4 v0, 0x0

    .line 57
    :goto_0
    sub-int/2addr p1, v1

    .line 58
    sub-int/2addr p1, v0

    .line 59
    :cond_4
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->h:Z

    .line 60
    .line 61
    if-eqz v0, :cond_5

    .line 62
    .line 63
    invoke-static {}, Lcom/mycompany/app/quick/QuickAdapter;->d0()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_5

    .line 68
    .line 69
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->o:Ljava/util/List;

    .line 70
    .line 71
    if-eqz v0, :cond_5

    .line 72
    .line 73
    if-ltz p1, :cond_5

    .line 74
    .line 75
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-ge p1, v1, :cond_5

    .line 80
    .line 81
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 86
    .line 87
    return-object p1

    .line 88
    :cond_5
    const/4 p1, 0x0

    .line 89
    return-object p1
.end method

.method public final F(Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->t:Landroid/os/Handler;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->v:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->f:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->t3(Landroid/content/Context;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->v:Ljava/lang/String;

    .line 29
    .line 30
    :cond_2
    :try_start_0
    invoke-static {p1}, Lorg/jsoup/Jsoup;->connect(Ljava/lang/String;)Lorg/jsoup/Connection;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v0, p1}, Lorg/jsoup/Connection;->referrer(Ljava/lang/String;)Lorg/jsoup/Connection;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->v:Ljava/lang/String;

    .line 39
    .line 40
    invoke-interface {p1, v0}, Lorg/jsoup/Connection;->userAgent(Ljava/lang/String;)Lorg/jsoup/Connection;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-interface {p1}, Lorg/jsoup/Connection;->get()Lorg/jsoup/nodes/Document;

    .line 45
    .line 46
    .line 47
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    return-object p1

    .line 49
    :catch_0
    return-object v1
.end method

.method public final G(Ljava/lang/String;)Lcom/mycompany/app/quick/QuickAdapter$QuickItem;
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

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
    return-object v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->o:Ljava/util/List;

    .line 10
    .line 11
    if-eqz v0, :cond_4

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_4

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 35
    .line 36
    if-nez v2, :cond_3

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    iget-object v3, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    return-object v2

    .line 48
    :cond_4
    :goto_1
    return-object v1
.end method

.method public final H(I)Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->B:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    if-ltz p1, :cond_2

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-lt p1, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-boolean v1, p0, Lcom/mycompany/app/quick/QuickAdapter;->i:Z

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    add-int/lit8 v1, v1, -0x1

    .line 23
    .line 24
    sub-int p1, v1, p1

    .line 25
    .line 26
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;

    .line 31
    .line 32
    return-object p1

    .line 33
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 34
    return-object p1
.end method

.method public final I()I
    .locals 3

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZtri;->i0:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    iget v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->j:I

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickAdapter;->D()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    sget-boolean v0, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 18
    .line 19
    if-eqz v0, :cond_7

    .line 20
    .line 21
    iget v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->g:I

    .line 22
    .line 23
    if-nez v0, :cond_7

    .line 24
    .line 25
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZtri;->k0:Z

    .line 26
    .line 27
    if-eqz v0, :cond_7

    .line 28
    .line 29
    sget v0, Lcom/mycompany/app/main/MainApp;->A1:I

    .line 30
    .line 31
    iget v1, p0, Lcom/mycompany/app/quick/QuickAdapter;->j:I

    .line 32
    .line 33
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    return v0

    .line 38
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/quick/QuickAdapter;->l:Lcom/mycompany/app/quick/QuickAdapter$QuickListener;

    .line 39
    .line 40
    if-nez v1, :cond_3

    .line 41
    .line 42
    iget-object v1, p0, Lcom/mycompany/app/quick/QuickAdapter;->f:Landroid/content/Context;

    .line 43
    .line 44
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->N5(Landroid/content/Context;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    goto :goto_0

    .line 49
    :cond_3
    invoke-interface {v1}, Lcom/mycompany/app/quick/QuickAdapter$QuickListener;->b()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    :goto_0
    if-eqz v1, :cond_4

    .line 54
    .line 55
    sget v1, Lcom/mycompany/app/pref/PrefZtri;->m0:I

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_4
    sget v1, Lcom/mycompany/app/pref/PrefZtri;->l0:I

    .line 59
    .line 60
    :goto_1
    if-nez v1, :cond_5

    .line 61
    .line 62
    const/4 v1, 0x5

    .line 63
    :cond_5
    div-int v2, v0, v1

    .line 64
    .line 65
    rem-int/2addr v0, v1

    .line 66
    if-eqz v0, :cond_6

    .line 67
    .line 68
    add-int/lit8 v2, v2, 0x1

    .line 69
    .line 70
    :cond_6
    add-int/lit8 v2, v2, -0x1

    .line 71
    .line 72
    if-gtz v2, :cond_8

    .line 73
    .line 74
    :cond_7
    :goto_2
    const/4 v0, 0x0

    .line 75
    return v0

    .line 76
    :cond_8
    sget v0, Lcom/mycompany/app/main/MainApp;->A1:I

    .line 77
    .line 78
    mul-int/2addr v2, v0

    .line 79
    iget v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->j:I

    .line 80
    .line 81
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    return v0
.end method

.method public final K()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->n:Ljava/util/List;

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
    move-result v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    move v3, v1

    .line 18
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_3

    .line 23
    .line 24
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 29
    .line 30
    if-eqz v4, :cond_1

    .line 31
    .line 32
    iget v5, v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->a:I

    .line 33
    .line 34
    if-eqz v5, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    iget-boolean v4, v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->j:Z

    .line 38
    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    add-int/lit8 v3, v3, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iget v2, p0, Lcom/mycompany/app/quick/QuickAdapter;->d:I

    .line 49
    .line 50
    sub-int/2addr v0, v2

    .line 51
    iget v2, p0, Lcom/mycompany/app/quick/QuickAdapter;->e:I

    .line 52
    .line 53
    sub-int/2addr v0, v2

    .line 54
    if-gtz v0, :cond_4

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_4
    if-lt v3, v0, :cond_5

    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    return v0

    .line 61
    :cond_5
    :goto_1
    return v1
.end method

.method public final L()Z
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    iget v1, p0, Lcom/mycompany/app/quick/QuickAdapter;->g:I

    .line 3
    .line 4
    if-eq v1, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    if-ne v1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZtri;->i0:Z

    .line 11
    .line 12
    return v0

    .line 13
    :cond_1
    :goto_0
    sget v0, Lcom/mycompany/app/pref/PrefZtri;->j0:I

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne v0, v1, :cond_2

    .line 17
    .line 18
    return v1

    .line 19
    :cond_2
    const/4 v0, 0x0

    .line 20
    return v0
.end method

.method public final M()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickAdapter;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->E:I

    .line 6
    .line 7
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->r:Lcom/mycompany/app/main/MainListLoader;

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
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickAdapter;->r:Lcom/mycompany/app/main/MainListLoader;

    .line 16
    .line 17
    :cond_0
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickAdapter;->f:Landroid/content/Context;

    .line 18
    .line 19
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickAdapter;->k:Lcom/mycompany/app/view/MyManagerGrid;

    .line 20
    .line 21
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickAdapter;->l:Lcom/mycompany/app/quick/QuickAdapter$QuickListener;

    .line 22
    .line 23
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickAdapter;->m:Lcom/mycompany/app/web/WebTabGridItem$TabGridListener;

    .line 24
    .line 25
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickAdapter;->n:Ljava/util/List;

    .line 26
    .line 27
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickAdapter;->o:Ljava/util/List;

    .line 28
    .line 29
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickAdapter;->s:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->t:Landroid/os/Handler;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->R6(Landroid/os/Handler;)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickAdapter;->t:Landroid/os/Handler;

    .line 37
    .line 38
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickAdapter;->v:Ljava/lang/String;

    .line 39
    .line 40
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickAdapter;->x:Ljava/util/concurrent/ExecutorService;

    .line 41
    .line 42
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickAdapter;->B:Ljava/util/List;

    .line 43
    .line 44
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickAdapter;->C:Lcom/mycompany/app/quick/QuickAdapter$QuickRcntListener;

    .line 45
    .line 46
    return-void
.end method

.method public final N(II)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->n:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    iget v2, p0, Lcom/mycompany/app/quick/QuickAdapter;->d:I

    .line 8
    .line 9
    if-lt p1, v2, :cond_8

    .line 10
    .line 11
    if-ge p2, v2, :cond_1

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget v2, p0, Lcom/mycompany/app/quick/QuickAdapter;->e:I

    .line 19
    .line 20
    sub-int/2addr v0, v2

    .line 21
    if-ge p1, v0, :cond_8

    .line 22
    .line 23
    if-lt p2, v0, :cond_2

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->u:Z

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_3
    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->u:Z

    .line 33
    .line 34
    iget-object v2, p0, Lcom/mycompany/app/quick/QuickAdapter;->n:Ljava/util/List;

    .line 35
    .line 36
    if-nez v2, :cond_4

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_4
    invoke-virtual {p0, p1}, Lcom/mycompany/app/quick/QuickAdapter;->E(I)Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    if-eqz v3, :cond_5

    .line 44
    .line 45
    iput p2, v3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->i:I

    .line 46
    .line 47
    iput-boolean v0, v3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->k:Z

    .line 48
    .line 49
    :cond_5
    invoke-virtual {p0, p2}, Lcom/mycompany/app/quick/QuickAdapter;->E(I)Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    if-eqz v3, :cond_6

    .line 54
    .line 55
    iput p1, v3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->i:I

    .line 56
    .line 57
    iput-boolean v0, v3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->k:Z

    .line 58
    .line 59
    :cond_6
    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    check-cast v3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 64
    .line 65
    if-nez v3, :cond_7

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_7
    invoke-interface {v2, p2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->j(II)V

    .line 72
    .line 73
    .line 74
    iput-boolean v1, p0, Lcom/mycompany/app/quick/QuickAdapter;->u:Z

    .line 75
    .line 76
    return v0

    .line 77
    :cond_8
    :goto_1
    return v1
.end method

.method public final O(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->x:Ljava/util/concurrent/ExecutorService;

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
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->f:Landroid/content/Context;

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
    iput-object v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->x:Ljava/util/concurrent/ExecutorService;

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

.method public final P(Landroid/view/View;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->f:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto/16 :goto_2

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->n:Ljava/util/List;

    .line 9
    .line 10
    if-eqz v0, :cond_a

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    goto/16 :goto_2

    .line 19
    .line 20
    :cond_1
    iget-boolean v2, p0, Lcom/mycompany/app/quick/QuickAdapter;->u:Z

    .line 21
    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    goto/16 :goto_2

    .line 25
    .line 26
    :cond_2
    const/4 v2, 0x1

    .line 27
    iput-boolean v2, p0, Lcom/mycompany/app/quick/QuickAdapter;->u:Z

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    move v3, v1

    .line 34
    move v4, v3

    .line 35
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_8

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    check-cast v5, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 46
    .line 47
    if-eqz v5, :cond_3

    .line 48
    .line 49
    iget v6, v5, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->a:I

    .line 50
    .line 51
    if-eqz v6, :cond_4

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_4
    iget-boolean v6, v5, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->k:Z

    .line 55
    .line 56
    if-nez v6, :cond_5

    .line 57
    .line 58
    iget v6, v5, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->i:I

    .line 59
    .line 60
    if-eq v6, v4, :cond_7

    .line 61
    .line 62
    :cond_5
    iget-object v6, v5, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-nez v6, :cond_7

    .line 69
    .line 70
    iput v4, v5, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->i:I

    .line 71
    .line 72
    new-instance v3, Landroid/content/ContentValues;

    .line 73
    .line 74
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 75
    .line 76
    .line 77
    iget v6, v5, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->i:I

    .line 78
    .line 79
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    const-string v7, "_order"

    .line 84
    .line 85
    invoke-virtual {v3, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 86
    .line 87
    .line 88
    sget-boolean v6, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 89
    .line 90
    if-eqz v6, :cond_6

    .line 91
    .line 92
    const-string v6, "1"

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_6
    const-string v6, "0"

    .line 96
    .line 97
    :goto_1
    iget-object v7, v5, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 98
    .line 99
    filled-new-array {v6, v7}, [Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    iget-object v7, p0, Lcom/mycompany/app/quick/QuickAdapter;->f:Landroid/content/Context;

    .line 104
    .line 105
    invoke-static {v7}, Lcom/mycompany/app/db/book/DbBookQuick;->i(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookQuick;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    const-string v8, "DbBookQuick_table"

    .line 114
    .line 115
    const-string v9, "_secret=? AND _path=?"

    .line 116
    .line 117
    invoke-static {v7, v8, v3, v9, v6}, Lcom/mycompany/app/db/DbUtil;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    move v3, v2

    .line 121
    :cond_7
    iput-boolean v1, v5, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->k:Z

    .line 122
    .line 123
    add-int/lit8 v4, v4, 0x1

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_8
    if-eqz v3, :cond_9

    .line 127
    .line 128
    if-eqz p1, :cond_9

    .line 129
    .line 130
    new-instance v0, Lcom/mycompany/app/quick/QuickAdapter$17;

    .line 131
    .line 132
    invoke-direct {v0, p0}, Lcom/mycompany/app/quick/QuickAdapter$17;-><init>(Lcom/mycompany/app/quick/QuickAdapter;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 136
    .line 137
    .line 138
    :cond_9
    iput-boolean v1, p0, Lcom/mycompany/app/quick/QuickAdapter;->u:Z

    .line 139
    .line 140
    return v3

    .line 141
    :cond_a
    :goto_2
    return v1
.end method

.method public final Q(ZZ)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/mycompany/app/quick/QuickAdapter;->n:Ljava/util/List;

    .line 2
    .line 3
    if-eqz p2, :cond_5

    .line 4
    .line 5
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

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
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget v1, v0, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->a:I

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    iput-boolean p1, v0, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->j:Z

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdapter;->k:Lcom/mycompany/app/view/MyManagerGrid;

    .line 39
    .line 40
    if-nez p1, :cond_4

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->U0()I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->V0()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    const/4 v0, 0x1

    .line 52
    add-int/2addr p1, v0

    .line 53
    :goto_1
    if-ge p2, p1, :cond_5

    .line 54
    .line 55
    invoke-virtual {p0, p2, v0}, Lcom/mycompany/app/quick/QuickAdapter;->y(IZ)V

    .line 56
    .line 57
    .line 58
    add-int/lit8 p2, p2, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_5
    :goto_2
    return-void
.end method

.method public final R()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lcom/mycompany/app/quick/QuickAdapter;->g:I

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v1, v2, :cond_0

    .line 6
    .line 7
    iput v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->d:I

    .line 8
    .line 9
    iput v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->e:I

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v3, 0x2

    .line 13
    if-ne v1, v3, :cond_2

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/mycompany/app/quick/QuickAdapter;->A:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iput v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->d:I

    .line 20
    .line 21
    iput v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->e:I

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iput v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->d:I

    .line 25
    .line 26
    iput v2, p0, Lcom/mycompany/app/quick/QuickAdapter;->e:I

    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickAdapter;->L()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_3

    .line 34
    .line 35
    iput v2, p0, Lcom/mycompany/app/quick/QuickAdapter;->d:I

    .line 36
    .line 37
    iput v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->e:I

    .line 38
    .line 39
    return-void

    .line 40
    :cond_3
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->h:Z

    .line 41
    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    invoke-static {}, Lcom/mycompany/app/quick/QuickAdapter;->d0()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    iput v2, p0, Lcom/mycompany/app/quick/QuickAdapter;->d:I

    .line 51
    .line 52
    iput v2, p0, Lcom/mycompany/app/quick/QuickAdapter;->e:I

    .line 53
    .line 54
    return-void

    .line 55
    :cond_4
    iput v2, p0, Lcom/mycompany/app/quick/QuickAdapter;->d:I

    .line 56
    .line 57
    iput v3, p0, Lcom/mycompany/app/quick/QuickAdapter;->e:I

    .line 58
    .line 59
    return-void
.end method

.method public final S(IZ)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->q:Z

    .line 2
    .line 3
    if-ne v0, p2, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iput-boolean p2, p0, Lcom/mycompany/app/quick/QuickAdapter;->q:Z

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p2, :cond_4

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/mycompany/app/quick/QuickAdapter;->E(I)Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

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
    iget v1, p1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->a:I

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    iput-boolean p2, p1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->j:Z

    .line 23
    .line 24
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdapter;->k:Lcom/mycompany/app/view/MyManagerGrid;

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
    invoke-virtual {p0, v1, v0}, Lcom/mycompany/app/quick/QuickAdapter;->y(IZ)V

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
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdapter;->n:Ljava/util/List;

    .line 48
    .line 49
    if-eqz p1, :cond_7

    .line 50
    .line 51
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-nez p2, :cond_7

    .line 56
    .line 57
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    if-eqz p2, :cond_7

    .line 66
    .line 67
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    check-cast p2, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 72
    .line 73
    if-eqz p2, :cond_5

    .line 74
    .line 75
    iget v1, p2, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->a:I

    .line 76
    .line 77
    if-eqz v1, :cond_6

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_6
    iput-boolean v0, p2, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->j:Z

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public final T(Ljava/util/List;)V
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_4

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x3

    .line 10
    if-eq v2, v3, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_3

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    iget v2, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->a:I

    .line 33
    .line 34
    const/4 v3, 0x6

    .line 35
    if-ne v2, v3, :cond_1

    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lcom/mycompany/app/quick/QuickAdapter;->y:Z

    .line 39
    .line 40
    return-void

    .line 41
    :cond_3
    iput-boolean v1, p0, Lcom/mycompany/app/quick/QuickAdapter;->y:Z

    .line 42
    .line 43
    iput v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->z:I

    .line 44
    .line 45
    return-void

    .line 46
    :cond_4
    :goto_1
    iput-boolean v1, p0, Lcom/mycompany/app/quick/QuickAdapter;->y:Z

    .line 47
    .line 48
    iput v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->z:I

    .line 49
    .line 50
    return-void
.end method

.method public final U(IZ)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->g:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iput v1, p0, Lcom/mycompany/app/quick/QuickAdapter;->j:I

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const/4 v2, 0x2

    .line 10
    if-ne v0, v2, :cond_1

    .line 11
    .line 12
    iput v1, p0, Lcom/mycompany/app/quick/QuickAdapter;->j:I

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->h:Z

    .line 16
    .line 17
    if-nez v0, :cond_3

    .line 18
    .line 19
    if-eqz p2, :cond_2

    .line 20
    .line 21
    sget p2, Lcom/mycompany/app/main/MainApp;->A1:I

    .line 22
    .line 23
    sub-int/2addr p1, p2

    .line 24
    sget p2, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 25
    .line 26
    sub-int/2addr p1, p2

    .line 27
    iput p1, p0, Lcom/mycompany/app/quick/QuickAdapter;->j:I

    .line 28
    .line 29
    if-ge p1, v1, :cond_6

    .line 30
    .line 31
    iput v1, p0, Lcom/mycompany/app/quick/QuickAdapter;->j:I

    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    sget p1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 35
    .line 36
    iput p1, p0, Lcom/mycompany/app/quick/QuickAdapter;->j:I

    .line 37
    .line 38
    return-void

    .line 39
    :cond_3
    if-nez p2, :cond_4

    .line 40
    .line 41
    iput v1, p0, Lcom/mycompany/app/quick/QuickAdapter;->j:I

    .line 42
    .line 43
    return-void

    .line 44
    :cond_4
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickAdapter;->L()Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-eqz p2, :cond_5

    .line 49
    .line 50
    sget p2, Lcom/mycompany/app/main/MainApp;->A1:I

    .line 51
    .line 52
    sub-int/2addr p1, p2

    .line 53
    iput p1, p0, Lcom/mycompany/app/quick/QuickAdapter;->j:I

    .line 54
    .line 55
    if-ge p1, v1, :cond_6

    .line 56
    .line 57
    iput v1, p0, Lcom/mycompany/app/quick/QuickAdapter;->j:I

    .line 58
    .line 59
    return-void

    .line 60
    :cond_5
    invoke-static {}, Lcom/mycompany/app/quick/QuickAdapter;->d0()Z

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    if-eqz p2, :cond_7

    .line 65
    .line 66
    iput p1, p0, Lcom/mycompany/app/quick/QuickAdapter;->j:I

    .line 67
    .line 68
    if-ge p1, v1, :cond_6

    .line 69
    .line 70
    iput v1, p0, Lcom/mycompany/app/quick/QuickAdapter;->j:I

    .line 71
    .line 72
    :cond_6
    return-void

    .line 73
    :cond_7
    iput v1, p0, Lcom/mycompany/app/quick/QuickAdapter;->j:I

    .line 74
    .line 75
    return-void
.end method

.method public final V()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickAdapter;->L()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    iget v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->g:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->n:Ljava/util/List;

    .line 14
    .line 15
    if-eqz v0, :cond_4

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->n:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget v2, p0, Lcom/mycompany/app/quick/QuickAdapter;->e:I

    .line 31
    .line 32
    sub-int/2addr v0, v2

    .line 33
    invoke-virtual {p0, v0}, Lcom/mycompany/app/quick/QuickAdapter;->E(I)Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    sget-boolean v2, Lcom/mycompany/app/pref/PrefZtri;->k0:Z

    .line 41
    .line 42
    const/4 v3, 0x2

    .line 43
    if-eqz v2, :cond_3

    .line 44
    .line 45
    iget v2, v0, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->a:I

    .line 46
    .line 47
    if-ne v2, v3, :cond_4

    .line 48
    .line 49
    iput v1, v0, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->a:I

    .line 50
    .line 51
    return-void

    .line 52
    :cond_3
    iget v2, v0, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->a:I

    .line 53
    .line 54
    if-ne v2, v1, :cond_4

    .line 55
    .line 56
    iput v3, v0, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->a:I

    .line 57
    .line 58
    :cond_4
    :goto_0
    return-void
.end method

.method public final W(Lcom/mycompany/app/main/MainItem$ViewItem;Lcom/mycompany/app/view/MyRoundImage;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->f:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->s:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    iput-boolean v1, v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->a:Z

    .line 17
    .line 18
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->a()V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lcom/nostra13/universalimageloader/core/display/NoneBitmapDisplayer;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v1, v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->f:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    .line 29
    .line 30
    new-instance v1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 31
    .line 32
    invoke-direct {v1, v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;-><init>(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickAdapter;->s:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 36
    .line 37
    :cond_1
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/mycompany/app/quick/QuickAdapter;->s:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 42
    .line 43
    new-instance v2, Lcom/mycompany/app/quick/QuickAdapter$20;

    .line 44
    .line 45
    invoke-direct {v2, p0}, Lcom/mycompany/app/quick/QuickAdapter$20;-><init>(Lcom/mycompany/app/quick/QuickAdapter;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->c(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final X(Lcom/mycompany/app/view/MyRoundImage;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    mul-int/lit8 v1, v1, 0x2

    .line 19
    .line 20
    if-le v0, v1, :cond_1

    .line 21
    .line 22
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    invoke-static {}, Lcom/mycompany/app/quick/QuickView;->s()Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-nez p2, :cond_3

    .line 42
    .line 43
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->google_news:I

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    iget-boolean p2, p0, Lcom/mycompany/app/quick/QuickAdapter;->h:Z

    .line 47
    .line 48
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->k5(Z)Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-eqz p2, :cond_4

    .line 53
    .line 54
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->outline_newspaper_dark_24:I

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_4
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->outline_newspaper_black_24:I

    .line 58
    .line 59
    :goto_1
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyRoundImage;->setImageResource(I)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final Y(Ljava/util/List;Z)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->A:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/quick/QuickAdapter;->r:Lcom/mycompany/app/main/MainListLoader;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iput-object v2, v1, Lcom/mycompany/app/main/MainListLoader;->c:Ljava/util/ArrayList;

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickAdapter;->R()V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    iget v3, p0, Lcom/mycompany/app/quick/QuickAdapter;->g:I

    .line 16
    .line 17
    if-eq v3, v1, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    if-eq v3, v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickAdapter;->L()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    new-instance p1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    new-instance v1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    const/16 v3, 0x9

    .line 39
    .line 40
    iput v3, v1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->a:I

    .line 41
    .line 42
    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    iput-object v2, p0, Lcom/mycompany/app/quick/QuickAdapter;->B:Ljava/util/List;

    .line 46
    .line 47
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickAdapter;->n:Ljava/util/List;

    .line 48
    .line 49
    if-eqz p2, :cond_3

    .line 50
    .line 51
    iget-boolean p1, p0, Lcom/mycompany/app/quick/QuickAdapter;->h:Z

    .line 52
    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    invoke-static {}, Lcom/mycompany/app/quick/QuickAdapter;->d0()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_3

    .line 60
    .line 61
    sget-boolean p1, Lcom/mycompany/app/pref/PrefZtwo;->J:Z

    .line 62
    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdapter;->f:Landroid/content/Context;

    .line 66
    .line 67
    invoke-static {p1}, Lcom/mycompany/app/data/DataNews;->a(Landroid/content/Context;)Lcom/mycompany/app/data/DataNews;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iget-object p1, p1, Lcom/mycompany/app/data/DataNews;->a:Ljava/util/List;

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    new-instance p2, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 80
    .line 81
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 82
    .line 83
    .line 84
    const/4 v1, 0x4

    .line 85
    iput v1, p2, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->a:I

    .line 86
    .line 87
    iput v0, p2, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->o:I

    .line 88
    .line 89
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/quick/QuickAdapter;->a0(Ljava/util/List;Z)V

    .line 93
    .line 94
    .line 95
    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public final Z(Lcom/mycompany/app/quick/QuickAdapter$QuickItem;Lcom/mycompany/app/view/MyRoundImage;I)V
    .locals 4

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    goto :goto_3

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->f:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_3

    .line 9
    :cond_1
    iget-object v0, p1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->p:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_9

    .line 17
    .line 18
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->f:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/mycompany/app/data/DataNews;->a(Landroid/content/Context;)Lcom/mycompany/app/data/DataNews;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget v2, p1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->o:I

    .line 25
    .line 26
    if-ltz v2, :cond_3

    .line 27
    .line 28
    iget-object v3, v0, Lcom/mycompany/app/data/DataNews;->a:Ljava/util/List;

    .line 29
    .line 30
    if-eqz v3, :cond_4

    .line 31
    .line 32
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-lt v2, v3, :cond_2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    iget-object v0, v0, Lcom/mycompany/app/data/DataNews;->a:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    :cond_4
    :goto_0
    move-object v0, v1

    .line 52
    :goto_1
    if-nez v0, :cond_5

    .line 53
    .line 54
    move-object v0, v1

    .line 55
    goto :goto_2

    .line 56
    :cond_5
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->p:Ljava/lang/String;

    .line 57
    .line 58
    :goto_2
    iput-object v0, p1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->p:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_9

    .line 65
    .line 66
    invoke-virtual {p0, p2, v1}, Lcom/mycompany/app/quick/QuickAdapter;->X(Lcom/mycompany/app/view/MyRoundImage;Landroid/graphics/Bitmap;)V

    .line 67
    .line 68
    .line 69
    iget-object p2, p1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    if-eqz p2, :cond_6

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_6
    iget-object p2, p1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 79
    .line 80
    const-string v0, "https://news.google.com/rss/articles/"

    .line 81
    .line 82
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    if-eqz p2, :cond_7

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_7
    iget-boolean p2, p1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->j:Z

    .line 90
    .line 91
    if-eqz p2, :cond_8

    .line 92
    .line 93
    :goto_3
    return-void

    .line 94
    :cond_8
    const/4 p2, 0x1

    .line 95
    iput-boolean p2, p1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->j:Z

    .line 96
    .line 97
    iget-object p1, p1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 98
    .line 99
    new-instance p2, Lcom/mycompany/app/quick/QuickAdapter$21;

    .line 100
    .line 101
    invoke-direct {p2, p0, p1, p3}, Lcom/mycompany/app/quick/QuickAdapter$21;-><init>(Lcom/mycompany/app/quick/QuickAdapter;Ljava/lang/String;I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, p2}, Lcom/mycompany/app/quick/QuickAdapter;->O(Ljava/lang/Runnable;)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_9
    iget-object v0, p1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->p:Ljava/lang/String;

    .line 109
    .line 110
    const/4 v2, 0x2

    .line 111
    invoke-static {v2, v0}, Lcom/nostra13/universalimageloader/utils/MemoryCacheUtils;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->g()Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-virtual {v3, v0}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    if-eqz v3, :cond_a

    .line 132
    .line 133
    invoke-virtual {p0, p2, v0}, Lcom/mycompany/app/quick/QuickAdapter;->X(Lcom/mycompany/app/view/MyRoundImage;Landroid/graphics/Bitmap;)V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :cond_a
    invoke-virtual {p0, p2, v1}, Lcom/mycompany/app/quick/QuickAdapter;->X(Lcom/mycompany/app/view/MyRoundImage;Landroid/graphics/Bitmap;)V

    .line 138
    .line 139
    .line 140
    new-instance v0, Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 141
    .line 142
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 143
    .line 144
    .line 145
    const/4 v1, 0x7

    .line 146
    iput v1, v0, Lcom/mycompany/app/main/MainItem$ViewItem;->a:I

    .line 147
    .line 148
    iget-object v1, p1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->p:Ljava/lang/String;

    .line 149
    .line 150
    iput-object v1, v0, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 151
    .line 152
    iput p3, v0, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 153
    .line 154
    iput v2, v0, Lcom/mycompany/app/main/MainItem$ViewItem;->t:I

    .line 155
    .line 156
    iget-object p1, p1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 157
    .line 158
    iput-object p1, v0, Lcom/mycompany/app/main/MainItem$ViewItem;->v:Ljava/lang/String;

    .line 159
    .line 160
    invoke-virtual {p0, v0, p2}, Lcom/mycompany/app/quick/QuickAdapter;->W(Lcom/mycompany/app/main/MainItem$ViewItem;Lcom/mycompany/app/view/MyRoundImage;)V

    .line 161
    .line 162
    .line 163
    return-void
.end method

.method public final a0(Ljava/util/List;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->f:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickAdapter;->o:Ljava/util/List;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/mycompany/app/quick/QuickAdapter;->T(Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdapter;->t:Landroid/os/Handler;

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    new-instance p1, Landroid/os/Handler;

    .line 24
    .line 25
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickAdapter;->t:Landroid/os/Handler;

    .line 33
    .line 34
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdapter;->n:Ljava/util/List;

    .line 35
    .line 36
    if-eqz p1, :cond_3

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_3

    .line 43
    .line 44
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdapter;->n:Ljava/util/List;

    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    const/4 v1, 0x1

    .line 51
    sub-int/2addr v0, v1

    .line 52
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 57
    .line 58
    if-eqz p1, :cond_3

    .line 59
    .line 60
    invoke-static {}, Lcom/mycompany/app/quick/QuickAdapter;->d0()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    const/16 v2, 0x8

    .line 65
    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    iget p1, p1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->a:I

    .line 69
    .line 70
    if-ne p1, v2, :cond_3

    .line 71
    .line 72
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdapter;->n:Ljava/util/List;

    .line 73
    .line 74
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    sub-int/2addr p2, v1

    .line 79
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    :goto_0
    move p2, v1

    .line 83
    goto :goto_1

    .line 84
    :cond_2
    iget p1, p1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->a:I

    .line 85
    .line 86
    if-eq p1, v2, :cond_3

    .line 87
    .line 88
    new-instance p1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 89
    .line 90
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 91
    .line 92
    .line 93
    iput v2, p1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->a:I

    .line 94
    .line 95
    iget-object p2, p0, Lcom/mycompany/app/quick/QuickAdapter;->n:Ljava/util/List;

    .line 96
    .line 97
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickAdapter;->f0()V

    .line 104
    .line 105
    .line 106
    :cond_4
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdapter;->o:Ljava/util/List;

    .line 107
    .line 108
    invoke-virtual {p0, p1}, Lcom/mycompany/app/quick/QuickAdapter;->c0(Ljava/util/List;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public final b0(Lcom/mycompany/app/view/MyRoundFrame;Landroid/widget/TextView;Lcom/mycompany/app/view/MyProgressBar;)V
    .locals 8

    .line 1
    if-eqz p1, :cond_9

    .line 2
    .line 3
    if-eqz p2, :cond_9

    .line 4
    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    goto/16 :goto_4

    .line 8
    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->p:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    sget v0, Lnet/kaki87/soul2/testing/R$string;->news_loading:I

    .line 14
    .line 15
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    sget v0, Lnet/kaki87/soul2/testing/R$string;->no_news:I

    .line 20
    .line 21
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 22
    .line 23
    .line 24
    :goto_0
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->h:Z

    .line 25
    .line 26
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->C5(Z)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const v1, -0xdededf

    .line 31
    .line 32
    .line 33
    const v2, -0x37000001

    .line 34
    .line 35
    .line 36
    const v3, -0x50506

    .line 37
    .line 38
    .line 39
    const v4, -0x70708

    .line 40
    .line 41
    .line 42
    const v5, -0xc6b655

    .line 43
    .line 44
    .line 45
    const/high16 v6, -0x1000000

    .line 46
    .line 47
    const/4 v7, 0x0

    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 51
    .line 52
    if-nez v0, :cond_3

    .line 53
    .line 54
    sget-boolean v0, Lcom/mycompany/app/pref/PrefWeb;->U:Z

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    const/4 v0, -0x1

    .line 60
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyRoundFrame;->setNewsNotiColor(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p3, v5, v4}, Lcom/mycompany/app/view/MyProgressBar;->g(II)V

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_3
    :goto_1
    invoke-virtual {p1, v6}, Lcom/mycompany/app/view/MyRoundFrame;->setNewsNotiColor(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p3, v2, v1}, Lcom/mycompany/app/view/MyProgressBar;->g(II)V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_4
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 81
    .line 82
    if-eqz v0, :cond_5

    .line 83
    .line 84
    invoke-virtual {p1, v7}, Lcom/mycompany/app/view/MyRoundFrame;->setNewsNotiColor(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p3, v2, v1}, Lcom/mycompany/app/view/MyProgressBar;->g(II)V

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_5
    invoke-virtual {p1, v7}, Lcom/mycompany/app/view/MyRoundFrame;->setNewsNotiColor(I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p3, v5, v4}, Lcom/mycompany/app/view/MyProgressBar;->g(II)V

    .line 101
    .line 102
    .line 103
    :goto_2
    invoke-static {}, Lcom/mycompany/app/quick/QuickView;->s()Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    const/16 p2, 0x8

    .line 108
    .line 109
    if-eqz p1, :cond_6

    .line 110
    .line 111
    invoke-virtual {p3, p2}, Lcom/mycompany/app/view/MyProgressBar;->setVisibility(I)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_6
    iget-boolean p1, p0, Lcom/mycompany/app/quick/QuickAdapter;->p:Z

    .line 116
    .line 117
    if-eqz p1, :cond_8

    .line 118
    .line 119
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdapter;->l:Lcom/mycompany/app/quick/QuickAdapter$QuickListener;

    .line 120
    .line 121
    if-nez p1, :cond_7

    .line 122
    .line 123
    move p1, v7

    .line 124
    goto :goto_3

    .line 125
    :cond_7
    invoke-interface {p1}, Lcom/mycompany/app/quick/QuickAdapter$QuickListener;->h()I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    :goto_3
    int-to-float p1, p1

    .line 130
    invoke-virtual {p3, p1}, Lcom/mycompany/app/view/MyProgressBar;->setProgress(F)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p3, v7}, Lcom/mycompany/app/view/MyProgressBar;->setVisibility(I)V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :cond_8
    invoke-virtual {p3, p2}, Lcom/mycompany/app/view/MyProgressBar;->setVisibility(I)V

    .line 138
    .line 139
    .line 140
    :cond_9
    :goto_4
    return-void
.end method

.method public final c0(Ljava/util/List;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->l:Lcom/mycompany/app/quick/QuickAdapter$QuickListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_2

    .line 6
    .line 7
    :cond_0
    invoke-interface {v0}, Lcom/mycompany/app/quick/QuickAdapter$QuickListener;->d()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/mycompany/app/quick/QuickAdapter;->w:Z

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->w:Z

    .line 19
    .line 20
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZtwo;->O:Z

    .line 21
    .line 22
    if-nez v1, :cond_2

    .line 23
    .line 24
    goto/16 :goto_2

    .line 25
    .line 26
    :cond_2
    iget-boolean v1, p0, Lcom/mycompany/app/quick/QuickAdapter;->y:Z

    .line 27
    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_3
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZtwo;->J:Z

    .line 32
    .line 33
    if-nez v1, :cond_4

    .line 34
    .line 35
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZtwo;->K:Z

    .line 36
    .line 37
    if-eqz v1, :cond_4

    .line 38
    .line 39
    return-void

    .line 40
    :cond_4
    if-eqz p1, :cond_b

    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_5

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_5
    iget-object v1, p0, Lcom/mycompany/app/quick/QuickAdapter;->f:Landroid/content/Context;

    .line 50
    .line 51
    invoke-static {v1}, Lcom/mycompany/app/data/DataNews;->a(Landroid/content/Context;)Lcom/mycompany/app/data/DataNews;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget-object v1, v1, Lcom/mycompany/app/data/DataNews;->b:Ljava/lang/String;

    .line 56
    .line 57
    sget-object v2, Lcom/mycompany/app/pref/PrefZtwo;->P:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_7

    .line 64
    .line 65
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_a

    .line 74
    .line 75
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 80
    .line 81
    if-nez v2, :cond_6

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_6
    const/4 v3, 0x0

    .line 85
    iput-object v3, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->v:Ljava/lang/String;

    .line 86
    .line 87
    iput-object v3, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->w:Ljava/lang/String;

    .line 88
    .line 89
    iput v0, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->x:I

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_b

    .line 101
    .line 102
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    check-cast v1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 107
    .line 108
    if-nez v1, :cond_8

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_8
    iget v2, v1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->a:I

    .line 112
    .line 113
    const/4 v3, 0x7

    .line 114
    if-eq v2, v3, :cond_9

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_9
    iget v0, v1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->x:I

    .line 118
    .line 119
    if-nez v0, :cond_b

    .line 120
    .line 121
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->l:Lcom/mycompany/app/quick/QuickAdapter$QuickListener;

    .line 122
    .line 123
    if-eqz v0, :cond_b

    .line 124
    .line 125
    invoke-interface {v0, p1}, Lcom/mycompany/app/quick/QuickAdapter$QuickListener;->n(Ljava/util/List;)V

    .line 126
    .line 127
    .line 128
    :cond_b
    :goto_2
    return-void
.end method

.method public final d()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->E:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->A:Z

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->B:Ljava/util/List;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    return v0

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->n:Ljava/util/List;

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    :cond_3
    sget-boolean v0, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 30
    .line 31
    if-eqz v0, :cond_5

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickAdapter;->L()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_5

    .line 38
    .line 39
    iget v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->g:I

    .line 40
    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    const/4 v2, 0x3

    .line 44
    if-ne v0, v2, :cond_5

    .line 45
    .line 46
    :cond_4
    iget v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->d:I

    .line 47
    .line 48
    iget v2, p0, Lcom/mycompany/app/quick/QuickAdapter;->e:I

    .line 49
    .line 50
    add-int/2addr v0, v2

    .line 51
    if-ne v1, v0, :cond_5

    .line 52
    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    :cond_5
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->h:Z

    .line 56
    .line 57
    if-eqz v0, :cond_6

    .line 58
    .line 59
    invoke-static {}, Lcom/mycompany/app/quick/QuickAdapter;->d0()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_6

    .line 64
    .line 65
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->o:Ljava/util/List;

    .line 66
    .line 67
    if-eqz v0, :cond_6

    .line 68
    .line 69
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    add-int/2addr v0, v1

    .line 74
    return v0

    .line 75
    :cond_6
    return v1
.end method

.method public final e0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_4

    .line 6
    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->n:Ljava/util/List;

    .line 15
    .line 16
    if-eqz v0, :cond_4

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 40
    .line 41
    iget-object v2, v1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    const-string p1, "\\p{Punct}"

    .line 50
    .line 51
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iput-object p2, v1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 56
    .line 57
    iput-object p3, v1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->f:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {p3, p1}, Lcom/mycompany/app/main/MainUtil;->y2(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iput-object p1, v1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->g:Ljava/lang/String;

    .line 64
    .line 65
    iput p4, v1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->h:I

    .line 66
    .line 67
    iput-object p5, v1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->l:Ljava/util/List;

    .line 68
    .line 69
    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 70
    .line 71
    .line 72
    :cond_4
    :goto_0
    return-void
.end method

.method public final f(I)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->A:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mycompany/app/quick/QuickAdapter;->E(I)Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    sget-boolean p1, Lcom/mycompany/app/pref/PrefPdf;->G:Z

    .line 14
    .line 15
    return p1

    .line 16
    :cond_1
    iget p1, p1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->a:I

    .line 17
    .line 18
    const/16 v0, 0x9

    .line 19
    .line 20
    if-ne p1, v0, :cond_2

    .line 21
    .line 22
    iget p1, p0, Lcom/mycompany/app/quick/QuickAdapter;->j:I

    .line 23
    .line 24
    add-int/2addr p1, v0

    .line 25
    return p1

    .line 26
    :cond_2
    const/4 v0, 0x2

    .line 27
    if-ne p1, v0, :cond_3

    .line 28
    .line 29
    return v0

    .line 30
    :cond_3
    const/4 v0, 0x3

    .line 31
    if-ne p1, v0, :cond_4

    .line 32
    .line 33
    return v0

    .line 34
    :cond_4
    const/4 v0, 0x4

    .line 35
    if-ne p1, v0, :cond_5

    .line 36
    .line 37
    return v0

    .line 38
    :cond_5
    const/4 v0, 0x5

    .line 39
    if-ne p1, v0, :cond_6

    .line 40
    .line 41
    return v0

    .line 42
    :cond_6
    const/4 v0, 0x6

    .line 43
    if-ne p1, v0, :cond_7

    .line 44
    .line 45
    return v0

    .line 46
    :cond_7
    const/4 v0, 0x7

    .line 47
    if-ne p1, v0, :cond_8

    .line 48
    .line 49
    return v0

    .line 50
    :cond_8
    const/16 v0, 0x8

    .line 51
    .line 52
    if-ne p1, v0, :cond_9

    .line 53
    .line 54
    return v0

    .line 55
    :cond_9
    sget-boolean p1, Lcom/mycompany/app/pref/PrefPdf;->G:Z

    .line 56
    .line 57
    return p1
.end method

.method public final f0()V
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickAdapter;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/mycompany/app/quick/QuickAdapter;->o:Ljava/util/List;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    move v1, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    :goto_0
    sub-int v3, v0, v1

    .line 17
    .line 18
    add-int/lit8 v4, v3, -0x1

    .line 19
    .line 20
    if-gtz v4, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->k(II)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    :goto_1
    if-ltz v4, :cond_4

    .line 27
    .line 28
    invoke-virtual {p0, v4}, Lcom/mycompany/app/quick/QuickAdapter;->E(I)Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_2
    iget v0, v0, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->a:I

    .line 36
    .line 37
    const/4 v5, 0x7

    .line 38
    if-ne v0, v5, :cond_3

    .line 39
    .line 40
    goto :goto_3

    .line 41
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    :goto_2
    add-int/lit8 v4, v4, -0x1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_4
    :goto_3
    sub-int/2addr v3, v2

    .line 47
    add-int/2addr v1, v2

    .line 48
    invoke-virtual {p0, v3, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->k(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :catch_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final n(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    check-cast v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;

    .line 8
    .line 9
    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 10
    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    goto/16 :goto_1d

    .line 14
    .line 15
    :cond_0
    iget-boolean v4, v0, Lcom/mycompany/app/quick/QuickAdapter;->A:Z

    .line 16
    .line 17
    const v5, -0x1f1f20

    .line 18
    .line 19
    .line 20
    const v6, -0xc0c0c1

    .line 21
    .line 22
    .line 23
    const/high16 v7, -0x1000000

    .line 24
    .line 25
    if-eqz v4, :cond_6

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/mycompany/app/quick/QuickAdapter;->H(I)Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    goto/16 :goto_1d

    .line 34
    .line 35
    :cond_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    new-instance v4, Lcom/mycompany/app/quick/QuickAdapter$13;

    .line 39
    .line 40
    invoke-direct {v4, v0}, Lcom/mycompany/app/quick/QuickAdapter$13;-><init>(Lcom/mycompany/app/quick/QuickAdapter;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    .line 45
    .line 46
    new-instance v4, Lcom/mycompany/app/quick/QuickAdapter$14;

    .line 47
    .line 48
    invoke-direct {v4, v0}, Lcom/mycompany/app/quick/QuickAdapter$14;-><init>(Lcom/mycompany/app/quick/QuickAdapter;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 52
    .line 53
    .line 54
    iget-object v4, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->L:Landroidx/appcompat/widget/AppCompatTextView;

    .line 55
    .line 56
    iget-object v1, v1, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->M:Lcom/mycompany/app/view/MyButtonImage;

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->M:Lcom/mycompany/app/view/MyButtonImage;

    .line 67
    .line 68
    new-instance v4, Lcom/mycompany/app/quick/QuickAdapter$15;

    .line 69
    .line 70
    invoke-direct {v4, v0}, Lcom/mycompany/app/quick/QuickAdapter$15;-><init>(Lcom/mycompany/app/quick/QuickAdapter;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    .line 75
    .line 76
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->N:Lcom/mycompany/app/view/MyButtonImage;

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->N:Lcom/mycompany/app/view/MyButtonImage;

    .line 82
    .line 83
    new-instance v4, Lcom/mycompany/app/quick/QuickAdapter$16;

    .line 84
    .line 85
    invoke-direct {v4, v0}, Lcom/mycompany/app/quick/QuickAdapter$16;-><init>(Lcom/mycompany/app/quick/QuickAdapter;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    .line 90
    .line 91
    iget-boolean v1, v0, Lcom/mycompany/app/quick/QuickAdapter;->h:Z

    .line 92
    .line 93
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->k5(Z)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    iget-object v4, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->K:Lcom/mycompany/app/view/MyRoundImage;

    .line 98
    .line 99
    invoke-virtual {v4, v1}, Lcom/mycompany/app/view/MyRoundImage;->setDarkColor(Z)V

    .line 100
    .line 101
    .line 102
    if-eqz v1, :cond_2

    .line 103
    .line 104
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 105
    .line 106
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 107
    .line 108
    .line 109
    iget-object v3, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->K:Lcom/mycompany/app/view/MyRoundImage;

    .line 110
    .line 111
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_history_dark_24:I

    .line 112
    .line 113
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyRoundImage;->setImageResource(I)V

    .line 114
    .line 115
    .line 116
    iget-object v3, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->M:Lcom/mycompany/app/view/MyButtonImage;

    .line 117
    .line 118
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_dark_18:I

    .line 119
    .line 120
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 121
    .line 122
    .line 123
    iget-object v3, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->M:Lcom/mycompany/app/view/MyButtonImage;

    .line 124
    .line 125
    invoke-virtual {v3, v6}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 126
    .line 127
    .line 128
    iget-object v3, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->L:Landroidx/appcompat/widget/AppCompatTextView;

    .line 129
    .line 130
    const v4, -0x3e3e3f

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_2
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 138
    .line 139
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 140
    .line 141
    .line 142
    iget-object v3, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->K:Lcom/mycompany/app/view/MyRoundImage;

    .line 143
    .line 144
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_history_black_24:I

    .line 145
    .line 146
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyRoundImage;->setImageResource(I)V

    .line 147
    .line 148
    .line 149
    iget-object v3, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->M:Lcom/mycompany/app/view/MyButtonImage;

    .line 150
    .line 151
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_black_18:I

    .line 152
    .line 153
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 154
    .line 155
    .line 156
    iget-object v3, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->M:Lcom/mycompany/app/view/MyButtonImage;

    .line 157
    .line 158
    invoke-virtual {v3, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 159
    .line 160
    .line 161
    iget-object v3, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->L:Landroidx/appcompat/widget/AppCompatTextView;

    .line 162
    .line 163
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 164
    .line 165
    .line 166
    :goto_0
    iget-boolean v3, v0, Lcom/mycompany/app/quick/QuickAdapter;->i:Z

    .line 167
    .line 168
    if-eqz v3, :cond_4

    .line 169
    .line 170
    if-eqz v1, :cond_3

    .line 171
    .line 172
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->N:Lcom/mycompany/app/view/MyButtonImage;

    .line 173
    .line 174
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_south_west_dark_20:I

    .line 175
    .line 176
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 177
    .line 178
    .line 179
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->N:Lcom/mycompany/app/view/MyButtonImage;

    .line 180
    .line 181
    invoke-virtual {v1, v6}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :cond_3
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->N:Lcom/mycompany/app/view/MyButtonImage;

    .line 186
    .line 187
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_south_west_black_20:I

    .line 188
    .line 189
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 190
    .line 191
    .line 192
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->N:Lcom/mycompany/app/view/MyButtonImage;

    .line 193
    .line 194
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 195
    .line 196
    .line 197
    return-void

    .line 198
    :cond_4
    if-eqz v1, :cond_5

    .line 199
    .line 200
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->N:Lcom/mycompany/app/view/MyButtonImage;

    .line 201
    .line 202
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_north_west_dark_20:I

    .line 203
    .line 204
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 205
    .line 206
    .line 207
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->N:Lcom/mycompany/app/view/MyButtonImage;

    .line 208
    .line 209
    invoke-virtual {v1, v6}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 210
    .line 211
    .line 212
    return-void

    .line 213
    :cond_5
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->N:Lcom/mycompany/app/view/MyButtonImage;

    .line 214
    .line 215
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_north_west_black_20:I

    .line 216
    .line 217
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 218
    .line 219
    .line 220
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->N:Lcom/mycompany/app/view/MyButtonImage;

    .line 221
    .line 222
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 223
    .line 224
    .line 225
    return-void

    .line 226
    :cond_6
    invoke-virtual {v0, v1}, Lcom/mycompany/app/quick/QuickAdapter;->E(I)Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    if-nez v4, :cond_7

    .line 231
    .line 232
    goto/16 :goto_1d

    .line 233
    .line 234
    :cond_7
    iput-object v2, v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->u:Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;

    .line 235
    .line 236
    iget v8, v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->a:I

    .line 237
    .line 238
    iput v8, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->v:I

    .line 239
    .line 240
    const/high16 v9, 0x3f800000    # 1.0f

    .line 241
    .line 242
    const/4 v10, 0x1

    .line 243
    if-ne v8, v10, :cond_9

    .line 244
    .line 245
    iget-boolean v8, v0, Lcom/mycompany/app/quick/QuickAdapter;->q:Z

    .line 246
    .line 247
    if-eqz v8, :cond_8

    .line 248
    .line 249
    const v9, 0x3ecccccd    # 0.4f

    .line 250
    .line 251
    .line 252
    :cond_8
    invoke-virtual {v3, v9}, Landroid/view/View;->setAlpha(F)V

    .line 253
    .line 254
    .line 255
    goto :goto_1

    .line 256
    :cond_9
    invoke-virtual {v3, v9}, Landroid/view/View;->setAlpha(F)V

    .line 257
    .line 258
    .line 259
    :goto_1
    iget v8, v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->a:I

    .line 260
    .line 261
    const/4 v9, 0x2

    .line 262
    const/4 v11, 0x0

    .line 263
    if-ne v8, v9, :cond_a

    .line 264
    .line 265
    invoke-virtual {v3, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    return-void

    .line 269
    :cond_a
    const/4 v12, 0x5

    .line 270
    const/16 v13, 0x8

    .line 271
    .line 272
    const/4 v14, 0x0

    .line 273
    if-ne v8, v13, :cond_14

    .line 274
    .line 275
    iget-boolean v1, v0, Lcom/mycompany/app/quick/QuickAdapter;->h:Z

    .line 276
    .line 277
    if-eqz v1, :cond_c

    .line 278
    .line 279
    invoke-static {}, Lcom/mycompany/app/quick/QuickAdapter;->d0()Z

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    if-eqz v1, :cond_c

    .line 284
    .line 285
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdapter;->o:Ljava/util/List;

    .line 286
    .line 287
    if-nez v1, :cond_b

    .line 288
    .line 289
    move v1, v14

    .line 290
    goto :goto_2

    .line 291
    :cond_b
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    :goto_2
    if-le v1, v12, :cond_c

    .line 296
    .line 297
    instance-of v1, v3, Landroid/widget/ImageView;

    .line 298
    .line 299
    if-eqz v1, :cond_c

    .line 300
    .line 301
    goto :goto_3

    .line 302
    :cond_c
    move v10, v14

    .line 303
    :goto_3
    invoke-virtual {v3, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    if-nez v10, :cond_e

    .line 307
    .line 308
    instance-of v1, v3, Landroid/widget/ImageView;

    .line 309
    .line 310
    if-eqz v1, :cond_d

    .line 311
    .line 312
    move-object v1, v3

    .line 313
    check-cast v1, Landroid/widget/ImageView;

    .line 314
    .line 315
    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 316
    .line 317
    .line 318
    :cond_d
    invoke-virtual {v3, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 319
    .line 320
    .line 321
    return-void

    .line 322
    :cond_e
    new-instance v1, Lcom/mycompany/app/quick/QuickAdapter$2;

    .line 323
    .line 324
    invoke-direct {v1, v0}, Lcom/mycompany/app/quick/QuickAdapter$2;-><init>(Lcom/mycompany/app/quick/QuickAdapter;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    .line 329
    .line 330
    iget-boolean v1, v0, Lcom/mycompany/app/quick/QuickAdapter;->h:Z

    .line 331
    .line 332
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->C5(Z)Z

    .line 333
    .line 334
    .line 335
    move-result v1

    .line 336
    if-eqz v1, :cond_10

    .line 337
    .line 338
    instance-of v1, v3, Landroid/widget/ImageView;

    .line 339
    .line 340
    if-eqz v1, :cond_f

    .line 341
    .line 342
    move-object v1, v3

    .line 343
    check-cast v1, Landroid/widget/ImageView;

    .line 344
    .line 345
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_list_footer_dark_24:I

    .line 346
    .line 347
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 348
    .line 349
    .line 350
    :cond_f
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->selector_round_gray:I

    .line 351
    .line 352
    iput v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->C:I

    .line 353
    .line 354
    goto :goto_4

    .line 355
    :cond_10
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 356
    .line 357
    if-eqz v1, :cond_12

    .line 358
    .line 359
    instance-of v1, v3, Landroid/widget/ImageView;

    .line 360
    .line 361
    if-eqz v1, :cond_11

    .line 362
    .line 363
    move-object v1, v3

    .line 364
    check-cast v1, Landroid/widget/ImageView;

    .line 365
    .line 366
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_list_footer_dark_24:I

    .line 367
    .line 368
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 369
    .line 370
    .line 371
    :cond_11
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->selector_round_dark:I

    .line 372
    .line 373
    iput v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->C:I

    .line 374
    .line 375
    goto :goto_4

    .line 376
    :cond_12
    instance-of v1, v3, Landroid/widget/ImageView;

    .line 377
    .line 378
    if-eqz v1, :cond_13

    .line 379
    .line 380
    move-object v1, v3

    .line 381
    check-cast v1, Landroid/widget/ImageView;

    .line 382
    .line 383
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_list_footer_black_24:I

    .line 384
    .line 385
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 386
    .line 387
    .line 388
    :cond_13
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->selector_round:I

    .line 389
    .line 390
    iput v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->C:I

    .line 391
    .line 392
    :goto_4
    iget v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->C:I

    .line 393
    .line 394
    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 395
    .line 396
    .line 397
    return-void

    .line 398
    :cond_14
    const/16 v15, 0x9

    .line 399
    .line 400
    iget v10, v0, Lcom/mycompany/app/quick/QuickAdapter;->g:I

    .line 401
    .line 402
    if-ne v8, v15, :cond_16

    .line 403
    .line 404
    invoke-virtual {v3, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 405
    .line 406
    .line 407
    if-nez v10, :cond_55

    .line 408
    .line 409
    instance-of v1, v3, Landroid/widget/ImageView;

    .line 410
    .line 411
    if-eqz v1, :cond_55

    .line 412
    .line 413
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZtwo;->y:Z

    .line 414
    .line 415
    if-eqz v1, :cond_15

    .line 416
    .line 417
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->U4()Z

    .line 418
    .line 419
    .line 420
    move-result v1

    .line 421
    if-nez v1, :cond_15

    .line 422
    .line 423
    iget v1, v0, Lcom/mycompany/app/quick/QuickAdapter;->j:I

    .line 424
    .line 425
    sget v2, Lcom/mycompany/app/main/MainApp;->A1:I

    .line 426
    .line 427
    mul-int/2addr v2, v9

    .line 428
    if-le v1, v2, :cond_15

    .line 429
    .line 430
    check-cast v3, Landroid/widget/ImageView;

    .line 431
    .line 432
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->ic_logo_gray_24:I

    .line 433
    .line 434
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 435
    .line 436
    .line 437
    return-void

    .line 438
    :cond_15
    check-cast v3, Landroid/widget/ImageView;

    .line 439
    .line 440
    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 441
    .line 442
    .line 443
    return-void

    .line 444
    :cond_16
    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 445
    .line 446
    .line 447
    iget v8, v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->a:I

    .line 448
    .line 449
    const/4 v11, 0x4

    .line 450
    const v15, 0x3f333333    # 0.7f

    .line 451
    .line 452
    .line 453
    const/4 v13, -0x1

    .line 454
    const v9, -0x50506

    .line 455
    .line 456
    .line 457
    if-ne v8, v11, :cond_1c

    .line 458
    .line 459
    invoke-static {}, Lcom/mycompany/app/quick/QuickAdapter;->C()I

    .line 460
    .line 461
    .line 462
    move-result v1

    .line 463
    iget-object v3, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->D:Lcom/mycompany/app/view/MyRoundFrame;

    .line 464
    .line 465
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    .line 466
    .line 467
    .line 468
    move-result v3

    .line 469
    if-eq v3, v1, :cond_17

    .line 470
    .line 471
    iget-object v3, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->D:Lcom/mycompany/app/view/MyRoundFrame;

    .line 472
    .line 473
    invoke-virtual {v3, v14, v1, v14, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 474
    .line 475
    .line 476
    :cond_17
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 477
    .line 478
    new-instance v3, Lcom/mycompany/app/quick/QuickAdapter$3;

    .line 479
    .line 480
    invoke-direct {v3, v0}, Lcom/mycompany/app/quick/QuickAdapter$3;-><init>(Lcom/mycompany/app/quick/QuickAdapter;)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    .line 485
    .line 486
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->B:Lcom/mycompany/app/view/MyButtonText;

    .line 487
    .line 488
    new-instance v3, Lcom/mycompany/app/quick/QuickAdapter$4;

    .line 489
    .line 490
    invoke-direct {v3, v0}, Lcom/mycompany/app/quick/QuickAdapter$4;-><init>(Lcom/mycompany/app/quick/QuickAdapter;)V

    .line 491
    .line 492
    .line 493
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 494
    .line 495
    .line 496
    iget-boolean v1, v0, Lcom/mycompany/app/quick/QuickAdapter;->h:Z

    .line 497
    .line 498
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->C5(Z)Z

    .line 499
    .line 500
    .line 501
    move-result v1

    .line 502
    const v3, -0xdededf

    .line 503
    .line 504
    .line 505
    if-eqz v1, :cond_1a

    .line 506
    .line 507
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 508
    .line 509
    if-nez v1, :cond_19

    .line 510
    .line 511
    sget-boolean v1, Lcom/mycompany/app/pref/PrefWeb;->U:Z

    .line 512
    .line 513
    if-eqz v1, :cond_18

    .line 514
    .line 515
    goto :goto_5

    .line 516
    :cond_18
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->D:Lcom/mycompany/app/view/MyRoundFrame;

    .line 517
    .line 518
    invoke-virtual {v1, v13}, Lcom/mycompany/app/view/MyRoundFrame;->setNewsAllowColor(I)V

    .line 519
    .line 520
    .line 521
    goto :goto_7

    .line 522
    :cond_19
    :goto_5
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->D:Lcom/mycompany/app/view/MyRoundFrame;

    .line 523
    .line 524
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyRoundFrame;->setNewsAllowColor(I)V

    .line 525
    .line 526
    .line 527
    goto :goto_6

    .line 528
    :cond_1a
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 529
    .line 530
    if-eqz v1, :cond_1b

    .line 531
    .line 532
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->D:Lcom/mycompany/app/view/MyRoundFrame;

    .line 533
    .line 534
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyRoundFrame;->setNewsAllowColor(I)V

    .line 535
    .line 536
    .line 537
    :goto_6
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 538
    .line 539
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 540
    .line 541
    .line 542
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 543
    .line 544
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_dark_24:I

    .line 545
    .line 546
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 547
    .line 548
    .line 549
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 550
    .line 551
    invoke-virtual {v1, v6}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 552
    .line 553
    .line 554
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->B:Lcom/mycompany/app/view/MyButtonText;

    .line 555
    .line 556
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 557
    .line 558
    .line 559
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->B:Lcom/mycompany/app/view/MyButtonText;

    .line 560
    .line 561
    invoke-virtual {v1, v6}, Lcom/mycompany/app/view/MyButtonText;->setBgPreColor(I)V

    .line 562
    .line 563
    .line 564
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->B:Lcom/mycompany/app/view/MyButtonText;

    .line 565
    .line 566
    sget v3, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 567
    .line 568
    invoke-virtual {v1, v9, v3}, Lcom/mycompany/app/view/MyButtonText;->v(II)V

    .line 569
    .line 570
    .line 571
    goto :goto_8

    .line 572
    :cond_1b
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->D:Lcom/mycompany/app/view/MyRoundFrame;

    .line 573
    .line 574
    const v3, -0x252526

    .line 575
    .line 576
    .line 577
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyRoundFrame;->setNewsAllowColor(I)V

    .line 578
    .line 579
    .line 580
    :goto_7
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 581
    .line 582
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 583
    .line 584
    .line 585
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 586
    .line 587
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_black_24:I

    .line 588
    .line 589
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 590
    .line 591
    .line 592
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 593
    .line 594
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 595
    .line 596
    .line 597
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->B:Lcom/mycompany/app/view/MyButtonText;

    .line 598
    .line 599
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 600
    .line 601
    .line 602
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->B:Lcom/mycompany/app/view/MyButtonText;

    .line 603
    .line 604
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonText;->setBgPreColor(I)V

    .line 605
    .line 606
    .line 607
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->B:Lcom/mycompany/app/view/MyButtonText;

    .line 608
    .line 609
    sget v3, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 610
    .line 611
    invoke-virtual {v1, v7, v3}, Lcom/mycompany/app/view/MyButtonText;->v(II)V

    .line 612
    .line 613
    .line 614
    :goto_8
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 615
    .line 616
    invoke-virtual {v1, v15}, Lcom/mycompany/app/view/MyButtonImage;->setMaxAlpha(F)V

    .line 617
    .line 618
    .line 619
    return-void

    .line 620
    :cond_1c
    if-ne v8, v12, :cond_22

    .line 621
    .line 622
    invoke-static {}, Lcom/mycompany/app/quick/QuickAdapter;->C()I

    .line 623
    .line 624
    .line 625
    move-result v1

    .line 626
    iget-object v3, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->D:Lcom/mycompany/app/view/MyRoundFrame;

    .line 627
    .line 628
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    .line 629
    .line 630
    .line 631
    move-result v3

    .line 632
    if-eq v3, v1, :cond_1d

    .line 633
    .line 634
    iget-object v3, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->D:Lcom/mycompany/app/view/MyRoundFrame;

    .line 635
    .line 636
    invoke-virtual {v3, v14, v1, v14, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 637
    .line 638
    .line 639
    :cond_1d
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->I:Lcom/mycompany/app/view/MyButtonImage;

    .line 640
    .line 641
    new-instance v3, Lcom/mycompany/app/quick/QuickAdapter$5;

    .line 642
    .line 643
    invoke-direct {v3, v0}, Lcom/mycompany/app/quick/QuickAdapter$5;-><init>(Lcom/mycompany/app/quick/QuickAdapter;)V

    .line 644
    .line 645
    .line 646
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 647
    .line 648
    .line 649
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 650
    .line 651
    new-instance v3, Lcom/mycompany/app/quick/QuickAdapter$6;

    .line 652
    .line 653
    invoke-direct {v3, v0}, Lcom/mycompany/app/quick/QuickAdapter$6;-><init>(Lcom/mycompany/app/quick/QuickAdapter;)V

    .line 654
    .line 655
    .line 656
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 657
    .line 658
    .line 659
    iget-boolean v1, v0, Lcom/mycompany/app/quick/QuickAdapter;->h:Z

    .line 660
    .line 661
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->C5(Z)Z

    .line 662
    .line 663
    .line 664
    move-result v1

    .line 665
    const v3, -0x4f4f50

    .line 666
    .line 667
    .line 668
    if-eqz v1, :cond_20

    .line 669
    .line 670
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 671
    .line 672
    if-nez v1, :cond_1f

    .line 673
    .line 674
    sget-boolean v1, Lcom/mycompany/app/pref/PrefWeb;->U:Z

    .line 675
    .line 676
    if-eqz v1, :cond_1e

    .line 677
    .line 678
    goto :goto_9

    .line 679
    :cond_1e
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->D:Lcom/mycompany/app/view/MyRoundFrame;

    .line 680
    .line 681
    invoke-virtual {v1, v13}, Lcom/mycompany/app/view/MyRoundFrame;->setNewsHeadColor(I)V

    .line 682
    .line 683
    .line 684
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 685
    .line 686
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 687
    .line 688
    .line 689
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->I:Lcom/mycompany/app/view/MyButtonImage;

    .line 690
    .line 691
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_credit_card_black_20:I

    .line 692
    .line 693
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 694
    .line 695
    .line 696
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->I:Lcom/mycompany/app/view/MyButtonImage;

    .line 697
    .line 698
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 699
    .line 700
    .line 701
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 702
    .line 703
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_black_20:I

    .line 704
    .line 705
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 706
    .line 707
    .line 708
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 709
    .line 710
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 711
    .line 712
    .line 713
    goto :goto_a

    .line 714
    :cond_1f
    :goto_9
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->D:Lcom/mycompany/app/view/MyRoundFrame;

    .line 715
    .line 716
    invoke-virtual {v1, v7}, Lcom/mycompany/app/view/MyRoundFrame;->setNewsHeadColor(I)V

    .line 717
    .line 718
    .line 719
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 720
    .line 721
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 722
    .line 723
    .line 724
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->I:Lcom/mycompany/app/view/MyButtonImage;

    .line 725
    .line 726
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_credit_card_dark_20:I

    .line 727
    .line 728
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 729
    .line 730
    .line 731
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->I:Lcom/mycompany/app/view/MyButtonImage;

    .line 732
    .line 733
    invoke-virtual {v1, v6}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 734
    .line 735
    .line 736
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 737
    .line 738
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_dark_20:I

    .line 739
    .line 740
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 741
    .line 742
    .line 743
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 744
    .line 745
    invoke-virtual {v1, v6}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 746
    .line 747
    .line 748
    goto :goto_a

    .line 749
    :cond_20
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 750
    .line 751
    if-eqz v1, :cond_21

    .line 752
    .line 753
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->D:Lcom/mycompany/app/view/MyRoundFrame;

    .line 754
    .line 755
    invoke-virtual {v1, v14}, Lcom/mycompany/app/view/MyRoundFrame;->setNewsHeadColor(I)V

    .line 756
    .line 757
    .line 758
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 759
    .line 760
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 761
    .line 762
    .line 763
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->I:Lcom/mycompany/app/view/MyButtonImage;

    .line 764
    .line 765
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_credit_card_dark_20:I

    .line 766
    .line 767
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 768
    .line 769
    .line 770
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->I:Lcom/mycompany/app/view/MyButtonImage;

    .line 771
    .line 772
    invoke-virtual {v1, v6}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 773
    .line 774
    .line 775
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 776
    .line 777
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_dark_20:I

    .line 778
    .line 779
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 780
    .line 781
    .line 782
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 783
    .line 784
    invoke-virtual {v1, v6}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 785
    .line 786
    .line 787
    goto :goto_a

    .line 788
    :cond_21
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->D:Lcom/mycompany/app/view/MyRoundFrame;

    .line 789
    .line 790
    invoke-virtual {v1, v14}, Lcom/mycompany/app/view/MyRoundFrame;->setNewsHeadColor(I)V

    .line 791
    .line 792
    .line 793
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 794
    .line 795
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 796
    .line 797
    .line 798
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->I:Lcom/mycompany/app/view/MyButtonImage;

    .line 799
    .line 800
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_credit_card_black_20:I

    .line 801
    .line 802
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 803
    .line 804
    .line 805
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->I:Lcom/mycompany/app/view/MyButtonImage;

    .line 806
    .line 807
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 808
    .line 809
    .line 810
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 811
    .line 812
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_black_20:I

    .line 813
    .line 814
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 815
    .line 816
    .line 817
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 818
    .line 819
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 820
    .line 821
    .line 822
    :goto_a
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->I:Lcom/mycompany/app/view/MyButtonImage;

    .line 823
    .line 824
    invoke-virtual {v1, v15}, Lcom/mycompany/app/view/MyButtonImage;->setMaxAlpha(F)V

    .line 825
    .line 826
    .line 827
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 828
    .line 829
    invoke-virtual {v1, v15}, Lcom/mycompany/app/view/MyButtonImage;->setMaxAlpha(F)V

    .line 830
    .line 831
    .line 832
    return-void

    .line 833
    :cond_22
    const/4 v12, 0x6

    .line 834
    if-ne v8, v12, :cond_23

    .line 835
    .line 836
    iput v1, v0, Lcom/mycompany/app/quick/QuickAdapter;->z:I

    .line 837
    .line 838
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->D:Lcom/mycompany/app/view/MyRoundFrame;

    .line 839
    .line 840
    iget-object v3, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 841
    .line 842
    iget-object v2, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->z:Lcom/mycompany/app/view/MyProgressBar;

    .line 843
    .line 844
    invoke-virtual {v0, v1, v3, v2}, Lcom/mycompany/app/quick/QuickAdapter;->b0(Lcom/mycompany/app/view/MyRoundFrame;Landroid/widget/TextView;Lcom/mycompany/app/view/MyProgressBar;)V

    .line 845
    .line 846
    .line 847
    return-void

    .line 848
    :cond_23
    const/4 v12, 0x7

    .line 849
    if-ne v8, v12, :cond_37

    .line 850
    .line 851
    iget-object v3, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->E:Landroid/widget/RelativeLayout;

    .line 852
    .line 853
    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 854
    .line 855
    .line 856
    iget-object v3, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->E:Landroid/widget/RelativeLayout;

    .line 857
    .line 858
    new-instance v8, Lcom/mycompany/app/quick/QuickAdapter$7;

    .line 859
    .line 860
    invoke-direct {v8, v0}, Lcom/mycompany/app/quick/QuickAdapter$7;-><init>(Lcom/mycompany/app/quick/QuickAdapter;)V

    .line 861
    .line 862
    .line 863
    invoke-virtual {v3, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 864
    .line 865
    .line 866
    iget-object v3, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->E:Landroid/widget/RelativeLayout;

    .line 867
    .line 868
    new-instance v8, Lcom/mycompany/app/quick/QuickAdapter$8;

    .line 869
    .line 870
    invoke-direct {v8, v0}, Lcom/mycompany/app/quick/QuickAdapter$8;-><init>(Lcom/mycompany/app/quick/QuickAdapter;)V

    .line 871
    .line 872
    .line 873
    invoke-virtual {v3, v8}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 874
    .line 875
    .line 876
    iget-object v3, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 877
    .line 878
    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 879
    .line 880
    .line 881
    iget-object v3, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 882
    .line 883
    new-instance v8, Lcom/mycompany/app/quick/QuickAdapter$9;

    .line 884
    .line 885
    invoke-direct {v8, v0}, Lcom/mycompany/app/quick/QuickAdapter$9;-><init>(Lcom/mycompany/app/quick/QuickAdapter;)V

    .line 886
    .line 887
    .line 888
    invoke-virtual {v3, v8}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 889
    .line 890
    .line 891
    iget-boolean v3, v0, Lcom/mycompany/app/quick/QuickAdapter;->h:Z

    .line 892
    .line 893
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->k5(Z)Z

    .line 894
    .line 895
    .line 896
    move-result v3

    .line 897
    iget-object v8, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->F:Lcom/mycompany/app/view/MyRoundImage;

    .line 898
    .line 899
    invoke-virtual {v8, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 900
    .line 901
    .line 902
    iget-object v8, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->x:Lcom/mycompany/app/view/MyRoundImage;

    .line 903
    .line 904
    invoke-virtual {v8, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 905
    .line 906
    .line 907
    iget-object v8, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 908
    .line 909
    iget-object v10, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->G:Landroidx/appcompat/widget/AppCompatTextView;

    .line 910
    .line 911
    iget-object v11, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->H:Landroid/view/View;

    .line 912
    .line 913
    if-eqz v8, :cond_29

    .line 914
    .line 915
    if-eqz v10, :cond_29

    .line 916
    .line 917
    if-nez v11, :cond_24

    .line 918
    .line 919
    goto :goto_d

    .line 920
    :cond_24
    iget-object v15, v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->f:Ljava/lang/String;

    .line 921
    .line 922
    iget-object v6, v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->r:Ljava/lang/String;

    .line 923
    .line 924
    sget-boolean v16, Lcom/mycompany/app/pref/PrefZtwo;->O:Z

    .line 925
    .line 926
    if-eqz v16, :cond_26

    .line 927
    .line 928
    iget v9, v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->x:I

    .line 929
    .line 930
    const/4 v5, 0x2

    .line 931
    if-ne v9, v5, :cond_26

    .line 932
    .line 933
    iget-object v5, v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->v:Ljava/lang/String;

    .line 934
    .line 935
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 936
    .line 937
    .line 938
    move-result v5

    .line 939
    if-nez v5, :cond_26

    .line 940
    .line 941
    iget-object v15, v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->v:Ljava/lang/String;

    .line 942
    .line 943
    iget-object v5, v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->w:Ljava/lang/String;

    .line 944
    .line 945
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 946
    .line 947
    .line 948
    move-result v5

    .line 949
    if-nez v5, :cond_25

    .line 950
    .line 951
    iget-object v6, v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->w:Ljava/lang/String;

    .line 952
    .line 953
    :cond_25
    const/4 v5, 0x1

    .line 954
    goto :goto_b

    .line 955
    :cond_26
    move v5, v14

    .line 956
    :goto_b
    const-string v9, "   "

    .line 957
    .line 958
    invoke-static {v6, v9}, Landroid/support/v4/media/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 959
    .line 960
    .line 961
    move-result-object v6

    .line 962
    iget-object v9, v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->t:Ljava/lang/String;

    .line 963
    .line 964
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 965
    .line 966
    .line 967
    invoke-virtual {v8, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 968
    .line 969
    .line 970
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 971
    .line 972
    .line 973
    move-result-object v6

    .line 974
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 975
    .line 976
    .line 977
    if-eqz v5, :cond_28

    .line 978
    .line 979
    if-eqz v3, :cond_27

    .line 980
    .line 981
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->trans_logo_short_trans_white:I

    .line 982
    .line 983
    invoke-virtual {v11, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 984
    .line 985
    .line 986
    goto :goto_c

    .line 987
    :cond_27
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->trans_logo_short_trans_color:I

    .line 988
    .line 989
    invoke-virtual {v11, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 990
    .line 991
    .line 992
    :goto_c
    invoke-virtual {v11, v14}, Landroid/view/View;->setVisibility(I)V

    .line 993
    .line 994
    .line 995
    goto :goto_d

    .line 996
    :cond_28
    const/16 v5, 0x8

    .line 997
    .line 998
    invoke-virtual {v11, v5}, Landroid/view/View;->setVisibility(I)V

    .line 999
    .line 1000
    .line 1001
    :cond_29
    :goto_d
    iget-object v5, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->F:Lcom/mycompany/app/view/MyRoundImage;

    .line 1002
    .line 1003
    if-nez v5, :cond_2a

    .line 1004
    .line 1005
    goto/16 :goto_10

    .line 1006
    .line 1007
    :cond_2a
    iget-object v6, v0, Lcom/mycompany/app/quick/QuickAdapter;->f:Landroid/content/Context;

    .line 1008
    .line 1009
    if-nez v6, :cond_2b

    .line 1010
    .line 1011
    goto/16 :goto_10

    .line 1012
    .line 1013
    :cond_2b
    iget-object v6, v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->q:Ljava/lang/String;

    .line 1014
    .line 1015
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1016
    .line 1017
    .line 1018
    move-result v6

    .line 1019
    if-eqz v6, :cond_2d

    .line 1020
    .line 1021
    if-eqz v3, :cond_2c

    .line 1022
    .line 1023
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_dark_web_24:I

    .line 1024
    .line 1025
    goto :goto_e

    .line 1026
    :cond_2c
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 1027
    .line 1028
    :goto_e
    invoke-virtual {v5, v3}, Lcom/mycompany/app/view/MyRoundImage;->setImageResource(I)V

    .line 1029
    .line 1030
    .line 1031
    goto :goto_10

    .line 1032
    :cond_2d
    iget-object v6, v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->q:Ljava/lang/String;

    .line 1033
    .line 1034
    const/4 v8, 0x2

    .line 1035
    invoke-static {v8, v6}, Lcom/nostra13/universalimageloader/utils/MemoryCacheUtils;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 1036
    .line 1037
    .line 1038
    move-result-object v6

    .line 1039
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v8

    .line 1043
    invoke-virtual {v8}, Lcom/nostra13/universalimageloader/core/ImageLoader;->g()Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v8

    .line 1047
    invoke-virtual {v8, v6}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v6

    .line 1051
    invoke-static {v6}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 1052
    .line 1053
    .line 1054
    move-result v8

    .line 1055
    if-eqz v8, :cond_2e

    .line 1056
    .line 1057
    invoke-virtual {v5, v6}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1058
    .line 1059
    .line 1060
    goto :goto_10

    .line 1061
    :cond_2e
    if-eqz v3, :cond_2f

    .line 1062
    .line 1063
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_dark_web_24:I

    .line 1064
    .line 1065
    goto :goto_f

    .line 1066
    :cond_2f
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 1067
    .line 1068
    :goto_f
    invoke-virtual {v5, v3}, Lcom/mycompany/app/view/MyRoundImage;->setImageResource(I)V

    .line 1069
    .line 1070
    .line 1071
    new-instance v3, Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 1072
    .line 1073
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1074
    .line 1075
    .line 1076
    iput v12, v3, Lcom/mycompany/app/main/MainItem$ViewItem;->a:I

    .line 1077
    .line 1078
    iget-object v6, v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->q:Ljava/lang/String;

    .line 1079
    .line 1080
    iput-object v6, v3, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 1081
    .line 1082
    iput v1, v3, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 1083
    .line 1084
    const/4 v8, 0x2

    .line 1085
    iput v8, v3, Lcom/mycompany/app/main/MainItem$ViewItem;->t:I

    .line 1086
    .line 1087
    iget-object v6, v0, Lcom/mycompany/app/quick/QuickAdapter;->s:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 1088
    .line 1089
    if-nez v6, :cond_30

    .line 1090
    .line 1091
    new-instance v6, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 1092
    .line 1093
    invoke-direct {v6}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 1094
    .line 1095
    .line 1096
    const/4 v8, 0x1

    .line 1097
    iput-boolean v8, v6, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->a:Z

    .line 1098
    .line 1099
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 1100
    .line 1101
    invoke-virtual {v6}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->a()V

    .line 1102
    .line 1103
    .line 1104
    new-instance v8, Lcom/nostra13/universalimageloader/core/display/NoneBitmapDisplayer;

    .line 1105
    .line 1106
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 1107
    .line 1108
    .line 1109
    iput-object v8, v6, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->f:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    .line 1110
    .line 1111
    new-instance v8, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 1112
    .line 1113
    invoke-direct {v8, v6}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;-><init>(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)V

    .line 1114
    .line 1115
    .line 1116
    iput-object v8, v0, Lcom/mycompany/app/quick/QuickAdapter;->s:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 1117
    .line 1118
    :cond_30
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v6

    .line 1122
    iget-object v8, v0, Lcom/mycompany/app/quick/QuickAdapter;->s:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 1123
    .line 1124
    new-instance v9, Lcom/mycompany/app/quick/QuickAdapter$19;

    .line 1125
    .line 1126
    invoke-direct {v9, v0}, Lcom/mycompany/app/quick/QuickAdapter$19;-><init>(Lcom/mycompany/app/quick/QuickAdapter;)V

    .line 1127
    .line 1128
    .line 1129
    invoke-virtual {v6, v3, v5, v8, v9}, Lcom/nostra13/universalimageloader/core/ImageLoader;->c(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;)V

    .line 1130
    .line 1131
    .line 1132
    :goto_10
    iget-object v3, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->x:Lcom/mycompany/app/view/MyRoundImage;

    .line 1133
    .line 1134
    invoke-virtual {v0, v4, v3, v1}, Lcom/mycompany/app/quick/QuickAdapter;->Z(Lcom/mycompany/app/quick/QuickAdapter$QuickItem;Lcom/mycompany/app/view/MyRoundImage;I)V

    .line 1135
    .line 1136
    .line 1137
    iget-boolean v1, v0, Lcom/mycompany/app/quick/QuickAdapter;->h:Z

    .line 1138
    .line 1139
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->C5(Z)Z

    .line 1140
    .line 1141
    .line 1142
    move-result v1

    .line 1143
    if-eqz v1, :cond_35

    .line 1144
    .line 1145
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 1146
    .line 1147
    if-nez v1, :cond_33

    .line 1148
    .line 1149
    sget-boolean v1, Lcom/mycompany/app/pref/PrefWeb;->U:Z

    .line 1150
    .line 1151
    if-eqz v1, :cond_31

    .line 1152
    .line 1153
    goto :goto_12

    .line 1154
    :cond_31
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->D:Lcom/mycompany/app/view/MyRoundFrame;

    .line 1155
    .line 1156
    iget v3, v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->o:I

    .line 1157
    .line 1158
    const/4 v8, 0x1

    .line 1159
    if-ne v3, v8, :cond_32

    .line 1160
    .line 1161
    const/4 v10, 0x1

    .line 1162
    goto :goto_11

    .line 1163
    :cond_32
    move v10, v14

    .line 1164
    :goto_11
    invoke-virtual {v1, v13, v10}, Lcom/mycompany/app/view/MyRoundFrame;->d(IZ)V

    .line 1165
    .line 1166
    .line 1167
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->E:Landroid/widget/RelativeLayout;

    .line 1168
    .line 1169
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 1170
    .line 1171
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1172
    .line 1173
    .line 1174
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1175
    .line 1176
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1177
    .line 1178
    .line 1179
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->G:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1180
    .line 1181
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1182
    .line 1183
    .line 1184
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 1185
    .line 1186
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_more_vert_black_20:I

    .line 1187
    .line 1188
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 1189
    .line 1190
    .line 1191
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 1192
    .line 1193
    const v2, -0x1f1f20

    .line 1194
    .line 1195
    .line 1196
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 1197
    .line 1198
    .line 1199
    return-void

    .line 1200
    :cond_33
    :goto_12
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->D:Lcom/mycompany/app/view/MyRoundFrame;

    .line 1201
    .line 1202
    iget v3, v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->o:I

    .line 1203
    .line 1204
    const/4 v8, 0x1

    .line 1205
    if-ne v3, v8, :cond_34

    .line 1206
    .line 1207
    const/4 v10, 0x1

    .line 1208
    goto :goto_13

    .line 1209
    :cond_34
    move v10, v14

    .line 1210
    :goto_13
    invoke-virtual {v1, v7, v10}, Lcom/mycompany/app/view/MyRoundFrame;->d(IZ)V

    .line 1211
    .line 1212
    .line 1213
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->E:Landroid/widget/RelativeLayout;

    .line 1214
    .line 1215
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 1216
    .line 1217
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1218
    .line 1219
    .line 1220
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1221
    .line 1222
    const v3, -0x50506

    .line 1223
    .line 1224
    .line 1225
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1226
    .line 1227
    .line 1228
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->G:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1229
    .line 1230
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1231
    .line 1232
    .line 1233
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 1234
    .line 1235
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_more_vert_dark_20:I

    .line 1236
    .line 1237
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 1238
    .line 1239
    .line 1240
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 1241
    .line 1242
    const v2, -0xc0c0c1

    .line 1243
    .line 1244
    .line 1245
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 1246
    .line 1247
    .line 1248
    return-void

    .line 1249
    :cond_35
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 1250
    .line 1251
    if-eqz v1, :cond_36

    .line 1252
    .line 1253
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->D:Lcom/mycompany/app/view/MyRoundFrame;

    .line 1254
    .line 1255
    invoke-virtual {v1, v14, v14}, Lcom/mycompany/app/view/MyRoundFrame;->d(IZ)V

    .line 1256
    .line 1257
    .line 1258
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->E:Landroid/widget/RelativeLayout;

    .line 1259
    .line 1260
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 1261
    .line 1262
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1263
    .line 1264
    .line 1265
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1266
    .line 1267
    const v3, -0x50506

    .line 1268
    .line 1269
    .line 1270
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1271
    .line 1272
    .line 1273
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->G:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1274
    .line 1275
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1276
    .line 1277
    .line 1278
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 1279
    .line 1280
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_more_vert_dark_20:I

    .line 1281
    .line 1282
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 1283
    .line 1284
    .line 1285
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 1286
    .line 1287
    const v2, -0xc0c0c1

    .line 1288
    .line 1289
    .line 1290
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 1291
    .line 1292
    .line 1293
    return-void

    .line 1294
    :cond_36
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->D:Lcom/mycompany/app/view/MyRoundFrame;

    .line 1295
    .line 1296
    invoke-virtual {v1, v14, v14}, Lcom/mycompany/app/view/MyRoundFrame;->d(IZ)V

    .line 1297
    .line 1298
    .line 1299
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->E:Landroid/widget/RelativeLayout;

    .line 1300
    .line 1301
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 1302
    .line 1303
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1304
    .line 1305
    .line 1306
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1307
    .line 1308
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1309
    .line 1310
    .line 1311
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->G:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1312
    .line 1313
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1314
    .line 1315
    .line 1316
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 1317
    .line 1318
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_more_vert_black_20:I

    .line 1319
    .line 1320
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 1321
    .line 1322
    .line 1323
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 1324
    .line 1325
    const v2, -0x1f1f20

    .line 1326
    .line 1327
    .line 1328
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 1329
    .line 1330
    .line 1331
    return-void

    .line 1332
    :cond_37
    const/4 v5, 0x3

    .line 1333
    if-ne v8, v5, :cond_3c

    .line 1334
    .line 1335
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->B:Lcom/mycompany/app/view/MyButtonText;

    .line 1336
    .line 1337
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1338
    .line 1339
    .line 1340
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->B:Lcom/mycompany/app/view/MyButtonText;

    .line 1341
    .line 1342
    new-instance v3, Lcom/mycompany/app/quick/QuickAdapter$10;

    .line 1343
    .line 1344
    invoke-direct {v3, v0}, Lcom/mycompany/app/quick/QuickAdapter$10;-><init>(Lcom/mycompany/app/quick/QuickAdapter;)V

    .line 1345
    .line 1346
    .line 1347
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1348
    .line 1349
    .line 1350
    invoke-virtual {v0}, Lcom/mycompany/app/quick/QuickAdapter;->z()I

    .line 1351
    .line 1352
    .line 1353
    move-result v1

    .line 1354
    iget-boolean v3, v0, Lcom/mycompany/app/quick/QuickAdapter;->h:Z

    .line 1355
    .line 1356
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->C5(Z)Z

    .line 1357
    .line 1358
    .line 1359
    move-result v3

    .line 1360
    const/high16 v4, 0x21000000

    .line 1361
    .line 1362
    if-eqz v3, :cond_3a

    .line 1363
    .line 1364
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 1365
    .line 1366
    if-nez v3, :cond_39

    .line 1367
    .line 1368
    sget-boolean v3, Lcom/mycompany/app/pref/PrefWeb;->U:Z

    .line 1369
    .line 1370
    if-eqz v3, :cond_38

    .line 1371
    .line 1372
    goto :goto_14

    .line 1373
    :cond_38
    iget-object v3, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->B:Lcom/mycompany/app/view/MyButtonText;

    .line 1374
    .line 1375
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1376
    .line 1377
    .line 1378
    iget-object v2, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->B:Lcom/mycompany/app/view/MyButtonText;

    .line 1379
    .line 1380
    invoke-virtual {v2, v1, v4}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 1381
    .line 1382
    .line 1383
    return-void

    .line 1384
    :cond_39
    :goto_14
    iget-object v3, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->B:Lcom/mycompany/app/view/MyButtonText;

    .line 1385
    .line 1386
    const v5, -0x50506

    .line 1387
    .line 1388
    .line 1389
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1390
    .line 1391
    .line 1392
    iget-object v2, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->B:Lcom/mycompany/app/view/MyButtonText;

    .line 1393
    .line 1394
    const v3, -0xc0c0c1

    .line 1395
    .line 1396
    .line 1397
    invoke-virtual {v2, v1, v3}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 1398
    .line 1399
    .line 1400
    return-void

    .line 1401
    :cond_3a
    const v3, -0xc0c0c1

    .line 1402
    .line 1403
    .line 1404
    const v5, -0x50506

    .line 1405
    .line 1406
    .line 1407
    sget-boolean v6, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 1408
    .line 1409
    if-eqz v6, :cond_3b

    .line 1410
    .line 1411
    iget-object v4, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->B:Lcom/mycompany/app/view/MyButtonText;

    .line 1412
    .line 1413
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1414
    .line 1415
    .line 1416
    iget-object v2, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->B:Lcom/mycompany/app/view/MyButtonText;

    .line 1417
    .line 1418
    invoke-virtual {v2, v1, v3}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 1419
    .line 1420
    .line 1421
    return-void

    .line 1422
    :cond_3b
    iget-object v3, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->B:Lcom/mycompany/app/view/MyButtonText;

    .line 1423
    .line 1424
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1425
    .line 1426
    .line 1427
    iget-object v2, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->B:Lcom/mycompany/app/view/MyButtonText;

    .line 1428
    .line 1429
    invoke-virtual {v2, v1, v4}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 1430
    .line 1431
    .line 1432
    return-void

    .line 1433
    :cond_3c
    new-instance v5, Lcom/mycompany/app/quick/QuickAdapter$11;

    .line 1434
    .line 1435
    invoke-direct {v5, v0}, Lcom/mycompany/app/quick/QuickAdapter$11;-><init>(Lcom/mycompany/app/quick/QuickAdapter;)V

    .line 1436
    .line 1437
    .line 1438
    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1439
    .line 1440
    .line 1441
    new-instance v5, Lcom/mycompany/app/quick/QuickAdapter$12;

    .line 1442
    .line 1443
    invoke-direct {v5, v0}, Lcom/mycompany/app/quick/QuickAdapter$12;-><init>(Lcom/mycompany/app/quick/QuickAdapter;)V

    .line 1444
    .line 1445
    .line 1446
    invoke-virtual {v3, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1447
    .line 1448
    .line 1449
    if-nez v10, :cond_3d

    .line 1450
    .line 1451
    iget-boolean v5, v0, Lcom/mycompany/app/quick/QuickAdapter;->h:Z

    .line 1452
    .line 1453
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->C5(Z)Z

    .line 1454
    .line 1455
    .line 1456
    move-result v5

    .line 1457
    if-eqz v5, :cond_3d

    .line 1458
    .line 1459
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_round_gray:I

    .line 1460
    .line 1461
    iput v5, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->C:I

    .line 1462
    .line 1463
    goto :goto_15

    .line 1464
    :cond_3d
    iget-boolean v5, v0, Lcom/mycompany/app/quick/QuickAdapter;->h:Z

    .line 1465
    .line 1466
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->k5(Z)Z

    .line 1467
    .line 1468
    .line 1469
    move-result v5

    .line 1470
    if-eqz v5, :cond_3e

    .line 1471
    .line 1472
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_round_dark:I

    .line 1473
    .line 1474
    iput v5, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->C:I

    .line 1475
    .line 1476
    goto :goto_15

    .line 1477
    :cond_3e
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_round:I

    .line 1478
    .line 1479
    iput v5, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->C:I

    .line 1480
    .line 1481
    :goto_15
    iget v5, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->C:I

    .line 1482
    .line 1483
    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1484
    .line 1485
    .line 1486
    iget v5, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->u:I

    .line 1487
    .line 1488
    const/4 v8, 0x1

    .line 1489
    if-ne v5, v8, :cond_3f

    .line 1490
    .line 1491
    iget-object v5, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->w:Lcom/mycompany/app/view/MyCircleView;

    .line 1492
    .line 1493
    if-eqz v5, :cond_3f

    .line 1494
    .line 1495
    invoke-virtual {v0}, Lcom/mycompany/app/quick/QuickAdapter;->z()I

    .line 1496
    .line 1497
    .line 1498
    move-result v5

    .line 1499
    iget-object v6, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->w:Lcom/mycompany/app/view/MyCircleView;

    .line 1500
    .line 1501
    invoke-virtual {v6, v5}, Lcom/mycompany/app/view/MyCircleView;->setColor(I)V

    .line 1502
    .line 1503
    .line 1504
    :cond_3f
    iget v5, v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->a:I

    .line 1505
    .line 1506
    if-ne v5, v8, :cond_42

    .line 1507
    .line 1508
    iget v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->u:I

    .line 1509
    .line 1510
    if-eq v1, v8, :cond_40

    .line 1511
    .line 1512
    invoke-virtual {v0}, Lcom/mycompany/app/quick/QuickAdapter;->z()I

    .line 1513
    .line 1514
    .line 1515
    move-result v14

    .line 1516
    :cond_40
    iget-boolean v1, v0, Lcom/mycompany/app/quick/QuickAdapter;->h:Z

    .line 1517
    .line 1518
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->k5(Z)Z

    .line 1519
    .line 1520
    .line 1521
    move-result v1

    .line 1522
    if-eqz v1, :cond_41

    .line 1523
    .line 1524
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->x:Lcom/mycompany/app/view/MyRoundImage;

    .line 1525
    .line 1526
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_dark_24:I

    .line 1527
    .line 1528
    invoke-virtual {v1, v14, v3}, Lcom/mycompany/app/view/MyRoundImage;->x(II)V

    .line 1529
    .line 1530
    .line 1531
    goto :goto_16

    .line 1532
    :cond_41
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->x:Lcom/mycompany/app/view/MyRoundImage;

    .line 1533
    .line 1534
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_black_24:I

    .line 1535
    .line 1536
    invoke-virtual {v1, v14, v3}, Lcom/mycompany/app/view/MyRoundImage;->x(II)V

    .line 1537
    .line 1538
    .line 1539
    :goto_16
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1540
    .line 1541
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1542
    .line 1543
    .line 1544
    iget-object v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->A:Lcom/mycompany/app/view/MyButtonCheck;

    .line 1545
    .line 1546
    const/16 v5, 0x8

    .line 1547
    .line 1548
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 1549
    .line 1550
    .line 1551
    return-void

    .line 1552
    :cond_42
    iget-boolean v5, v0, Lcom/mycompany/app/quick/QuickAdapter;->h:Z

    .line 1553
    .line 1554
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->C5(Z)Z

    .line 1555
    .line 1556
    .line 1557
    move-result v5

    .line 1558
    if-eqz v5, :cond_48

    .line 1559
    .line 1560
    if-nez v10, :cond_45

    .line 1561
    .line 1562
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 1563
    .line 1564
    if-nez v5, :cond_44

    .line 1565
    .line 1566
    sget-boolean v5, Lcom/mycompany/app/pref/PrefWeb;->U:Z

    .line 1567
    .line 1568
    if-eqz v5, :cond_43

    .line 1569
    .line 1570
    goto :goto_17

    .line 1571
    :cond_43
    iget-object v5, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1572
    .line 1573
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1574
    .line 1575
    .line 1576
    iget-object v5, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->A:Lcom/mycompany/app/view/MyButtonCheck;

    .line 1577
    .line 1578
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_black_24:I

    .line 1579
    .line 1580
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_black_24:I

    .line 1581
    .line 1582
    invoke-virtual {v5, v13, v6, v7}, Lcom/mycompany/app/view/MyButtonCheck;->r(III)V

    .line 1583
    .line 1584
    .line 1585
    goto :goto_19

    .line 1586
    :cond_44
    :goto_17
    iget-object v5, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1587
    .line 1588
    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1589
    .line 1590
    .line 1591
    iget-object v5, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->A:Lcom/mycompany/app/view/MyButtonCheck;

    .line 1592
    .line 1593
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_dark_24:I

    .line 1594
    .line 1595
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_dark_24:I

    .line 1596
    .line 1597
    invoke-virtual {v5, v7, v6, v8}, Lcom/mycompany/app/view/MyButtonCheck;->r(III)V

    .line 1598
    .line 1599
    .line 1600
    goto :goto_19

    .line 1601
    :cond_45
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 1602
    .line 1603
    if-nez v5, :cond_47

    .line 1604
    .line 1605
    sget-boolean v5, Lcom/mycompany/app/pref/PrefWeb;->U:Z

    .line 1606
    .line 1607
    if-eqz v5, :cond_46

    .line 1608
    .line 1609
    goto :goto_18

    .line 1610
    :cond_46
    iget-object v5, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1611
    .line 1612
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1613
    .line 1614
    .line 1615
    iget-object v5, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->A:Lcom/mycompany/app/view/MyButtonCheck;

    .line 1616
    .line 1617
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_black_24:I

    .line 1618
    .line 1619
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_black_24:I

    .line 1620
    .line 1621
    invoke-virtual {v5, v13, v6, v7}, Lcom/mycompany/app/view/MyButtonCheck;->r(III)V

    .line 1622
    .line 1623
    .line 1624
    goto :goto_19

    .line 1625
    :cond_47
    :goto_18
    iget-object v5, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1626
    .line 1627
    const v6, -0x50506

    .line 1628
    .line 1629
    .line 1630
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1631
    .line 1632
    .line 1633
    iget-object v5, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->A:Lcom/mycompany/app/view/MyButtonCheck;

    .line 1634
    .line 1635
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_dark_24:I

    .line 1636
    .line 1637
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_dark_24:I

    .line 1638
    .line 1639
    invoke-virtual {v5, v7, v6, v8}, Lcom/mycompany/app/view/MyButtonCheck;->r(III)V

    .line 1640
    .line 1641
    .line 1642
    goto :goto_19

    .line 1643
    :cond_48
    const v6, -0x50506

    .line 1644
    .line 1645
    .line 1646
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 1647
    .line 1648
    if-eqz v5, :cond_49

    .line 1649
    .line 1650
    iget-object v5, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1651
    .line 1652
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1653
    .line 1654
    .line 1655
    iget-object v5, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->A:Lcom/mycompany/app/view/MyButtonCheck;

    .line 1656
    .line 1657
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_dark_24:I

    .line 1658
    .line 1659
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_dark_24:I

    .line 1660
    .line 1661
    invoke-virtual {v5, v7, v6, v8}, Lcom/mycompany/app/view/MyButtonCheck;->r(III)V

    .line 1662
    .line 1663
    .line 1664
    goto :goto_19

    .line 1665
    :cond_49
    iget-object v5, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1666
    .line 1667
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1668
    .line 1669
    .line 1670
    iget-object v5, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->A:Lcom/mycompany/app/view/MyButtonCheck;

    .line 1671
    .line 1672
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_black_24:I

    .line 1673
    .line 1674
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_black_24:I

    .line 1675
    .line 1676
    invoke-virtual {v5, v13, v6, v7}, Lcom/mycompany/app/view/MyButtonCheck;->r(III)V

    .line 1677
    .line 1678
    .line 1679
    :goto_19
    iget-object v5, v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->f:Ljava/lang/String;

    .line 1680
    .line 1681
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1682
    .line 1683
    .line 1684
    move-result v5

    .line 1685
    if-nez v5, :cond_4a

    .line 1686
    .line 1687
    iget-object v5, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1688
    .line 1689
    iget-object v6, v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->f:Ljava/lang/String;

    .line 1690
    .line 1691
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1692
    .line 1693
    .line 1694
    goto :goto_1a

    .line 1695
    :cond_4a
    iget-object v5, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1696
    .line 1697
    sget v6, Lnet/kaki87/soul2/testing/R$string;->group_title:I

    .line 1698
    .line 1699
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1700
    .line 1701
    .line 1702
    :goto_1a
    iget-object v5, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1703
    .line 1704
    invoke-virtual {v5, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1705
    .line 1706
    .line 1707
    iget-boolean v5, v0, Lcom/mycompany/app/quick/QuickAdapter;->q:Z

    .line 1708
    .line 1709
    if-eqz v5, :cond_4b

    .line 1710
    .line 1711
    iget-object v5, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->A:Lcom/mycompany/app/view/MyButtonCheck;

    .line 1712
    .line 1713
    invoke-virtual {v5, v14}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 1714
    .line 1715
    .line 1716
    iget-object v5, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->A:Lcom/mycompany/app/view/MyButtonCheck;

    .line 1717
    .line 1718
    iget-boolean v6, v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->j:Z

    .line 1719
    .line 1720
    invoke-virtual {v5, v6, v14}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 1721
    .line 1722
    .line 1723
    goto :goto_1b

    .line 1724
    :cond_4b
    iget-object v5, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->A:Lcom/mycompany/app/view/MyButtonCheck;

    .line 1725
    .line 1726
    const/16 v6, 0x8

    .line 1727
    .line 1728
    invoke-virtual {v5, v6}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 1729
    .line 1730
    .line 1731
    :goto_1b
    iget v5, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->u:I

    .line 1732
    .line 1733
    const/4 v8, 0x1

    .line 1734
    if-eq v5, v8, :cond_4c

    .line 1735
    .line 1736
    invoke-virtual {v0}, Lcom/mycompany/app/quick/QuickAdapter;->z()I

    .line 1737
    .line 1738
    .line 1739
    move-result v14

    .line 1740
    :cond_4c
    iget-object v2, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->x:Lcom/mycompany/app/view/MyRoundImage;

    .line 1741
    .line 1742
    if-eqz v2, :cond_55

    .line 1743
    .line 1744
    iget-object v5, v0, Lcom/mycompany/app/quick/QuickAdapter;->r:Lcom/mycompany/app/main/MainListLoader;

    .line 1745
    .line 1746
    if-nez v5, :cond_4d

    .line 1747
    .line 1748
    goto/16 :goto_1d

    .line 1749
    .line 1750
    :cond_4d
    iget-boolean v5, v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->c:Z

    .line 1751
    .line 1752
    if-eqz v5, :cond_4e

    .line 1753
    .line 1754
    iget-object v5, v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->l:Ljava/util/List;

    .line 1755
    .line 1756
    if-eqz v5, :cond_4e

    .line 1757
    .line 1758
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 1759
    .line 1760
    .line 1761
    move-result v5

    .line 1762
    if-nez v5, :cond_4e

    .line 1763
    .line 1764
    iget-object v3, v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->l:Ljava/util/List;

    .line 1765
    .line 1766
    sget-boolean v4, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 1767
    .line 1768
    invoke-virtual {v2, v1, v14, v3, v4}, Lcom/mycompany/app/view/MyRoundImage;->B(IILjava/util/List;Z)V

    .line 1769
    .line 1770
    .line 1771
    return-void

    .line 1772
    :cond_4e
    iget-object v5, v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 1773
    .line 1774
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1775
    .line 1776
    .line 1777
    move-result v5

    .line 1778
    const/high16 v6, -0x10000

    .line 1779
    .line 1780
    if-eqz v5, :cond_50

    .line 1781
    .line 1782
    iget-boolean v1, v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->c:Z

    .line 1783
    .line 1784
    if-eqz v1, :cond_4f

    .line 1785
    .line 1786
    invoke-static {v6}, Lcom/mycompany/app/db/book/DbBookQuick;->f(I)I

    .line 1787
    .line 1788
    .line 1789
    move-result v1

    .line 1790
    invoke-virtual {v2, v1, v14}, Lcom/mycompany/app/view/MyRoundImage;->w(II)V

    .line 1791
    .line 1792
    .line 1793
    return-void

    .line 1794
    :cond_4f
    iget-object v1, v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->g:Ljava/lang/String;

    .line 1795
    .line 1796
    iget-boolean v3, v0, Lcom/mycompany/app/quick/QuickAdapter;->h:Z

    .line 1797
    .line 1798
    invoke-virtual {v2, v1, v14, v3}, Lcom/mycompany/app/view/MyRoundImage;->u(Ljava/lang/String;IZ)V

    .line 1799
    .line 1800
    .line 1801
    return-void

    .line 1802
    :cond_50
    iget v5, v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->h:I

    .line 1803
    .line 1804
    if-eqz v5, :cond_52

    .line 1805
    .line 1806
    const v7, -0x70708

    .line 1807
    .line 1808
    .line 1809
    if-eq v5, v7, :cond_52

    .line 1810
    .line 1811
    iget-boolean v1, v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->c:Z

    .line 1812
    .line 1813
    if-eqz v1, :cond_51

    .line 1814
    .line 1815
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookQuick;->f(I)I

    .line 1816
    .line 1817
    .line 1818
    move-result v1

    .line 1819
    invoke-virtual {v2, v1, v14}, Lcom/mycompany/app/view/MyRoundImage;->w(II)V

    .line 1820
    .line 1821
    .line 1822
    return-void

    .line 1823
    :cond_51
    iget-object v1, v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->g:Ljava/lang/String;

    .line 1824
    .line 1825
    iget-boolean v3, v0, Lcom/mycompany/app/quick/QuickAdapter;->h:Z

    .line 1826
    .line 1827
    invoke-virtual {v2, v1, v5, v3}, Lcom/mycompany/app/view/MyRoundImage;->u(Ljava/lang/String;IZ)V

    .line 1828
    .line 1829
    .line 1830
    return-void

    .line 1831
    :cond_52
    iget-object v5, v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 1832
    .line 1833
    sget-boolean v7, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 1834
    .line 1835
    invoke-static {v5, v7}, Lcom/mycompany/app/main/MainListLoader;->c(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    .line 1836
    .line 1837
    .line 1838
    move-result-object v5

    .line 1839
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 1840
    .line 1841
    .line 1842
    move-result v7

    .line 1843
    if-eqz v7, :cond_53

    .line 1844
    .line 1845
    invoke-virtual {v2, v5, v14}, Lcom/mycompany/app/view/MyRoundImage;->v(Landroid/graphics/Bitmap;I)V

    .line 1846
    .line 1847
    .line 1848
    return-void

    .line 1849
    :cond_53
    iget-boolean v5, v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->c:Z

    .line 1850
    .line 1851
    if-eqz v5, :cond_54

    .line 1852
    .line 1853
    invoke-static {v6}, Lcom/mycompany/app/db/book/DbBookQuick;->f(I)I

    .line 1854
    .line 1855
    .line 1856
    move-result v5

    .line 1857
    invoke-virtual {v2, v5, v14}, Lcom/mycompany/app/view/MyRoundImage;->w(II)V

    .line 1858
    .line 1859
    .line 1860
    goto :goto_1c

    .line 1861
    :cond_54
    iget-object v5, v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->g:Ljava/lang/String;

    .line 1862
    .line 1863
    iget-boolean v6, v0, Lcom/mycompany/app/quick/QuickAdapter;->h:Z

    .line 1864
    .line 1865
    invoke-virtual {v2, v5, v14, v6}, Lcom/mycompany/app/view/MyRoundImage;->u(Ljava/lang/String;IZ)V

    .line 1866
    .line 1867
    .line 1868
    :goto_1c
    new-instance v2, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1869
    .line 1870
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1871
    .line 1872
    .line 1873
    const/16 v5, 0x21

    .line 1874
    .line 1875
    iput v5, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 1876
    .line 1877
    const/16 v5, 0xb

    .line 1878
    .line 1879
    iput v5, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 1880
    .line 1881
    iget-object v5, v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 1882
    .line 1883
    iput-object v5, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 1884
    .line 1885
    iget-object v6, v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->f:Ljava/lang/String;

    .line 1886
    .line 1887
    iput-object v6, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 1888
    .line 1889
    iput-object v5, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 1890
    .line 1891
    iget-wide v4, v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->b:J

    .line 1892
    .line 1893
    iput-wide v4, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 1894
    .line 1895
    iput v1, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 1896
    .line 1897
    sget-boolean v1, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 1898
    .line 1899
    iput-boolean v1, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->N:Z

    .line 1900
    .line 1901
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdapter;->r:Lcom/mycompany/app/main/MainListLoader;

    .line 1902
    .line 1903
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/main/MainListLoader;->e(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;)V

    .line 1904
    .line 1905
    .line 1906
    :cond_55
    :goto_1d
    return-void
.end method

.method public final o(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 17

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
    const/4 v3, 0x0

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    return-object v3

    .line 13
    :cond_0
    iget-boolean v4, v0, Lcom/mycompany/app/quick/QuickAdapter;->A:Z

    .line 14
    .line 15
    const/16 v5, 0x15

    .line 16
    .line 17
    const/4 v7, 0x2

    .line 18
    const v8, 0x800005

    .line 19
    .line 20
    .line 21
    const/high16 v11, 0x41c00000    # 24.0f

    .line 22
    .line 23
    const/4 v12, -0x2

    .line 24
    const/4 v13, 0x0

    .line 25
    const/4 v15, -0x1

    .line 26
    if-eqz v4, :cond_1

    .line 27
    .line 28
    sget v4, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 29
    .line 30
    const/high16 p1, 0x40000000    # 2.0f

    .line 31
    .line 32
    new-instance v6, Lcom/mycompany/app/view/MyFilterRelative;

    .line 33
    .line 34
    invoke-direct {v6, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v6, v4}, Landroid/view/View;->setMinimumHeight(I)V

    .line 38
    .line 39
    .line 40
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    .line 41
    .line 42
    invoke-direct {v9, v15, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v6, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    .line 47
    .line 48
    new-instance v9, Lcom/mycompany/app/view/MyRoundImage;

    .line 49
    .line 50
    invoke-direct {v9, v2}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v2, v11}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 54
    .line 55
    .line 56
    move-result v11

    .line 57
    float-to-int v11, v11

    .line 58
    int-to-float v15, v11

    .line 59
    div-float v15, v15, p1

    .line 60
    .line 61
    float-to-int v15, v15

    .line 62
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 63
    .line 64
    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 65
    .line 66
    .line 67
    sget v10, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 68
    .line 69
    invoke-virtual {v9, v10}, Lcom/mycompany/app/view/MyRoundImage;->setRoundRadius(I)V

    .line 70
    .line 71
    .line 72
    int-to-float v10, v15

    .line 73
    invoke-virtual {v9, v10}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 74
    .line 75
    .line 76
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 77
    .line 78
    invoke-direct {v10, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 79
    .line 80
    .line 81
    sget v11, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 82
    .line 83
    iput v11, v10, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 84
    .line 85
    invoke-virtual {v10, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v6, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    .line 90
    .line 91
    new-instance v10, Landroid/widget/FrameLayout;

    .line 92
    .line 93
    invoke-direct {v10, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 94
    .line 95
    .line 96
    sget v11, Lnet/kaki87/soul2/testing/R$id;->search_item_frame:I

    .line 97
    .line 98
    invoke-virtual {v10, v11}, Landroid/view/View;->setId(I)V

    .line 99
    .line 100
    .line 101
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    .line 102
    .line 103
    invoke-direct {v15, v12, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v15, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v6, v10, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    .line 111
    .line 112
    new-instance v5, Lcom/mycompany/app/view/MyButtonImage;

    .line 113
    .line 114
    invoke-direct {v5, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 115
    .line 116
    .line 117
    sget-object v15, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 118
    .line 119
    invoke-virtual {v5, v15}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 120
    .line 121
    .line 122
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 123
    .line 124
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 125
    .line 126
    invoke-direct {v12, v14, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 127
    .line 128
    .line 129
    iput v8, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 130
    .line 131
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 132
    .line 133
    invoke-virtual {v12, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v10, v5, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    .line 138
    .line 139
    invoke-static {v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->p(Landroid/content/Context;Landroid/widget/ImageView$ScaleType;)Lcom/mycompany/app/view/MyButtonImage;

    .line 140
    .line 141
    .line 142
    move-result-object v12

    .line 143
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 144
    .line 145
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 146
    .line 147
    invoke-direct {v14, v15, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 148
    .line 149
    .line 150
    iput v8, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 151
    .line 152
    invoke-virtual {v10, v12, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    .line 154
    .line 155
    new-instance v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 156
    .line 157
    invoke-direct {v4, v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 158
    .line 159
    .line 160
    sget v3, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 161
    .line 162
    invoke-virtual {v4, v13, v3, v13, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 166
    .line 167
    .line 168
    const/high16 v3, 0x41800000    # 16.0f

    .line 169
    .line 170
    const/4 v7, 0x1

    .line 171
    invoke-virtual {v4, v7, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 172
    .line 173
    .line 174
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 175
    .line 176
    const/4 v7, -0x2

    .line 177
    const/4 v8, -0x1

    .line 178
    invoke-direct {v3, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 179
    .line 180
    .line 181
    const/16 v7, 0x10

    .line 182
    .line 183
    invoke-virtual {v3, v7, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 184
    .line 185
    .line 186
    const/16 v7, 0xf

    .line 187
    .line 188
    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 189
    .line 190
    .line 191
    const/high16 v7, 0x42500000    # 52.0f

    .line 192
    .line 193
    invoke-static {v2, v7}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    float-to-int v2, v2

    .line 198
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v6, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    .line 203
    .line 204
    new-instance v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;

    .line 205
    .line 206
    invoke-direct {v2, v6}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 207
    .line 208
    .line 209
    iput v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->u:I

    .line 210
    .line 211
    iput-object v9, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->K:Lcom/mycompany/app/view/MyRoundImage;

    .line 212
    .line 213
    iput-object v4, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->L:Landroidx/appcompat/widget/AppCompatTextView;

    .line 214
    .line 215
    iput-object v5, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->M:Lcom/mycompany/app/view/MyButtonImage;

    .line 216
    .line 217
    iput-object v12, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->N:Lcom/mycompany/app/view/MyButtonImage;

    .line 218
    .line 219
    return-object v2

    .line 220
    :cond_1
    const/high16 p1, 0x40000000    # 2.0f

    .line 221
    .line 222
    const/16 v4, 0x9

    .line 223
    .line 224
    if-lt v1, v4, :cond_2

    .line 225
    .line 226
    new-instance v3, Landroid/widget/ImageView;

    .line 227
    .line 228
    invoke-direct {v3, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 229
    .line 230
    .line 231
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 232
    .line 233
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 234
    .line 235
    .line 236
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 237
    .line 238
    iget v4, v0, Lcom/mycompany/app/quick/QuickAdapter;->j:I

    .line 239
    .line 240
    const/4 v6, -0x1

    .line 241
    invoke-direct {v2, v6, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    .line 246
    .line 247
    new-instance v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;

    .line 248
    .line 249
    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 250
    .line 251
    .line 252
    iput v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->u:I

    .line 253
    .line 254
    return-object v2

    .line 255
    :cond_2
    const/4 v6, -0x1

    .line 256
    if-ne v1, v7, :cond_3

    .line 257
    .line 258
    new-instance v3, Landroid/view/View;

    .line 259
    .line 260
    invoke-direct {v3, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 261
    .line 262
    .line 263
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 264
    .line 265
    const/4 v7, 0x1

    .line 266
    invoke-direct {v2, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    .line 271
    .line 272
    new-instance v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;

    .line 273
    .line 274
    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 275
    .line 276
    .line 277
    iput v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->u:I

    .line 278
    .line 279
    return-object v2

    .line 280
    :cond_3
    const/16 v4, 0x11

    .line 281
    .line 282
    const/high16 v6, 0x41600000    # 14.0f

    .line 283
    .line 284
    const/4 v7, 0x3

    .line 285
    if-ne v1, v7, :cond_4

    .line 286
    .line 287
    new-instance v3, Landroid/widget/FrameLayout;

    .line 288
    .line 289
    invoke-direct {v3, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 290
    .line 291
    .line 292
    const/high16 v5, 0x41a00000    # 20.0f

    .line 293
    .line 294
    invoke-static {v2, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 295
    .line 296
    .line 297
    move-result v5

    .line 298
    float-to-int v5, v5

    .line 299
    invoke-virtual {v3, v5, v5, v5, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 300
    .line 301
    .line 302
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    .line 303
    .line 304
    sget v7, Lcom/mycompany/app/main/MainApp;->A1:I

    .line 305
    .line 306
    const/4 v8, -0x1

    .line 307
    invoke-direct {v5, v8, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    .line 312
    .line 313
    new-instance v5, Lcom/mycompany/app/view/MyButtonText;

    .line 314
    .line 315
    invoke-direct {v5, v2}, Lcom/mycompany/app/view/MyButtonText;-><init>(Landroid/content/Context;)V

    .line 316
    .line 317
    .line 318
    sget v2, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 319
    .line 320
    sget v7, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 321
    .line 322
    sget v8, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 323
    .line 324
    sget v9, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 325
    .line 326
    invoke-virtual {v5, v2, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 327
    .line 328
    .line 329
    sget v2, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 330
    .line 331
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 335
    .line 336
    .line 337
    const/4 v7, 0x1

    .line 338
    invoke-virtual {v5, v7, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 339
    .line 340
    .line 341
    sget v2, Lnet/kaki87/soul2/testing/R$string;->import_normal:I

    .line 342
    .line 343
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(I)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v5, v7}, Lcom/mycompany/app/view/MyButtonText;->setBgNorFixed(Z)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v5, v7}, Lcom/mycompany/app/view/MyButtonText;->setRoundRect(Z)V

    .line 350
    .line 351
    .line 352
    sget v2, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 353
    .line 354
    invoke-virtual {v5, v2}, Lcom/mycompany/app/view/MyButtonText;->setRoundRadius(I)V

    .line 355
    .line 356
    .line 357
    const/4 v7, -0x2

    .line 358
    const/4 v8, -0x1

    .line 359
    invoke-virtual {v3, v5, v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 360
    .line 361
    .line 362
    new-instance v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;

    .line 363
    .line 364
    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 365
    .line 366
    .line 367
    iput v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->u:I

    .line 368
    .line 369
    iput-object v5, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->B:Lcom/mycompany/app/view/MyButtonText;

    .line 370
    .line 371
    return-object v2

    .line 372
    :cond_4
    const/4 v9, 0x4

    .line 373
    if-ne v1, v9, :cond_5

    .line 374
    .line 375
    invoke-static {}, Lcom/mycompany/app/quick/QuickAdapter;->C()I

    .line 376
    .line 377
    .line 378
    move-result v5

    .line 379
    new-instance v7, Lcom/mycompany/app/view/MyRoundFrame;

    .line 380
    .line 381
    invoke-direct {v7, v2}, Lcom/mycompany/app/view/MyRoundFrame;-><init>(Landroid/content/Context;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v7, v13, v5, v13, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 385
    .line 386
    .line 387
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    .line 388
    .line 389
    const/high16 v9, 0x438c0000    # 280.0f

    .line 390
    .line 391
    invoke-static {v2, v9}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 392
    .line 393
    .line 394
    move-result v9

    .line 395
    float-to-int v9, v9

    .line 396
    const/4 v10, -0x1

    .line 397
    invoke-direct {v5, v10, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v7, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    .line 402
    .line 403
    new-instance v5, Lcom/mycompany/app/view/MyButtonImage;

    .line 404
    .line 405
    invoke-direct {v5, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 406
    .line 407
    .line 408
    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 409
    .line 410
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 411
    .line 412
    .line 413
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 414
    .line 415
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 416
    .line 417
    invoke-direct {v9, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 418
    .line 419
    .line 420
    iput v8, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 421
    .line 422
    invoke-virtual {v7, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    .line 424
    .line 425
    invoke-static {v2, v11}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 426
    .line 427
    .line 428
    move-result v8

    .line 429
    float-to-int v8, v8

    .line 430
    new-instance v9, Landroid/widget/LinearLayout;

    .line 431
    .line 432
    invoke-direct {v9, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v9, v8, v13, v8, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 436
    .line 437
    .line 438
    const/4 v10, 0x1

    .line 439
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 440
    .line 441
    .line 442
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 443
    .line 444
    const/4 v12, -0x2

    .line 445
    const/4 v13, -0x1

    .line 446
    invoke-direct {v11, v13, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 447
    .line 448
    .line 449
    const/16 v14, 0x10

    .line 450
    .line 451
    iput v14, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 452
    .line 453
    invoke-virtual {v7, v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 454
    .line 455
    .line 456
    new-instance v11, Landroidx/appcompat/widget/AppCompatTextView;

    .line 457
    .line 458
    invoke-direct {v11, v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 462
    .line 463
    .line 464
    const/high16 v3, 0x41800000    # 16.0f

    .line 465
    .line 466
    invoke-virtual {v11, v10, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 467
    .line 468
    .line 469
    sget v3, Lnet/kaki87/soul2/testing/R$string;->news_start:I

    .line 470
    .line 471
    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(I)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v9, v11, v13, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 475
    .line 476
    .line 477
    new-instance v3, Lcom/mycompany/app/view/MyButtonText;

    .line 478
    .line 479
    invoke-direct {v3, v2}, Lcom/mycompany/app/view/MyButtonText;-><init>(Landroid/content/Context;)V

    .line 480
    .line 481
    .line 482
    sget v2, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 483
    .line 484
    sget v10, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 485
    .line 486
    sget v12, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 487
    .line 488
    sget v13, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 489
    .line 490
    invoke-virtual {v3, v2, v10, v12, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 491
    .line 492
    .line 493
    sget v2, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 494
    .line 495
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 496
    .line 497
    .line 498
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 499
    .line 500
    .line 501
    const/4 v10, 0x1

    .line 502
    invoke-virtual {v3, v10, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 503
    .line 504
    .line 505
    sget v2, Lnet/kaki87/soul2/testing/R$string;->news_show:I

    .line 506
    .line 507
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v3, v10}, Lcom/mycompany/app/view/MyButtonText;->setRoundRect(Z)V

    .line 511
    .line 512
    .line 513
    sget v2, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 514
    .line 515
    invoke-virtual {v3, v2}, Lcom/mycompany/app/view/MyButtonText;->setRoundRadius(I)V

    .line 516
    .line 517
    .line 518
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 519
    .line 520
    const/4 v12, -0x2

    .line 521
    const/4 v13, -0x1

    .line 522
    invoke-direct {v2, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 523
    .line 524
    .line 525
    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 526
    .line 527
    invoke-virtual {v9, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 528
    .line 529
    .line 530
    new-instance v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;

    .line 531
    .line 532
    invoke-direct {v2, v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 533
    .line 534
    .line 535
    iput v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->u:I

    .line 536
    .line 537
    iput-object v7, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->D:Lcom/mycompany/app/view/MyRoundFrame;

    .line 538
    .line 539
    iput-object v11, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 540
    .line 541
    iput-object v5, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 542
    .line 543
    iput-object v3, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->B:Lcom/mycompany/app/view/MyButtonText;

    .line 544
    .line 545
    return-object v2

    .line 546
    :cond_5
    const/4 v4, 0x5

    .line 547
    if-ne v1, v4, :cond_6

    .line 548
    .line 549
    invoke-static {}, Lcom/mycompany/app/quick/QuickAdapter;->C()I

    .line 550
    .line 551
    .line 552
    move-result v4

    .line 553
    new-instance v5, Lcom/mycompany/app/view/MyRoundFrame;

    .line 554
    .line 555
    invoke-direct {v5, v2}, Lcom/mycompany/app/view/MyRoundFrame;-><init>(Landroid/content/Context;)V

    .line 556
    .line 557
    .line 558
    invoke-virtual {v5, v13, v4, v13, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 559
    .line 560
    .line 561
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .line 562
    .line 563
    const/high16 v6, 0x43100000    # 144.0f

    .line 564
    .line 565
    invoke-static {v2, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 566
    .line 567
    .line 568
    move-result v6

    .line 569
    float-to-int v6, v6

    .line 570
    const/4 v10, -0x1

    .line 571
    invoke-direct {v4, v10, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 572
    .line 573
    .line 574
    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 575
    .line 576
    .line 577
    new-instance v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 578
    .line 579
    invoke-direct {v4, v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 580
    .line 581
    .line 582
    const/16 v14, 0x10

    .line 583
    .line 584
    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 585
    .line 586
    .line 587
    const/high16 v3, 0x41800000    # 16.0f

    .line 588
    .line 589
    const/4 v7, 0x1

    .line 590
    invoke-virtual {v4, v7, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 591
    .line 592
    .line 593
    sget v3, Lnet/kaki87/soul2/testing/R$string;->news_title:I

    .line 594
    .line 595
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    .line 596
    .line 597
    .line 598
    const/high16 v3, 0x42a00000    # 80.0f

    .line 599
    .line 600
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 601
    .line 602
    .line 603
    move-result v3

    .line 604
    float-to-int v3, v3

    .line 605
    invoke-virtual {v4, v13, v13, v3, v13}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 606
    .line 607
    .line 608
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 609
    .line 610
    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 611
    .line 612
    const/4 v13, -0x1

    .line 613
    invoke-direct {v3, v13, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 614
    .line 615
    .line 616
    sget v6, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 617
    .line 618
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 619
    .line 620
    .line 621
    sget v6, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 622
    .line 623
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 624
    .line 625
    .line 626
    invoke-virtual {v5, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 627
    .line 628
    .line 629
    new-instance v3, Lcom/mycompany/app/view/MyButtonImage;

    .line 630
    .line 631
    invoke-direct {v3, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 632
    .line 633
    .line 634
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 635
    .line 636
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 637
    .line 638
    .line 639
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 640
    .line 641
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 642
    .line 643
    invoke-direct {v7, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 644
    .line 645
    .line 646
    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 647
    .line 648
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 649
    .line 650
    invoke-virtual {v7, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 651
    .line 652
    .line 653
    invoke-virtual {v5, v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 654
    .line 655
    .line 656
    invoke-static {v2, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->p(Landroid/content/Context;Landroid/widget/ImageView$ScaleType;)Lcom/mycompany/app/view/MyButtonImage;

    .line 657
    .line 658
    .line 659
    move-result-object v2

    .line 660
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 661
    .line 662
    sget v7, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 663
    .line 664
    invoke-direct {v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 665
    .line 666
    .line 667
    iput v8, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 668
    .line 669
    invoke-virtual {v5, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 670
    .line 671
    .line 672
    new-instance v6, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;

    .line 673
    .line 674
    invoke-direct {v6, v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 675
    .line 676
    .line 677
    iput v1, v6, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->u:I

    .line 678
    .line 679
    iput-object v5, v6, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->D:Lcom/mycompany/app/view/MyRoundFrame;

    .line 680
    .line 681
    iput-object v4, v6, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 682
    .line 683
    iput-object v3, v6, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->I:Lcom/mycompany/app/view/MyButtonImage;

    .line 684
    .line 685
    iput-object v2, v6, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 686
    .line 687
    return-object v6

    .line 688
    :cond_6
    const/4 v4, 0x6

    .line 689
    const/high16 v8, 0x42000000    # 32.0f

    .line 690
    .line 691
    if-ne v1, v4, :cond_7

    .line 692
    .line 693
    new-instance v4, Lcom/mycompany/app/view/MyRoundFrame;

    .line 694
    .line 695
    invoke-direct {v4, v2}, Lcom/mycompany/app/view/MyRoundFrame;-><init>(Landroid/content/Context;)V

    .line 696
    .line 697
    .line 698
    invoke-static {v2, v8}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 699
    .line 700
    .line 701
    move-result v5

    .line 702
    float-to-int v5, v5

    .line 703
    invoke-virtual {v4, v13, v13, v13, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 704
    .line 705
    .line 706
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    .line 707
    .line 708
    const/high16 v6, 0x43280000    # 168.0f

    .line 709
    .line 710
    invoke-static {v2, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 711
    .line 712
    .line 713
    move-result v6

    .line 714
    float-to-int v6, v6

    .line 715
    const/4 v10, -0x1

    .line 716
    invoke-direct {v5, v10, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 717
    .line 718
    .line 719
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 720
    .line 721
    .line 722
    new-instance v5, Landroid/widget/RelativeLayout;

    .line 723
    .line 724
    invoke-direct {v5, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 725
    .line 726
    .line 727
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 728
    .line 729
    const/4 v12, -0x2

    .line 730
    invoke-direct {v6, v10, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 731
    .line 732
    .line 733
    const/16 v14, 0x10

    .line 734
    .line 735
    iput v14, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 736
    .line 737
    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 738
    .line 739
    .line 740
    new-instance v6, Landroidx/appcompat/widget/AppCompatTextView;

    .line 741
    .line 742
    invoke-direct {v6, v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 743
    .line 744
    .line 745
    sget v3, Lnet/kaki87/soul2/testing/R$id;->quick_noti_title:I

    .line 746
    .line 747
    invoke-virtual {v6, v3}, Landroid/view/View;->setId(I)V

    .line 748
    .line 749
    .line 750
    const/4 v10, 0x1

    .line 751
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 752
    .line 753
    .line 754
    const/high16 v9, 0x41800000    # 16.0f

    .line 755
    .line 756
    invoke-virtual {v6, v10, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 757
    .line 758
    .line 759
    invoke-static {v2, v11}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 760
    .line 761
    .line 762
    move-result v9

    .line 763
    float-to-int v9, v9

    .line 764
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 765
    .line 766
    const/4 v12, -0x2

    .line 767
    const/4 v14, -0x1

    .line 768
    invoke-direct {v11, v14, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 769
    .line 770
    .line 771
    invoke-virtual {v11, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 772
    .line 773
    .line 774
    invoke-virtual {v11, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 775
    .line 776
    .line 777
    invoke-virtual {v5, v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 778
    .line 779
    .line 780
    new-instance v9, Lcom/mycompany/app/view/MyProgressBar;

    .line 781
    .line 782
    invoke-direct {v9, v2}, Lcom/mycompany/app/view/MyProgressBar;-><init>(Landroid/content/Context;)V

    .line 783
    .line 784
    .line 785
    invoke-virtual {v9, v10}, Lcom/mycompany/app/view/MyProgressBar;->setHeader(Z)V

    .line 786
    .line 787
    .line 788
    move/from16 v10, p1

    .line 789
    .line 790
    invoke-static {v2, v10}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 791
    .line 792
    .line 793
    move-result v10

    .line 794
    float-to-int v10, v10

    .line 795
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 796
    .line 797
    invoke-direct {v11, v14, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 798
    .line 799
    .line 800
    invoke-static {v2, v8}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 801
    .line 802
    .line 803
    move-result v8

    .line 804
    float-to-int v8, v8

    .line 805
    const/high16 v10, 0x42900000    # 72.0f

    .line 806
    .line 807
    invoke-static {v2, v10}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 808
    .line 809
    .line 810
    move-result v2

    .line 811
    float-to-int v2, v2

    .line 812
    invoke-virtual {v11, v2, v8, v2, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 813
    .line 814
    .line 815
    invoke-virtual {v11, v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 816
    .line 817
    .line 818
    invoke-virtual {v5, v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 819
    .line 820
    .line 821
    new-instance v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;

    .line 822
    .line 823
    invoke-direct {v2, v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 824
    .line 825
    .line 826
    iput v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->u:I

    .line 827
    .line 828
    iput-object v4, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->D:Lcom/mycompany/app/view/MyRoundFrame;

    .line 829
    .line 830
    iput-object v6, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 831
    .line 832
    iput-object v9, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->z:Lcom/mycompany/app/view/MyProgressBar;

    .line 833
    .line 834
    return-object v2

    .line 835
    :cond_7
    const/4 v4, 0x7

    .line 836
    const/high16 v9, 0x41300000    # 11.0f

    .line 837
    .line 838
    const/high16 v10, 0x41900000    # 18.0f

    .line 839
    .line 840
    if-ne v1, v4, :cond_8

    .line 841
    .line 842
    new-instance v4, Lcom/mycompany/app/view/MyRoundFrame;

    .line 843
    .line 844
    invoke-direct {v4, v2}, Lcom/mycompany/app/view/MyRoundFrame;-><init>(Landroid/content/Context;)V

    .line 845
    .line 846
    .line 847
    invoke-static {v2, v11}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 848
    .line 849
    .line 850
    move-result v8

    .line 851
    float-to-int v8, v8

    .line 852
    invoke-virtual {v4, v13, v13, v13, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 853
    .line 854
    .line 855
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    .line 856
    .line 857
    const/4 v11, -0x2

    .line 858
    const/4 v14, -0x1

    .line 859
    invoke-direct {v8, v14, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 860
    .line 861
    .line 862
    invoke-virtual {v4, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 863
    .line 864
    .line 865
    new-instance v8, Landroid/widget/RelativeLayout;

    .line 866
    .line 867
    invoke-direct {v8, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 868
    .line 869
    .line 870
    sget v15, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 871
    .line 872
    invoke-virtual {v8, v13, v13, v13, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 873
    .line 874
    .line 875
    new-instance v15, Lcom/mycompany/app/quick/QuickAdapter$18;

    .line 876
    .line 877
    invoke-direct {v15}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 878
    .line 879
    .line 880
    invoke-virtual {v8, v15}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 881
    .line 882
    .line 883
    const/4 v15, 0x1

    .line 884
    invoke-virtual {v8, v15}, Landroid/view/View;->setClipToOutline(Z)V

    .line 885
    .line 886
    .line 887
    invoke-virtual {v4, v8, v14, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 888
    .line 889
    .line 890
    new-instance v11, Landroidx/appcompat/widget/AppCompatTextView;

    .line 891
    .line 892
    invoke-direct {v11, v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 893
    .line 894
    .line 895
    sget v14, Lnet/kaki87/soul2/testing/R$id;->quick_item_title:I

    .line 896
    .line 897
    invoke-virtual {v11, v14}, Landroid/view/View;->setId(I)V

    .line 898
    .line 899
    .line 900
    sget v15, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 901
    .line 902
    invoke-virtual {v11, v13, v15, v13, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 903
    .line 904
    .line 905
    const/high16 v15, 0x42980000    # 76.0f

    .line 906
    .line 907
    invoke-static {v2, v15}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 908
    .line 909
    .line 910
    move-result v15

    .line 911
    float-to-int v15, v15

    .line 912
    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 913
    .line 914
    .line 915
    const v15, 0x800013

    .line 916
    .line 917
    .line 918
    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 919
    .line 920
    .line 921
    const/high16 v12, 0x41800000    # 16.0f

    .line 922
    .line 923
    const/4 v13, 0x1

    .line 924
    invoke-virtual {v11, v13, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 925
    .line 926
    .line 927
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 928
    .line 929
    const/4 v6, -0x1

    .line 930
    const/4 v13, -0x2

    .line 931
    invoke-direct {v12, v6, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 932
    .line 933
    .line 934
    sget v6, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 935
    .line 936
    invoke-virtual {v12, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 937
    .line 938
    .line 939
    const/high16 v6, 0x42e00000    # 112.0f

    .line 940
    .line 941
    invoke-static {v2, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 942
    .line 943
    .line 944
    move-result v6

    .line 945
    float-to-int v6, v6

    .line 946
    invoke-virtual {v12, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 947
    .line 948
    .line 949
    invoke-virtual {v8, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 950
    .line 951
    .line 952
    new-instance v6, Lcom/mycompany/app/view/MyRoundImage;

    .line 953
    .line 954
    invoke-direct {v6, v2}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 955
    .line 956
    .line 957
    const/high16 v12, 0x42c00000    # 96.0f

    .line 958
    .line 959
    invoke-static {v2, v12}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 960
    .line 961
    .line 962
    move-result v12

    .line 963
    float-to-int v12, v12

    .line 964
    const/high16 v13, 0x42880000    # 68.0f

    .line 965
    .line 966
    invoke-static {v2, v13}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 967
    .line 968
    .line 969
    move-result v13

    .line 970
    float-to-int v13, v13

    .line 971
    invoke-static {v12, v13, v5}, Landroidx/work/impl/workers/a;->g(III)Landroid/widget/RelativeLayout$LayoutParams;

    .line 972
    .line 973
    .line 974
    move-result-object v12

    .line 975
    sget v13, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 976
    .line 977
    iput v13, v12, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 978
    .line 979
    invoke-virtual {v12, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 980
    .line 981
    .line 982
    invoke-virtual {v8, v6, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 983
    .line 984
    .line 985
    new-instance v12, Lcom/mycompany/app/view/MyRoundImage;

    .line 986
    .line 987
    invoke-direct {v12, v2}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 988
    .line 989
    .line 990
    sget-object v13, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 991
    .line 992
    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 993
    .line 994
    .line 995
    invoke-static {v2, v10}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 996
    .line 997
    .line 998
    move-result v10

    .line 999
    float-to-int v10, v10

    .line 1000
    div-int/lit8 v13, v10, 0x2

    .line 1001
    .line 1002
    invoke-virtual {v12, v13}, Lcom/mycompany/app/view/MyRoundImage;->setRoundRadius(I)V

    .line 1003
    .line 1004
    .line 1005
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1006
    .line 1007
    invoke-direct {v13, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1008
    .line 1009
    .line 1010
    invoke-virtual {v13, v7, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1011
    .line 1012
    .line 1013
    invoke-static {v2, v9}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 1014
    .line 1015
    .line 1016
    move-result v9

    .line 1017
    float-to-int v9, v9

    .line 1018
    iput v9, v13, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1019
    .line 1020
    sget v9, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 1021
    .line 1022
    invoke-virtual {v13, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 1023
    .line 1024
    .line 1025
    invoke-virtual {v8, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1026
    .line 1027
    .line 1028
    new-instance v9, Landroidx/appcompat/widget/AppCompatTextView;

    .line 1029
    .line 1030
    invoke-direct {v9, v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1031
    .line 1032
    .line 1033
    sget v3, Lnet/kaki87/soul2/testing/R$id;->quick_item_source:I

    .line 1034
    .line 1035
    invoke-virtual {v9, v3}, Landroid/view/View;->setId(I)V

    .line 1036
    .line 1037
    .line 1038
    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 1039
    .line 1040
    .line 1041
    const/4 v10, 0x1

    .line 1042
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1043
    .line 1044
    .line 1045
    const/high16 v13, 0x41600000    # 14.0f

    .line 1046
    .line 1047
    invoke-virtual {v9, v10, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 1048
    .line 1049
    .line 1050
    const/4 v10, 0x0

    .line 1051
    const/high16 v13, 0x3f800000    # 1.0f

    .line 1052
    .line 1053
    invoke-virtual {v9, v10, v13}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1054
    .line 1055
    .line 1056
    const/4 v10, 0x0

    .line 1057
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 1058
    .line 1059
    .line 1060
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1061
    .line 1062
    sget v13, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 1063
    .line 1064
    const/4 v15, -0x1

    .line 1065
    invoke-direct {v10, v15, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1066
    .line 1067
    .line 1068
    invoke-virtual {v10, v7, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1069
    .line 1070
    .line 1071
    const/high16 v13, 0x42140000    # 37.0f

    .line 1072
    .line 1073
    invoke-static {v2, v13}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 1074
    .line 1075
    .line 1076
    move-result v13

    .line 1077
    float-to-int v13, v13

    .line 1078
    invoke-virtual {v10, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 1079
    .line 1080
    .line 1081
    sget v13, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 1082
    .line 1083
    invoke-virtual {v10, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 1084
    .line 1085
    .line 1086
    invoke-virtual {v8, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1087
    .line 1088
    .line 1089
    new-instance v10, Lcom/mycompany/app/view/MyButtonImage;

    .line 1090
    .line 1091
    invoke-direct {v10, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 1092
    .line 1093
    .line 1094
    sget-object v13, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 1095
    .line 1096
    invoke-virtual {v10, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1097
    .line 1098
    .line 1099
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1100
    .line 1101
    sget v15, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 1102
    .line 1103
    invoke-direct {v13, v15, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1104
    .line 1105
    .line 1106
    invoke-virtual {v13, v7, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1107
    .line 1108
    .line 1109
    invoke-virtual {v13, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1110
    .line 1111
    .line 1112
    invoke-virtual {v8, v10, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1113
    .line 1114
    .line 1115
    new-instance v13, Landroid/view/View;

    .line 1116
    .line 1117
    invoke-direct {v13, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1118
    .line 1119
    .line 1120
    const/16 v14, 0x8

    .line 1121
    .line 1122
    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1123
    .line 1124
    .line 1125
    const/high16 v14, 0x42f40000    # 122.0f

    .line 1126
    .line 1127
    invoke-static {v2, v14}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 1128
    .line 1129
    .line 1130
    move-result v14

    .line 1131
    float-to-int v14, v14

    .line 1132
    const/high16 v15, 0x41800000    # 16.0f

    .line 1133
    .line 1134
    invoke-static {v2, v15}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 1135
    .line 1136
    .line 1137
    move-result v2

    .line 1138
    float-to-int v2, v2

    .line 1139
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1140
    .line 1141
    invoke-direct {v15, v14, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1142
    .line 1143
    .line 1144
    invoke-virtual {v15, v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1145
    .line 1146
    .line 1147
    invoke-virtual {v15, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1148
    .line 1149
    .line 1150
    sget v2, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 1151
    .line 1152
    iput v2, v15, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1153
    .line 1154
    invoke-virtual {v15, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 1155
    .line 1156
    .line 1157
    invoke-virtual {v8, v13, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1158
    .line 1159
    .line 1160
    new-instance v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;

    .line 1161
    .line 1162
    invoke-direct {v2, v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1163
    .line 1164
    .line 1165
    iput v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->u:I

    .line 1166
    .line 1167
    iput-object v4, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->D:Lcom/mycompany/app/view/MyRoundFrame;

    .line 1168
    .line 1169
    iput-object v8, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->E:Landroid/widget/RelativeLayout;

    .line 1170
    .line 1171
    iput-object v11, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1172
    .line 1173
    iput-object v6, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->x:Lcom/mycompany/app/view/MyRoundImage;

    .line 1174
    .line 1175
    iput-object v12, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->F:Lcom/mycompany/app/view/MyRoundImage;

    .line 1176
    .line 1177
    iput-object v9, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->G:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1178
    .line 1179
    iput-object v10, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 1180
    .line 1181
    iput-object v13, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->H:Landroid/view/View;

    .line 1182
    .line 1183
    return-object v2

    .line 1184
    :cond_8
    const/16 v14, 0x8

    .line 1185
    .line 1186
    if-ne v1, v14, :cond_9

    .line 1187
    .line 1188
    new-instance v3, Landroid/widget/ImageView;

    .line 1189
    .line 1190
    invoke-direct {v3, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1191
    .line 1192
    .line 1193
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 1194
    .line 1195
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1196
    .line 1197
    .line 1198
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 1199
    .line 1200
    sget v4, Lcom/mycompany/app/main/MainApp;->A1:I

    .line 1201
    .line 1202
    const/4 v13, -0x1

    .line 1203
    invoke-direct {v2, v13, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1204
    .line 1205
    .line 1206
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1207
    .line 1208
    .line 1209
    new-instance v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;

    .line 1210
    .line 1211
    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1212
    .line 1213
    .line 1214
    iput v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->u:I

    .line 1215
    .line 1216
    return-object v2

    .line 1217
    :cond_9
    const/4 v13, -0x1

    .line 1218
    new-instance v4, Landroid/widget/FrameLayout;

    .line 1219
    .line 1220
    invoke-direct {v4, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1221
    .line 1222
    .line 1223
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    .line 1224
    .line 1225
    sget v6, Lcom/mycompany/app/main/MainApp;->A1:I

    .line 1226
    .line 1227
    invoke-direct {v5, v13, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1228
    .line 1229
    .line 1230
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1231
    .line 1232
    .line 1233
    const/4 v7, 0x1

    .line 1234
    if-ne v1, v7, :cond_a

    .line 1235
    .line 1236
    new-instance v5, Lcom/mycompany/app/view/MyCircleView;

    .line 1237
    .line 1238
    invoke-direct {v5, v2}, Lcom/mycompany/app/view/MyCircleView;-><init>(Landroid/content/Context;)V

    .line 1239
    .line 1240
    .line 1241
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 1242
    .line 1243
    sget v12, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 1244
    .line 1245
    invoke-direct {v6, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1246
    .line 1247
    .line 1248
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1249
    .line 1250
    const/high16 v12, 0x41200000    # 10.0f

    .line 1251
    .line 1252
    invoke-static {v2, v12}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 1253
    .line 1254
    .line 1255
    move-result v12

    .line 1256
    float-to-int v12, v12

    .line 1257
    iput v12, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1258
    .line 1259
    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1260
    .line 1261
    .line 1262
    goto :goto_0

    .line 1263
    :cond_a
    move-object v5, v3

    .line 1264
    :goto_0
    const/high16 v6, 0x41400000    # 12.0f

    .line 1265
    .line 1266
    if-ne v1, v7, :cond_b

    .line 1267
    .line 1268
    invoke-static {v2, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 1269
    .line 1270
    .line 1271
    move-result v7

    .line 1272
    float-to-int v7, v7

    .line 1273
    invoke-static {v2, v11}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 1274
    .line 1275
    .line 1276
    move-result v9

    .line 1277
    float-to-int v9, v9

    .line 1278
    invoke-static {v2, v10}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 1279
    .line 1280
    .line 1281
    move-result v10

    .line 1282
    float-to-int v10, v10

    .line 1283
    goto :goto_1

    .line 1284
    :cond_b
    const/high16 v7, 0x41980000    # 19.0f

    .line 1285
    .line 1286
    invoke-static {v2, v7}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 1287
    .line 1288
    .line 1289
    move-result v7

    .line 1290
    float-to-int v7, v7

    .line 1291
    const/high16 v10, 0x42180000    # 38.0f

    .line 1292
    .line 1293
    invoke-static {v2, v10}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 1294
    .line 1295
    .line 1296
    move-result v10

    .line 1297
    float-to-int v10, v10

    .line 1298
    invoke-static {v2, v9}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 1299
    .line 1300
    .line 1301
    move-result v9

    .line 1302
    float-to-int v9, v9

    .line 1303
    move/from16 v16, v10

    .line 1304
    .line 1305
    move v10, v9

    .line 1306
    move/from16 v9, v16

    .line 1307
    .line 1308
    :goto_1
    new-instance v11, Lcom/mycompany/app/view/MyRoundImage;

    .line 1309
    .line 1310
    invoke-direct {v11, v2}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 1311
    .line 1312
    .line 1313
    sget-object v12, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 1314
    .line 1315
    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1316
    .line 1317
    .line 1318
    sget v12, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 1319
    .line 1320
    invoke-virtual {v11, v12}, Lcom/mycompany/app/view/MyRoundImage;->setRoundRadius(I)V

    .line 1321
    .line 1322
    .line 1323
    int-to-float v7, v7

    .line 1324
    invoke-virtual {v11, v7}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 1325
    .line 1326
    .line 1327
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 1328
    .line 1329
    invoke-direct {v7, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1330
    .line 1331
    .line 1332
    const/4 v13, 0x1

    .line 1333
    iput v13, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1334
    .line 1335
    iput v10, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1336
    .line 1337
    invoke-virtual {v4, v11, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1338
    .line 1339
    .line 1340
    new-instance v7, Lcom/mycompany/app/view/MyButtonCheck;

    .line 1341
    .line 1342
    invoke-direct {v7, v2}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 1343
    .line 1344
    .line 1345
    invoke-static {v2, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 1346
    .line 1347
    .line 1348
    move-result v9

    .line 1349
    float-to-int v9, v9

    .line 1350
    int-to-float v9, v9

    .line 1351
    invoke-virtual {v7, v9}, Lcom/mycompany/app/view/MyButtonCheck;->setBgNorRadius(F)V

    .line 1352
    .line 1353
    .line 1354
    const/16 v14, 0x8

    .line 1355
    .line 1356
    invoke-virtual {v7, v14}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 1357
    .line 1358
    .line 1359
    invoke-static {v2, v8}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 1360
    .line 1361
    .line 1362
    move-result v8

    .line 1363
    float-to-int v8, v8

    .line 1364
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 1365
    .line 1366
    invoke-direct {v9, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1367
    .line 1368
    .line 1369
    const/4 v10, 0x1

    .line 1370
    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1371
    .line 1372
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 1373
    .line 1374
    invoke-virtual {v9, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 1375
    .line 1376
    .line 1377
    invoke-virtual {v4, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1378
    .line 1379
    .line 1380
    new-instance v8, Landroidx/appcompat/widget/AppCompatTextView;

    .line 1381
    .line 1382
    invoke-direct {v8, v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1383
    .line 1384
    .line 1385
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1386
    .line 1387
    .line 1388
    invoke-virtual {v8, v10, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 1389
    .line 1390
    .line 1391
    const/high16 v3, 0x40c00000    # 6.0f

    .line 1392
    .line 1393
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 1394
    .line 1395
    .line 1396
    move-result v3

    .line 1397
    float-to-int v3, v3

    .line 1398
    const/4 v6, 0x0

    .line 1399
    invoke-virtual {v8, v3, v6, v3, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 1400
    .line 1401
    .line 1402
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 1403
    .line 1404
    const/4 v12, -0x2

    .line 1405
    invoke-direct {v3, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1406
    .line 1407
    .line 1408
    iput v10, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1409
    .line 1410
    const/high16 v6, 0x42580000    # 54.0f

    .line 1411
    .line 1412
    invoke-static {v2, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 1413
    .line 1414
    .line 1415
    move-result v2

    .line 1416
    float-to-int v2, v2

    .line 1417
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1418
    .line 1419
    invoke-virtual {v4, v8, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1420
    .line 1421
    .line 1422
    new-instance v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;

    .line 1423
    .line 1424
    invoke-direct {v2, v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1425
    .line 1426
    .line 1427
    iput v1, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->u:I

    .line 1428
    .line 1429
    iput-object v5, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->w:Lcom/mycompany/app/view/MyCircleView;

    .line 1430
    .line 1431
    iput-object v11, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->x:Lcom/mycompany/app/view/MyRoundImage;

    .line 1432
    .line 1433
    iput-object v7, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->A:Lcom/mycompany/app/view/MyButtonCheck;

    .line 1434
    .line 1435
    iput-object v8, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1436
    .line 1437
    return-object v2
.end method

.method public final w(Ljava/lang/String;IILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_5

    .line 6
    .line 7
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_5

    .line 12
    .line 13
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->n:Ljava/util/List;

    .line 14
    .line 15
    if-eqz v0, :cond_5

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    if-gez p3, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->n:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iget v1, p0, Lcom/mycompany/app/quick/QuickAdapter;->d:I

    .line 34
    .line 35
    sub-int/2addr v0, v1

    .line 36
    iget v1, p0, Lcom/mycompany/app/quick/QuickAdapter;->e:I

    .line 37
    .line 38
    sub-int/2addr v0, v1

    .line 39
    if-le p3, v0, :cond_2

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    new-instance v0, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object p1, v0, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 48
    .line 49
    iput-object p4, v0, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->f:Ljava/lang/String;

    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    invoke-static {p4, p1}, Lcom/mycompany/app/main/MainUtil;->y2(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput-object p1, v0, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->g:Ljava/lang/String;

    .line 57
    .line 58
    iput p2, v0, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->h:I

    .line 59
    .line 60
    iput p3, v0, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->i:I

    .line 61
    .line 62
    iget p1, p0, Lcom/mycompany/app/quick/QuickAdapter;->d:I

    .line 63
    .line 64
    add-int/2addr p3, p1

    .line 65
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdapter;->n:Ljava/util/List;

    .line 66
    .line 67
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    iget p2, p0, Lcom/mycompany/app/quick/QuickAdapter;->e:I

    .line 72
    .line 73
    sub-int/2addr p1, p2

    .line 74
    if-le p3, p1, :cond_4

    .line 75
    .line 76
    iget p1, p0, Lcom/mycompany/app/quick/QuickAdapter;->g:I

    .line 77
    .line 78
    const/4 p2, 0x1

    .line 79
    if-eq p1, p2, :cond_3

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdapter;->n:Ljava/util/List;

    .line 83
    .line 84
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_4
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdapter;->n:Ljava/util/List;

    .line 89
    .line 90
    invoke-interface {p1, p3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 94
    .line 95
    .line 96
    :cond_5
    :goto_1
    return-void
.end method

.method public final x(Ljava/lang/String;)Z
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->f:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto/16 :goto_3

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->n:Ljava/util/List;

    .line 9
    .line 10
    if-eqz v0, :cond_c

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    goto/16 :goto_3

    .line 19
    .line 20
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    move v3, v1

    .line 30
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    const-string v5, "DbBookQuick_table"

    .line 35
    .line 36
    const-string v6, "0"

    .line 37
    .line 38
    const-string v7, "1"

    .line 39
    .line 40
    const-string v8, "_secret=? AND _path=?"

    .line 41
    .line 42
    const/4 v9, 0x1

    .line 43
    if-eqz v4, :cond_8

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 50
    .line 51
    if-nez v4, :cond_3

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    iget v10, v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->a:I

    .line 55
    .line 56
    if-eqz v10, :cond_4

    .line 57
    .line 58
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_4
    iget-boolean v10, v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->j:Z

    .line 63
    .line 64
    if-eqz v10, :cond_7

    .line 65
    .line 66
    iget-object v10, v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v10

    .line 72
    if-nez v10, :cond_7

    .line 73
    .line 74
    iget-boolean v10, v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->c:Z

    .line 75
    .line 76
    if-eqz v10, :cond_5

    .line 77
    .line 78
    iget-object v5, p0, Lcom/mycompany/app/quick/QuickAdapter;->f:Landroid/content/Context;

    .line 79
    .line 80
    iget-object v4, v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 81
    .line 82
    invoke-static {v5, v4, v9}, Lcom/mycompany/app/db/book/DbBookQuick;->v(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-eqz v4, :cond_2

    .line 87
    .line 88
    :goto_1
    move v3, v9

    .line 89
    goto :goto_0

    .line 90
    :cond_5
    sget-boolean v10, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 91
    .line 92
    if-eqz v10, :cond_6

    .line 93
    .line 94
    move-object v6, v7

    .line 95
    :cond_6
    iget-object v4, v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 96
    .line 97
    filled-new-array {v6, v4}, [Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    iget-object v6, p0, Lcom/mycompany/app/quick/QuickAdapter;->f:Landroid/content/Context;

    .line 102
    .line 103
    invoke-static {v6}, Lcom/mycompany/app/db/book/DbBookQuick;->i(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookQuick;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    invoke-static {v6, v5, v8, v4}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-lez v4, :cond_2

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_7
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-nez v0, :cond_b

    .line 127
    .line 128
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    const/4 v4, 0x2

    .line 133
    if-ge v0, v4, :cond_b

    .line 134
    .line 135
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    const/4 v4, 0x0

    .line 140
    if-ne v0, v9, :cond_a

    .line 141
    .line 142
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    check-cast v0, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 147
    .line 148
    if-eqz v0, :cond_b

    .line 149
    .line 150
    iget-object v9, v0, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 151
    .line 152
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 153
    .line 154
    .line 155
    move-result v9

    .line 156
    if-nez v9, :cond_b

    .line 157
    .line 158
    iget-object v9, p0, Lcom/mycompany/app/quick/QuickAdapter;->f:Landroid/content/Context;

    .line 159
    .line 160
    invoke-static {v9, p1}, Lcom/mycompany/app/db/book/DbBookQuick;->l(Landroid/content/Context;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    move-result v9

    .line 164
    const/4 v10, -0x1

    .line 165
    if-eq v9, v10, :cond_b

    .line 166
    .line 167
    sget-boolean v2, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 168
    .line 169
    if-eqz v2, :cond_9

    .line 170
    .line 171
    move-object v6, v7

    .line 172
    :cond_9
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 173
    .line 174
    filled-new-array {v6, v0}, [Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    const-string v2, "_rsv1"

    .line 179
    .line 180
    const-string v6, ""

    .line 181
    .line 182
    invoke-static {v2, v6}, Landroidx/work/impl/workers/a;->f(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    const-string v6, "_order"

    .line 187
    .line 188
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    .line 190
    .line 191
    move-result-object v7

    .line 192
    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 193
    .line 194
    .line 195
    iget-object v6, p0, Lcom/mycompany/app/quick/QuickAdapter;->f:Landroid/content/Context;

    .line 196
    .line 197
    invoke-static {v6}, Lcom/mycompany/app/db/book/DbBookQuick;->i(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookQuick;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 202
    .line 203
    .line 204
    move-result-object v6

    .line 205
    invoke-static {v6, v5, v2, v8, v0}, Lcom/mycompany/app/db/DbUtil;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->f:Landroid/content/Context;

    .line 209
    .line 210
    invoke-static {v0, p1, v1}, Lcom/mycompany/app/db/book/DbBookQuick;->v(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 211
    .line 212
    .line 213
    goto :goto_2

    .line 214
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->f:Landroid/content/Context;

    .line 215
    .line 216
    invoke-static {v0, p1, v1}, Lcom/mycompany/app/db/book/DbBookQuick;->v(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 217
    .line 218
    .line 219
    :goto_2
    move-object v2, v4

    .line 220
    :cond_b
    iput-object v2, p0, Lcom/mycompany/app/quick/QuickAdapter;->n:Ljava/util/List;

    .line 221
    .line 222
    return v3

    .line 223
    :cond_c
    :goto_3
    return v1
.end method

.method public final y(IZ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->k:Lcom/mycompany/app/view/MyManagerGrid;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->s(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_1
    invoke-static {p1}, Lcom/mycompany/app/quick/QuickAdapter;->J(Landroid/view/View;)Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_8

    .line 18
    .line 19
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 20
    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {p0, v1}, Lcom/mycompany/app/quick/QuickAdapter;->E(I)Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_3
    iget v2, v1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->a:I

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    const/high16 v4, 0x3f800000    # 1.0f

    .line 39
    .line 40
    if-ne v2, v3, :cond_5

    .line 41
    .line 42
    iget-boolean v2, p0, Lcom/mycompany/app/quick/QuickAdapter;->q:Z

    .line 43
    .line 44
    if-eqz v2, :cond_4

    .line 45
    .line 46
    const v4, 0x3ecccccd    # 0.4f

    .line 47
    .line 48
    .line 49
    :cond_4
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_5
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 54
    .line 55
    .line 56
    :goto_0
    iget v0, v1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->a:I

    .line 57
    .line 58
    if-eqz v0, :cond_6

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_6
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->q:Z

    .line 62
    .line 63
    if-eqz v0, :cond_7

    .line 64
    .line 65
    iget-object v0, p1, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->A:Lcom/mycompany/app/view/MyButtonCheck;

    .line 66
    .line 67
    const/4 v2, 0x0

    .line 68
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p1, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->A:Lcom/mycompany/app/view/MyButtonCheck;

    .line 72
    .line 73
    iget-boolean v0, v1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->j:Z

    .line 74
    .line 75
    invoke-virtual {p1, v0, p2}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_7
    iget-object p1, p1, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->A:Lcom/mycompany/app/view/MyButtonCheck;

    .line 80
    .line 81
    const/16 p2, 0x8

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 84
    .line 85
    .line 86
    :cond_8
    :goto_1
    return-void
.end method

.method public final z()I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickAdapter;->h:Z

    .line 2
    .line 3
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->C5(Z)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const v1, -0x9090a

    .line 8
    .line 9
    .line 10
    iget v2, p0, Lcom/mycompany/app/quick/QuickAdapter;->g:I

    .line 11
    .line 12
    const/high16 v3, -0x1000000

    .line 13
    .line 14
    if-eqz v0, :cond_5

    .line 15
    .line 16
    if-nez v2, :cond_2

    .line 17
    .line 18
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    sget-boolean v0, Lcom/mycompany/app/pref/PrefWeb;->U:Z

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, -0x1

    .line 28
    return v0

    .line 29
    :cond_1
    :goto_0
    return v3

    .line 30
    :cond_2
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 31
    .line 32
    if-nez v0, :cond_4

    .line 33
    .line 34
    sget-boolean v0, Lcom/mycompany/app/pref/PrefWeb;->U:Z

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    return v1

    .line 40
    :cond_4
    :goto_1
    return v3

    .line 41
    :cond_5
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 42
    .line 43
    if-eqz v0, :cond_7

    .line 44
    .line 45
    if-nez v2, :cond_6

    .line 46
    .line 47
    const v0, -0xdededf

    .line 48
    .line 49
    .line 50
    return v0

    .line 51
    :cond_6
    return v3

    .line 52
    :cond_7
    return v1
.end method
