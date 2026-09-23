.class public Lcom/mycompany/app/main/MenuIconAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/main/MenuIconAdapter$MenuListener;,
        Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;,
        Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Landroid/view/View;

.field public final e:I

.field public f:I

.field public g:Z

.field public final h:Z

.field public i:Lcom/mycompany/app/main/MenuIconAdapter$MenuListener;

.field public j:Ljava/util/ArrayList;

.field public k:Z

.field public l:Z

.field public m:I

.field public n:I

.field public o:Lcom/mycompany/app/view/MyIconView;

.field public p:I


# direct methods
.method public constructor <init>(Landroid/view/View;[IIZLcom/mycompany/app/main/MenuIconAdapter$MenuListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MenuIconAdapter;->d:Landroid/view/View;

    .line 5
    .line 6
    iput p3, p0, Lcom/mycompany/app/main/MenuIconAdapter;->e:I

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/mycompany/app/main/MenuIconAdapter;->f:I

    .line 10
    .line 11
    iput-boolean p4, p0, Lcom/mycompany/app/main/MenuIconAdapter;->h:Z

    .line 12
    .line 13
    iput-object p5, p0, Lcom/mycompany/app/main/MenuIconAdapter;->i:Lcom/mycompany/app/main/MenuIconAdapter$MenuListener;

    .line 14
    .line 15
    const/4 p4, 0x3

    .line 16
    if-ne p3, p4, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, p1, p1}, Lcom/mycompany/app/main/MenuIconAdapter;->G(ZZ)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/mycompany/app/main/MenuIconAdapter;->H([IZ)V

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final A(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MenuIconAdapter;->j:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_2

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-gez v0, :cond_1

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_1
    move v2, v1

    .line 15
    :goto_0
    if-ge v2, v0, :cond_4

    .line 16
    .line 17
    iget-object v3, p0, Lcom/mycompany/app/main/MenuIconAdapter;->j:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;

    .line 24
    .line 25
    if-nez v3, :cond_2

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    iget v3, v3, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;->a:I

    .line 29
    .line 30
    if-ne v3, p1, :cond_3

    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    return p1

    .line 34
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_4
    :goto_2
    return v1
.end method

.method public final B(I[I)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    array-length v1, p2

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    move v1, v0

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/main/MenuIconAdapter;->d()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x1

    .line 12
    if-eq v1, v2, :cond_1

    .line 13
    .line 14
    goto :goto_6

    .line 15
    :cond_1
    if-nez v2, :cond_2

    .line 16
    .line 17
    goto :goto_8

    .line 18
    :cond_2
    if-ne p1, v3, :cond_5

    .line 19
    .line 20
    move p1, v0

    .line 21
    :goto_1
    if-ge p1, v2, :cond_b

    .line 22
    .line 23
    iget-object v1, p0, Lcom/mycompany/app/main/MenuIconAdapter;->j:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;

    .line 30
    .line 31
    if-nez v1, :cond_3

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_3
    aget v4, p2, p1

    .line 35
    .line 36
    iget v1, v1, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;->b:I

    .line 37
    .line 38
    if-eq v4, v1, :cond_4

    .line 39
    .line 40
    goto :goto_6

    .line 41
    :cond_4
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_5
    const/4 v1, 0x2

    .line 45
    if-ne p1, v1, :cond_8

    .line 46
    .line 47
    move p1, v0

    .line 48
    :goto_3
    if-ge p1, v2, :cond_b

    .line 49
    .line 50
    iget-object v1, p0, Lcom/mycompany/app/main/MenuIconAdapter;->j:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;

    .line 57
    .line 58
    if-nez v1, :cond_6

    .line 59
    .line 60
    goto :goto_4

    .line 61
    :cond_6
    aget v4, p2, p1

    .line 62
    .line 63
    iget v1, v1, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;->c:I

    .line 64
    .line 65
    if-eq v4, v1, :cond_7

    .line 66
    .line 67
    goto :goto_6

    .line 68
    :cond_7
    :goto_4
    add-int/lit8 p1, p1, 0x1

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_8
    move p1, v0

    .line 72
    :goto_5
    if-ge p1, v2, :cond_b

    .line 73
    .line 74
    iget-object v1, p0, Lcom/mycompany/app/main/MenuIconAdapter;->j:Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;

    .line 81
    .line 82
    if-nez v1, :cond_9

    .line 83
    .line 84
    goto :goto_7

    .line 85
    :cond_9
    aget v4, p2, p1

    .line 86
    .line 87
    iget v1, v1, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;->a:I

    .line 88
    .line 89
    if-eq v4, v1, :cond_a

    .line 90
    .line 91
    :goto_6
    return v3

    .line 92
    :cond_a
    :goto_7
    add-int/lit8 p1, p1, 0x1

    .line 93
    .line 94
    goto :goto_5

    .line 95
    :cond_b
    :goto_8
    return v0
.end method

.method public final C(II)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MenuIconAdapter;->j:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/mycompany/app/main/MenuIconAdapter;->j:Ljava/util/ArrayList;

    .line 11
    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 13
    iget v1, p0, Lcom/mycompany/app/main/MenuIconAdapter;->e:I

    .line 14
    .line 15
    if-eqz v1, :cond_4

    .line 16
    .line 17
    if-ne v1, v0, :cond_1

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_1
    new-instance v1, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    iput p2, v1, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;->a:I

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    iput v2, v1, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;->c:I

    .line 29
    .line 30
    if-ne p2, v0, :cond_2

    .line 31
    .line 32
    const/16 p2, 0x33

    .line 33
    .line 34
    iput p2, v1, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;->b:I

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    iput v2, v1, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;->b:I

    .line 38
    .line 39
    :goto_0
    if-ltz p1, :cond_3

    .line 40
    .line 41
    iget-object p2, p0, Lcom/mycompany/app/main/MenuIconAdapter;->j:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-ge p1, p2, :cond_3

    .line 48
    .line 49
    iget-object p2, p0, Lcom/mycompany/app/main/MenuIconAdapter;->j:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {p2, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/main/MenuIconAdapter;->j:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/mycompany/app/main/MenuIconAdapter;->j:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    sub-int/2addr p1, v0

    .line 67
    :goto_1
    invoke-virtual {p0}, Lcom/mycompany/app/main/MenuIconAdapter;->w()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 71
    .line 72
    .line 73
    return p1

    .line 74
    :cond_4
    :goto_2
    new-instance p1, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;

    .line 75
    .line 76
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 77
    .line 78
    .line 79
    iput p2, p1, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;->a:I

    .line 80
    .line 81
    iget-object p2, p0, Lcom/mycompany/app/main/MenuIconAdapter;->j:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/mycompany/app/main/MenuIconAdapter;->j:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    sub-int/2addr p1, v0

    .line 93
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 94
    .line 95
    .line 96
    return p1
.end method

.method public final D()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/main/MenuIconAdapter;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/mycompany/app/main/MenuIconAdapter;->p:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/mycompany/app/main/MenuIconAdapter;->d:Landroid/view/View;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/mycompany/app/main/MenuIconAdapter;->i:Lcom/mycompany/app/main/MenuIconAdapter$MenuListener;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/mycompany/app/main/MenuIconAdapter;->j:Ljava/util/ArrayList;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/mycompany/app/main/MenuIconAdapter;->o:Lcom/mycompany/app/view/MyIconView;

    .line 15
    .line 16
    return-void
.end method

.method public final E(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MenuIconAdapter;->j:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    if-ltz p1, :cond_2

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
    iget-object v0, p0, Lcom/mycompany/app/main/MenuIconAdapter;->j:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/mycompany/app/main/MenuIconAdapter;->w()V

    .line 23
    .line 24
    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 29
    .line 30
    .line 31
    :cond_2
    :goto_0
    return-void
.end method

.method public final F(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MenuIconAdapter;->j:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/mycompany/app/main/MenuIconAdapter;->j:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;

    .line 27
    .line 28
    if-nez v0, :cond_3

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/main/MenuIconAdapter;->j:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/mycompany/app/main/MenuIconAdapter;->w()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->j(II)V

    .line 40
    .line 41
    .line 42
    :cond_4
    :goto_0
    return-void
.end method

.method public final G(ZZ)V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/mycompany/app/main/MenuIconAdapter;->j:Ljava/util/ArrayList;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const-string p1, "26,27,28,29,30,2"

    .line 11
    .line 12
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->a2(Ljava/lang/String;)[I

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "3,3,44,45,70,65"

    .line 17
    .line 18
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->a2(Ljava/lang/String;)[I

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "0,0,0,0,0,0"

    .line 23
    .line 24
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->a2(Ljava/lang/String;)[I

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    sget-object p1, Lcom/mycompany/app/pref/PrefMain;->E:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->a2(Ljava/lang/String;)[I

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    sget-object v0, Lcom/mycompany/app/pref/PrefMain;->F:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->a2(Ljava/lang/String;)[I

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sget-object v1, Lcom/mycompany/app/pref/PrefMain;->G:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->a2(Ljava/lang/String;)[I

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    :goto_0
    if-eqz p1, :cond_1

    .line 48
    .line 49
    array-length v2, p1

    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    array-length v2, p1

    .line 53
    const/4 v3, 0x0

    .line 54
    :goto_1
    if-ge v3, v2, :cond_1

    .line 55
    .line 56
    new-instance v4, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;

    .line 57
    .line 58
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 59
    .line 60
    .line 61
    aget v5, p1, v3

    .line 62
    .line 63
    iput v5, v4, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;->a:I

    .line 64
    .line 65
    aget v5, v0, v3

    .line 66
    .line 67
    iput v5, v4, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;->b:I

    .line 68
    .line 69
    aget v5, v1, v3

    .line 70
    .line 71
    iput v5, v4, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;->c:I

    .line 72
    .line 73
    iget-object v5, p0, Lcom/mycompany/app/main/MenuIconAdapter;->j:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    add-int/lit8 v3, v3, 0x1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/main/MenuIconAdapter;->w()V

    .line 82
    .line 83
    .line 84
    if-eqz p2, :cond_2

    .line 85
    .line 86
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 87
    .line 88
    .line 89
    :cond_2
    return-void
.end method

.method public final H([IZ)V
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/mycompany/app/main/MenuIconAdapter;->j:Ljava/util/ArrayList;

    .line 12
    .line 13
    array-length v0, p1

    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    if-ge v1, v0, :cond_1

    .line 16
    .line 17
    new-instance v2, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    aget v3, p1, v1

    .line 23
    .line 24
    iput v3, v2, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;->a:I

    .line 25
    .line 26
    iget-object v3, p0, Lcom/mycompany/app/main/MenuIconAdapter;->j:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcom/mycompany/app/main/MenuIconAdapter;->j:Ljava/util/ArrayList;

    .line 36
    .line 37
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/main/MenuIconAdapter;->w()V

    .line 38
    .line 39
    .line 40
    if-eqz p2, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 43
    .line 44
    .line 45
    :cond_2
    return-void
.end method

.method public final I(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/main/MenuIconAdapter;->g:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    goto :goto_3

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/main/MenuIconAdapter;->g:Z

    .line 7
    .line 8
    iget-object p1, p0, Lcom/mycompany/app/main/MenuIconAdapter;->j:Ljava/util/ArrayList;

    .line 9
    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    goto :goto_3

    .line 13
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-gez p1, :cond_2

    .line 18
    .line 19
    goto :goto_3

    .line 20
    :cond_2
    const/4 v0, 0x0

    .line 21
    move v1, v0

    .line 22
    :goto_0
    if-ge v1, p1, :cond_8

    .line 23
    .line 24
    iget-object v2, p0, Lcom/mycompany/app/main/MenuIconAdapter;->j:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;

    .line 31
    .line 32
    if-nez v2, :cond_3

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_3
    iget v2, v2, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;->a:I

    .line 36
    .line 37
    const/4 v3, 0x2

    .line 38
    if-eq v2, v3, :cond_4

    .line 39
    .line 40
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_4
    iget-object p1, p0, Lcom/mycompany/app/main/MenuIconAdapter;->o:Lcom/mycompany/app/view/MyIconView;

    .line 44
    .line 45
    if-eqz p1, :cond_7

    .line 46
    .line 47
    invoke-static {v0, v0}, Lcom/mycompany/app/main/MainUtil;->s0(IZ)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    iget-boolean v1, p0, Lcom/mycompany/app/main/MenuIconAdapter;->g:Z

    .line 52
    .line 53
    if-eqz v1, :cond_5

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_5
    iget v1, p0, Lcom/mycompany/app/main/MenuIconAdapter;->e:I

    .line 57
    .line 58
    if-ne v1, v3, :cond_6

    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    :cond_6
    :goto_2
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->j2(IZ)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    iget-object v0, p0, Lcom/mycompany/app/main/MenuIconAdapter;->o:Lcom/mycompany/app/view/MyIconView;

    .line 66
    .line 67
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyIconView;->setImageResource(I)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_7
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->h(I)V

    .line 72
    .line 73
    .line 74
    :cond_8
    :goto_3
    return-void
.end method

.method public final J(ILandroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 1

    .line 1
    if-eqz p2, :cond_5

    .line 2
    .line 3
    if-ltz p1, :cond_5

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/main/MenuIconAdapter;->j:Ljava/util/ArrayList;

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
    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->s(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    instance-of p2, p1, Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;

    .line 28
    .line 29
    if-eqz p2, :cond_2

    .line 30
    .line 31
    check-cast p1, Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const/4 p1, 0x0

    .line 35
    :goto_0
    if-nez p1, :cond_3

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_3
    iget p2, p0, Lcom/mycompany/app/main/MenuIconAdapter;->f:I

    .line 39
    .line 40
    if-nez p2, :cond_4

    .line 41
    .line 42
    iget-object p1, p1, Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;->u:Lcom/mycompany/app/view/MyIconFrame;

    .line 43
    .line 44
    if-eqz p1, :cond_5

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyIconFrame;->f()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_4
    iget-object p1, p1, Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;->x:Lcom/mycompany/app/view/MyIconFrame;

    .line 51
    .line 52
    if-eqz p1, :cond_5

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyIconFrame;->f()V

    .line 55
    .line 56
    .line 57
    :cond_5
    :goto_1
    return-void
.end method

.method public final K(III)V
    .locals 2

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MenuIconAdapter;->E(I)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    if-ltz p2, :cond_9

    .line 10
    .line 11
    const/16 v0, 0x4b

    .line 12
    .line 13
    if-lt p2, v0, :cond_1

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/main/MenuIconAdapter;->j:Ljava/util/ArrayList;

    .line 17
    .line 18
    if-eqz v0, :cond_9

    .line 19
    .line 20
    if-ltz p1, :cond_9

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-lt p1, v0, :cond_2

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/main/MenuIconAdapter;->j:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;

    .line 36
    .line 37
    if-nez v0, :cond_3

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_3
    const/4 v1, 0x1

    .line 41
    if-ne p3, v1, :cond_5

    .line 42
    .line 43
    iget p3, v0, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;->b:I

    .line 44
    .line 45
    if-ne p3, p2, :cond_4

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_4
    iput p2, v0, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;->b:I

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_5
    const/4 v1, 0x2

    .line 52
    if-ne p3, v1, :cond_7

    .line 53
    .line 54
    iget p3, v0, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;->c:I

    .line 55
    .line 56
    if-ne p3, p2, :cond_6

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_6
    iput p2, v0, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;->c:I

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_7
    iget p3, v0, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;->a:I

    .line 63
    .line 64
    if-ne p3, p2, :cond_8

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_8
    iput p2, v0, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;->a:I

    .line 68
    .line 69
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/main/MenuIconAdapter;->w()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->h(I)V

    .line 73
    .line 74
    .line 75
    :cond_9
    :goto_1
    return-void
.end method

.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/main/MenuIconAdapter;->p:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MenuIconAdapter;->j:Ljava/util/ArrayList;

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

.method public final f(I)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MenuIconAdapter;->x(I)Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget p1, p1, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;->a:I

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    if-ne p1, v0, :cond_1

    .line 12
    .line 13
    const/4 p1, 0x4

    .line 14
    return p1

    .line 15
    :cond_1
    :goto_0
    iget p1, p0, Lcom/mycompany/app/main/MenuIconAdapter;->e:I

    .line 16
    .line 17
    return p1
.end method

.method public final n(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 10

    .line 1
    check-cast p1, Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_11

    .line 8
    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/mycompany/app/main/MenuIconAdapter;->o:Lcom/mycompany/app/view/MyIconView;

    .line 11
    .line 12
    invoke-virtual {p0, p2}, Lcom/mycompany/app/main/MenuIconAdapter;->x(I)Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    if-nez p2, :cond_1

    .line 17
    .line 18
    goto/16 :goto_11

    .line 19
    .line 20
    :cond_1
    const/4 v2, 0x4

    .line 21
    iget v3, p0, Lcom/mycompany/app/main/MenuIconAdapter;->e:I

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    if-eqz v3, :cond_3

    .line 25
    .line 26
    iget-object v5, p0, Lcom/mycompany/app/main/MenuIconAdapter;->d:Landroid/view/View;

    .line 27
    .line 28
    if-eqz v5, :cond_3

    .line 29
    .line 30
    iget v6, p2, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;->a:I

    .line 31
    .line 32
    if-ne v6, v4, :cond_2

    .line 33
    .line 34
    move v6, v2

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    move v6, v3

    .line 37
    :goto_0
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    invoke-virtual {p0, v5, v6}, Lcom/mycompany/app/main/MenuIconAdapter;->z(II)I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    if-eq v6, v5, :cond_3

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    if-eqz v6, :cond_3

    .line 56
    .line 57
    iput v5, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 60
    .line 61
    .line 62
    :cond_3
    const/4 v5, 0x0

    .line 63
    invoke-static {v5, v5}, Lcom/mycompany/app/main/MainUtil;->s0(IZ)I

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    iget-boolean v7, p0, Lcom/mycompany/app/main/MenuIconAdapter;->h:Z

    .line 68
    .line 69
    if-eqz v7, :cond_4

    .line 70
    .line 71
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_4
    iget v8, p2, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;->a:I

    .line 76
    .line 77
    const/16 v9, 0x44

    .line 78
    .line 79
    if-ne v8, v9, :cond_5

    .line 80
    .line 81
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_5
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    :goto_1
    iget-object v0, p1, Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;->u:Lcom/mycompany/app/view/MyIconFrame;

    .line 89
    .line 90
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p1, Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;->u:Lcom/mycompany/app/view/MyIconFrame;

    .line 94
    .line 95
    iget v2, p2, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;->a:I

    .line 96
    .line 97
    if-eq v2, v4, :cond_6

    .line 98
    .line 99
    move v2, v4

    .line 100
    goto :goto_2

    .line 101
    :cond_6
    move v2, v5

    .line 102
    :goto_2
    invoke-virtual {v0, v7, v2}, Lcom/mycompany/app/view/MyIconFrame;->e(ZZ)V

    .line 103
    .line 104
    .line 105
    iget-object v0, p1, Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;->u:Lcom/mycompany/app/view/MyIconFrame;

    .line 106
    .line 107
    invoke-static {v6, v5}, Lcom/mycompany/app/main/MainUtil;->P1(II)I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyIconFrame;->setBgPreColor(I)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p1, Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;->u:Lcom/mycompany/app/view/MyIconFrame;

    .line 115
    .line 116
    new-instance v2, Lcom/mycompany/app/main/MenuIconAdapter$1;

    .line 117
    .line 118
    invoke-direct {v2, p0}, Lcom/mycompany/app/main/MenuIconAdapter$1;-><init>(Lcom/mycompany/app/main/MenuIconAdapter;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyIconFrame;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p1, Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;->u:Lcom/mycompany/app/view/MyIconFrame;

    .line 125
    .line 126
    new-instance v2, Lcom/mycompany/app/main/MenuIconAdapter$2;

    .line 127
    .line 128
    invoke-direct {v2, p0}, Lcom/mycompany/app/main/MenuIconAdapter$2;-><init>(Lcom/mycompany/app/main/MenuIconAdapter;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyIconFrame;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 132
    .line 133
    .line 134
    iget v0, p2, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;->a:I

    .line 135
    .line 136
    const/4 v2, 0x2

    .line 137
    if-ne v0, v4, :cond_9

    .line 138
    .line 139
    iget-object v0, p1, Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;->v:Lcom/mycompany/app/view/MyIconView;

    .line 140
    .line 141
    invoke-virtual {v0, v4}, Lcom/mycompany/app/view/MyIconView;->setSetting(Z)V

    .line 142
    .line 143
    .line 144
    iget-boolean v0, p0, Lcom/mycompany/app/main/MenuIconAdapter;->l:Z

    .line 145
    .line 146
    if-eqz v0, :cond_7

    .line 147
    .line 148
    if-eqz v7, :cond_7

    .line 149
    .line 150
    iget-object v0, p1, Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;->v:Lcom/mycompany/app/view/MyIconView;

    .line 151
    .line 152
    invoke-virtual {v0, v4, v5}, Lcom/mycompany/app/view/MyIconView;->x(ZZ)Z

    .line 153
    .line 154
    .line 155
    :cond_7
    iget-object v0, p1, Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;->v:Lcom/mycompany/app/view/MyIconView;

    .line 156
    .line 157
    if-ne v3, v2, :cond_8

    .line 158
    .line 159
    move v3, v4

    .line 160
    goto :goto_3

    .line 161
    :cond_8
    move v3, v5

    .line 162
    :goto_3
    invoke-virtual {v0, v6, v5, v5, v3}, Lcom/mycompany/app/view/MyIconView;->p(IIZZ)V

    .line 163
    .line 164
    .line 165
    iget-object v0, p1, Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 166
    .line 167
    sget v3, Lnet/kaki87/soul2/testing/R$string;->address_bar:I

    .line 168
    .line 169
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 170
    .line 171
    .line 172
    goto :goto_a

    .line 173
    :cond_9
    if-ne v0, v2, :cond_c

    .line 174
    .line 175
    iget-boolean v0, p0, Lcom/mycompany/app/main/MenuIconAdapter;->g:Z

    .line 176
    .line 177
    if-eqz v0, :cond_a

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_a
    if-ne v3, v2, :cond_b

    .line 181
    .line 182
    move v0, v4

    .line 183
    goto :goto_5

    .line 184
    :cond_b
    :goto_4
    move v0, v5

    .line 185
    :goto_5
    invoke-static {v6, v0}, Lcom/mycompany/app/main/MainUtil;->j2(IZ)I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    iget-object v6, p1, Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;->v:Lcom/mycompany/app/view/MyIconView;

    .line 190
    .line 191
    iput-object v6, p0, Lcom/mycompany/app/main/MenuIconAdapter;->o:Lcom/mycompany/app/view/MyIconView;

    .line 192
    .line 193
    goto :goto_6

    .line 194
    :cond_c
    if-eqz v7, :cond_d

    .line 195
    .line 196
    invoke-static {v0, v6}, Lcom/mycompany/app/main/MainUtil;->m2(II)I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    goto :goto_6

    .line 201
    :cond_d
    invoke-static {v0, v6}, Lcom/mycompany/app/main/MainUtil;->k2(II)I

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    :goto_6
    if-eqz v3, :cond_f

    .line 206
    .line 207
    if-ne v3, v4, :cond_e

    .line 208
    .line 209
    goto :goto_7

    .line 210
    :cond_e
    iget-object v3, p1, Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;->v:Lcom/mycompany/app/view/MyIconView;

    .line 211
    .line 212
    invoke-virtual {v3, v0}, Lcom/mycompany/app/view/MyIconView;->setImageResource(I)V

    .line 213
    .line 214
    .line 215
    goto :goto_8

    .line 216
    :cond_f
    :goto_7
    iget-object v3, p1, Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;->v:Lcom/mycompany/app/view/MyIconView;

    .line 217
    .line 218
    invoke-virtual {v3, v0}, Lcom/mycompany/app/view/MyIconView;->setBackgroundResource(I)V

    .line 219
    .line 220
    .line 221
    :goto_8
    iget-object v0, p1, Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 222
    .line 223
    iget v3, p2, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;->a:I

    .line 224
    .line 225
    if-eqz v7, :cond_10

    .line 226
    .line 227
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->n2(I)I

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    goto :goto_9

    .line 232
    :cond_10
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->l2(I)I

    .line 233
    .line 234
    .line 235
    move-result v3

    .line 236
    :goto_9
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 237
    .line 238
    .line 239
    :goto_a
    const v0, -0x50506

    .line 240
    .line 241
    .line 242
    const/high16 v3, -0x1000000

    .line 243
    .line 244
    if-eqz v7, :cond_12

    .line 245
    .line 246
    sget-boolean v6, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 247
    .line 248
    if-eqz v6, :cond_11

    .line 249
    .line 250
    iget-object v6, p1, Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 251
    .line 252
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 253
    .line 254
    .line 255
    goto :goto_b

    .line 256
    :cond_11
    iget-object v6, p1, Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 257
    .line 258
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 259
    .line 260
    .line 261
    goto :goto_b

    .line 262
    :cond_12
    iget-object v6, p1, Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;->v:Lcom/mycompany/app/view/MyIconView;

    .line 263
    .line 264
    const v8, 0x3f59999a    # 0.85f

    .line 265
    .line 266
    .line 267
    invoke-virtual {v6, v8}, Lcom/mycompany/app/view/MyIconView;->setAlpha(F)V

    .line 268
    .line 269
    .line 270
    sget-boolean v6, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 271
    .line 272
    if-eqz v6, :cond_13

    .line 273
    .line 274
    iget-object v6, p1, Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 275
    .line 276
    const v8, -0x4f4f50

    .line 277
    .line 278
    .line 279
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 280
    .line 281
    .line 282
    goto :goto_b

    .line 283
    :cond_13
    iget-object v6, p1, Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 284
    .line 285
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 286
    .line 287
    .line 288
    :goto_b
    iget-object v6, p1, Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;->x:Lcom/mycompany/app/view/MyIconFrame;

    .line 289
    .line 290
    if-eqz v6, :cond_1b

    .line 291
    .line 292
    iget v8, p0, Lcom/mycompany/app/main/MenuIconAdapter;->f:I

    .line 293
    .line 294
    if-ne v8, v4, :cond_16

    .line 295
    .line 296
    iget v1, p2, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;->a:I

    .line 297
    .line 298
    if-eq v1, v4, :cond_14

    .line 299
    .line 300
    goto :goto_c

    .line 301
    :cond_14
    move v4, v5

    .line 302
    :goto_c
    invoke-virtual {v6, v7, v4}, Lcom/mycompany/app/view/MyIconFrame;->e(ZZ)V

    .line 303
    .line 304
    .line 305
    iget-object v1, p1, Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;->x:Lcom/mycompany/app/view/MyIconFrame;

    .line 306
    .line 307
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyIconFrame;->setVisibility(I)V

    .line 308
    .line 309
    .line 310
    iget-object v1, p1, Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;->y:Lcom/mycompany/app/view/MyTextVertical;

    .line 311
    .line 312
    iget p2, p2, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;->b:I

    .line 313
    .line 314
    if-eqz v7, :cond_15

    .line 315
    .line 316
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->n2(I)I

    .line 317
    .line 318
    .line 319
    move-result p2

    .line 320
    goto :goto_d

    .line 321
    :cond_15
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->l2(I)I

    .line 322
    .line 323
    .line 324
    move-result p2

    .line 325
    :goto_d
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 326
    .line 327
    .line 328
    goto :goto_10

    .line 329
    :cond_16
    if-ne v8, v2, :cond_19

    .line 330
    .line 331
    iget v1, p2, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;->a:I

    .line 332
    .line 333
    if-eq v1, v4, :cond_17

    .line 334
    .line 335
    goto :goto_e

    .line 336
    :cond_17
    move v4, v5

    .line 337
    :goto_e
    invoke-virtual {v6, v7, v4}, Lcom/mycompany/app/view/MyIconFrame;->e(ZZ)V

    .line 338
    .line 339
    .line 340
    iget-object v1, p1, Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;->x:Lcom/mycompany/app/view/MyIconFrame;

    .line 341
    .line 342
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyIconFrame;->setVisibility(I)V

    .line 343
    .line 344
    .line 345
    iget-object v1, p1, Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;->y:Lcom/mycompany/app/view/MyTextVertical;

    .line 346
    .line 347
    iget p2, p2, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;->c:I

    .line 348
    .line 349
    if-eqz v7, :cond_18

    .line 350
    .line 351
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->n2(I)I

    .line 352
    .line 353
    .line 354
    move-result p2

    .line 355
    goto :goto_f

    .line 356
    :cond_18
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->l2(I)I

    .line 357
    .line 358
    .line 359
    move-result p2

    .line 360
    :goto_f
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 361
    .line 362
    .line 363
    goto :goto_10

    .line 364
    :cond_19
    const/16 p2, 0x8

    .line 365
    .line 366
    invoke-virtual {v6, p2}, Lcom/mycompany/app/view/MyIconFrame;->setVisibility(I)V

    .line 367
    .line 368
    .line 369
    iget-object p2, p1, Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;->y:Lcom/mycompany/app/view/MyTextVertical;

    .line 370
    .line 371
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    .line 373
    .line 374
    :goto_10
    sget-boolean p2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 375
    .line 376
    if-eqz p2, :cond_1a

    .line 377
    .line 378
    iget-object p1, p1, Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;->y:Lcom/mycompany/app/view/MyTextVertical;

    .line 379
    .line 380
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyTextVertical;->setTextColor(I)V

    .line 381
    .line 382
    .line 383
    return-void

    .line 384
    :cond_1a
    iget-object p1, p1, Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;->y:Lcom/mycompany/app/view/MyTextVertical;

    .line 385
    .line 386
    invoke-virtual {p1, v3}, Lcom/mycompany/app/view/MyTextVertical;->setTextColor(I)V

    .line 387
    .line 388
    .line 389
    :cond_1b
    :goto_11
    return-void
.end method

.method public final o(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    const/high16 v2, 0x41400000    # 12.0f

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    const/high16 v4, 0x42a00000    # 80.0f

    .line 13
    .line 14
    const/high16 v5, 0x41600000    # 14.0f

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v7, 0x1

    .line 18
    const/4 v8, -0x1

    .line 19
    if-eqz p2, :cond_3

    .line 20
    .line 21
    if-ne p2, v7, :cond_1

    .line 22
    .line 23
    goto/16 :goto_0

    .line 24
    .line 25
    :cond_1
    iget v9, p0, Lcom/mycompany/app/main/MenuIconAdapter;->m:I

    .line 26
    .line 27
    if-nez v9, :cond_2

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iput p1, p0, Lcom/mycompany/app/main/MenuIconAdapter;->m:I

    .line 34
    .line 35
    :cond_2
    iget p1, p0, Lcom/mycompany/app/main/MenuIconAdapter;->m:I

    .line 36
    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/mycompany/app/main/MenuIconAdapter;->z(II)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    new-instance p2, Landroid/widget/FrameLayout;

    .line 42
    .line 43
    invoke-direct {p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    .line 47
    .line 48
    invoke-direct {v9, p1, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    .line 53
    .line 54
    new-instance p1, Lcom/mycompany/app/view/MyIconFrame;

    .line 55
    .line 56
    invoke-direct {p1, v0}, Lcom/mycompany/app/view/MyIconFrame;-><init>(Landroid/content/Context;)V

    .line 57
    .line 58
    .line 59
    sget v9, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 60
    .line 61
    invoke-virtual {p1, v9, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 62
    .line 63
    .line 64
    const/16 v9, 0x8

    .line 65
    .line 66
    invoke-virtual {p1, v9}, Lcom/mycompany/app/view/MyIconFrame;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 70
    .line 71
    const/4 v10, -0x2

    .line 72
    invoke-direct {v9, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 73
    .line 74
    .line 75
    const/16 v11, 0x51

    .line 76
    .line 77
    iput v11, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 78
    .line 79
    const/high16 v11, 0x42b00000    # 88.0f

    .line 80
    .line 81
    invoke-static {v0, v11}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 82
    .line 83
    .line 84
    move-result v11

    .line 85
    float-to-int v11, v11

    .line 86
    iput v11, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 87
    .line 88
    invoke-virtual {p2, p1, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    .line 90
    .line 91
    new-instance v9, Lcom/mycompany/app/view/MyTextVertical;

    .line 92
    .line 93
    invoke-direct {v9, v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    .line 95
    .line 96
    const/16 v11, 0x4d2

    .line 97
    .line 98
    iput v11, v9, Lcom/mycompany/app/view/MyTextVertical;->l:I

    .line 99
    .line 100
    invoke-virtual {v9, v7, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v9, v10, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 104
    .line 105
    .line 106
    new-instance v5, Lcom/mycompany/app/view/MyIconFrame;

    .line 107
    .line 108
    invoke-direct {v5, v0}, Lcom/mycompany/app/view/MyIconFrame;-><init>(Landroid/content/Context;)V

    .line 109
    .line 110
    .line 111
    invoke-static {v0, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    float-to-int v4, v4

    .line 116
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 117
    .line 118
    invoke-direct {v10, v8, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 119
    .line 120
    .line 121
    const v4, 0x800053

    .line 122
    .line 123
    .line 124
    iput v4, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 125
    .line 126
    invoke-virtual {p2, v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    .line 128
    .line 129
    new-instance v4, Lcom/mycompany/app/view/MyIconView;

    .line 130
    .line 131
    invoke-direct {v4, v0}, Lcom/mycompany/app/view/MyIconView;-><init>(Landroid/content/Context;)V

    .line 132
    .line 133
    .line 134
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 135
    .line 136
    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 137
    .line 138
    .line 139
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 140
    .line 141
    sget v11, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 142
    .line 143
    invoke-direct {v10, v8, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 144
    .line 145
    .line 146
    sget v11, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 147
    .line 148
    iput v11, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 149
    .line 150
    invoke-virtual {v5, v4, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    .line 152
    .line 153
    new-instance v10, Landroidx/appcompat/widget/AppCompatTextView;

    .line 154
    .line 155
    invoke-direct {v10, v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 162
    .line 163
    .line 164
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 165
    .line 166
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v10, v7, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 170
    .line 171
    .line 172
    sget v0, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 173
    .line 174
    invoke-virtual {v10, v0, v6, v0, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 175
    .line 176
    .line 177
    sget v0, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 178
    .line 179
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 180
    .line 181
    invoke-direct {v1, v8, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 182
    .line 183
    .line 184
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 185
    .line 186
    invoke-virtual {v5, v10, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    .line 188
    .line 189
    new-instance v0, Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;

    .line 190
    .line 191
    invoke-direct {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 192
    .line 193
    .line 194
    iput-object p1, v0, Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;->x:Lcom/mycompany/app/view/MyIconFrame;

    .line 195
    .line 196
    iput-object v9, v0, Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;->y:Lcom/mycompany/app/view/MyTextVertical;

    .line 197
    .line 198
    iput-object v5, v0, Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;->u:Lcom/mycompany/app/view/MyIconFrame;

    .line 199
    .line 200
    iput-object v4, v0, Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;->v:Lcom/mycompany/app/view/MyIconView;

    .line 201
    .line 202
    iput-object v10, v0, Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 203
    .line 204
    return-object v0

    .line 205
    :cond_3
    :goto_0
    if-nez p2, :cond_5

    .line 206
    .line 207
    iget p1, p0, Lcom/mycompany/app/main/MenuIconAdapter;->n:I

    .line 208
    .line 209
    if-nez p1, :cond_4

    .line 210
    .line 211
    invoke-static {v0, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    float-to-int p1, p1

    .line 216
    iput p1, p0, Lcom/mycompany/app/main/MenuIconAdapter;->n:I

    .line 217
    .line 218
    :cond_4
    iget p1, p0, Lcom/mycompany/app/main/MenuIconAdapter;->n:I

    .line 219
    .line 220
    move p2, p1

    .line 221
    move p1, v8

    .line 222
    goto :goto_1

    .line 223
    :cond_5
    iget v4, p0, Lcom/mycompany/app/main/MenuIconAdapter;->m:I

    .line 224
    .line 225
    if-nez v4, :cond_6

    .line 226
    .line 227
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 228
    .line 229
    .line 230
    move-result p1

    .line 231
    iput p1, p0, Lcom/mycompany/app/main/MenuIconAdapter;->m:I

    .line 232
    .line 233
    :cond_6
    iget p1, p0, Lcom/mycompany/app/main/MenuIconAdapter;->m:I

    .line 234
    .line 235
    invoke-virtual {p0, p1, p2}, Lcom/mycompany/app/main/MenuIconAdapter;->z(II)I

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    move p2, v8

    .line 240
    :goto_1
    new-instance v4, Lcom/mycompany/app/view/MyIconFrame;

    .line 241
    .line 242
    invoke-direct {v4, v0}, Lcom/mycompany/app/view/MyIconFrame;-><init>(Landroid/content/Context;)V

    .line 243
    .line 244
    .line 245
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    .line 246
    .line 247
    invoke-direct {v9, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v4, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    .line 252
    .line 253
    new-instance p1, Lcom/mycompany/app/view/MyIconView;

    .line 254
    .line 255
    invoke-direct {p1, v0}, Lcom/mycompany/app/view/MyIconView;-><init>(Landroid/content/Context;)V

    .line 256
    .line 257
    .line 258
    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 259
    .line 260
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 261
    .line 262
    .line 263
    const/high16 p2, 0x41a00000    # 20.0f

    .line 264
    .line 265
    invoke-static {v0, p2}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 266
    .line 267
    .line 268
    move-result p2

    .line 269
    float-to-int p2, p2

    .line 270
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 271
    .line 272
    invoke-direct {v9, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 273
    .line 274
    .line 275
    iput v7, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 276
    .line 277
    invoke-static {v0, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 278
    .line 279
    .line 280
    move-result p2

    .line 281
    float-to-int p2, p2

    .line 282
    iput p2, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 283
    .line 284
    invoke-virtual {v4, p1, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    .line 286
    .line 287
    new-instance p2, Landroidx/appcompat/widget/AppCompatTextView;

    .line 288
    .line 289
    invoke-direct {p2, v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 296
    .line 297
    .line 298
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 299
    .line 300
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {p2, v7, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 304
    .line 305
    .line 306
    sget v0, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 307
    .line 308
    invoke-virtual {p2, v0, v6, v0, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 309
    .line 310
    .line 311
    sget v0, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 312
    .line 313
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 314
    .line 315
    invoke-direct {v1, v8, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 316
    .line 317
    .line 318
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 319
    .line 320
    invoke-virtual {v4, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    .line 322
    .line 323
    new-instance v0, Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;

    .line 324
    .line 325
    invoke-direct {v0, v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 326
    .line 327
    .line 328
    iput-object v4, v0, Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;->u:Lcom/mycompany/app/view/MyIconFrame;

    .line 329
    .line 330
    iput-object p1, v0, Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;->v:Lcom/mycompany/app/view/MyIconView;

    .line 331
    .line 332
    iput-object p2, v0, Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 333
    .line 334
    return-object v0
.end method

.method public final v(II)I
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    if-ltz p1, :cond_3

    .line 7
    .line 8
    const/16 p2, 0x4b

    .line 9
    .line 10
    if-lt p1, p2, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget-object p2, p0, Lcom/mycompany/app/main/MenuIconAdapter;->j:Ljava/util/ArrayList;

    .line 14
    .line 15
    if-nez p2, :cond_2

    .line 16
    .line 17
    new-instance p2, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p2, p0, Lcom/mycompany/app/main/MenuIconAdapter;->j:Ljava/util/ArrayList;

    .line 23
    .line 24
    :cond_2
    new-instance p2, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;

    .line 25
    .line 26
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    iput p1, p2, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;->a:I

    .line 30
    .line 31
    iget-object p1, p0, Lcom/mycompany/app/main/MenuIconAdapter;->j:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/mycompany/app/main/MenuIconAdapter;->w()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/mycompany/app/main/MenuIconAdapter;->j:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    add-int/lit8 p1, p1, -0x1

    .line 49
    .line 50
    return p1

    .line 51
    :cond_3
    :goto_0
    const/4 p1, -0x1

    .line 52
    return p1
.end method

.method public final w()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/mycompany/app/main/MenuIconAdapter;->A(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iput-boolean v0, p0, Lcom/mycompany/app/main/MenuIconAdapter;->k:Z

    .line 7
    .line 8
    return-void
.end method

.method public final x(I)Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MenuIconAdapter;->j:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/mycompany/app/main/MenuIconAdapter;->j:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 24
    return-object p1
.end method

.method public final y(I)[I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/main/MenuIconAdapter;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    new-array v1, v0, [I

    .line 10
    .line 11
    const/16 v2, 0x4b

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x1

    .line 15
    if-ne p1, v4, :cond_4

    .line 16
    .line 17
    :goto_0
    if-ge v3, v0, :cond_c

    .line 18
    .line 19
    iget-object p1, p0, Lcom/mycompany/app/main/MenuIconAdapter;->j:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;

    .line 26
    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    iget v4, p1, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;->a:I

    .line 31
    .line 32
    if-ltz v4, :cond_3

    .line 33
    .line 34
    if-lt v4, v2, :cond_2

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    iget p1, p1, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;->b:I

    .line 38
    .line 39
    aput p1, v1, v3

    .line 40
    .line 41
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_4
    const/4 v4, 0x2

    .line 45
    if-ne p1, v4, :cond_8

    .line 46
    .line 47
    :goto_2
    if-ge v3, v0, :cond_c

    .line 48
    .line 49
    iget-object p1, p0, Lcom/mycompany/app/main/MenuIconAdapter;->j:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;

    .line 56
    .line 57
    if-nez p1, :cond_5

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_5
    iget v4, p1, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;->a:I

    .line 61
    .line 62
    if-ltz v4, :cond_7

    .line 63
    .line 64
    if-lt v4, v2, :cond_6

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_6
    iget p1, p1, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;->c:I

    .line 68
    .line 69
    aput p1, v1, v3

    .line 70
    .line 71
    :cond_7
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_8
    :goto_4
    if-ge v3, v0, :cond_c

    .line 75
    .line 76
    iget-object p1, p0, Lcom/mycompany/app/main/MenuIconAdapter;->j:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;

    .line 83
    .line 84
    if-nez p1, :cond_9

    .line 85
    .line 86
    goto :goto_5

    .line 87
    :cond_9
    iget p1, p1, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;->a:I

    .line 88
    .line 89
    if-ltz p1, :cond_b

    .line 90
    .line 91
    if-lt p1, v2, :cond_a

    .line 92
    .line 93
    goto :goto_5

    .line 94
    :cond_a
    aput p1, v1, v3

    .line 95
    .line 96
    :cond_b
    :goto_5
    add-int/lit8 v3, v3, 0x1

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_c
    return-object v1
.end method

.method public final z(II)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/main/MenuIconAdapter;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, -0x1

    .line 8
    return p1

    .line 9
    :cond_0
    const/4 v1, 0x1

    .line 10
    if-ne p2, v1, :cond_1

    .line 11
    .line 12
    int-to-float p1, p1

    .line 13
    int-to-float p2, v0

    .line 14
    div-float/2addr p1, p2

    .line 15
    float-to-int p1, p1

    .line 16
    return p1

    .line 17
    :cond_1
    iget-boolean v2, p0, Lcom/mycompany/app/main/MenuIconAdapter;->k:Z

    .line 18
    .line 19
    if-nez v2, :cond_2

    .line 20
    .line 21
    int-to-float p1, p1

    .line 22
    int-to-float p2, v0

    .line 23
    div-float/2addr p1, p2

    .line 24
    float-to-int p1, p1

    .line 25
    return p1

    .line 26
    :cond_2
    sget v2, Lcom/mycompany/app/view/MyBarView;->B:I

    .line 27
    .line 28
    add-int/lit8 v2, v0, 0x3

    .line 29
    .line 30
    sget v3, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 31
    .line 32
    mul-int v4, v2, v3

    .line 33
    .line 34
    if-le v4, p1, :cond_3

    .line 35
    .line 36
    move v4, v1

    .line 37
    goto :goto_0

    .line 38
    :cond_3
    const/4 v4, 0x0

    .line 39
    :goto_0
    const/4 v5, 0x4

    .line 40
    if-ne p2, v5, :cond_4

    .line 41
    .line 42
    move p2, v1

    .line 43
    goto :goto_1

    .line 44
    :cond_4
    const/16 p2, 0x4d2

    .line 45
    .line 46
    :goto_1
    if-eqz v4, :cond_7

    .line 47
    .line 48
    if-ne p2, v1, :cond_5

    .line 49
    .line 50
    int-to-float p1, p1

    .line 51
    int-to-float p2, v2

    .line 52
    div-float/2addr p1, p2

    .line 53
    const/high16 p2, 0x40800000    # 4.0f

    .line 54
    .line 55
    mul-float/2addr p1, p2

    .line 56
    float-to-int p1, p1

    .line 57
    return p1

    .line 58
    :cond_5
    const/16 v0, 0x1e

    .line 59
    .line 60
    if-ne p2, v0, :cond_6

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_6
    int-to-float p1, p1

    .line 64
    int-to-float p2, v2

    .line 65
    div-float/2addr p1, p2

    .line 66
    float-to-int p1, p1

    .line 67
    return p1

    .line 68
    :cond_7
    if-ne p2, v1, :cond_8

    .line 69
    .line 70
    sub-int/2addr v0, v1

    .line 71
    mul-int/2addr v0, v3

    .line 72
    sub-int/2addr p1, v0

    .line 73
    return p1

    .line 74
    :cond_8
    :goto_2
    return v3
.end method
