.class public final Landroidx/recyclerview/widget/RecyclerView$Recycler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Recycler"
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/List;

.field public e:I

.field public f:I

.field public g:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

.field public h:Landroidx/recyclerview/widget/RecyclerView$ViewCacheExtension;

.field public final synthetic i:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->a:Ljava/util/ArrayList;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->b:Ljava/util/ArrayList;

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->c:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-static {p1}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->d:Ljava/util/List;

    .line 28
    .line 29
    const/4 p1, 0x2

    .line 30
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->e:I

    .line 31
    .line 32
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->f:I

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .locals 6

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->l(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    .line 8
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->t0:Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;->e:Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->e:Ljava/util/WeakHashMap;

    .line 18
    .line 19
    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroidx/core/view/AccessibilityDelegateCompat;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v2, v3

    .line 27
    :goto_0
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->z(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    if-eqz p2, :cond_6

    .line 31
    .line 32
    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->s:Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;

    .line 33
    .line 34
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->t:Ljava/util/ArrayList;

    .line 35
    .line 36
    if-eqz p2, :cond_2

    .line 37
    .line 38
    invoke-interface {p2}, Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;->a()V

    .line 39
    .line 40
    .line 41
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    const/4 v4, 0x0

    .line 46
    :goto_1
    if-ge v4, p2, :cond_3

    .line 47
    .line 48
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;

    .line 53
    .line 54
    invoke-interface {v5}, Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;->a()V

    .line 55
    .line 56
    .line 57
    add-int/lit8 v4, v4, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->q:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 61
    .line 62
    if-eqz p2, :cond_4

    .line 63
    .line 64
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->t(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 65
    .line 66
    .line 67
    :cond_4
    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->m0:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 68
    .line 69
    if-eqz p2, :cond_5

    .line 70
    .line 71
    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->k:Landroidx/recyclerview/widget/ViewInfoStore;

    .line 72
    .line 73
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/ViewInfoStore;->d(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 74
    .line 75
    .line 76
    :cond_5
    sget-boolean p2, Landroidx/recyclerview/widget/RecyclerView;->H0:Z

    .line 77
    .line 78
    if-eqz p2, :cond_6

    .line 79
    .line 80
    new-instance p2, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v1, "dispatchViewRecycled: "

    .line 83
    .line 84
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    const-string v1, "RecyclerView"

    .line 95
    .line 96
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    :cond_6
    iput-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->s:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 100
    .line 101
    iput-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 102
    .line 103
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->c()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    iget v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->f:I

    .line 111
    .line 112
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->a(I)Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->a:Ljava/util/ArrayList;

    .line 117
    .line 118
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->a:Landroid/util/SparseArray;

    .line 119
    .line 120
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 125
    .line 126
    iget p2, p2, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->b:I

    .line 127
    .line 128
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-gt p2, v1, :cond_7

    .line 133
    .line 134
    invoke-static {v0}, Landroidx/customview/poolingcontainer/PoolingContainer;->a(Landroid/view/View;)V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :cond_7
    sget-boolean p2, Landroidx/recyclerview/widget/RecyclerView;->G0:Z

    .line 139
    .line 140
    if-eqz p2, :cond_9

    .line 141
    .line 142
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result p2

    .line 146
    if-nez p2, :cond_8

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 150
    .line 151
    const-string p2, "this scrap item already exists"

    .line 152
    .line 153
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw p1

    .line 157
    :cond_9
    :goto_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->o()V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    return-void
.end method

.method public final b(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-ltz p1, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->m0:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$State;->b()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ge p1, v1, :cond_1

    .line 12
    .line 13
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->m0:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 14
    .line 15
    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView$State;->g:Z

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    return p1

    .line 20
    :cond_0
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->i:Landroidx/recyclerview/widget/AdapterHelper;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/AdapterHelper;->f(II)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1

    .line 28
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 29
    .line 30
    const-string v2, "invalid position "

    .line 31
    .line 32
    const-string v3, ". State item count is "

    .line 33
    .line 34
    invoke-static {p1, v2, v3}, Landroid/support/v4/media/a;->s(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->m0:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 39
    .line 40
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$State;->b()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->C()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v1
.end method

.method public final c()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->g:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->a:Landroid/util/SparseArray;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->b:I

    .line 19
    .line 20
    new-instance v1, Ljava/util/IdentityHashMap;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iput-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->c:Ljava/util/Set;

    .line 30
    .line 31
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->g:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->e()V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->g:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 37
    .line 38
    return-object v0
.end method

.method public final d(I)Landroid/view/View;
    .locals 2

    .line 1
    const-wide v0, 0x7fffffffffffffffL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->l(IJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 11
    .line 12
    return-object p1
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->g:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->q:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView;->x:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->c:Ljava/util/Set;

    .line 16
    .line 17
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final f(Landroidx/recyclerview/widget/RecyclerView$Adapter;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->g:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->a:Landroid/util/SparseArray;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->c:Ljava/util/Set;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    if-nez p2, :cond_1

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    move p2, p1

    .line 22
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-ge p2, v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 37
    .line 38
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->a:Ljava/util/ArrayList;

    .line 39
    .line 40
    move v2, p1

    .line 41
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-ge v2, v3, :cond_0

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 52
    .line 53
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 54
    .line 55
    invoke-static {v3}, Landroidx/customview/poolingcontainer/PoolingContainer;->a(Landroid/view/View;)V

    .line 56
    .line 57
    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    return-void
.end method

.method public final g()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->h(I)V

    .line 12
    .line 13
    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 18
    .line 19
    .line 20
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->M0:Z

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    .line 26
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->l0:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    .line 27
    .line 28
    iget-object v1, v0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->c:[I

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    const/4 v2, -0x1

    .line 33
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 34
    .line 35
    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    iput v1, v0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->d:I

    .line 38
    .line 39
    :cond_2
    return-void
.end method

.method public final h(I)V
    .locals 5

    .line 1
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->H0:Z

    .line 2
    .line 3
    const-string v1, "RecyclerView"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "Recycling cached view at index "

    .line 10
    .line 11
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->c:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 31
    .line 32
    sget-boolean v3, Landroidx/recyclerview/widget/RecyclerView;->H0:Z

    .line 33
    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v4, "CachedViewHolder to be recycled: "

    .line 39
    .line 40
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    :cond_1
    const/4 v1, 0x1

    .line 54
    invoke-virtual {p0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final i(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->M(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->l()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v2, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->k()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->n:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->m(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->r()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    iget p1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j:I

    .line 36
    .line 37
    and-int/lit8 p1, p1, -0x21

    .line 38
    .line 39
    iput p1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j:I

    .line 40
    .line 41
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->j(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, v2, Landroidx/recyclerview/widget/RecyclerView;->R:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 45
    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->i()Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-nez p1, :cond_3

    .line 53
    .line 54
    iget-object p1, v2, Landroidx/recyclerview/widget/RecyclerView;->R:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->i(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    return-void
.end method

.method public final j(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->l0:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->k()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x1

    .line 13
    if-nez v2, :cond_14

    .line 14
    .line 15
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    goto/16 :goto_c

    .line 22
    .line 23
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->l()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_13

    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->q()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_12

    .line 34
    .line 35
    iget v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j:I

    .line 36
    .line 37
    and-int/lit8 v2, v2, 0x10

    .line 38
    .line 39
    if-nez v2, :cond_1

    .line 40
    .line 41
    sget-object v2, Landroidx/core/view/ViewCompat;->a:Ljava/util/WeakHashMap;

    .line 42
    .line 43
    invoke-virtual {v3}, Landroid/view/View;->hasTransientState()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    move v2, v5

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    move v2, v4

    .line 52
    :goto_0
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->q:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 53
    .line 54
    if-eqz v6, :cond_2

    .line 55
    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    invoke-virtual {v6, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->q(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-eqz v6, :cond_2

    .line 63
    .line 64
    move v6, v5

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    move v6, v4

    .line 67
    :goto_1
    sget-boolean v7, Landroidx/recyclerview/widget/RecyclerView;->G0:Z

    .line 68
    .line 69
    iget-object v8, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->c:Ljava/util/ArrayList;

    .line 70
    .line 71
    if-eqz v7, :cond_4

    .line 72
    .line 73
    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    if-nez v7, :cond_3

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 81
    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v3, "cached view received recycle internal? "

    .line 85
    .line 86
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-static {v0, v2}, Landroid/support/v4/media/a;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw v1

    .line 100
    :cond_4
    :goto_2
    if-nez v6, :cond_7

    .line 101
    .line 102
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->i()Z

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    if-eqz v6, :cond_5

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_5
    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->H0:Z

    .line 110
    .line 111
    if-eqz v1, :cond_6

    .line 112
    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string v5, "trying to recycle a non-recycleable holder. Hopefully, it will re-visit here. We are still removing it from animation lists"

    .line 116
    .line 117
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->C()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    const-string v5, "RecyclerView"

    .line 132
    .line 133
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    :cond_6
    move v5, v4

    .line 137
    goto/16 :goto_b

    .line 138
    .line 139
    :cond_7
    :goto_3
    iget v6, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->f:I

    .line 140
    .line 141
    if-lez v6, :cond_f

    .line 142
    .line 143
    iget v6, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j:I

    .line 144
    .line 145
    and-int/lit16 v6, v6, 0x20e

    .line 146
    .line 147
    if-eqz v6, :cond_8

    .line 148
    .line 149
    goto :goto_8

    .line 150
    :cond_8
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    iget v7, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->f:I

    .line 155
    .line 156
    if-lt v6, v7, :cond_9

    .line 157
    .line 158
    if-lez v6, :cond_9

    .line 159
    .line 160
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->h(I)V

    .line 161
    .line 162
    .line 163
    add-int/lit8 v6, v6, -0x1

    .line 164
    .line 165
    :cond_9
    sget-boolean v7, Landroidx/recyclerview/widget/RecyclerView;->M0:Z

    .line 166
    .line 167
    if-eqz v7, :cond_e

    .line 168
    .line 169
    if-lez v6, :cond_e

    .line 170
    .line 171
    iget v7, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c:I

    .line 172
    .line 173
    iget-object v9, v1, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->c:[I

    .line 174
    .line 175
    if-eqz v9, :cond_b

    .line 176
    .line 177
    iget v9, v1, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->d:I

    .line 178
    .line 179
    mul-int/lit8 v9, v9, 0x2

    .line 180
    .line 181
    move v10, v4

    .line 182
    :goto_4
    if-ge v10, v9, :cond_b

    .line 183
    .line 184
    iget-object v11, v1, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->c:[I

    .line 185
    .line 186
    aget v11, v11, v10

    .line 187
    .line 188
    if-ne v11, v7, :cond_a

    .line 189
    .line 190
    goto :goto_7

    .line 191
    :cond_a
    add-int/lit8 v10, v10, 0x2

    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_b
    add-int/lit8 v6, v6, -0x1

    .line 195
    .line 196
    :goto_5
    if-ltz v6, :cond_d

    .line 197
    .line 198
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v7

    .line 202
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 203
    .line 204
    iget v7, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c:I

    .line 205
    .line 206
    iget-object v9, v1, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->c:[I

    .line 207
    .line 208
    if-eqz v9, :cond_d

    .line 209
    .line 210
    iget v9, v1, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->d:I

    .line 211
    .line 212
    mul-int/lit8 v9, v9, 0x2

    .line 213
    .line 214
    move v10, v4

    .line 215
    :goto_6
    if-ge v10, v9, :cond_d

    .line 216
    .line 217
    iget-object v11, v1, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->c:[I

    .line 218
    .line 219
    aget v11, v11, v10

    .line 220
    .line 221
    if-ne v11, v7, :cond_c

    .line 222
    .line 223
    add-int/lit8 v6, v6, -0x1

    .line 224
    .line 225
    goto :goto_5

    .line 226
    :cond_c
    add-int/lit8 v10, v10, 0x2

    .line 227
    .line 228
    goto :goto_6

    .line 229
    :cond_d
    add-int/2addr v6, v5

    .line 230
    :cond_e
    :goto_7
    invoke-virtual {v8, v6, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    move v1, v5

    .line 234
    goto :goto_9

    .line 235
    :cond_f
    :goto_8
    move v1, v4

    .line 236
    :goto_9
    if-nez v1, :cond_10

    .line 237
    .line 238
    invoke-virtual {p0, p1, v5}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 239
    .line 240
    .line 241
    :goto_a
    move v4, v1

    .line 242
    goto :goto_b

    .line 243
    :cond_10
    move v5, v4

    .line 244
    goto :goto_a

    .line 245
    :goto_b
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->k:Landroidx/recyclerview/widget/ViewInfoStore;

    .line 246
    .line 247
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ViewInfoStore;->d(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 248
    .line 249
    .line 250
    if-nez v4, :cond_11

    .line 251
    .line 252
    if-nez v5, :cond_11

    .line 253
    .line 254
    if-eqz v2, :cond_11

    .line 255
    .line 256
    invoke-static {v3}, Landroidx/customview/poolingcontainer/PoolingContainer;->a(Landroid/view/View;)V

    .line 257
    .line 258
    .line 259
    const/4 v0, 0x0

    .line 260
    iput-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->s:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 261
    .line 262
    iput-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 263
    .line 264
    :cond_11
    return-void

    .line 265
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 266
    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    const-string v2, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    .line 270
    .line 271
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-static {v0, v1}, Landroid/support/v4/media/a;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    throw p1

    .line 282
    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 283
    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    .line 285
    .line 286
    const-string v3, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    .line 287
    .line 288
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-static {v0, v2}, Landroid/support/v4/media/a;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    throw v1

    .line 302
    :cond_14
    :goto_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 303
    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    .line 305
    .line 306
    const-string v6, "Scrapped or attached views may not be recycled. isScrap:"

    .line 307
    .line 308
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->k()Z

    .line 312
    .line 313
    .line 314
    move-result p1

    .line 315
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    const-string p1, " isAttached:"

    .line 319
    .line 320
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    if-eqz p1, :cond_15

    .line 328
    .line 329
    move v4, v5

    .line 330
    :cond_15
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->C()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object p1

    .line 337
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object p1

    .line 344
    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    throw v1
.end method

.method public final k(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->M(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j:I

    .line 6
    .line 7
    and-int/lit8 v0, v0, 0xc

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->m()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->R:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 21
    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->e()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0, p1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->g(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->b:Ljava/util/ArrayList;

    .line 36
    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->b:Ljava/util/ArrayList;

    .line 45
    .line 46
    :cond_2
    iput-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->n:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->o:Z

    .line 50
    .line 51
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->b:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->h()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_5

    .line 62
    .line 63
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_5

    .line 68
    .line 69
    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->q:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 70
    .line 71
    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->b:Z

    .line 72
    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 77
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v2, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    .line 81
    .line 82
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-static {v1, v0}, Landroid/support/v4/media/a;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p1

    .line 93
    :cond_5
    :goto_1
    iput-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->n:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 94
    .line 95
    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->o:Z

    .line 97
    .line 98
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->a:Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public final l(IJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 28

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$Recycler;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView;->m0:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 8
    .line 9
    if-ltz v0, :cond_62

    .line 10
    .line 11
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$State;->b()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-ge v0, v4, :cond_62

    .line 16
    .line 17
    iget-boolean v4, v3, Landroidx/recyclerview/widget/RecyclerView$State;->g:Z

    .line 18
    .line 19
    const/16 v5, 0x20

    .line 20
    .line 21
    const/4 v8, 0x0

    .line 22
    if-eqz v4, :cond_6

    .line 23
    .line 24
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$Recycler;->b:Ljava/util/ArrayList;

    .line 25
    .line 26
    if-eqz v4, :cond_4

    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-nez v4, :cond_0

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_0
    move v9, v8

    .line 36
    :goto_0
    if-ge v9, v4, :cond_2

    .line 37
    .line 38
    iget-object v10, v1, Landroidx/recyclerview/widget/RecyclerView$Recycler;->b:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v10

    .line 44
    check-cast v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 45
    .line 46
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->r()Z

    .line 47
    .line 48
    .line 49
    move-result v11

    .line 50
    if-nez v11, :cond_1

    .line 51
    .line 52
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->d()I

    .line 53
    .line 54
    .line 55
    move-result v11

    .line 56
    if-ne v11, v0, :cond_1

    .line 57
    .line 58
    invoke-virtual {v10, v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a(I)V

    .line 59
    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    iget-object v9, v2, Landroidx/recyclerview/widget/RecyclerView;->q:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 66
    .line 67
    iget-boolean v9, v9, Landroidx/recyclerview/widget/RecyclerView$Adapter;->b:Z

    .line 68
    .line 69
    if-eqz v9, :cond_4

    .line 70
    .line 71
    iget-object v9, v2, Landroidx/recyclerview/widget/RecyclerView;->i:Landroidx/recyclerview/widget/AdapterHelper;

    .line 72
    .line 73
    invoke-virtual {v9, v0, v8}, Landroidx/recyclerview/widget/AdapterHelper;->f(II)I

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    if-lez v9, :cond_4

    .line 78
    .line 79
    iget-object v10, v2, Landroidx/recyclerview/widget/RecyclerView;->q:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 80
    .line 81
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->d()I

    .line 82
    .line 83
    .line 84
    move-result v10

    .line 85
    if-ge v9, v10, :cond_4

    .line 86
    .line 87
    iget-object v10, v2, Landroidx/recyclerview/widget/RecyclerView;->q:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 88
    .line 89
    invoke-virtual {v10, v9}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->e(I)J

    .line 90
    .line 91
    .line 92
    move-result-wide v9

    .line 93
    move v11, v8

    .line 94
    :goto_1
    if-ge v11, v4, :cond_4

    .line 95
    .line 96
    iget-object v12, v1, Landroidx/recyclerview/widget/RecyclerView$Recycler;->b:Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v12

    .line 102
    check-cast v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 103
    .line 104
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->r()Z

    .line 105
    .line 106
    .line 107
    move-result v13

    .line 108
    if-nez v13, :cond_3

    .line 109
    .line 110
    iget-wide v13, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->e:J

    .line 111
    .line 112
    cmp-long v13, v13, v9

    .line 113
    .line 114
    if-nez v13, :cond_3

    .line 115
    .line 116
    invoke-virtual {v12, v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a(I)V

    .line 117
    .line 118
    .line 119
    move-object v10, v12

    .line 120
    goto :goto_3

    .line 121
    :cond_3
    add-int/lit8 v11, v11, 0x1

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_4
    :goto_2
    const/4 v10, 0x0

    .line 125
    :goto_3
    if-eqz v10, :cond_5

    .line 126
    .line 127
    const/4 v4, 0x1

    .line 128
    goto :goto_4

    .line 129
    :cond_5
    move v4, v8

    .line 130
    goto :goto_4

    .line 131
    :cond_6
    move v4, v8

    .line 132
    const/4 v10, 0x0

    .line 133
    :goto_4
    iget-object v9, v1, Landroidx/recyclerview/widget/RecyclerView$Recycler;->a:Ljava/util/ArrayList;

    .line 134
    .line 135
    iget-object v11, v1, Landroidx/recyclerview/widget/RecyclerView$Recycler;->c:Ljava/util/ArrayList;

    .line 136
    .line 137
    const-string v12, "RecyclerView"

    .line 138
    .line 139
    if-nez v10, :cond_25

    .line 140
    .line 141
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 142
    .line 143
    .line 144
    move-result v10

    .line 145
    move v13, v8

    .line 146
    :goto_5
    if-ge v13, v10, :cond_9

    .line 147
    .line 148
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v14

    .line 152
    check-cast v14, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 153
    .line 154
    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->r()Z

    .line 155
    .line 156
    .line 157
    move-result v15

    .line 158
    if-nez v15, :cond_8

    .line 159
    .line 160
    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->d()I

    .line 161
    .line 162
    .line 163
    move-result v15

    .line 164
    if-ne v15, v0, :cond_8

    .line 165
    .line 166
    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->h()Z

    .line 167
    .line 168
    .line 169
    move-result v15

    .line 170
    if-nez v15, :cond_8

    .line 171
    .line 172
    iget-boolean v15, v3, Landroidx/recyclerview/widget/RecyclerView$State;->g:Z

    .line 173
    .line 174
    if-nez v15, :cond_7

    .line 175
    .line 176
    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j()Z

    .line 177
    .line 178
    .line 179
    move-result v15

    .line 180
    if-nez v15, :cond_8

    .line 181
    .line 182
    :cond_7
    invoke-virtual {v14, v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a(I)V

    .line 183
    .line 184
    .line 185
    move-object v10, v14

    .line 186
    const/16 v17, 0x1

    .line 187
    .line 188
    goto/16 :goto_e

    .line 189
    .line 190
    :cond_8
    add-int/lit8 v13, v13, 0x1

    .line 191
    .line 192
    goto :goto_5

    .line 193
    :cond_9
    iget-object v10, v2, Landroidx/recyclerview/widget/RecyclerView;->j:Landroidx/recyclerview/widget/ChildHelper;

    .line 194
    .line 195
    iget-object v10, v10, Landroidx/recyclerview/widget/ChildHelper;->c:Ljava/util/ArrayList;

    .line 196
    .line 197
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 198
    .line 199
    .line 200
    move-result v13

    .line 201
    move v14, v8

    .line 202
    :goto_6
    if-ge v14, v13, :cond_b

    .line 203
    .line 204
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v15

    .line 208
    check-cast v15, Landroid/view/View;

    .line 209
    .line 210
    invoke-static {v15}, Landroidx/recyclerview/widget/RecyclerView;->M(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 211
    .line 212
    .line 213
    move-result-object v16

    .line 214
    const/16 v17, 0x1

    .line 215
    .line 216
    invoke-virtual/range {v16 .. v16}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->d()I

    .line 217
    .line 218
    .line 219
    move-result v7

    .line 220
    if-ne v7, v0, :cond_a

    .line 221
    .line 222
    invoke-virtual/range {v16 .. v16}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->h()Z

    .line 223
    .line 224
    .line 225
    move-result v7

    .line 226
    if-nez v7, :cond_a

    .line 227
    .line 228
    invoke-virtual/range {v16 .. v16}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j()Z

    .line 229
    .line 230
    .line 231
    move-result v7

    .line 232
    if-nez v7, :cond_a

    .line 233
    .line 234
    goto :goto_7

    .line 235
    :cond_a
    add-int/lit8 v14, v14, 0x1

    .line 236
    .line 237
    goto :goto_6

    .line 238
    :cond_b
    const/16 v17, 0x1

    .line 239
    .line 240
    const/4 v15, 0x0

    .line 241
    :goto_7
    if-eqz v15, :cond_18

    .line 242
    .line 243
    invoke-static {v15}, Landroidx/recyclerview/widget/RecyclerView;->M(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 244
    .line 245
    .line 246
    move-result-object v7

    .line 247
    iget-object v10, v2, Landroidx/recyclerview/widget/RecyclerView;->j:Landroidx/recyclerview/widget/ChildHelper;

    .line 248
    .line 249
    iget-object v13, v10, Landroidx/recyclerview/widget/ChildHelper;->b:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    .line 250
    .line 251
    iget-object v14, v10, Landroidx/recyclerview/widget/ChildHelper;->a:Landroidx/recyclerview/widget/RecyclerView$5;

    .line 252
    .line 253
    iget-object v14, v14, Landroidx/recyclerview/widget/RecyclerView$5;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 254
    .line 255
    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 256
    .line 257
    .line 258
    move-result v14

    .line 259
    if-ltz v14, :cond_17

    .line 260
    .line 261
    invoke-virtual {v13, v14}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->d(I)Z

    .line 262
    .line 263
    .line 264
    move-result v16

    .line 265
    if-eqz v16, :cond_16

    .line 266
    .line 267
    invoke-virtual {v13, v14}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->a(I)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v10, v15}, Landroidx/recyclerview/widget/ChildHelper;->e(Landroid/view/View;)V

    .line 271
    .line 272
    .line 273
    iget-object v10, v2, Landroidx/recyclerview/widget/RecyclerView;->j:Landroidx/recyclerview/widget/ChildHelper;

    .line 274
    .line 275
    iget-object v13, v10, Landroidx/recyclerview/widget/ChildHelper;->b:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    .line 276
    .line 277
    iget-object v10, v10, Landroidx/recyclerview/widget/ChildHelper;->a:Landroidx/recyclerview/widget/RecyclerView$5;

    .line 278
    .line 279
    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$5;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 280
    .line 281
    invoke-virtual {v10, v15}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 282
    .line 283
    .line 284
    move-result v10

    .line 285
    const/4 v14, -0x1

    .line 286
    if-ne v10, v14, :cond_c

    .line 287
    .line 288
    goto :goto_8

    .line 289
    :cond_c
    invoke-virtual {v13, v10}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->d(I)Z

    .line 290
    .line 291
    .line 292
    move-result v16

    .line 293
    if-eqz v16, :cond_d

    .line 294
    .line 295
    :goto_8
    move v10, v14

    .line 296
    goto :goto_9

    .line 297
    :cond_d
    invoke-virtual {v13, v10}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->b(I)I

    .line 298
    .line 299
    .line 300
    move-result v13

    .line 301
    sub-int/2addr v10, v13

    .line 302
    :goto_9
    if-eq v10, v14, :cond_15

    .line 303
    .line 304
    iget-object v13, v2, Landroidx/recyclerview/widget/RecyclerView;->j:Landroidx/recyclerview/widget/ChildHelper;

    .line 305
    .line 306
    invoke-virtual {v13, v10}, Landroidx/recyclerview/widget/ChildHelper;->d(I)I

    .line 307
    .line 308
    .line 309
    move-result v10

    .line 310
    iget-object v14, v13, Landroidx/recyclerview/widget/ChildHelper;->b:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    .line 311
    .line 312
    invoke-virtual {v14, v10}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->f(I)Z

    .line 313
    .line 314
    .line 315
    iget-object v13, v13, Landroidx/recyclerview/widget/ChildHelper;->a:Landroidx/recyclerview/widget/RecyclerView$5;

    .line 316
    .line 317
    iget-object v13, v13, Landroidx/recyclerview/widget/RecyclerView$5;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 318
    .line 319
    invoke-virtual {v13, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 320
    .line 321
    .line 322
    move-result-object v14

    .line 323
    if-eqz v14, :cond_11

    .line 324
    .line 325
    invoke-static {v14}, Landroidx/recyclerview/widget/RecyclerView;->M(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 326
    .line 327
    .line 328
    move-result-object v14

    .line 329
    if-eqz v14, :cond_12

    .line 330
    .line 331
    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->l()Z

    .line 332
    .line 333
    .line 334
    move-result v16

    .line 335
    if-eqz v16, :cond_f

    .line 336
    .line 337
    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->q()Z

    .line 338
    .line 339
    .line 340
    move-result v16

    .line 341
    if-eqz v16, :cond_e

    .line 342
    .line 343
    goto :goto_a

    .line 344
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 345
    .line 346
    new-instance v2, Ljava/lang/StringBuilder;

    .line 347
    .line 348
    const-string v3, "called detach on an already detached child "

    .line 349
    .line 350
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-static {v13, v2}, Landroid/support/v4/media/a;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v2

    .line 360
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    throw v0

    .line 364
    :cond_f
    :goto_a
    sget-boolean v16, Landroidx/recyclerview/widget/RecyclerView;->H0:Z

    .line 365
    .line 366
    if-eqz v16, :cond_10

    .line 367
    .line 368
    new-instance v6, Ljava/lang/StringBuilder;

    .line 369
    .line 370
    const-string v5, "tmpDetach "

    .line 371
    .line 372
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v5

    .line 382
    invoke-static {v12, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    .line 384
    .line 385
    :cond_10
    const/16 v5, 0x100

    .line 386
    .line 387
    invoke-virtual {v14, v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a(I)V

    .line 388
    .line 389
    .line 390
    goto :goto_b

    .line 391
    :cond_11
    sget-boolean v5, Landroidx/recyclerview/widget/RecyclerView;->G0:Z

    .line 392
    .line 393
    if-nez v5, :cond_14

    .line 394
    .line 395
    :cond_12
    :goto_b
    invoke-static {v10, v13}, Landroidx/recyclerview/widget/RecyclerView;->c(ILandroidx/recyclerview/widget/RecyclerView;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v1, v15}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->k(Landroid/view/View;)V

    .line 399
    .line 400
    .line 401
    const/16 v5, 0x2020

    .line 402
    .line 403
    invoke-virtual {v7, v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a(I)V

    .line 404
    .line 405
    .line 406
    :cond_13
    :goto_c
    move-object v10, v7

    .line 407
    goto/16 :goto_e

    .line 408
    .line 409
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 410
    .line 411
    new-instance v2, Ljava/lang/StringBuilder;

    .line 412
    .line 413
    const-string v3, "No view at offset "

    .line 414
    .line 415
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-static {v13, v2}, Landroid/support/v4/media/a;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v2

    .line 425
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    throw v0

    .line 429
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 430
    .line 431
    new-instance v3, Ljava/lang/StringBuilder;

    .line 432
    .line 433
    const-string v4, "layout index should not be -1 after unhiding a view:"

    .line 434
    .line 435
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-static {v2, v3}, Landroid/support/v4/media/a;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v2

    .line 445
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    throw v0

    .line 449
    :cond_16
    new-instance v0, Ljava/lang/RuntimeException;

    .line 450
    .line 451
    new-instance v2, Ljava/lang/StringBuilder;

    .line 452
    .line 453
    const-string v3, "trying to unhide a view that was not hidden"

    .line 454
    .line 455
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v2

    .line 465
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    throw v0

    .line 469
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 470
    .line 471
    new-instance v2, Ljava/lang/StringBuilder;

    .line 472
    .line 473
    const-string v3, "view is not a child, cannot hide "

    .line 474
    .line 475
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v2

    .line 485
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    throw v0

    .line 489
    :cond_18
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 490
    .line 491
    .line 492
    move-result v5

    .line 493
    move v6, v8

    .line 494
    :goto_d
    if-ge v6, v5, :cond_1a

    .line 495
    .line 496
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    move-result-object v7

    .line 500
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 501
    .line 502
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->h()Z

    .line 503
    .line 504
    .line 505
    move-result v10

    .line 506
    if-nez v10, :cond_19

    .line 507
    .line 508
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->d()I

    .line 509
    .line 510
    .line 511
    move-result v10

    .line 512
    if-ne v10, v0, :cond_19

    .line 513
    .line 514
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->f()Z

    .line 515
    .line 516
    .line 517
    move-result v10

    .line 518
    if-nez v10, :cond_19

    .line 519
    .line 520
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    sget-boolean v5, Landroidx/recyclerview/widget/RecyclerView;->H0:Z

    .line 524
    .line 525
    if-eqz v5, :cond_13

    .line 526
    .line 527
    new-instance v5, Ljava/lang/StringBuilder;

    .line 528
    .line 529
    const-string v6, "getScrapOrHiddenOrCachedHolderForPosition("

    .line 530
    .line 531
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    const-string v6, ") found match in cache: "

    .line 538
    .line 539
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v5

    .line 549
    invoke-static {v12, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    .line 551
    .line 552
    goto/16 :goto_c

    .line 553
    .line 554
    :cond_19
    add-int/lit8 v6, v6, 0x1

    .line 555
    .line 556
    goto :goto_d

    .line 557
    :cond_1a
    const/4 v10, 0x0

    .line 558
    :goto_e
    if-eqz v10, :cond_26

    .line 559
    .line 560
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j()Z

    .line 561
    .line 562
    .line 563
    move-result v5

    .line 564
    if-eqz v5, :cond_1d

    .line 565
    .line 566
    sget-boolean v5, Landroidx/recyclerview/widget/RecyclerView;->G0:Z

    .line 567
    .line 568
    if-eqz v5, :cond_1c

    .line 569
    .line 570
    iget-boolean v5, v3, Landroidx/recyclerview/widget/RecyclerView$State;->g:Z

    .line 571
    .line 572
    if-eqz v5, :cond_1b

    .line 573
    .line 574
    goto :goto_f

    .line 575
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 576
    .line 577
    new-instance v3, Ljava/lang/StringBuilder;

    .line 578
    .line 579
    const-string v4, "should not receive a removed view unless it is pre layout"

    .line 580
    .line 581
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 582
    .line 583
    .line 584
    invoke-static {v2, v3}, Landroid/support/v4/media/a;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v2

    .line 588
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 589
    .line 590
    .line 591
    throw v0

    .line 592
    :cond_1c
    :goto_f
    iget-boolean v5, v3, Landroidx/recyclerview/widget/RecyclerView$State;->g:Z

    .line 593
    .line 594
    goto :goto_10

    .line 595
    :cond_1d
    iget v5, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c:I

    .line 596
    .line 597
    if-ltz v5, :cond_24

    .line 598
    .line 599
    iget-object v6, v2, Landroidx/recyclerview/widget/RecyclerView;->q:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 600
    .line 601
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->d()I

    .line 602
    .line 603
    .line 604
    move-result v6

    .line 605
    if-ge v5, v6, :cond_24

    .line 606
    .line 607
    iget-boolean v5, v3, Landroidx/recyclerview/widget/RecyclerView$State;->g:Z

    .line 608
    .line 609
    if-nez v5, :cond_1f

    .line 610
    .line 611
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->q:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 612
    .line 613
    iget v6, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c:I

    .line 614
    .line 615
    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->f(I)I

    .line 616
    .line 617
    .line 618
    move-result v5

    .line 619
    iget v6, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->f:I

    .line 620
    .line 621
    if-eq v5, v6, :cond_1f

    .line 622
    .line 623
    :cond_1e
    move v5, v8

    .line 624
    goto :goto_10

    .line 625
    :cond_1f
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->q:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 626
    .line 627
    iget-boolean v6, v5, Landroidx/recyclerview/widget/RecyclerView$Adapter;->b:Z

    .line 628
    .line 629
    if-eqz v6, :cond_20

    .line 630
    .line 631
    iget-wide v6, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->e:J

    .line 632
    .line 633
    iget v13, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c:I

    .line 634
    .line 635
    invoke-virtual {v5, v13}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->e(I)J

    .line 636
    .line 637
    .line 638
    move-result-wide v13

    .line 639
    cmp-long v5, v6, v13

    .line 640
    .line 641
    if-nez v5, :cond_1e

    .line 642
    .line 643
    :cond_20
    move/from16 v5, v17

    .line 644
    .line 645
    :goto_10
    if-nez v5, :cond_23

    .line 646
    .line 647
    const/4 v5, 0x4

    .line 648
    invoke-virtual {v10, v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a(I)V

    .line 649
    .line 650
    .line 651
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->k()Z

    .line 652
    .line 653
    .line 654
    move-result v5

    .line 655
    if-eqz v5, :cond_21

    .line 656
    .line 657
    iget-object v5, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 658
    .line 659
    invoke-virtual {v2, v5, v8}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 660
    .line 661
    .line 662
    iget-object v5, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->n:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 663
    .line 664
    invoke-virtual {v5, v10}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->m(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 665
    .line 666
    .line 667
    goto :goto_11

    .line 668
    :cond_21
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->r()Z

    .line 669
    .line 670
    .line 671
    move-result v5

    .line 672
    if-eqz v5, :cond_22

    .line 673
    .line 674
    iget v5, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j:I

    .line 675
    .line 676
    and-int/lit8 v5, v5, -0x21

    .line 677
    .line 678
    iput v5, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j:I

    .line 679
    .line 680
    :cond_22
    :goto_11
    invoke-virtual {v1, v10}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->j(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 681
    .line 682
    .line 683
    const/4 v10, 0x0

    .line 684
    goto :goto_12

    .line 685
    :cond_23
    move/from16 v4, v17

    .line 686
    .line 687
    goto :goto_12

    .line 688
    :cond_24
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 689
    .line 690
    new-instance v3, Ljava/lang/StringBuilder;

    .line 691
    .line 692
    const-string v4, "Inconsistency detected. Invalid view holder adapter position"

    .line 693
    .line 694
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 695
    .line 696
    .line 697
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 698
    .line 699
    .line 700
    invoke-static {v2, v3}, Landroid/support/v4/media/a;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object v2

    .line 704
    invoke-direct {v0, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 705
    .line 706
    .line 707
    throw v0

    .line 708
    :cond_25
    const/16 v17, 0x1

    .line 709
    .line 710
    :cond_26
    :goto_12
    const-wide/16 v18, 0x0

    .line 711
    .line 712
    const-wide v20, 0x7fffffffffffffffL

    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    if-nez v10, :cond_3f

    .line 718
    .line 719
    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->i:Landroidx/recyclerview/widget/AdapterHelper;

    .line 720
    .line 721
    invoke-virtual {v7, v0, v8}, Landroidx/recyclerview/widget/AdapterHelper;->f(II)I

    .line 722
    .line 723
    .line 724
    move-result v7

    .line 725
    if-ltz v7, :cond_3e

    .line 726
    .line 727
    iget-object v15, v2, Landroidx/recyclerview/widget/RecyclerView;->q:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 728
    .line 729
    invoke-virtual {v15}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->d()I

    .line 730
    .line 731
    .line 732
    move-result v15

    .line 733
    if-ge v7, v15, :cond_3e

    .line 734
    .line 735
    iget-object v15, v2, Landroidx/recyclerview/widget/RecyclerView;->q:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 736
    .line 737
    invoke-virtual {v15, v7}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->f(I)I

    .line 738
    .line 739
    .line 740
    move-result v15

    .line 741
    const-wide/16 v22, 0x3

    .line 742
    .line 743
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->q:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 744
    .line 745
    iget-boolean v6, v5, Landroidx/recyclerview/widget/RecyclerView$Adapter;->b:Z

    .line 746
    .line 747
    if-eqz v6, :cond_2f

    .line 748
    .line 749
    invoke-virtual {v5, v7}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->e(I)J

    .line 750
    .line 751
    .line 752
    move-result-wide v5

    .line 753
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 754
    .line 755
    .line 756
    move-result v10

    .line 757
    add-int/lit8 v10, v10, -0x1

    .line 758
    .line 759
    :goto_13
    if-ltz v10, :cond_2a

    .line 760
    .line 761
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 762
    .line 763
    .line 764
    move-result-object v24

    .line 765
    const-wide/16 v25, 0x4

    .line 766
    .line 767
    move-object/from16 v13, v24

    .line 768
    .line 769
    check-cast v13, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 770
    .line 771
    move-object/from16 v24, v9

    .line 772
    .line 773
    iget-wide v8, v13, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->e:J

    .line 774
    .line 775
    iget-object v14, v13, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 776
    .line 777
    cmp-long v8, v8, v5

    .line 778
    .line 779
    if-nez v8, :cond_29

    .line 780
    .line 781
    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->r()Z

    .line 782
    .line 783
    .line 784
    move-result v8

    .line 785
    if-nez v8, :cond_29

    .line 786
    .line 787
    iget v8, v13, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->f:I

    .line 788
    .line 789
    if-ne v15, v8, :cond_28

    .line 790
    .line 791
    const/16 v8, 0x20

    .line 792
    .line 793
    invoke-virtual {v13, v8}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a(I)V

    .line 794
    .line 795
    .line 796
    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j()Z

    .line 797
    .line 798
    .line 799
    move-result v5

    .line 800
    if-eqz v5, :cond_27

    .line 801
    .line 802
    iget-boolean v5, v3, Landroidx/recyclerview/widget/RecyclerView$State;->g:Z

    .line 803
    .line 804
    if-nez v5, :cond_27

    .line 805
    .line 806
    iget v5, v13, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j:I

    .line 807
    .line 808
    and-int/lit8 v5, v5, -0xf

    .line 809
    .line 810
    or-int/lit8 v5, v5, 0x2

    .line 811
    .line 812
    iput v5, v13, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j:I

    .line 813
    .line 814
    :cond_27
    move-object v9, v13

    .line 815
    move v13, v15

    .line 816
    goto :goto_17

    .line 817
    :cond_28
    move-object/from16 v9, v24

    .line 818
    .line 819
    const/16 v8, 0x20

    .line 820
    .line 821
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 822
    .line 823
    .line 824
    const/4 v13, 0x0

    .line 825
    invoke-virtual {v2, v14, v13}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 826
    .line 827
    .line 828
    invoke-static {v14}, Landroidx/recyclerview/widget/RecyclerView;->M(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 829
    .line 830
    .line 831
    move-result-object v14

    .line 832
    const/4 v8, 0x0

    .line 833
    iput-object v8, v14, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->n:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 834
    .line 835
    iput-boolean v13, v14, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->o:Z

    .line 836
    .line 837
    move-object v8, v14

    .line 838
    iget v13, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j:I

    .line 839
    .line 840
    and-int/lit8 v13, v13, -0x21

    .line 841
    .line 842
    iput v13, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j:I

    .line 843
    .line 844
    invoke-virtual {v1, v8}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->j(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 845
    .line 846
    .line 847
    goto :goto_14

    .line 848
    :cond_29
    move-object/from16 v9, v24

    .line 849
    .line 850
    :goto_14
    add-int/lit8 v10, v10, -0x1

    .line 851
    .line 852
    const/4 v8, 0x0

    .line 853
    goto :goto_13

    .line 854
    :cond_2a
    const-wide/16 v25, 0x4

    .line 855
    .line 856
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 857
    .line 858
    .line 859
    move-result v8

    .line 860
    add-int/lit8 v8, v8, -0x1

    .line 861
    .line 862
    :goto_15
    if-ltz v8, :cond_2d

    .line 863
    .line 864
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 865
    .line 866
    .line 867
    move-result-object v9

    .line 868
    check-cast v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 869
    .line 870
    move v13, v15

    .line 871
    iget-wide v14, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->e:J

    .line 872
    .line 873
    cmp-long v10, v14, v5

    .line 874
    .line 875
    if-nez v10, :cond_2c

    .line 876
    .line 877
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->f()Z

    .line 878
    .line 879
    .line 880
    move-result v10

    .line 881
    if-nez v10, :cond_2c

    .line 882
    .line 883
    iget v5, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->f:I

    .line 884
    .line 885
    if-ne v13, v5, :cond_2b

    .line 886
    .line 887
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 888
    .line 889
    .line 890
    goto :goto_17

    .line 891
    :cond_2b
    invoke-virtual {v1, v8}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->h(I)V

    .line 892
    .line 893
    .line 894
    :goto_16
    const/4 v9, 0x0

    .line 895
    goto :goto_17

    .line 896
    :cond_2c
    add-int/lit8 v8, v8, -0x1

    .line 897
    .line 898
    move v15, v13

    .line 899
    goto :goto_15

    .line 900
    :cond_2d
    move v13, v15

    .line 901
    goto :goto_16

    .line 902
    :goto_17
    if-eqz v9, :cond_2e

    .line 903
    .line 904
    iput v7, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c:I

    .line 905
    .line 906
    move-object v10, v9

    .line 907
    move/from16 v4, v17

    .line 908
    .line 909
    goto :goto_18

    .line 910
    :cond_2e
    move-object v10, v9

    .line 911
    goto :goto_18

    .line 912
    :cond_2f
    move v13, v15

    .line 913
    const-wide/16 v25, 0x4

    .line 914
    .line 915
    :goto_18
    if-nez v10, :cond_32

    .line 916
    .line 917
    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView$Recycler;->h:Landroidx/recyclerview/widget/RecyclerView$ViewCacheExtension;

    .line 918
    .line 919
    if-eqz v5, :cond_32

    .line 920
    .line 921
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewCacheExtension;->a()Landroid/view/View;

    .line 922
    .line 923
    .line 924
    move-result-object v5

    .line 925
    if-eqz v5, :cond_32

    .line 926
    .line 927
    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->L(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 928
    .line 929
    .line 930
    move-result-object v10

    .line 931
    if-eqz v10, :cond_31

    .line 932
    .line 933
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->q()Z

    .line 934
    .line 935
    .line 936
    move-result v5

    .line 937
    if-nez v5, :cond_30

    .line 938
    .line 939
    goto :goto_19

    .line 940
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 941
    .line 942
    new-instance v3, Ljava/lang/StringBuilder;

    .line 943
    .line 944
    const-string v4, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    .line 945
    .line 946
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 947
    .line 948
    .line 949
    invoke-static {v2, v3}, Landroid/support/v4/media/a;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 950
    .line 951
    .line 952
    move-result-object v2

    .line 953
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 954
    .line 955
    .line 956
    throw v0

    .line 957
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 958
    .line 959
    new-instance v3, Ljava/lang/StringBuilder;

    .line 960
    .line 961
    const-string v4, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    .line 962
    .line 963
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 964
    .line 965
    .line 966
    invoke-static {v2, v3}, Landroid/support/v4/media/a;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 967
    .line 968
    .line 969
    move-result-object v2

    .line 970
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 971
    .line 972
    .line 973
    throw v0

    .line 974
    :cond_32
    :goto_19
    if-nez v10, :cond_37

    .line 975
    .line 976
    sget-boolean v5, Landroidx/recyclerview/widget/RecyclerView;->H0:Z

    .line 977
    .line 978
    if-eqz v5, :cond_33

    .line 979
    .line 980
    new-instance v5, Ljava/lang/StringBuilder;

    .line 981
    .line 982
    const-string v6, "tryGetViewHolderForPositionByDeadline("

    .line 983
    .line 984
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 985
    .line 986
    .line 987
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 988
    .line 989
    .line 990
    const-string v6, ") fetching from shared pool"

    .line 991
    .line 992
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    .line 994
    .line 995
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 996
    .line 997
    .line 998
    move-result-object v5

    .line 999
    invoke-static {v12, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    .line 1001
    .line 1002
    :cond_33
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->c()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v5

    .line 1006
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->a:Landroid/util/SparseArray;

    .line 1007
    .line 1008
    invoke-virtual {v5, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v5

    .line 1012
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 1013
    .line 1014
    if-eqz v5, :cond_35

    .line 1015
    .line 1016
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->a:Ljava/util/ArrayList;

    .line 1017
    .line 1018
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1019
    .line 1020
    .line 1021
    move-result v6

    .line 1022
    if-nez v6, :cond_35

    .line 1023
    .line 1024
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1025
    .line 1026
    .line 1027
    move-result v6

    .line 1028
    add-int/lit8 v6, v6, -0x1

    .line 1029
    .line 1030
    :goto_1a
    if-ltz v6, :cond_35

    .line 1031
    .line 1032
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v7

    .line 1036
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 1037
    .line 1038
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->f()Z

    .line 1039
    .line 1040
    .line 1041
    move-result v7

    .line 1042
    if-nez v7, :cond_34

    .line 1043
    .line 1044
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v5

    .line 1048
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 1049
    .line 1050
    goto :goto_1b

    .line 1051
    :cond_34
    add-int/lit8 v6, v6, -0x1

    .line 1052
    .line 1053
    goto :goto_1a

    .line 1054
    :cond_35
    const/4 v5, 0x0

    .line 1055
    :goto_1b
    if-eqz v5, :cond_36

    .line 1056
    .line 1057
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->o()V

    .line 1058
    .line 1059
    .line 1060
    sget-boolean v6, Landroidx/recyclerview/widget/RecyclerView;->G0:Z

    .line 1061
    .line 1062
    :cond_36
    move-object v10, v5

    .line 1063
    :cond_37
    if-nez v10, :cond_40

    .line 1064
    .line 1065
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 1066
    .line 1067
    .line 1068
    move-result-wide v5

    .line 1069
    cmp-long v7, p2, v20

    .line 1070
    .line 1071
    if-eqz v7, :cond_3a

    .line 1072
    .line 1073
    iget-object v7, v1, Landroidx/recyclerview/widget/RecyclerView$Recycler;->g:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 1074
    .line 1075
    invoke-virtual {v7, v13}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->a(I)Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 1076
    .line 1077
    .line 1078
    move-result-object v7

    .line 1079
    iget-wide v7, v7, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->c:J

    .line 1080
    .line 1081
    cmp-long v9, v7, v18

    .line 1082
    .line 1083
    if-eqz v9, :cond_39

    .line 1084
    .line 1085
    add-long/2addr v7, v5

    .line 1086
    cmp-long v7, v7, p2

    .line 1087
    .line 1088
    if-gez v7, :cond_38

    .line 1089
    .line 1090
    goto :goto_1c

    .line 1091
    :cond_38
    const/4 v7, 0x0

    .line 1092
    goto :goto_1d

    .line 1093
    :cond_39
    :goto_1c
    move/from16 v7, v17

    .line 1094
    .line 1095
    :goto_1d
    if-nez v7, :cond_3a

    .line 1096
    .line 1097
    const/16 v16, 0x0

    .line 1098
    .line 1099
    return-object v16

    .line 1100
    :cond_3a
    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->q:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 1101
    .line 1102
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1103
    .line 1104
    .line 1105
    :try_start_0
    const-string v8, "RV CreateView"

    .line 1106
    .line 1107
    sget v9, Landroidx/core/os/TraceCompat;->a:I

    .line 1108
    .line 1109
    invoke-static {v8}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1110
    .line 1111
    .line 1112
    invoke-virtual {v7, v2, v13}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->o(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v10

    .line 1116
    iget-object v7, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 1117
    .line 1118
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v7

    .line 1122
    if-nez v7, :cond_3d

    .line 1123
    .line 1124
    iput v13, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1125
    .line 1126
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1127
    .line 1128
    .line 1129
    sget-boolean v7, Landroidx/recyclerview/widget/RecyclerView;->M0:Z

    .line 1130
    .line 1131
    if-eqz v7, :cond_3b

    .line 1132
    .line 1133
    iget-object v7, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 1134
    .line 1135
    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView;->H(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v7

    .line 1139
    if-eqz v7, :cond_3b

    .line 1140
    .line 1141
    new-instance v8, Ljava/lang/ref/WeakReference;

    .line 1142
    .line 1143
    invoke-direct {v8, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 1144
    .line 1145
    .line 1146
    iput-object v8, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->b:Ljava/lang/ref/WeakReference;

    .line 1147
    .line 1148
    :cond_3b
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 1149
    .line 1150
    .line 1151
    move-result-wide v7

    .line 1152
    iget-object v9, v1, Landroidx/recyclerview/widget/RecyclerView$Recycler;->g:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 1153
    .line 1154
    sub-long/2addr v7, v5

    .line 1155
    invoke-virtual {v9, v13}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->a(I)Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v5

    .line 1159
    iget-wide v13, v5, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->c:J

    .line 1160
    .line 1161
    cmp-long v6, v13, v18

    .line 1162
    .line 1163
    if-nez v6, :cond_3c

    .line 1164
    .line 1165
    goto :goto_1e

    .line 1166
    :cond_3c
    div-long v13, v13, v25

    .line 1167
    .line 1168
    mul-long v13, v13, v22

    .line 1169
    .line 1170
    div-long v7, v7, v25

    .line 1171
    .line 1172
    add-long/2addr v7, v13

    .line 1173
    :goto_1e
    iput-wide v7, v5, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->c:J

    .line 1174
    .line 1175
    sget-boolean v5, Landroidx/recyclerview/widget/RecyclerView;->H0:Z

    .line 1176
    .line 1177
    if-eqz v5, :cond_40

    .line 1178
    .line 1179
    const-string v5, "tryGetViewHolderForPositionByDeadline created new ViewHolder"

    .line 1180
    .line 1181
    invoke-static {v12, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    .line 1183
    .line 1184
    goto :goto_20

    .line 1185
    :catchall_0
    move-exception v0

    .line 1186
    goto :goto_1f

    .line 1187
    :cond_3d
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1188
    .line 1189
    const-string v2, "ViewHolder views must not be attached when created. Ensure that you are not passing \'true\' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)"

    .line 1190
    .line 1191
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1192
    .line 1193
    .line 1194
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1195
    :goto_1f
    sget v2, Landroidx/core/os/TraceCompat;->a:I

    .line 1196
    .line 1197
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1198
    .line 1199
    .line 1200
    throw v0

    .line 1201
    :cond_3e
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    .line 1202
    .line 1203
    const-string v5, "(offset:"

    .line 1204
    .line 1205
    const-string v6, ").state:"

    .line 1206
    .line 1207
    const-string v8, "Inconsistency detected. Invalid item position "

    .line 1208
    .line 1209
    invoke-static {v8, v0, v7, v5, v6}, Landroid/support/v4/media/a;->u(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v0

    .line 1213
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$State;->b()I

    .line 1214
    .line 1215
    .line 1216
    move-result v3

    .line 1217
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1218
    .line 1219
    .line 1220
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->C()Ljava/lang/String;

    .line 1221
    .line 1222
    .line 1223
    move-result-object v2

    .line 1224
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1225
    .line 1226
    .line 1227
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1228
    .line 1229
    .line 1230
    move-result-object v0

    .line 1231
    invoke-direct {v4, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 1232
    .line 1233
    .line 1234
    throw v4

    .line 1235
    :cond_3f
    const-wide/16 v22, 0x3

    .line 1236
    .line 1237
    const-wide/16 v25, 0x4

    .line 1238
    .line 1239
    :cond_40
    :goto_20
    iget-object v5, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 1240
    .line 1241
    if-eqz v4, :cond_42

    .line 1242
    .line 1243
    iget-boolean v6, v3, Landroidx/recyclerview/widget/RecyclerView$State;->g:Z

    .line 1244
    .line 1245
    if-nez v6, :cond_42

    .line 1246
    .line 1247
    iget v6, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j:I

    .line 1248
    .line 1249
    and-int/lit16 v7, v6, 0x2000

    .line 1250
    .line 1251
    if-eqz v7, :cond_41

    .line 1252
    .line 1253
    move/from16 v7, v17

    .line 1254
    .line 1255
    goto :goto_21

    .line 1256
    :cond_41
    const/4 v7, 0x0

    .line 1257
    :goto_21
    if-eqz v7, :cond_42

    .line 1258
    .line 1259
    and-int/lit16 v6, v6, -0x2001

    .line 1260
    .line 1261
    iput v6, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j:I

    .line 1262
    .line 1263
    iget-boolean v6, v3, Landroidx/recyclerview/widget/RecyclerView$State;->j:Z

    .line 1264
    .line 1265
    if-eqz v6, :cond_42

    .line 1266
    .line 1267
    invoke-static {v10}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->e(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 1268
    .line 1269
    .line 1270
    iget-object v6, v2, Landroidx/recyclerview/widget/RecyclerView;->R:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 1271
    .line 1272
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->e()Ljava/util/List;

    .line 1273
    .line 1274
    .line 1275
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1276
    .line 1277
    .line 1278
    new-instance v6, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 1279
    .line 1280
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 1281
    .line 1282
    .line 1283
    invoke-virtual {v6, v10}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 1284
    .line 1285
    .line 1286
    invoke-virtual {v2, v10, v6}, Landroidx/recyclerview/widget/RecyclerView;->a0(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 1287
    .line 1288
    .line 1289
    :cond_42
    iget-boolean v6, v3, Landroidx/recyclerview/widget/RecyclerView$State;->g:Z

    .line 1290
    .line 1291
    if-eqz v6, :cond_43

    .line 1292
    .line 1293
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->g()Z

    .line 1294
    .line 1295
    .line 1296
    move-result v6

    .line 1297
    if-eqz v6, :cond_43

    .line 1298
    .line 1299
    iput v0, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->g:I

    .line 1300
    .line 1301
    goto :goto_23

    .line 1302
    :cond_43
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->g()Z

    .line 1303
    .line 1304
    .line 1305
    move-result v6

    .line 1306
    if-eqz v6, :cond_46

    .line 1307
    .line 1308
    iget v6, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j:I

    .line 1309
    .line 1310
    and-int/lit8 v6, v6, 0x2

    .line 1311
    .line 1312
    if-eqz v6, :cond_44

    .line 1313
    .line 1314
    move/from16 v6, v17

    .line 1315
    .line 1316
    goto :goto_22

    .line 1317
    :cond_44
    const/4 v6, 0x0

    .line 1318
    :goto_22
    if-nez v6, :cond_46

    .line 1319
    .line 1320
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->h()Z

    .line 1321
    .line 1322
    .line 1323
    move-result v6

    .line 1324
    if-eqz v6, :cond_45

    .line 1325
    .line 1326
    goto :goto_24

    .line 1327
    :cond_45
    :goto_23
    move/from16 v7, v17

    .line 1328
    .line 1329
    const/4 v14, 0x0

    .line 1330
    const/16 v27, 0x0

    .line 1331
    .line 1332
    goto/16 :goto_2f

    .line 1333
    .line 1334
    :cond_46
    :goto_24
    sget-boolean v6, Landroidx/recyclerview/widget/RecyclerView;->G0:Z

    .line 1335
    .line 1336
    if-eqz v6, :cond_48

    .line 1337
    .line 1338
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j()Z

    .line 1339
    .line 1340
    .line 1341
    move-result v6

    .line 1342
    if-nez v6, :cond_47

    .line 1343
    .line 1344
    goto :goto_25

    .line 1345
    :cond_47
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1346
    .line 1347
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1348
    .line 1349
    const-string v4, "Removed holder should be bound and it should come here only in pre-layout. Holder: "

    .line 1350
    .line 1351
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1352
    .line 1353
    .line 1354
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1355
    .line 1356
    .line 1357
    invoke-static {v2, v3}, Landroid/support/v4/media/a;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1358
    .line 1359
    .line 1360
    move-result-object v2

    .line 1361
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1362
    .line 1363
    .line 1364
    throw v0

    .line 1365
    :cond_48
    :goto_25
    iget-object v6, v2, Landroidx/recyclerview/widget/RecyclerView;->i:Landroidx/recyclerview/widget/AdapterHelper;

    .line 1366
    .line 1367
    const/4 v14, 0x0

    .line 1368
    invoke-virtual {v6, v0, v14}, Landroidx/recyclerview/widget/AdapterHelper;->f(II)I

    .line 1369
    .line 1370
    .line 1371
    move-result v6

    .line 1372
    const/4 v8, 0x0

    .line 1373
    iput-object v8, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->s:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 1374
    .line 1375
    iput-object v2, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 1376
    .line 1377
    iget v7, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->f:I

    .line 1378
    .line 1379
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 1380
    .line 1381
    .line 1382
    move-result-wide v8

    .line 1383
    cmp-long v11, p2, v20

    .line 1384
    .line 1385
    if-eqz v11, :cond_4a

    .line 1386
    .line 1387
    iget-object v11, v1, Landroidx/recyclerview/widget/RecyclerView$Recycler;->g:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 1388
    .line 1389
    invoke-virtual {v11, v7}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->a(I)Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 1390
    .line 1391
    .line 1392
    move-result-object v7

    .line 1393
    iget-wide v11, v7, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->d:J

    .line 1394
    .line 1395
    cmp-long v7, v11, v18

    .line 1396
    .line 1397
    if-eqz v7, :cond_4a

    .line 1398
    .line 1399
    add-long/2addr v11, v8

    .line 1400
    cmp-long v7, v11, p2

    .line 1401
    .line 1402
    if-gez v7, :cond_49

    .line 1403
    .line 1404
    goto :goto_26

    .line 1405
    :cond_49
    move/from16 v27, v14

    .line 1406
    .line 1407
    move/from16 v7, v17

    .line 1408
    .line 1409
    goto/16 :goto_2f

    .line 1410
    .line 1411
    :cond_4a
    :goto_26
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->l()Z

    .line 1412
    .line 1413
    .line 1414
    move-result v7

    .line 1415
    if-eqz v7, :cond_4b

    .line 1416
    .line 1417
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 1418
    .line 1419
    .line 1420
    move-result v7

    .line 1421
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1422
    .line 1423
    .line 1424
    move-result-object v11

    .line 1425
    invoke-static {v2, v5, v7, v11}, Landroidx/recyclerview/widget/RecyclerView;->e(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1426
    .line 1427
    .line 1428
    move/from16 v27, v17

    .line 1429
    .line 1430
    goto :goto_27

    .line 1431
    :cond_4b
    move/from16 v27, v14

    .line 1432
    .line 1433
    :goto_27
    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->q:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 1434
    .line 1435
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1436
    .line 1437
    .line 1438
    iget-object v11, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->s:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 1439
    .line 1440
    if-nez v11, :cond_4c

    .line 1441
    .line 1442
    move/from16 v11, v17

    .line 1443
    .line 1444
    goto :goto_28

    .line 1445
    :cond_4c
    move v11, v14

    .line 1446
    :goto_28
    if-eqz v11, :cond_4e

    .line 1447
    .line 1448
    iput v6, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c:I

    .line 1449
    .line 1450
    iget-boolean v12, v7, Landroidx/recyclerview/widget/RecyclerView$Adapter;->b:Z

    .line 1451
    .line 1452
    if-eqz v12, :cond_4d

    .line 1453
    .line 1454
    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->e(I)J

    .line 1455
    .line 1456
    .line 1457
    move-result-wide v12

    .line 1458
    iput-wide v12, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->e:J

    .line 1459
    .line 1460
    :cond_4d
    iget v12, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j:I

    .line 1461
    .line 1462
    and-int/lit16 v12, v12, -0x208

    .line 1463
    .line 1464
    or-int/lit8 v12, v12, 0x1

    .line 1465
    .line 1466
    iput v12, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j:I

    .line 1467
    .line 1468
    sget v12, Landroidx/core/os/TraceCompat;->a:I

    .line 1469
    .line 1470
    const-string v12, "RV OnBindView"

    .line 1471
    .line 1472
    invoke-static {v12}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1473
    .line 1474
    .line 1475
    :cond_4e
    iput-object v7, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->s:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 1476
    .line 1477
    sget-boolean v12, Landroidx/recyclerview/widget/RecyclerView;->G0:Z

    .line 1478
    .line 1479
    if-eqz v12, :cond_52

    .line 1480
    .line 1481
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 1482
    .line 1483
    .line 1484
    move-result-object v12

    .line 1485
    if-nez v12, :cond_50

    .line 1486
    .line 1487
    sget-object v12, Landroidx/core/view/ViewCompat;->a:Ljava/util/WeakHashMap;

    .line 1488
    .line 1489
    invoke-virtual {v5}, Landroid/view/View;->isAttachedToWindow()Z

    .line 1490
    .line 1491
    .line 1492
    move-result v12

    .line 1493
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->l()Z

    .line 1494
    .line 1495
    .line 1496
    move-result v13

    .line 1497
    if-ne v12, v13, :cond_4f

    .line 1498
    .line 1499
    goto :goto_29

    .line 1500
    :cond_4f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1501
    .line 1502
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1503
    .line 1504
    const-string v3, "Temp-detached state out of sync with reality. holder.isTmpDetached(): "

    .line 1505
    .line 1506
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1507
    .line 1508
    .line 1509
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->l()Z

    .line 1510
    .line 1511
    .line 1512
    move-result v3

    .line 1513
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1514
    .line 1515
    .line 1516
    const-string v3, ", attached to window: "

    .line 1517
    .line 1518
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1519
    .line 1520
    .line 1521
    invoke-virtual {v5}, Landroid/view/View;->isAttachedToWindow()Z

    .line 1522
    .line 1523
    .line 1524
    move-result v3

    .line 1525
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1526
    .line 1527
    .line 1528
    const-string v3, ", holder: "

    .line 1529
    .line 1530
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1531
    .line 1532
    .line 1533
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1534
    .line 1535
    .line 1536
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1537
    .line 1538
    .line 1539
    move-result-object v2

    .line 1540
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1541
    .line 1542
    .line 1543
    throw v0

    .line 1544
    :cond_50
    :goto_29
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 1545
    .line 1546
    .line 1547
    move-result-object v12

    .line 1548
    if-nez v12, :cond_52

    .line 1549
    .line 1550
    sget-object v12, Landroidx/core/view/ViewCompat;->a:Ljava/util/WeakHashMap;

    .line 1551
    .line 1552
    invoke-virtual {v5}, Landroid/view/View;->isAttachedToWindow()Z

    .line 1553
    .line 1554
    .line 1555
    move-result v12

    .line 1556
    if-nez v12, :cond_51

    .line 1557
    .line 1558
    goto :goto_2a

    .line 1559
    :cond_51
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1560
    .line 1561
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1562
    .line 1563
    const-string v3, "Attempting to bind attached holder with no parent (AKA temp detached): "

    .line 1564
    .line 1565
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1566
    .line 1567
    .line 1568
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1569
    .line 1570
    .line 1571
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1572
    .line 1573
    .line 1574
    move-result-object v2

    .line 1575
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1576
    .line 1577
    .line 1578
    throw v0

    .line 1579
    :cond_52
    :goto_2a
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->e()Ljava/util/List;

    .line 1580
    .line 1581
    .line 1582
    invoke-virtual {v7, v10, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->n(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 1583
    .line 1584
    .line 1585
    if-eqz v11, :cond_55

    .line 1586
    .line 1587
    iget-object v6, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->k:Ljava/util/ArrayList;

    .line 1588
    .line 1589
    if-eqz v6, :cond_53

    .line 1590
    .line 1591
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1592
    .line 1593
    .line 1594
    :cond_53
    iget v6, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j:I

    .line 1595
    .line 1596
    and-int/lit16 v6, v6, -0x401

    .line 1597
    .line 1598
    iput v6, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j:I

    .line 1599
    .line 1600
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1601
    .line 1602
    .line 1603
    move-result-object v6

    .line 1604
    instance-of v7, v6, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1605
    .line 1606
    if-eqz v7, :cond_54

    .line 1607
    .line 1608
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1609
    .line 1610
    move/from16 v7, v17

    .line 1611
    .line 1612
    iput-boolean v7, v6, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->c:Z

    .line 1613
    .line 1614
    :cond_54
    sget v6, Landroidx/core/os/TraceCompat;->a:I

    .line 1615
    .line 1616
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1617
    .line 1618
    .line 1619
    :cond_55
    if-eqz v27, :cond_56

    .line 1620
    .line 1621
    invoke-static {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->f(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V

    .line 1622
    .line 1623
    .line 1624
    :cond_56
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 1625
    .line 1626
    .line 1627
    move-result-wide v6

    .line 1628
    iget-object v11, v1, Landroidx/recyclerview/widget/RecyclerView$Recycler;->g:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 1629
    .line 1630
    iget v12, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->f:I

    .line 1631
    .line 1632
    sub-long/2addr v6, v8

    .line 1633
    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->a(I)Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 1634
    .line 1635
    .line 1636
    move-result-object v8

    .line 1637
    iget-wide v11, v8, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->d:J

    .line 1638
    .line 1639
    cmp-long v9, v11, v18

    .line 1640
    .line 1641
    if-nez v9, :cond_57

    .line 1642
    .line 1643
    goto :goto_2b

    .line 1644
    :cond_57
    div-long v11, v11, v25

    .line 1645
    .line 1646
    mul-long v11, v11, v22

    .line 1647
    .line 1648
    div-long v6, v6, v25

    .line 1649
    .line 1650
    add-long/2addr v6, v11

    .line 1651
    :goto_2b
    iput-wide v6, v8, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->d:J

    .line 1652
    .line 1653
    iget-object v6, v2, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/view/accessibility/AccessibilityManager;

    .line 1654
    .line 1655
    if-eqz v6, :cond_58

    .line 1656
    .line 1657
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 1658
    .line 1659
    .line 1660
    move-result v6

    .line 1661
    if-eqz v6, :cond_58

    .line 1662
    .line 1663
    const/16 v27, 0x1

    .line 1664
    .line 1665
    goto :goto_2c

    .line 1666
    :cond_58
    move/from16 v27, v14

    .line 1667
    .line 1668
    :goto_2c
    if-eqz v27, :cond_5d

    .line 1669
    .line 1670
    sget-object v6, Landroidx/core/view/ViewCompat;->a:Ljava/util/WeakHashMap;

    .line 1671
    .line 1672
    invoke-virtual {v5}, Landroid/view/View;->getImportantForAccessibility()I

    .line 1673
    .line 1674
    .line 1675
    move-result v6

    .line 1676
    const/4 v7, 0x1

    .line 1677
    if-nez v6, :cond_59

    .line 1678
    .line 1679
    invoke-virtual {v5, v7}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1680
    .line 1681
    .line 1682
    :cond_59
    iget-object v6, v2, Landroidx/recyclerview/widget/RecyclerView;->t0:Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    .line 1683
    .line 1684
    if-nez v6, :cond_5a

    .line 1685
    .line 1686
    goto :goto_2e

    .line 1687
    :cond_5a
    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;->e:Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;

    .line 1688
    .line 1689
    if-eqz v6, :cond_5b

    .line 1690
    .line 1691
    move/from16 v27, v7

    .line 1692
    .line 1693
    goto :goto_2d

    .line 1694
    :cond_5b
    move/from16 v27, v14

    .line 1695
    .line 1696
    :goto_2d
    if-eqz v27, :cond_5c

    .line 1697
    .line 1698
    invoke-static {v5}, Landroidx/core/view/ViewCompat;->e(Landroid/view/View;)Landroidx/core/view/AccessibilityDelegateCompat;

    .line 1699
    .line 1700
    .line 1701
    move-result-object v8

    .line 1702
    if-eqz v8, :cond_5c

    .line 1703
    .line 1704
    if-eq v8, v6, :cond_5c

    .line 1705
    .line 1706
    iget-object v9, v6, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->e:Ljava/util/WeakHashMap;

    .line 1707
    .line 1708
    invoke-virtual {v9, v5, v8}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1709
    .line 1710
    .line 1711
    :cond_5c
    invoke-static {v5, v6}, Landroidx/core/view/ViewCompat;->z(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 1712
    .line 1713
    .line 1714
    goto :goto_2e

    .line 1715
    :cond_5d
    const/4 v7, 0x1

    .line 1716
    :goto_2e
    iget-boolean v3, v3, Landroidx/recyclerview/widget/RecyclerView$State;->g:Z

    .line 1717
    .line 1718
    if-eqz v3, :cond_5e

    .line 1719
    .line 1720
    iput v0, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->g:I

    .line 1721
    .line 1722
    :cond_5e
    move/from16 v27, v7

    .line 1723
    .line 1724
    :goto_2f
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1725
    .line 1726
    .line 1727
    move-result-object v0

    .line 1728
    if-nez v0, :cond_5f

    .line 1729
    .line 1730
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1731
    .line 1732
    .line 1733
    move-result-object v0

    .line 1734
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1735
    .line 1736
    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1737
    .line 1738
    .line 1739
    goto :goto_30

    .line 1740
    :cond_5f
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 1741
    .line 1742
    .line 1743
    move-result v3

    .line 1744
    if-nez v3, :cond_60

    .line 1745
    .line 1746
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 1747
    .line 1748
    .line 1749
    move-result-object v0

    .line 1750
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1751
    .line 1752
    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1753
    .line 1754
    .line 1755
    goto :goto_30

    .line 1756
    :cond_60
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1757
    .line 1758
    :goto_30
    iput-object v10, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 1759
    .line 1760
    if-eqz v4, :cond_61

    .line 1761
    .line 1762
    if-eqz v27, :cond_61

    .line 1763
    .line 1764
    goto :goto_31

    .line 1765
    :cond_61
    move v7, v14

    .line 1766
    :goto_31
    iput-boolean v7, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->d:Z

    .line 1767
    .line 1768
    return-object v10

    .line 1769
    :cond_62
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    .line 1770
    .line 1771
    const-string v5, "("

    .line 1772
    .line 1773
    const-string v6, "). Item count:"

    .line 1774
    .line 1775
    const-string v7, "Invalid item position "

    .line 1776
    .line 1777
    invoke-static {v7, v0, v0, v5, v6}, Landroid/support/v4/media/a;->u(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1778
    .line 1779
    .line 1780
    move-result-object v0

    .line 1781
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$State;->b()I

    .line 1782
    .line 1783
    .line 1784
    move-result v3

    .line 1785
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1786
    .line 1787
    .line 1788
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->C()Ljava/lang/String;

    .line 1789
    .line 1790
    .line 1791
    move-result-object v2

    .line 1792
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1793
    .line 1794
    .line 1795
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1796
    .line 1797
    .line 1798
    move-result-object v0

    .line 1799
    invoke-direct {v4, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 1800
    .line 1801
    .line 1802
    throw v4
.end method

.method public final m(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 1
    iget-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->o:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->b:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->a:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    :goto_0
    const/4 v0, 0x0

    .line 17
    iput-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->n:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->o:Z

    .line 21
    .line 22
    iget v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j:I

    .line 23
    .line 24
    and-int/lit8 v0, v0, -0x21

    .line 25
    .line 26
    iput v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->j:I

    .line 27
    .line 28
    return-void
.end method

.method public final n()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->r:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->j:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->e:I

    .line 12
    .line 13
    add-int/2addr v1, v0

    .line 14
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->f:I

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->c:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    add-int/lit8 v1, v1, -0x1

    .line 23
    .line 24
    :goto_1
    if-ltz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->f:I

    .line 31
    .line 32
    if-le v2, v3, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->h(I)V

    .line 35
    .line 36
    .line 37
    add-int/lit8 v1, v1, -0x1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    return-void
.end method
