.class public Lcom/mycompany/app/web/WebGridAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/web/WebGridAdapter$WebGridListener;,
        Lcom/mycompany/app/web/WebGridAdapter$WebGridHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mycompany/app/web/WebGridAdapter$WebGridHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:Landroid/content/Context;

.field public e:Lcom/mycompany/app/view/MyManagerGrid;

.field public f:Ljava/util/List;

.field public g:Ljava/lang/String;

.field public h:I

.field public i:Z

.field public j:[Z

.field public k:I

.field public l:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field public m:[Z

.field public n:[Z

.field public o:[Z

.field public p:[I

.field public q:Lcom/mycompany/app/web/WebGridAdapter$WebGridListener;

.field public final r:I

.field public s:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/mycompany/app/view/MyManagerGrid;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebGridAdapter;->d:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/web/WebGridAdapter;->g:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lcom/mycompany/app/web/WebGridAdapter;->h:I

    .line 9
    .line 10
    iput p5, p0, Lcom/mycompany/app/web/WebGridAdapter;->r:I

    .line 11
    .line 12
    iput-object p4, p0, Lcom/mycompany/app/web/WebGridAdapter;->e:Lcom/mycompany/app/view/MyManagerGrid;

    .line 13
    .line 14
    new-instance p1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 15
    .line 16
    invoke-direct {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 17
    .line 18
    .line 19
    const/4 p2, 0x1

    .line 20
    iput-boolean p2, p1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->a:Z

    .line 21
    .line 22
    iput-boolean p2, p1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->b:Z

    .line 23
    .line 24
    sget-object p2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->a()V

    .line 27
    .line 28
    .line 29
    new-instance p2, Lcom/nostra13/universalimageloader/core/display/NoneBitmapDisplayer;

    .line 30
    .line 31
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p2, p1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->f:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    .line 35
    .line 36
    new-instance p2, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 37
    .line 38
    invoke-direct {p2, p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;-><init>(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)V

    .line 39
    .line 40
    .line 41
    iput-object p2, p0, Lcom/mycompany/app/web/WebGridAdapter;->l:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 42
    .line 43
    return-void
.end method

.method public static z(Landroid/view/View;)Lcom/mycompany/app/web/WebGridAdapter$WebGridHolder;
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
    instance-of v0, p0, Lcom/mycompany/app/web/WebGridAdapter$WebGridHolder;

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
    check-cast p0, Lcom/mycompany/app/web/WebGridAdapter$WebGridHolder;

    .line 18
    .line 19
    return-object p0
.end method


# virtual methods
.method public final A()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebGridAdapter;->y()I

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
    return v1

    .line 9
    :cond_0
    iget v2, p0, Lcom/mycompany/app/web/WebGridAdapter;->k:I

    .line 10
    .line 11
    if-ne v2, v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_1
    return v1
.end method

.method public final B(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebGridAdapter;->f:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-ltz p1, :cond_1

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

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
    const/4 p1, 0x1

    .line 15
    return p1

    .line 16
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public final C()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebGridAdapter;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/mycompany/app/web/WebGridAdapter;->s:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/mycompany/app/web/WebGridAdapter;->e:Lcom/mycompany/app/view/MyManagerGrid;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/mycompany/app/web/WebGridAdapter;->f:Ljava/util/List;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/mycompany/app/web/WebGridAdapter;->g:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/mycompany/app/web/WebGridAdapter;->j:[Z

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput v1, p0, Lcom/mycompany/app/web/WebGridAdapter;->k:I

    .line 18
    .line 19
    iput-object v0, p0, Lcom/mycompany/app/web/WebGridAdapter;->l:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/mycompany/app/web/WebGridAdapter;->m:[Z

    .line 22
    .line 23
    iput-object v0, p0, Lcom/mycompany/app/web/WebGridAdapter;->n:[Z

    .line 24
    .line 25
    iput-object v0, p0, Lcom/mycompany/app/web/WebGridAdapter;->o:[Z

    .line 26
    .line 27
    iput-object v0, p0, Lcom/mycompany/app/web/WebGridAdapter;->p:[I

    .line 28
    .line 29
    iput-object v0, p0, Lcom/mycompany/app/web/WebGridAdapter;->q:Lcom/mycompany/app/web/WebGridAdapter$WebGridListener;

    .line 30
    .line 31
    return-void
.end method

.method public final D(ZZ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebGridAdapter;->y()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebGridAdapter;->i:Z

    .line 9
    .line 10
    if-eqz v0, :cond_4

    .line 11
    .line 12
    iget-object v0, p0, Lcom/mycompany/app/web/WebGridAdapter;->j:[Z

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->b([ZZ)V

    .line 18
    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    const/4 p2, 0x0

    .line 24
    :goto_0
    iget p1, p0, Lcom/mycompany/app/web/WebGridAdapter;->k:I

    .line 25
    .line 26
    if-ne p2, p1, :cond_3

    .line 27
    .line 28
    :goto_1
    return-void

    .line 29
    :cond_3
    iput p2, p0, Lcom/mycompany/app/web/WebGridAdapter;->k:I

    .line 30
    .line 31
    :cond_4
    const/4 p1, 0x1

    .line 32
    invoke-virtual {p0, p1}, Lcom/mycompany/app/web/WebGridAdapter;->v(Z)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final E(IZ)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebGridAdapter;->i:Z

    .line 2
    .line 3
    if-ne v0, p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iput-boolean p2, p0, Lcom/mycompany/app/web/WebGridAdapter;->i:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebGridAdapter;->y()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-nez p2, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebGridAdapter;->i:Z

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    new-array p2, p2, [Z

    .line 21
    .line 22
    iput-object p2, p0, Lcom/mycompany/app/web/WebGridAdapter;->j:[Z

    .line 23
    .line 24
    invoke-static {p2, v1}, Lcom/mycompany/app/main/MainUtil;->b([ZZ)V

    .line 25
    .line 26
    .line 27
    if-ltz p1, :cond_2

    .line 28
    .line 29
    iget-object p2, p0, Lcom/mycompany/app/web/WebGridAdapter;->j:[Z

    .line 30
    .line 31
    array-length v0, p2

    .line 32
    if-ge p1, v0, :cond_2

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    aput-boolean v0, p2, p1

    .line 36
    .line 37
    iput v0, p0, Lcom/mycompany/app/web/WebGridAdapter;->k:I

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    iput v1, p0, Lcom/mycompany/app/web/WebGridAdapter;->k:I

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_3
    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/mycompany/app/web/WebGridAdapter;->j:[Z

    .line 45
    .line 46
    iput v1, p0, Lcom/mycompany/app/web/WebGridAdapter;->k:I

    .line 47
    .line 48
    :goto_1
    invoke-virtual {p0, v1}, Lcom/mycompany/app/web/WebGridAdapter;->v(Z)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final F(Ljava/util/List;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebGridAdapter;->i:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/mycompany/app/web/WebGridAdapter;->f:Ljava/util/List;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebGridAdapter;->y()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 v0, 0x0

    .line 13
    if-lez p1, :cond_2

    .line 14
    .line 15
    iget v1, p0, Lcom/mycompany/app/web/WebGridAdapter;->r:I

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    iput-object v0, p0, Lcom/mycompany/app/web/WebGridAdapter;->m:[Z

    .line 20
    .line 21
    new-array v0, p1, [Z

    .line 22
    .line 23
    iput-object v0, p0, Lcom/mycompany/app/web/WebGridAdapter;->n:[Z

    .line 24
    .line 25
    new-array v0, p1, [Z

    .line 26
    .line 27
    iput-object v0, p0, Lcom/mycompany/app/web/WebGridAdapter;->o:[Z

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-array v1, p1, [Z

    .line 31
    .line 32
    iput-object v1, p0, Lcom/mycompany/app/web/WebGridAdapter;->m:[Z

    .line 33
    .line 34
    iput-object v0, p0, Lcom/mycompany/app/web/WebGridAdapter;->n:[Z

    .line 35
    .line 36
    iput-object v0, p0, Lcom/mycompany/app/web/WebGridAdapter;->o:[Z

    .line 37
    .line 38
    :goto_0
    new-array p1, p1, [I

    .line 39
    .line 40
    iput-object p1, p0, Lcom/mycompany/app/web/WebGridAdapter;->p:[I

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    iput-object v0, p0, Lcom/mycompany/app/web/WebGridAdapter;->m:[Z

    .line 44
    .line 45
    iput-object v0, p0, Lcom/mycompany/app/web/WebGridAdapter;->n:[Z

    .line 46
    .line 47
    iput-object v0, p0, Lcom/mycompany/app/web/WebGridAdapter;->o:[Z

    .line 48
    .line 49
    iput-object v0, p0, Lcom/mycompany/app/web/WebGridAdapter;->p:[I

    .line 50
    .line 51
    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final G(ILjava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/mycompany/app/web/WebGridAdapter;->B(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebGridAdapter;->f:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/String;

    .line 16
    .line 17
    :goto_0
    if-nez v0, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-static {p2}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    iget-object v2, p0, Lcom/mycompany/app/web/WebGridAdapter;->m:[Z

    .line 27
    .line 28
    if-eqz v2, :cond_3

    .line 29
    .line 30
    if-ltz p1, :cond_3

    .line 31
    .line 32
    array-length v3, v2

    .line 33
    if-ge p1, v3, :cond_3

    .line 34
    .line 35
    aget-boolean v2, v2, p1

    .line 36
    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    iget-object v2, p0, Lcom/mycompany/app/web/WebGridAdapter;->m:[Z

    .line 47
    .line 48
    const/4 v3, 0x1

    .line 49
    aput-boolean v3, v2, p1

    .line 50
    .line 51
    :cond_3
    iget-object v2, p0, Lcom/mycompany/app/web/WebGridAdapter;->f:Ljava/util/List;

    .line 52
    .line 53
    invoke-interface {v2, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Lcom/mycompany/app/web/WebGridAdapter;->d:Landroid/content/Context;

    .line 57
    .line 58
    invoke-static {v2}, Lcom/mycompany/app/data/DataUrl;->b(Landroid/content/Context;)Lcom/mycompany/app/data/DataUrl;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v2, v0, p2}, Lcom/mycompany/app/data/DataUrl;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    if-eqz v1, :cond_4

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->h(I)V

    .line 68
    .line 69
    .line 70
    :cond_4
    :goto_1
    return-void
.end method

.method public final H(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebGridAdapter;->j:[Z

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    if-ltz p1, :cond_6

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    if-lt p1, v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    aget-boolean v0, v0, p1

    .line 12
    .line 13
    xor-int/lit8 v1, v0, 0x1

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebGridAdapter;->y()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    iget-object v3, p0, Lcom/mycompany/app/web/WebGridAdapter;->j:[Z

    .line 23
    .line 24
    if-eqz v3, :cond_6

    .line 25
    .line 26
    if-ltz p1, :cond_6

    .line 27
    .line 28
    array-length v4, v3

    .line 29
    if-lt p1, v4, :cond_2

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    aget-boolean v4, v3, p1

    .line 33
    .line 34
    if-ne v4, v1, :cond_3

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_3
    aput-boolean v1, v3, p1

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    if-nez v0, :cond_4

    .line 41
    .line 42
    iget v0, p0, Lcom/mycompany/app/web/WebGridAdapter;->k:I

    .line 43
    .line 44
    if-ge v0, v2, :cond_5

    .line 45
    .line 46
    add-int/2addr v0, v1

    .line 47
    iput v0, p0, Lcom/mycompany/app/web/WebGridAdapter;->k:I

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_4
    iget v0, p0, Lcom/mycompany/app/web/WebGridAdapter;->k:I

    .line 51
    .line 52
    if-lez v0, :cond_5

    .line 53
    .line 54
    sub-int/2addr v0, v1

    .line 55
    iput v0, p0, Lcom/mycompany/app/web/WebGridAdapter;->k:I

    .line 56
    .line 57
    :cond_5
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/web/WebGridAdapter;->w(IZ)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    :cond_6
    :goto_1
    return-void
.end method

.method public final I(Ljava/util/List;)V
    .locals 6

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebGridAdapter;->f:Ljava/util/List;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/mycompany/app/web/WebGridAdapter;->f:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/web/WebGridAdapter;->m:[Z

    .line 22
    .line 23
    array-length v1, v1

    .line 24
    const/4 v2, 0x0

    .line 25
    :goto_0
    if-ge v2, v0, :cond_3

    .line 26
    .line 27
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v3}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_2

    .line 38
    .line 39
    iget-object v4, p0, Lcom/mycompany/app/web/WebGridAdapter;->m:[Z

    .line 40
    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    if-ge v2, v1, :cond_2

    .line 44
    .line 45
    const/4 v5, 0x1

    .line 46
    aput-boolean v5, v4, v2

    .line 47
    .line 48
    :cond_2
    iget-object v4, p0, Lcom/mycompany/app/web/WebGridAdapter;->f:Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {v4, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    add-int/lit8 v2, v2, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    :goto_1
    return-void
.end method

.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/web/WebGridAdapter;->s:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebGridAdapter;->f:Ljava/util/List;

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
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    return v0
.end method

.method public final f(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/mycompany/app/web/WebGridAdapter;->B(I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    return p1
.end method

.method public final n(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 13

    .line 1
    check-cast p1, Lcom/mycompany/app/web/WebGridAdapter$WebGridHolder;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p2}, Lcom/mycompany/app/web/WebGridAdapter;->B(I)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/16 v2, 0x8

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x0

    .line 19
    if-nez v1, :cond_5

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebGridAdapter;->y()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const/16 p2, 0x14

    .line 26
    .line 27
    if-le p1, p2, :cond_4

    .line 28
    .line 29
    instance-of p1, v0, Landroid/widget/ImageView;

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 34
    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    move-object p1, v0

    .line 38
    check-cast p1, Landroid/widget/ImageView;

    .line 39
    .line 40
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->outline_list_footer_dark_24:I

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move-object p1, v0

    .line 47
    check-cast p1, Landroid/widget/ImageView;

    .line 48
    .line 49
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->outline_list_footer_black_24:I

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    .line 53
    .line 54
    :cond_2
    :goto_0
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 55
    .line 56
    if-eqz p1, :cond_3

    .line 57
    .line 58
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 62
    .line 63
    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 64
    .line 65
    .line 66
    new-instance p1, Lcom/mycompany/app/web/WebGridAdapter$1;

    .line 67
    .line 68
    invoke-direct {p1, p0}, Lcom/mycompany/app/web/WebGridAdapter$1;-><init>(Lcom/mycompany/app/web/WebGridAdapter;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_4
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_5
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p1, Lcom/mycompany/app/web/WebGridAdapter$WebGridHolder;->u:Lcom/mycompany/app/view/MyThumbView;

    .line 98
    .line 99
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p1, Lcom/mycompany/app/web/WebGridAdapter$WebGridHolder;->u:Lcom/mycompany/app/view/MyThumbView;

    .line 103
    .line 104
    new-instance v1, Lcom/mycompany/app/web/WebGridAdapter$2;

    .line 105
    .line 106
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebGridAdapter$2;-><init>(Lcom/mycompany/app/web/WebGridAdapter;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    .line 111
    .line 112
    iget-object v0, p1, Lcom/mycompany/app/web/WebGridAdapter$WebGridHolder;->u:Lcom/mycompany/app/view/MyThumbView;

    .line 113
    .line 114
    new-instance v1, Lcom/mycompany/app/web/WebGridAdapter$3;

    .line 115
    .line 116
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebGridAdapter$3;-><init>(Lcom/mycompany/app/web/WebGridAdapter;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lcom/mycompany/app/web/WebGridAdapter;->j:[Z

    .line 123
    .line 124
    if-eqz v0, :cond_7

    .line 125
    .line 126
    if-ltz p2, :cond_7

    .line 127
    .line 128
    array-length v1, v0

    .line 129
    if-lt p2, v1, :cond_6

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_6
    aget-boolean v0, v0, p2

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_7
    :goto_2
    move v0, v4

    .line 136
    :goto_3
    iget-object v1, p1, Lcom/mycompany/app/web/WebGridAdapter$WebGridHolder;->v:Lcom/mycompany/app/view/MyFadeView;

    .line 137
    .line 138
    if-eqz v0, :cond_8

    .line 139
    .line 140
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyFadeView;->f(Z)V

    .line 141
    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_8
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyFadeView;->d(Z)V

    .line 145
    .line 146
    .line 147
    :goto_4
    iget-object v1, p1, Lcom/mycompany/app/web/WebGridAdapter$WebGridHolder;->x:Lcom/mycompany/app/view/MyButtonCheck;

    .line 148
    .line 149
    iget-boolean v5, p0, Lcom/mycompany/app/web/WebGridAdapter;->i:Z

    .line 150
    .line 151
    invoke-virtual {v1, v5, v4}, Lcom/mycompany/app/view/MyButtonCheck;->t(ZZ)V

    .line 152
    .line 153
    .line 154
    iget-object v1, p1, Lcom/mycompany/app/web/WebGridAdapter$WebGridHolder;->x:Lcom/mycompany/app/view/MyButtonCheck;

    .line 155
    .line 156
    invoke-virtual {v1, v0, v4}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 157
    .line 158
    .line 159
    iget-object v0, p1, Lcom/mycompany/app/web/WebGridAdapter$WebGridHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 160
    .line 161
    iget-boolean v1, p0, Lcom/mycompany/app/web/WebGridAdapter;->i:Z

    .line 162
    .line 163
    if-eqz v1, :cond_9

    .line 164
    .line 165
    move v2, v4

    .line 166
    :cond_9
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebGridAdapter;->y()I

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-nez v0, :cond_a

    .line 174
    .line 175
    iget-object v0, p1, Lcom/mycompany/app/web/WebGridAdapter$WebGridHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 176
    .line 177
    const-string v1, "0 / 0"

    .line 178
    .line 179
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    .line 181
    .line 182
    goto :goto_5

    .line 183
    :cond_a
    iget-object v1, p1, Lcom/mycompany/app/web/WebGridAdapter$WebGridHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 184
    .line 185
    add-int/lit8 v2, p2, 0x1

    .line 186
    .line 187
    invoke-static {v2, v0}, Lcom/mycompany/app/main/MainUtil;->h3(II)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    .line 193
    .line 194
    :goto_5
    iget-object v0, p1, Lcom/mycompany/app/web/WebGridAdapter$WebGridHolder;->u:Lcom/mycompany/app/view/MyThumbView;

    .line 195
    .line 196
    iget-object v1, p1, Lcom/mycompany/app/web/WebGridAdapter$WebGridHolder;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 197
    .line 198
    if-eqz v0, :cond_1b

    .line 199
    .line 200
    if-nez v1, :cond_b

    .line 201
    .line 202
    goto/16 :goto_e

    .line 203
    .line 204
    :cond_b
    invoke-virtual {p0, p2}, Lcom/mycompany/app/web/WebGridAdapter;->B(I)Z

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    if-nez v2, :cond_c

    .line 209
    .line 210
    goto/16 :goto_e

    .line 211
    .line 212
    :cond_c
    invoke-virtual {p0, p2}, Lcom/mycompany/app/web/WebGridAdapter;->B(I)Z

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    if-nez v2, :cond_d

    .line 217
    .line 218
    move-object v2, v3

    .line 219
    goto :goto_6

    .line 220
    :cond_d
    iget-object v2, p0, Lcom/mycompany/app/web/WebGridAdapter;->f:Ljava/util/List;

    .line 221
    .line 222
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    check-cast v2, Ljava/lang/String;

    .line 227
    .line 228
    :goto_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 229
    .line 230
    .line 231
    move-result v5

    .line 232
    const-string v6, "None"

    .line 233
    .line 234
    if-eqz v5, :cond_f

    .line 235
    .line 236
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    .line 238
    .line 239
    sget-boolean p2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 240
    .line 241
    if-eqz p2, :cond_e

    .line 242
    .line 243
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->outline_error_dark_web_24:I

    .line 244
    .line 245
    goto :goto_7

    .line 246
    :cond_e
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->outline_error_black_web_24:I

    .line 247
    .line 248
    :goto_7
    invoke-virtual {v0, p2}, Lcom/mycompany/app/view/MyThumbView;->setImageResource(I)V

    .line 249
    .line 250
    .line 251
    goto/16 :goto_e

    .line 252
    .line 253
    :cond_f
    const-string v5, "JPG"

    .line 254
    .line 255
    const-string v7, "WEBP"

    .line 256
    .line 257
    iget v8, p0, Lcom/mycompany/app/web/WebGridAdapter;->r:I

    .line 258
    .line 259
    const/4 v9, 0x2

    .line 260
    if-eqz v8, :cond_12

    .line 261
    .line 262
    invoke-static {v2}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 263
    .line 264
    .line 265
    move-result v10

    .line 266
    if-nez v10, :cond_12

    .line 267
    .line 268
    if-ne v8, v9, :cond_10

    .line 269
    .line 270
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    .line 272
    .line 273
    goto :goto_8

    .line 274
    :cond_10
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    .line 276
    .line 277
    :goto_8
    sget-boolean p2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 278
    .line 279
    if-eqz p2, :cond_11

    .line 280
    .line 281
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->outline_image_dark_web_24:I

    .line 282
    .line 283
    goto :goto_9

    .line 284
    :cond_11
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->outline_image_black_web_24:I

    .line 285
    .line 286
    :goto_9
    invoke-virtual {v0, p2}, Lcom/mycompany/app/view/MyThumbView;->setImageResource(I)V

    .line 287
    .line 288
    .line 289
    goto/16 :goto_e

    .line 290
    .line 291
    :cond_12
    iget-object v10, p0, Lcom/mycompany/app/web/WebGridAdapter;->m:[Z

    .line 292
    .line 293
    const/4 v11, 0x1

    .line 294
    if-eqz v10, :cond_13

    .line 295
    .line 296
    if-ltz p2, :cond_13

    .line 297
    .line 298
    array-length v12, v10

    .line 299
    if-ge p2, v12, :cond_13

    .line 300
    .line 301
    aput-boolean v11, v10, p2

    .line 302
    .line 303
    :cond_13
    if-ne v8, v9, :cond_14

    .line 304
    .line 305
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    .line 307
    .line 308
    goto :goto_a

    .line 309
    :cond_14
    if-ne v8, v11, :cond_15

    .line 310
    .line 311
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    .line 313
    .line 314
    goto :goto_a

    .line 315
    :cond_15
    invoke-static {v2, v11}, Lcom/mycompany/app/main/MainUtil;->W3(Ljava/lang/String;Z)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v5

    .line 319
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 320
    .line 321
    .line 322
    move-result v7

    .line 323
    if-eqz v7, :cond_16

    .line 324
    .line 325
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    .line 327
    .line 328
    goto :goto_a

    .line 329
    :cond_16
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 330
    .line 331
    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v5

    .line 335
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    .line 337
    .line 338
    :goto_a
    invoke-static {v9, v2}, Lcom/nostra13/universalimageloader/utils/MemoryCacheUtils;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v1

    .line 342
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 343
    .line 344
    .line 345
    move-result-object v5

    .line 346
    invoke-virtual {v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->g()Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;

    .line 347
    .line 348
    .line 349
    move-result-object v5

    .line 350
    invoke-virtual {v5, v1}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 355
    .line 356
    .line 357
    move-result v5

    .line 358
    if-eqz v5, :cond_18

    .line 359
    .line 360
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    .line 361
    .line 362
    .line 363
    move-result p2

    .line 364
    if-eqz p2, :cond_17

    .line 365
    .line 366
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 367
    .line 368
    .line 369
    move-result p2

    .line 370
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 371
    .line 372
    .line 373
    move-result v2

    .line 374
    const v3, -0x70708

    .line 375
    .line 376
    .line 377
    invoke-virtual {v0, p2, v2, v3}, Lcom/mycompany/app/view/MyThumbView;->j(III)V

    .line 378
    .line 379
    .line 380
    goto :goto_b

    .line 381
    :cond_17
    invoke-virtual {v0, v4, v4, v4}, Lcom/mycompany/app/view/MyThumbView;->j(III)V

    .line 382
    .line 383
    .line 384
    :goto_b
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyThumbView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 385
    .line 386
    .line 387
    goto :goto_e

    .line 388
    :cond_18
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 389
    .line 390
    if-eqz v1, :cond_19

    .line 391
    .line 392
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_image_dark_web_24:I

    .line 393
    .line 394
    goto :goto_c

    .line 395
    :cond_19
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_image_black_web_24:I

    .line 396
    .line 397
    :goto_c
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyThumbView;->setImageResource(I)V

    .line 398
    .line 399
    .line 400
    iget-object v1, p0, Lcom/mycompany/app/web/WebGridAdapter;->g:Ljava/lang/String;

    .line 401
    .line 402
    iget-object v4, p0, Lcom/mycompany/app/web/WebGridAdapter;->o:[Z

    .line 403
    .line 404
    if-eqz v4, :cond_1a

    .line 405
    .line 406
    if-ltz p2, :cond_1a

    .line 407
    .line 408
    array-length v5, v4

    .line 409
    if-ge p2, v5, :cond_1a

    .line 410
    .line 411
    aget-boolean v4, v4, p2

    .line 412
    .line 413
    if-eqz v4, :cond_1a

    .line 414
    .line 415
    sget-boolean v1, Lcom/mycompany/app/main/MainConst;->a:Z

    .line 416
    .line 417
    goto :goto_d

    .line 418
    :cond_1a
    move-object v3, v1

    .line 419
    :goto_d
    new-instance v1, Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 420
    .line 421
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 422
    .line 423
    .line 424
    const/4 v4, 0x7

    .line 425
    iput v4, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->a:I

    .line 426
    .line 427
    iput-object v2, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 428
    .line 429
    iput-object v3, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->r:Ljava/lang/String;

    .line 430
    .line 431
    iput p2, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 432
    .line 433
    iput v9, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->t:I

    .line 434
    .line 435
    iput-boolean v11, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->u:Z

    .line 436
    .line 437
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 438
    .line 439
    .line 440
    move-result-object p2

    .line 441
    iget-object v2, p0, Lcom/mycompany/app/web/WebGridAdapter;->l:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 442
    .line 443
    new-instance v3, Lcom/mycompany/app/web/WebGridAdapter$4;

    .line 444
    .line 445
    invoke-direct {v3, p0}, Lcom/mycompany/app/web/WebGridAdapter$4;-><init>(Lcom/mycompany/app/web/WebGridAdapter;)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {p2, v1, v0, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->c(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;)V

    .line 449
    .line 450
    .line 451
    :cond_1b
    :goto_e
    sget-boolean p2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 452
    .line 453
    const/high16 v0, -0x1000000

    .line 454
    .line 455
    if-eqz p2, :cond_1c

    .line 456
    .line 457
    iget-object p2, p1, Lcom/mycompany/app/web/WebGridAdapter$WebGridHolder;->u:Lcom/mycompany/app/view/MyThumbView;

    .line 458
    .line 459
    const v1, -0xdededf

    .line 460
    .line 461
    .line 462
    invoke-virtual {p2, v1}, Lcom/mycompany/app/view/MyThumbView;->setBackColor(I)V

    .line 463
    .line 464
    .line 465
    iget-object p2, p1, Lcom/mycompany/app/web/WebGridAdapter$WebGridHolder;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 466
    .line 467
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->round_label_dark:I

    .line 468
    .line 469
    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 470
    .line 471
    .line 472
    iget-object p2, p1, Lcom/mycompany/app/web/WebGridAdapter$WebGridHolder;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 473
    .line 474
    const v1, -0x50506

    .line 475
    .line 476
    .line 477
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 478
    .line 479
    .line 480
    iget-object p2, p1, Lcom/mycompany/app/web/WebGridAdapter$WebGridHolder;->x:Lcom/mycompany/app/view/MyButtonCheck;

    .line 481
    .line 482
    invoke-virtual {p2, v0}, Lcom/mycompany/app/view/MyButtonCheck;->setBgNorColor(I)V

    .line 483
    .line 484
    .line 485
    iget-object p2, p1, Lcom/mycompany/app/web/WebGridAdapter$WebGridHolder;->x:Lcom/mycompany/app/view/MyButtonCheck;

    .line 486
    .line 487
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_dark_24:I

    .line 488
    .line 489
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_dark_24:I

    .line 490
    .line 491
    invoke-virtual {p2, v0, v2}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 492
    .line 493
    .line 494
    iget-object p2, p1, Lcom/mycompany/app/web/WebGridAdapter$WebGridHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 495
    .line 496
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->round_label_dark:I

    .line 497
    .line 498
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 499
    .line 500
    .line 501
    iget-object p1, p1, Lcom/mycompany/app/web/WebGridAdapter$WebGridHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 502
    .line 503
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 504
    .line 505
    .line 506
    return-void

    .line 507
    :cond_1c
    iget-object p2, p1, Lcom/mycompany/app/web/WebGridAdapter$WebGridHolder;->u:Lcom/mycompany/app/view/MyThumbView;

    .line 508
    .line 509
    const/4 v1, -0x1

    .line 510
    invoke-virtual {p2, v1}, Lcom/mycompany/app/view/MyThumbView;->setBackColor(I)V

    .line 511
    .line 512
    .line 513
    iget-object p2, p1, Lcom/mycompany/app/web/WebGridAdapter$WebGridHolder;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 514
    .line 515
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->round_label:I

    .line 516
    .line 517
    invoke-virtual {p2, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 518
    .line 519
    .line 520
    iget-object p2, p1, Lcom/mycompany/app/web/WebGridAdapter$WebGridHolder;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 521
    .line 522
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 523
    .line 524
    .line 525
    iget-object p2, p1, Lcom/mycompany/app/web/WebGridAdapter$WebGridHolder;->x:Lcom/mycompany/app/view/MyButtonCheck;

    .line 526
    .line 527
    invoke-virtual {p2, v1}, Lcom/mycompany/app/view/MyButtonCheck;->setBgNorColor(I)V

    .line 528
    .line 529
    .line 530
    iget-object p2, p1, Lcom/mycompany/app/web/WebGridAdapter$WebGridHolder;->x:Lcom/mycompany/app/view/MyButtonCheck;

    .line 531
    .line 532
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_black_24:I

    .line 533
    .line 534
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_black_24:I

    .line 535
    .line 536
    invoke-virtual {p2, v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 537
    .line 538
    .line 539
    iget-object p2, p1, Lcom/mycompany/app/web/WebGridAdapter$WebGridHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 540
    .line 541
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->round_label:I

    .line 542
    .line 543
    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 544
    .line 545
    .line 546
    iget-object p1, p1, Lcom/mycompany/app/web/WebGridAdapter$WebGridHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 547
    .line 548
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 549
    .line 550
    .line 551
    return-void
.end method

.method public final o(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    const/4 v1, -0x1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne p2, v2, :cond_1

    .line 12
    .line 13
    new-instance p2, Landroid/widget/ImageView;

    .line 14
    .line 15
    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 19
    .line 20
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 21
    .line 22
    .line 23
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    .line 24
    .line 25
    sget v0, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 26
    .line 27
    invoke-direct {p1, v1, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    .line 32
    .line 33
    new-instance p1, Lcom/mycompany/app/web/WebGridAdapter$WebGridHolder;

    .line 34
    .line 35
    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    return-object p1

    .line 39
    :cond_1
    new-instance p2, Landroid/widget/FrameLayout;

    .line 40
    .line 41
    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 45
    .line 46
    iget v4, p0, Lcom/mycompany/app/web/WebGridAdapter;->h:I

    .line 47
    .line 48
    invoke-direct {v3, v1, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    .line 53
    .line 54
    new-instance v3, Landroid/widget/FrameLayout;

    .line 55
    .line 56
    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 57
    .line 58
    .line 59
    sget v4, Lcom/mycompany/app/main/MainApp;->p1:I

    .line 60
    .line 61
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, v3, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 65
    .line 66
    .line 67
    new-instance v4, Lcom/mycompany/app/view/MyThumbView;

    .line 68
    .line 69
    invoke-direct {v4, p1}, Lcom/mycompany/app/view/MyThumbView;-><init>(Landroid/content/Context;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v4, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 73
    .line 74
    .line 75
    new-instance v5, Lcom/mycompany/app/view/MyFadeView;

    .line 76
    .line 77
    invoke-direct {v5, p1}, Lcom/mycompany/app/view/MyFadeView;-><init>(Landroid/content/Context;)V

    .line 78
    .line 79
    .line 80
    const/high16 v6, 0x71000000

    .line 81
    .line 82
    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 83
    .line 84
    .line 85
    const/16 v6, 0x8

    .line 86
    .line 87
    invoke-virtual {v5, v6}, Lcom/mycompany/app/view/MyFadeView;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v5, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 91
    .line 92
    .line 93
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 94
    .line 95
    invoke-direct {v1, p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    .line 97
    .line 98
    sget v7, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 99
    .line 100
    const/4 v8, 0x0

    .line 101
    invoke-virtual {v1, v7, v8, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 105
    .line 106
    .line 107
    const/high16 v7, 0x41600000    # 14.0f

    .line 108
    .line 109
    invoke-virtual {v1, v2, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 110
    .line 111
    .line 112
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 113
    .line 114
    const/4 v10, -0x2

    .line 115
    invoke-direct {v9, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 116
    .line 117
    .line 118
    const v11, 0x800005

    .line 119
    .line 120
    .line 121
    iput v11, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 122
    .line 123
    sget v11, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 124
    .line 125
    iput v11, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 126
    .line 127
    invoke-virtual {v9, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3, v1, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    .line 132
    .line 133
    new-instance v9, Lcom/mycompany/app/view/MyButtonCheck;

    .line 134
    .line 135
    invoke-direct {v9, p1}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 136
    .line 137
    .line 138
    const/high16 v11, 0x41400000    # 12.0f

    .line 139
    .line 140
    invoke-static {p1, v11}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 141
    .line 142
    .line 143
    move-result v11

    .line 144
    float-to-int v11, v11

    .line 145
    int-to-float v11, v11

    .line 146
    invoke-virtual {v9, v11}, Lcom/mycompany/app/view/MyButtonCheck;->setBgNorRadius(F)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v9, v6}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 150
    .line 151
    .line 152
    const/high16 v11, 0x42000000    # 32.0f

    .line 153
    .line 154
    invoke-static {p1, v11}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 155
    .line 156
    .line 157
    move-result v11

    .line 158
    float-to-int v11, v11

    .line 159
    invoke-virtual {v3, v9, v11, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 160
    .line 161
    .line 162
    new-instance v11, Landroidx/appcompat/widget/AppCompatTextView;

    .line 163
    .line 164
    invoke-direct {v11, p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 165
    .line 166
    .line 167
    sget p1, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 168
    .line 169
    invoke-virtual {v11, p1, v8, p1, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 170
    .line 171
    .line 172
    const/4 p1, 0x3

    .line 173
    invoke-virtual {v11, p1}, Landroid/view/View;->setTextDirection(I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v11, v2, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v11, v6}, Landroid/view/View;->setVisibility(I)V

    .line 183
    .line 184
    .line 185
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 186
    .line 187
    invoke-direct {p1, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 188
    .line 189
    .line 190
    const v0, 0x800055

    .line 191
    .line 192
    .line 193
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 194
    .line 195
    sget v0, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 196
    .line 197
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 198
    .line 199
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v3, v11, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    .line 204
    .line 205
    new-instance p1, Lcom/mycompany/app/web/WebGridAdapter$WebGridHolder;

    .line 206
    .line 207
    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 208
    .line 209
    .line 210
    iput-object v4, p1, Lcom/mycompany/app/web/WebGridAdapter$WebGridHolder;->u:Lcom/mycompany/app/view/MyThumbView;

    .line 211
    .line 212
    iput-object v5, p1, Lcom/mycompany/app/web/WebGridAdapter$WebGridHolder;->v:Lcom/mycompany/app/view/MyFadeView;

    .line 213
    .line 214
    iput-object v1, p1, Lcom/mycompany/app/web/WebGridAdapter$WebGridHolder;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 215
    .line 216
    iput-object v9, p1, Lcom/mycompany/app/web/WebGridAdapter$WebGridHolder;->x:Lcom/mycompany/app/view/MyButtonCheck;

    .line 217
    .line 218
    iput-object v11, p1, Lcom/mycompany/app/web/WebGridAdapter$WebGridHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 219
    .line 220
    return-object p1
.end method

.method public final v(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebGridAdapter;->e:Lcom/mycompany/app/view/MyManagerGrid;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->U0()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->V0()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    add-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    if-ge v1, v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0, v1, p1}, Lcom/mycompany/app/web/WebGridAdapter;->w(IZ)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    move-object v2, v3

    .line 28
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    if-nez v2, :cond_3

    .line 32
    .line 33
    :goto_1
    return-void

    .line 34
    :cond_3
    new-instance p1, Lcom/mycompany/app/web/WebGridAdapter$5;

    .line 35
    .line 36
    invoke-direct {p1, p0}, Lcom/mycompany/app/web/WebGridAdapter$5;-><init>(Lcom/mycompany/app/web/WebGridAdapter;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final w(IZ)Landroid/view/View;
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/mycompany/app/web/WebGridAdapter;->B(I)Z

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
    iget-object v0, p0, Lcom/mycompany/app/web/WebGridAdapter;->e:Lcom/mycompany/app/view/MyManagerGrid;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->s(I)Landroid/view/View;

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
    invoke-static {v0}, Lcom/mycompany/app/web/WebGridAdapter;->z(Landroid/view/View;)Lcom/mycompany/app/web/WebGridAdapter$WebGridHolder;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-nez v1, :cond_3

    .line 25
    .line 26
    :goto_0
    const/4 p1, 0x0

    .line 27
    return-object p1

    .line 28
    :cond_3
    iget-object v2, p0, Lcom/mycompany/app/web/WebGridAdapter;->j:[Z

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    if-eqz v2, :cond_5

    .line 32
    .line 33
    if-ltz p1, :cond_5

    .line 34
    .line 35
    array-length v4, v2

    .line 36
    if-lt p1, v4, :cond_4

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_4
    aget-boolean p1, v2, p1

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_5
    :goto_1
    move p1, v3

    .line 43
    :goto_2
    iget-object v2, v1, Lcom/mycompany/app/web/WebGridAdapter$WebGridHolder;->v:Lcom/mycompany/app/view/MyFadeView;

    .line 44
    .line 45
    if-eqz p1, :cond_6

    .line 46
    .line 47
    invoke-virtual {v2, p2}, Lcom/mycompany/app/view/MyFadeView;->f(Z)V

    .line 48
    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_6
    invoke-virtual {v2, p2}, Lcom/mycompany/app/view/MyFadeView;->d(Z)V

    .line 52
    .line 53
    .line 54
    :goto_3
    iget-object v2, v1, Lcom/mycompany/app/web/WebGridAdapter$WebGridHolder;->x:Lcom/mycompany/app/view/MyButtonCheck;

    .line 55
    .line 56
    iget-boolean v4, p0, Lcom/mycompany/app/web/WebGridAdapter;->i:Z

    .line 57
    .line 58
    invoke-virtual {v2, v4, v3}, Lcom/mycompany/app/view/MyButtonCheck;->t(ZZ)V

    .line 59
    .line 60
    .line 61
    iget-object v2, v1, Lcom/mycompany/app/web/WebGridAdapter$WebGridHolder;->x:Lcom/mycompany/app/view/MyButtonCheck;

    .line 62
    .line 63
    invoke-virtual {v2, p1, p2}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 64
    .line 65
    .line 66
    iget-object p1, v1, Lcom/mycompany/app/web/WebGridAdapter$WebGridHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 67
    .line 68
    iget-boolean p2, p0, Lcom/mycompany/app/web/WebGridAdapter;->i:Z

    .line 69
    .line 70
    if-eqz p2, :cond_7

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_7
    const/16 v3, 0x8

    .line 74
    .line 75
    :goto_4
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    return-object v0
.end method

.method public final x()Ljava/util/ArrayList;
    .locals 7

    .line 1
    iget v0, p0, Lcom/mycompany/app/web/WebGridAdapter;->k:I

    .line 2
    .line 3
    if-lez v0, :cond_7

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebGridAdapter;->y()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_4

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebGridAdapter;->A()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/mycompany/app/web/WebGridAdapter;->f:Ljava/util/List;

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    move v3, v2

    .line 33
    :goto_0
    if-ge v3, v0, :cond_6

    .line 34
    .line 35
    iget-object v4, p0, Lcom/mycompany/app/web/WebGridAdapter;->f:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Ljava/lang/String;

    .line 42
    .line 43
    if-nez v4, :cond_2

    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_2
    iget-object v5, p0, Lcom/mycompany/app/web/WebGridAdapter;->j:[Z

    .line 47
    .line 48
    if-eqz v5, :cond_4

    .line 49
    .line 50
    if-ltz v3, :cond_4

    .line 51
    .line 52
    array-length v6, v5

    .line 53
    if-lt v3, v6, :cond_3

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    aget-boolean v5, v5, v3

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_4
    :goto_1
    move v5, v2

    .line 60
    :goto_2
    if-nez v5, :cond_5

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_5
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_6
    return-object v1

    .line 70
    :cond_7
    :goto_4
    const/4 v0, 0x0

    .line 71
    return-object v0
.end method

.method public final y()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebGridAdapter;->f:Ljava/util/List;

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
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method
