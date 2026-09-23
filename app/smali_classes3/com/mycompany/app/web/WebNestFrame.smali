.class public Lcom/mycompany/app/web/WebNestFrame;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/web/WebNestFrame$WebFrameListener;,
        Lcom/mycompany/app/web/WebNestFrame$PageItem;
    }
.end annotation


# static fields
.field public static final synthetic v0:I


# instance fields
.field public A:F

.field public B:F

.field public C:F

.field public D:F

.field public E:I

.field public F:Landroid/animation/ValueAnimator;

.field public G:F

.field public H:Landroid/animation/ValueAnimator;

.field public I:Z

.field public J:Z

.field public K:I

.field public L:Landroid/graphics/Paint;

.field public M:Landroid/graphics/Paint;

.field public N:I

.field public O:I

.field public P:Z

.field public Q:I

.field public R:Z

.field public S:Landroid/graphics/Bitmap;

.field public T:Landroid/graphics/Paint;

.field public U:Z

.field public V:Ljava/util/concurrent/ExecutorService;

.field public W:Lcom/mycompany/app/main/MainWebDestroy;

.field public a0:Z

.field public b0:F

.field public c:Z

.field public c0:Z

.field public final d0:Ljava/lang/Runnable;

.field public e0:I

.field public f:Landroid/os/Handler;

.field public f0:Z

.field public final g:Z

.field public g0:F

.field public h:Lcom/mycompany/app/web/WebNestFrame$WebFrameListener;

.field public h0:Z

.field public i:J

.field public final i0:Ljava/lang/Runnable;

.field public j:Z

.field public j0:I

.field public k:Z

.field public k0:Z

.field public l:Z

.field public l0:F

.field public m:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

.field public m0:Z

.field public n:Ljava/util/List;

.field public final n0:Ljava/lang/Runnable;

.field public o:Ljava/util/List;

.field public o0:I

.field public p:I

.field public p0:F

.field public q:Z

.field public q0:Z

.field public r:Z

.field public final r0:Ljava/lang/Runnable;

.field public s:Z

.field public s0:I

.field public t:Z

.field public t0:Z

.field public u:Z

.field public final u0:Ljava/lang/Runnable;

.field public v:Landroid/animation/ValueAnimator;

.field public w:Z

.field public x:F

.field public y:F

.field public z:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/web/WebNestFrame$13;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebNestFrame$13;-><init>(Lcom/mycompany/app/web/WebNestFrame;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->d0:Ljava/lang/Runnable;

    .line 10
    .line 11
    new-instance v0, Lcom/mycompany/app/web/WebNestFrame$17;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebNestFrame$17;-><init>(Lcom/mycompany/app/web/WebNestFrame;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->i0:Ljava/lang/Runnable;

    .line 17
    .line 18
    new-instance v0, Lcom/mycompany/app/web/WebNestFrame$21;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebNestFrame$21;-><init>(Lcom/mycompany/app/web/WebNestFrame;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->n0:Ljava/lang/Runnable;

    .line 24
    .line 25
    new-instance v0, Lcom/mycompany/app/web/WebNestFrame$25;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebNestFrame$25;-><init>(Lcom/mycompany/app/web/WebNestFrame;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->r0:Ljava/lang/Runnable;

    .line 31
    .line 32
    new-instance v0, Lcom/mycompany/app/web/WebNestFrame$29;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebNestFrame$29;-><init>(Lcom/mycompany/app/web/WebNestFrame;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->u0:Ljava/lang/Runnable;

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebNestFrame;->c:Z

    .line 41
    .line 42
    new-instance v0, Landroid/os/Handler;

    .line 43
    .line 44
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->f:Landroid/os/Handler;

    .line 52
    .line 53
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->O5(Landroid/content/Context;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    iput-boolean p1, p0, Lcom/mycompany/app/web/WebNestFrame;->g:Z

    .line 58
    .line 59
    sget-boolean p1, Lcom/mycompany/app/pref/PrefZtwo;->E:Z

    .line 60
    .line 61
    iput-boolean p1, p0, Lcom/mycompany/app/web/WebNestFrame;->R:Z

    .line 62
    .line 63
    return-void
.end method

.method public static K(Lcom/mycompany/app/web/WebNestFrame$PageItem;Lcom/mycompany/app/web/WebNestView;)V
    .locals 4

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebNestView;->getPageUrl()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-boolean v1, p1, Lcom/mycompany/app/web/WebNestView;->z0:Z

    .line 11
    .line 12
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebNestFrame$PageItem;->b:Z

    .line 13
    .line 14
    iget-boolean v1, p1, Lcom/mycompany/app/web/WebNestView;->C:Z

    .line 15
    .line 16
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebNestFrame$PageItem;->f:Z

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebNestView;->getThemeColor()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iput v1, p0, Lcom/mycompany/app/web/WebNestFrame$PageItem;->g:I

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebNestView;->getThemeLight()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iput v1, p0, Lcom/mycompany/app/web/WebNestFrame$PageItem;->h:I

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    iput-object v1, p0, Lcom/mycompany/app/web/WebNestFrame$PageItem;->i:Lcom/mycompany/app/web/WebNestView;

    .line 32
    .line 33
    iget-boolean v2, p0, Lcom/mycompany/app/web/WebNestFrame$PageItem;->b:Z

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebNestView;->getBlankId()J

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    iput-wide v2, p0, Lcom/mycompany/app/web/WebNestFrame$PageItem;->c:J

    .line 42
    .line 43
    iput-object v0, p0, Lcom/mycompany/app/web/WebNestFrame$PageItem;->d:Ljava/lang/String;

    .line 44
    .line 45
    iput-object v1, p0, Lcom/mycompany/app/web/WebNestFrame$PageItem;->e:Ljava/lang/String;

    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    const-wide/16 v2, 0x0

    .line 49
    .line 50
    iput-wide v2, p0, Lcom/mycompany/app/web/WebNestFrame$PageItem;->c:J

    .line 51
    .line 52
    iput-object v1, p0, Lcom/mycompany/app/web/WebNestFrame$PageItem;->d:Ljava/lang/String;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/mycompany/app/web/WebNestFrame$PageItem;->e:Ljava/lang/String;

    .line 55
    .line 56
    :cond_2
    :goto_0
    return-void
.end method

.method public static a(Lcom/mycompany/app/web/WebNestFrame;I)Ljava/util/ArrayList;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->o:Ljava/util/List;

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
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-gt v2, p1, :cond_1

    .line 12
    .line 13
    :goto_0
    return-object v1

    .line 14
    :cond_1
    const/4 v3, 0x0

    .line 15
    invoke-interface {v0, v3, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iput-object v3, p0, Lcom/mycompany/app/web/WebNestFrame;->o:Ljava/util/List;

    .line 20
    .line 21
    iget v3, p0, Lcom/mycompany/app/web/WebNestFrame;->p:I

    .line 22
    .line 23
    if-lt v3, p1, :cond_2

    .line 24
    .line 25
    add-int/lit8 v3, p1, -0x1

    .line 26
    .line 27
    iput v3, p0, Lcom/mycompany/app/web/WebNestFrame;->p:I

    .line 28
    .line 29
    :cond_2
    iget-boolean v3, p0, Lcom/mycompany/app/web/WebNestFrame;->q:Z

    .line 30
    .line 31
    iput-boolean v3, p0, Lcom/mycompany/app/web/WebNestFrame;->r:Z

    .line 32
    .line 33
    :goto_1
    if-ge p1, v2, :cond_6

    .line 34
    .line 35
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Lcom/mycompany/app/web/WebNestFrame$PageItem;

    .line 40
    .line 41
    if-nez p0, :cond_3

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_3
    iget-object p0, p0, Lcom/mycompany/app/web/WebNestFrame$PageItem;->i:Lcom/mycompany/app/web/WebNestView;

    .line 45
    .line 46
    if-nez p0, :cond_4

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_4
    const/4 v3, 0x1

    .line 50
    invoke-virtual {p0, v3}, Lcom/mycompany/app/web/WebNestView;->setDetached(Z)V

    .line 51
    .line 52
    .line 53
    if-nez v1, :cond_5

    .line 54
    .line 55
    new-instance v1, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    :cond_5
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_6
    return-object v1
.end method

.method public static b(Lcom/mycompany/app/web/WebNestFrame;)Ljava/util/ArrayList;
    .locals 9

    .line 1
    sget v0, Lcom/mycompany/app/pref/PrefZtwo;->H:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_4

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->o:Ljava/util/List;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    goto/16 :goto_4

    .line 14
    .line 15
    :cond_1
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/16 v3, 0x64

    .line 20
    .line 21
    if-gt v1, v3, :cond_2

    .line 22
    .line 23
    goto/16 :goto_4

    .line 24
    .line 25
    :cond_2
    iget v3, p0, Lcom/mycompany/app/web/WebNestFrame;->p:I

    .line 26
    .line 27
    add-int/lit8 v3, v3, -0x32

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    if-gez v3, :cond_3

    .line 31
    .line 32
    move v3, v4

    .line 33
    :cond_3
    add-int/lit8 v5, v3, 0x63

    .line 34
    .line 35
    if-lt v5, v1, :cond_4

    .line 36
    .line 37
    add-int/lit8 v5, v1, -0x1

    .line 38
    .line 39
    add-int/lit8 v3, v1, -0x64

    .line 40
    .line 41
    :cond_4
    const/4 v6, 0x1

    .line 42
    add-int/2addr v5, v6

    .line 43
    move-object v7, v2

    .line 44
    if-lez v3, :cond_8

    .line 45
    .line 46
    :goto_0
    if-ge v4, v3, :cond_8

    .line 47
    .line 48
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    check-cast v8, Lcom/mycompany/app/web/WebNestFrame$PageItem;

    .line 53
    .line 54
    if-nez v8, :cond_5

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_5
    iget-object v8, v8, Lcom/mycompany/app/web/WebNestFrame$PageItem;->i:Lcom/mycompany/app/web/WebNestView;

    .line 58
    .line 59
    if-nez v8, :cond_6

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_6
    invoke-virtual {v8, v6}, Lcom/mycompany/app/web/WebNestView;->setDetached(Z)V

    .line 63
    .line 64
    .line 65
    if-nez v7, :cond_7

    .line 66
    .line 67
    new-instance v7, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    :cond_7
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_8
    if-ge v5, v1, :cond_c

    .line 79
    .line 80
    move v4, v5

    .line 81
    :goto_2
    if-ge v4, v1, :cond_c

    .line 82
    .line 83
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    check-cast v8, Lcom/mycompany/app/web/WebNestFrame$PageItem;

    .line 88
    .line 89
    if-nez v8, :cond_9

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_9
    iget-object v8, v8, Lcom/mycompany/app/web/WebNestFrame$PageItem;->i:Lcom/mycompany/app/web/WebNestView;

    .line 93
    .line 94
    if-nez v8, :cond_a

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_a
    invoke-virtual {v8, v6}, Lcom/mycompany/app/web/WebNestView;->setDetached(Z)V

    .line 98
    .line 99
    .line 100
    if-nez v7, :cond_b

    .line 101
    .line 102
    new-instance v7, Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .line 106
    .line 107
    :cond_b
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_c
    invoke-interface {v0, v3, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    iput-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->o:Ljava/util/List;

    .line 118
    .line 119
    iget v0, p0, Lcom/mycompany/app/web/WebNestFrame;->p:I

    .line 120
    .line 121
    sub-int/2addr v0, v3

    .line 122
    iput v0, p0, Lcom/mycompany/app/web/WebNestFrame;->p:I

    .line 123
    .line 124
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebNestFrame;->q:Z

    .line 125
    .line 126
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebNestFrame;->r:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .line 128
    return-object v7

    .line 129
    :catch_0
    :goto_4
    return-object v2
.end method

.method public static bridge synthetic c(Lcom/mycompany/app/web/WebNestFrame;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/mycompany/app/web/WebNestFrame;->setBlankOld(J)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/mycompany/app/web/WebNestFrame;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/web/WebNestFrame;->setDelList(Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/mycompany/app/web/WebNestFrame;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/web/WebNestFrame;->setValAnimAdd(F)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/mycompany/app/web/WebNestFrame;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/web/WebNestFrame;->setValAnimBack(I)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/mycompany/app/web/WebNestFrame;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/web/WebNestFrame;->setValAnimFake(F)V

    return-void
.end method

.method private getBackColor()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebNestFrame;->P:Z

    .line 2
    .line 3
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->C5(Z)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/high16 v0, 0x1000000

    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->L1:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/high16 v0, -0x1000000

    .line 17
    .line 18
    return v0

    .line 19
    :cond_1
    const/4 v0, -0x1

    .line 20
    return v0
.end method

.method private getBlankTime()J
    .locals 4

    .line 1
    sget v0, Lcom/mycompany/app/pref/PrefZtwo;->H:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    return-wide v2

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->o:Ljava/util/List;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    return-wide v2

    .line 14
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    sget v1, Lcom/mycompany/app/pref/PrefZtwo;->H:I

    .line 19
    .line 20
    if-gt v0, v1, :cond_2

    .line 21
    .line 22
    return-wide v2

    .line 23
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->n:Ljava/util/List;

    .line 24
    .line 25
    if-eqz v0, :cond_4

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->n:Ljava/util/List;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Ljava/lang/Long;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 44
    .line 45
    .line 46
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    return-wide v0

    .line 48
    :catch_0
    :cond_4
    :goto_0
    return-wide v2
.end method

.method private getWallColor()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebNestFrame;->P:Z

    .line 2
    .line 3
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->C5(Z)Z

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
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->L1:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/high16 v0, -0x1000000

    .line 16
    .line 17
    return v0

    .line 18
    :cond_1
    const/4 v0, -0x1

    .line 19
    return v0
.end method

.method public static bridge synthetic h(Lcom/mycompany/app/web/WebNestFrame;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/web/WebNestFrame;->setValAnimTabX(F)V

    return-void
.end method

.method public static bridge synthetic i(Lcom/mycompany/app/web/WebNestFrame;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/web/WebNestFrame;->setValAnimTabY(F)V

    return-void
.end method

.method private setBlankOld(J)V
    .locals 9

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->o:Ljava/util/List;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_1
    :try_start_0
    iget v1, p0, Lcom/mycompany/app/web/WebNestFrame;->p:I

    .line 14
    .line 15
    add-int/lit8 v2, v1, -0x2

    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x2

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v5, 0x0

    .line 25
    :goto_0
    if-ge v5, v3, :cond_7

    .line 26
    .line 27
    if-le v5, v2, :cond_2

    .line 28
    .line 29
    if-ge v5, v1, :cond_2

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    check-cast v6, Lcom/mycompany/app/web/WebNestFrame$PageItem;

    .line 37
    .line 38
    if-nez v6, :cond_3

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    iget-wide v7, v6, Lcom/mycompany/app/web/WebNestFrame$PageItem;->a:J

    .line 42
    .line 43
    cmp-long v7, v7, p1

    .line 44
    .line 45
    if-ltz v7, :cond_4

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_4
    iget-object v7, v6, Lcom/mycompany/app/web/WebNestFrame$PageItem;->i:Lcom/mycompany/app/web/WebNestView;

    .line 49
    .line 50
    if-nez v7, :cond_5

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_5
    invoke-static {v6, v7}, Lcom/mycompany/app/web/WebNestFrame;->K(Lcom/mycompany/app/web/WebNestFrame$PageItem;Lcom/mycompany/app/web/WebNestView;)V

    .line 54
    .line 55
    .line 56
    const/4 v6, 0x1

    .line 57
    invoke-virtual {v7, v6}, Lcom/mycompany/app/web/WebNestView;->setDetached(Z)V

    .line 58
    .line 59
    .line 60
    if-nez v4, :cond_6

    .line 61
    .line 62
    new-instance v4, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    .line 67
    :cond_6
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_7
    invoke-direct {p0, v4}, Lcom/mycompany/app/web/WebNestFrame;->setDelList(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    :catch_0
    :goto_2
    return-void
.end method

.method private setBlankTime(I)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/mycompany/app/web/WebNestFrame;->y(I)Lcom/mycompany/app/web/WebNestFrame$PageItem;

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
    iput-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->n:Ljava/util/List;

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    :try_start_0
    sget v1, Lcom/mycompany/app/pref/PrefZtwo;->H:I

    .line 12
    .line 13
    const/4 v2, 0x3

    .line 14
    if-ge v1, v2, :cond_1

    .line 15
    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    iput-wide v1, p1, Lcom/mycompany/app/web/WebNestFrame$PageItem;->a:J

    .line 21
    .line 22
    iput-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->n:Ljava/util/List;

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->n:Ljava/util/List;

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->n:Ljava/util/List;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    iget-wide v1, p1, Lcom/mycompany/app/web/WebNestFrame$PageItem;->a:J

    .line 38
    .line 39
    const-wide/16 v3, 0x0

    .line 40
    .line 41
    cmp-long v3, v1, v3

    .line 42
    .line 43
    if-eqz v3, :cond_3

    .line 44
    .line 45
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    :cond_3
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    iput-wide v0, p1, Lcom/mycompany/app/web/WebNestFrame$PageItem;->a:J

    .line 57
    .line 58
    iget-object p1, p0, Lcom/mycompany/app/web/WebNestFrame;->n:Ljava/util/List;

    .line 59
    .line 60
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    sget p1, Lcom/mycompany/app/pref/PrefZtwo;->H:I

    .line 68
    .line 69
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->o:Ljava/util/List;

    .line 70
    .line 71
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->n:Ljava/util/List;

    .line 80
    .line 81
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-le v0, p1, :cond_4

    .line 86
    .line 87
    iget-object v1, p0, Lcom/mycompany/app/web/WebNestFrame;->n:Ljava/util/List;

    .line 88
    .line 89
    sub-int p1, v0, p1

    .line 90
    .line 91
    invoke-interface {v1, p1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    iput-object p1, p0, Lcom/mycompany/app/web/WebNestFrame;->n:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .line 97
    :catch_0
    :cond_4
    return-void
.end method

.method private setDelList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/webkit/WebView;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

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
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->W:Lcom/mycompany/app/main/MainWebDestroy;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lcom/mycompany/app/main/MainApp;->w(Landroid/content/Context;)Lcom/mycompany/app/main/MainWebDestroy;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->W:Lcom/mycompany/app/main/MainWebDestroy;

    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->W:Lcom/mycompany/app/main/MainWebDestroy;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/mycompany/app/main/MainWebDestroy;->a(Ljava/util/List;)V

    .line 29
    .line 30
    .line 31
    :cond_2
    :goto_0
    return-void
.end method

.method private setDelView(Landroid/webkit/WebView;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->W:Lcom/mycompany/app/main/MainWebDestroy;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/mycompany/app/main/MainApp;->w(Landroid/content/Context;)Lcom/mycompany/app/main/MainWebDestroy;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->W:Lcom/mycompany/app/main/MainWebDestroy;

    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->W:Lcom/mycompany/app/main/MainWebDestroy;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/mycompany/app/main/MainWebDestroy;->b(Landroid/webkit/WebView;)V

    .line 23
    .line 24
    .line 25
    :cond_2
    :goto_0
    return-void
.end method

.method private setDetached(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebNestFrame;->k:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/web/WebNestFrame;->k:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->o:Ljava/util/List;

    .line 9
    .line 10
    if-eqz v0, :cond_4

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_4

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/mycompany/app/web/WebNestFrame$PageItem;

    .line 34
    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    iget-object v1, v1, Lcom/mycompany/app/web/WebNestFrame$PageItem;->i:Lcom/mycompany/app/web/WebNestView;

    .line 39
    .line 40
    if-nez v1, :cond_3

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    invoke-virtual {v1, p1}, Lcom/mycompany/app/web/WebNestView;->setDetached(Z)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_4
    :goto_1
    return-void
.end method

.method private setValAnimAdd(F)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebNestFrame;->F()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private setValAnimBack(I)V
    .locals 1

    .line 1
    sget v0, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 2
    .line 3
    if-ge p1, v0, :cond_0

    .line 4
    .line 5
    neg-int p1, p1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 8
    .line 9
    sub-int/2addr v0, p1

    .line 10
    neg-int p1, v0

    .line 11
    :goto_0
    int-to-float p1, p1

    .line 12
    iput p1, p0, Lcom/mycompany/app/web/WebNestFrame;->G:F

    .line 13
    .line 14
    const/4 v0, 0x3

    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/web/WebNestFrame;->Q(FI)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebNestFrame;->F()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private setValAnimFake(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/mycompany/app/web/WebNestFrame;->x:F

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/web/WebNestFrame;->Q(FI)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebNestFrame;->F()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private setValAnimTabX(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/mycompany/app/web/WebNestFrame;->A:F

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/web/WebNestFrame;->Q(FI)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebNestFrame;->F()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private setValAnimTabY(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/mycompany/app/web/WebNestFrame;->B:F

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/web/WebNestFrame;->Q(FI)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebNestFrame;->F()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebNestFrame;->G()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/mycompany/app/web/WebNestFrame;->x:F

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iput v1, p0, Lcom/mycompany/app/web/WebNestFrame;->x:F

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final B()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->L:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Paint;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->L:Landroid/graphics/Paint;

    .line 11
    .line 12
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->M:Landroid/graphics/Paint;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    new-instance v0, Landroid/graphics/Paint;

    .line 22
    .line 23
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->M:Landroid/graphics/Paint;

    .line 27
    .line 28
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public final C(Lcom/mycompany/app/web/WebNestFrame$PageItem;Lcom/mycompany/app/web/WebNestView;Z)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    if-eqz p3, :cond_3

    .line 5
    .line 6
    iget-object p3, p1, Lcom/mycompany/app/web/WebNestFrame$PageItem;->i:Lcom/mycompany/app/web/WebNestView;

    .line 7
    .line 8
    if-nez p3, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    if-eqz p2, :cond_2

    .line 12
    .line 13
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    const/4 v0, 0x1

    .line 21
    invoke-virtual {p3, v0}, Lcom/mycompany/app/web/WebNestView;->setDetached(Z)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p3}, Lcom/mycompany/app/web/WebNestFrame;->setDelView(Landroid/webkit/WebView;)V

    .line 25
    .line 26
    .line 27
    :cond_3
    :goto_0
    const/4 p3, 0x0

    .line 28
    iput-boolean p3, p1, Lcom/mycompany/app/web/WebNestFrame$PageItem;->b:Z

    .line 29
    .line 30
    const-wide/16 v0, 0x0

    .line 31
    .line 32
    iput-wide v0, p1, Lcom/mycompany/app/web/WebNestFrame$PageItem;->c:J

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput-object v0, p1, Lcom/mycompany/app/web/WebNestFrame$PageItem;->d:Ljava/lang/String;

    .line 36
    .line 37
    iput-object v0, p1, Lcom/mycompany/app/web/WebNestFrame$PageItem;->e:Ljava/lang/String;

    .line 38
    .line 39
    iput-boolean p3, p1, Lcom/mycompany/app/web/WebNestFrame$PageItem;->f:Z

    .line 40
    .line 41
    iput p3, p1, Lcom/mycompany/app/web/WebNestFrame$PageItem;->g:I

    .line 42
    .line 43
    iput p3, p1, Lcom/mycompany/app/web/WebNestFrame$PageItem;->h:I

    .line 44
    .line 45
    iput-object p2, p1, Lcom/mycompany/app/web/WebNestFrame$PageItem;->i:Lcom/mycompany/app/web/WebNestView;

    .line 46
    .line 47
    return-void
.end method

.method public final D()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebNestFrame;->G()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/mycompany/app/web/WebNestFrame;->x:F

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget v0, p0, Lcom/mycompany/app/web/WebNestFrame;->A:F

    .line 14
    .line 15
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget v0, p0, Lcom/mycompany/app/web/WebNestFrame;->B:F

    .line 22
    .line 23
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    iget v0, p0, Lcom/mycompany/app/web/WebNestFrame;->G:F

    .line 30
    .line 31
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iput v1, p0, Lcom/mycompany/app/web/WebNestFrame;->x:F

    .line 39
    .line 40
    iput v1, p0, Lcom/mycompany/app/web/WebNestFrame;->A:F

    .line 41
    .line 42
    iput v1, p0, Lcom/mycompany/app/web/WebNestFrame;->B:F

    .line 43
    .line 44
    iput v1, p0, Lcom/mycompany/app/web/WebNestFrame;->G:F

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/mycompany/app/web/WebNestFrame;->K:I

    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final E(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/web/WebNestFrame;->P:Z

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/mycompany/app/web/WebNestFrame;->getBackColor()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput p1, p0, Lcom/mycompany/app/web/WebNestFrame;->Q:I

    .line 8
    .line 9
    return-void
.end method

.method public final F()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebNestFrame;->J:Z

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->o:Ljava/util/List;

    .line 6
    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_4

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/mycompany/app/web/WebNestFrame$PageItem;

    .line 31
    .line 32
    if-nez v1, :cond_2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    iget-object v1, v1, Lcom/mycompany/app/web/WebNestFrame$PageItem;->i:Lcom/mycompany/app/web/WebNestView;

    .line 36
    .line 37
    if-nez v1, :cond_3

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    iget-boolean v2, v1, Lcom/mycompany/app/web/WebNestView;->H0:Z

    .line 41
    .line 42
    if-nez v2, :cond_5

    .line 43
    .line 44
    iget-boolean v1, v1, Lcom/mycompany/app/web/WebNestView;->I0:Z

    .line 45
    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 50
    return v0

    .line 51
    :cond_5
    :goto_2
    const/4 v0, 0x1

    .line 52
    return v0
.end method

.method public final G()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->S:Landroid/graphics/Bitmap;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->T:Landroid/graphics/Paint;

    .line 5
    .line 6
    return-void
.end method

.method public final H(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->V:Ljava/util/concurrent/ExecutorService;

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
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/mycompany/app/main/MainApp;->i(Landroid/content/Context;)Ljava/util/concurrent/ExecutorService;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iput-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->V:Ljava/util/concurrent/ExecutorService;

    .line 29
    .line 30
    :cond_2
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    :catch_0
    return-void
.end method

.method public final I()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->v:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    if-eqz v4, :cond_1

    .line 20
    .line 21
    check-cast v4, Landroid/view/View;

    .line 22
    .line 23
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    :cond_1
    if-nez v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebNestFrame;->J()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v1, v2}, Lcom/mycompany/app/web/WebNestFrame;->r(IZ)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    iget-boolean v4, p0, Lcom/mycompany/app/web/WebNestFrame;->g:Z

    .line 40
    .line 41
    if-eqz v4, :cond_3

    .line 42
    .line 43
    neg-int v0, v0

    .line 44
    :cond_3
    int-to-float v0, v0

    .line 45
    iput v0, p0, Lcom/mycompany/app/web/WebNestFrame;->b0:F

    .line 46
    .line 47
    iput-boolean v2, p0, Lcom/mycompany/app/web/WebNestFrame;->c0:Z

    .line 48
    .line 49
    const/4 v4, 0x2

    .line 50
    new-array v4, v4, [F

    .line 51
    .line 52
    aput v0, v4, v2

    .line 53
    .line 54
    aput v3, v4, v1

    .line 55
    .line 56
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    iput-object v1, p0, Lcom/mycompany/app/web/WebNestFrame;->v:Landroid/animation/ValueAnimator;

    .line 61
    .line 62
    const-wide/16 v2, 0x12c

    .line 63
    .line 64
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lcom/mycompany/app/web/WebNestFrame;->v:Landroid/animation/ValueAnimator;

    .line 68
    .line 69
    new-instance v2, Lcom/mycompany/app/web/WebNestFrame$10;

    .line 70
    .line 71
    invoke-direct {v2, p0}, Lcom/mycompany/app/web/WebNestFrame$10;-><init>(Lcom/mycompany/app/web/WebNestFrame;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Lcom/mycompany/app/web/WebNestFrame;->v:Landroid/animation/ValueAnimator;

    .line 78
    .line 79
    new-instance v2, Lcom/mycompany/app/web/WebNestFrame$11;

    .line 80
    .line 81
    invoke-direct {v2, p0}, Lcom/mycompany/app/web/WebNestFrame$11;-><init>(Lcom/mycompany/app/web/WebNestFrame;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->f:Landroid/os/Handler;

    .line 91
    .line 92
    if-nez v0, :cond_4

    .line 93
    .line 94
    :goto_0
    return-void

    .line 95
    :cond_4
    new-instance v1, Lcom/mycompany/app/web/WebNestFrame$12;

    .line 96
    .line 97
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebNestFrame$12;-><init>(Lcom/mycompany/app/web/WebNestFrame;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public final J()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebNestFrame;->u:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x4

    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebNestFrame;->I:Z

    .line 13
    .line 14
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final L(JZ)V
    .locals 7

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->o:Ljava/util/List;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_1
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    :goto_0
    if-ge v3, v1, :cond_7

    .line 20
    .line 21
    if-eqz p3, :cond_2

    .line 22
    .line 23
    iget v4, p0, Lcom/mycompany/app/web/WebNestFrame;->p:I

    .line 24
    .line 25
    if-ne v3, v4, :cond_2

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    check-cast v4, Lcom/mycompany/app/web/WebNestFrame$PageItem;

    .line 33
    .line 34
    if-nez v4, :cond_3

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_3
    iget-wide v5, v4, Lcom/mycompany/app/web/WebNestFrame$PageItem;->a:J

    .line 38
    .line 39
    cmp-long v5, v5, p1

    .line 40
    .line 41
    if-ltz v5, :cond_4

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_4
    iget-object v5, v4, Lcom/mycompany/app/web/WebNestFrame$PageItem;->i:Lcom/mycompany/app/web/WebNestView;

    .line 45
    .line 46
    if-nez v5, :cond_5

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_5
    invoke-static {v4, v5}, Lcom/mycompany/app/web/WebNestFrame;->K(Lcom/mycompany/app/web/WebNestFrame$PageItem;Lcom/mycompany/app/web/WebNestView;)V

    .line 50
    .line 51
    .line 52
    const/4 v4, 0x1

    .line 53
    invoke-virtual {v5, v4}, Lcom/mycompany/app/web/WebNestView;->setDetached(Z)V

    .line 54
    .line 55
    .line 56
    if-nez v2, :cond_6

    .line 57
    .line 58
    new-instance v2, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .line 62
    .line 63
    :cond_6
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_7
    invoke-direct {p0, v2}, Lcom/mycompany/app/web/WebNestFrame;->setDelList(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    :catch_0
    :goto_2
    return-void
.end method

.method public final M(I)Z
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    if-eq p1, v2, :cond_0

    .line 5
    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v3, p0, Lcom/mycompany/app/web/WebNestFrame;->F:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    if-eqz v3, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebNestFrame;->l()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-nez v3, :cond_3

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    if-nez v3, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    check-cast v3, Landroid/view/View;

    .line 31
    .line 32
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_3

    .line 37
    .line 38
    :goto_0
    return v1

    .line 39
    :cond_3
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebNestFrame;->B()V

    .line 40
    .line 41
    .line 42
    if-ne p1, v0, :cond_4

    .line 43
    .line 44
    move v0, v1

    .line 45
    goto :goto_1

    .line 46
    :cond_4
    move v0, v3

    .line 47
    :goto_1
    iget v4, p0, Lcom/mycompany/app/web/WebNestFrame;->B:F

    .line 48
    .line 49
    int-to-float v0, v0

    .line 50
    invoke-static {v4, v0}, Ljava/lang/Float;->compare(FF)I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-nez v4, :cond_5

    .line 55
    .line 56
    iput v1, p0, Lcom/mycompany/app/web/WebNestFrame;->E:I

    .line 57
    .line 58
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/web/WebNestFrame;->r(IZ)V

    .line 59
    .line 60
    .line 61
    return v1

    .line 62
    :cond_5
    iput p1, p0, Lcom/mycompany/app/web/WebNestFrame;->E:I

    .line 63
    .line 64
    iput v0, p0, Lcom/mycompany/app/web/WebNestFrame;->D:F

    .line 65
    .line 66
    iput p1, p0, Lcom/mycompany/app/web/WebNestFrame;->o0:I

    .line 67
    .line 68
    iget p1, p0, Lcom/mycompany/app/web/WebNestFrame;->B:F

    .line 69
    .line 70
    iput p1, p0, Lcom/mycompany/app/web/WebNestFrame;->p0:F

    .line 71
    .line 72
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebNestFrame;->q0:Z

    .line 73
    .line 74
    new-array v2, v2, [F

    .line 75
    .line 76
    aput p1, v2, v1

    .line 77
    .line 78
    const/4 p1, 0x1

    .line 79
    aput v0, v2, p1

    .line 80
    .line 81
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    iput-object v1, p0, Lcom/mycompany/app/web/WebNestFrame;->F:Landroid/animation/ValueAnimator;

    .line 86
    .line 87
    iget v2, p0, Lcom/mycompany/app/web/WebNestFrame;->B:F

    .line 88
    .line 89
    sub-float/2addr v0, v2

    .line 90
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    int-to-float v2, v3

    .line 95
    div-float/2addr v0, v2

    .line 96
    const/high16 v2, 0x43960000    # 300.0f

    .line 97
    .line 98
    mul-float/2addr v0, v2

    .line 99
    float-to-long v2, v0

    .line 100
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->F:Landroid/animation/ValueAnimator;

    .line 104
    .line 105
    new-instance v1, Lcom/mycompany/app/web/WebNestFrame$23;

    .line 106
    .line 107
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebNestFrame$23;-><init>(Lcom/mycompany/app/web/WebNestFrame;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->F:Landroid/animation/ValueAnimator;

    .line 114
    .line 115
    new-instance v1, Lcom/mycompany/app/web/WebNestFrame$24;

    .line 116
    .line 117
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebNestFrame$24;-><init>(Lcom/mycompany/app/web/WebNestFrame;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->F:Landroid/animation/ValueAnimator;

    .line 124
    .line 125
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 126
    .line 127
    .line 128
    return p1
.end method

.method public final N(IZ)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/web/WebNestFrame;->z:Landroid/animation/ValueAnimator;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebNestFrame;->l()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_3

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    check-cast v1, Landroid/view/View;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    :goto_0
    return v0

    .line 35
    :cond_3
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebNestFrame;->B()V

    .line 36
    .line 37
    .line 38
    iget-boolean v2, p0, Lcom/mycompany/app/web/WebNestFrame;->g:Z

    .line 39
    .line 40
    const/4 v3, 0x1

    .line 41
    if-ne p1, v3, :cond_5

    .line 42
    .line 43
    if-eqz v2, :cond_4

    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    iput v4, p0, Lcom/mycompany/app/web/WebNestFrame;->x:F

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_4
    int-to-float v4, v1

    .line 50
    iput v4, p0, Lcom/mycompany/app/web/WebNestFrame;->x:F

    .line 51
    .line 52
    :goto_1
    iget v4, p0, Lcom/mycompany/app/web/WebNestFrame;->x:F

    .line 53
    .line 54
    invoke-virtual {p0, v4, v0}, Lcom/mycompany/app/web/WebNestFrame;->Q(FI)V

    .line 55
    .line 56
    .line 57
    :cond_5
    const/4 v4, 0x3

    .line 58
    if-eqz v2, :cond_8

    .line 59
    .line 60
    if-eqz p2, :cond_7

    .line 61
    .line 62
    if-ne p1, v4, :cond_6

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_6
    :goto_2
    move v2, v0

    .line 66
    goto :goto_4

    .line 67
    :cond_7
    if-ne p1, v4, :cond_a

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_8
    if-eqz p2, :cond_9

    .line 71
    .line 72
    if-ne p1, v4, :cond_a

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_9
    if-ne p1, v4, :cond_6

    .line 76
    .line 77
    :cond_a
    :goto_3
    move v2, v1

    .line 78
    :goto_4
    iget v4, p0, Lcom/mycompany/app/web/WebNestFrame;->x:F

    .line 79
    .line 80
    int-to-float v2, v2

    .line 81
    invoke-static {v4, v2}, Ljava/lang/Float;->compare(FF)I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-nez v4, :cond_b

    .line 86
    .line 87
    iput v0, p0, Lcom/mycompany/app/web/WebNestFrame;->E:I

    .line 88
    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/mycompany/app/web/WebNestFrame;->s(IZ)V

    .line 90
    .line 91
    .line 92
    return v0

    .line 93
    :cond_b
    iput p1, p0, Lcom/mycompany/app/web/WebNestFrame;->E:I

    .line 94
    .line 95
    iput v2, p0, Lcom/mycompany/app/web/WebNestFrame;->y:F

    .line 96
    .line 97
    iput p1, p0, Lcom/mycompany/app/web/WebNestFrame;->e0:I

    .line 98
    .line 99
    iput-boolean p2, p0, Lcom/mycompany/app/web/WebNestFrame;->f0:Z

    .line 100
    .line 101
    iget p1, p0, Lcom/mycompany/app/web/WebNestFrame;->x:F

    .line 102
    .line 103
    iput p1, p0, Lcom/mycompany/app/web/WebNestFrame;->g0:F

    .line 104
    .line 105
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebNestFrame;->h0:Z

    .line 106
    .line 107
    const/4 p2, 0x2

    .line 108
    new-array p2, p2, [F

    .line 109
    .line 110
    aput p1, p2, v0

    .line 111
    .line 112
    aput v2, p2, v3

    .line 113
    .line 114
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    iput-object p1, p0, Lcom/mycompany/app/web/WebNestFrame;->z:Landroid/animation/ValueAnimator;

    .line 119
    .line 120
    iget p2, p0, Lcom/mycompany/app/web/WebNestFrame;->x:F

    .line 121
    .line 122
    sub-float/2addr v2, p2

    .line 123
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    int-to-float v0, v1

    .line 128
    div-float/2addr p2, v0

    .line 129
    const/high16 v0, 0x43960000    # 300.0f

    .line 130
    .line 131
    mul-float/2addr p2, v0

    .line 132
    float-to-long v0, p2

    .line 133
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 134
    .line 135
    .line 136
    iget-object p1, p0, Lcom/mycompany/app/web/WebNestFrame;->z:Landroid/animation/ValueAnimator;

    .line 137
    .line 138
    new-instance p2, Lcom/mycompany/app/web/WebNestFrame$15;

    .line 139
    .line 140
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebNestFrame$15;-><init>(Lcom/mycompany/app/web/WebNestFrame;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, Lcom/mycompany/app/web/WebNestFrame;->z:Landroid/animation/ValueAnimator;

    .line 147
    .line 148
    new-instance p2, Lcom/mycompany/app/web/WebNestFrame$16;

    .line 149
    .line 150
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebNestFrame$16;-><init>(Lcom/mycompany/app/web/WebNestFrame;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 154
    .line 155
    .line 156
    iget-object p1, p0, Lcom/mycompany/app/web/WebNestFrame;->z:Landroid/animation/ValueAnimator;

    .line 157
    .line 158
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 159
    .line 160
    .line 161
    return v3
.end method

.method public final O(FZ)V
    .locals 3

    .line 1
    iput-boolean p2, p0, Lcom/mycompany/app/web/WebNestFrame;->w:Z

    .line 2
    .line 3
    iget-boolean p2, p0, Lcom/mycompany/app/web/WebNestFrame;->I:Z

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    const/4 p2, 0x1

    .line 9
    iput-boolean p2, p0, Lcom/mycompany/app/web/WebNestFrame;->I:Z

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move p2, v0

    .line 13
    :goto_0
    iget-boolean v1, p0, Lcom/mycompany/app/web/WebNestFrame;->g:Z

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    cmpg-float v1, p1, v1

    .line 19
    .line 20
    const v2, 0x3dcccccd    # 0.1f

    .line 21
    .line 22
    .line 23
    if-gtz v1, :cond_1

    .line 24
    .line 25
    move p1, v2

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    int-to-float v1, v1

    .line 32
    cmpl-float v1, p1, v1

    .line 33
    .line 34
    if-ltz v1, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    int-to-float p1, p1

    .line 41
    sub-float/2addr p1, v2

    .line 42
    :cond_2
    :goto_1
    iget v1, p0, Lcom/mycompany/app/web/WebNestFrame;->x:F

    .line 43
    .line 44
    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_4

    .line 49
    .line 50
    if-eqz p2, :cond_3

    .line 51
    .line 52
    iget-boolean p1, p0, Lcom/mycompany/app/web/WebNestFrame;->P:Z

    .line 53
    .line 54
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->C5(Z)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_3

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 61
    .line 62
    .line 63
    :cond_3
    return-void

    .line 64
    :cond_4
    iput p1, p0, Lcom/mycompany/app/web/WebNestFrame;->x:F

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebNestFrame;->B()V

    .line 67
    .line 68
    .line 69
    iget p1, p0, Lcom/mycompany/app/web/WebNestFrame;->x:F

    .line 70
    .line 71
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/web/WebNestFrame;->Q(FI)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public final P(Lcom/mycompany/app/web/WebNestView;Z)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_2

    .line 4
    .line 5
    :cond_0
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz p2, :cond_4

    .line 8
    .line 9
    invoke-static {p1, v1}, Lcom/mycompany/app/main/MainUtil;->F(Landroid/webkit/WebView;Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/mycompany/app/main/MainApp;->e(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v1}, Lcom/mycompany/app/main/MainApp;->e(I)V

    .line 26
    .line 27
    .line 28
    :cond_1
    # OOM / non-crash renderer death: never trampoline while backgrounded.
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->isUiForeground(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_fg_oom

    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->quietKillProcess()V

    return-void

    :cond_fg_oom
    iget-object p1, p0, Lcom/mycompany/app/web/WebNestFrame;->h:Lcom/mycompany/app/web/WebNestFrame$WebFrameListener;

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    invoke-interface {p1}, Lcom/mycompany/app/web/WebNestFrame$WebFrameListener;->d()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    iget-boolean p1, p0, Lcom/mycompany/app/web/WebNestFrame;->l:Z

    .line 37
    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_3
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebNestFrame;->l:Z

    .line 42
    .line 43
    new-instance p1, Lcom/mycompany/app/web/WebNestFrame$8;

    .line 44
    .line 45
    invoke-direct {p1, p0}, Lcom/mycompany/app/web/WebNestFrame$8;-><init>(Lcom/mycompany/app/web/WebNestFrame;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lcom/mycompany/app/web/WebNestFrame;->H(Ljava/lang/Runnable;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_4
    iget-object p2, p0, Lcom/mycompany/app/web/WebNestFrame;->o:Ljava/util/List;

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    if-eqz p2, :cond_9

    .line 56
    .line 57
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_5

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    :cond_6
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_9

    .line 73
    .line 74
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Lcom/mycompany/app/web/WebNestFrame$PageItem;

    .line 79
    .line 80
    if-nez v3, :cond_7

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_7
    iget-object v4, v3, Lcom/mycompany/app/web/WebNestFrame$PageItem;->i:Lcom/mycompany/app/web/WebNestView;

    .line 84
    .line 85
    if-nez v4, :cond_8

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_8
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-eqz v4, :cond_6

    .line 93
    .line 94
    move-object v2, v3

    .line 95
    :cond_9
    :goto_1
    invoke-static {v2, p1}, Lcom/mycompany/app/web/WebNestFrame;->K(Lcom/mycompany/app/web/WebNestFrame$PageItem;Lcom/mycompany/app/web/WebNestView;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    invoke-static {p1, v1}, Lcom/mycompany/app/main/MainUtil;->F(Landroid/webkit/WebView;Z)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-static {v2}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    if-eqz v2, :cond_a

    .line 114
    .line 115
    invoke-virtual {v2, v0}, Lcom/mycompany/app/main/MainApp;->e(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2, v1}, Lcom/mycompany/app/main/MainApp;->e(I)V

    .line 119
    .line 120
    .line 121
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->h:Lcom/mycompany/app/web/WebNestFrame$WebFrameListener;

    .line 122
    .line 123
    if-eqz v0, :cond_b

    .line 124
    .line 125
    invoke-interface {v0, p1, p2}, Lcom/mycompany/app/web/WebNestFrame$WebFrameListener;->b(Lcom/mycompany/app/web/WebNestView;I)V

    .line 126
    .line 127
    .line 128
    :cond_b
    :goto_2
    return-void
.end method

.method public final Q(FI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->L:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->M:Landroid/graphics/Paint;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_4

    .line 10
    :cond_0
    const/4 v0, 0x2

    .line 11
    if-ne p2, v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    :goto_0
    if-nez v1, :cond_2

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcom/mycompany/app/web/WebNestFrame;->K:I

    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    if-ne p2, v0, :cond_3

    .line 29
    .line 30
    :goto_1
    int-to-float p2, v1

    .line 31
    :goto_2
    sub-float p1, p2, p1

    .line 32
    .line 33
    goto :goto_3

    .line 34
    :cond_3
    const/4 v0, 0x3

    .line 35
    if-ne p2, v0, :cond_4

    .line 36
    .line 37
    int-to-float p2, v1

    .line 38
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    goto :goto_2

    .line 43
    :cond_4
    iget-boolean p2, p0, Lcom/mycompany/app/web/WebNestFrame;->g:Z

    .line 44
    .line 45
    if-nez p2, :cond_5

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_5
    :goto_3
    int-to-float p2, v1

    .line 49
    div-float/2addr p1, p2

    .line 50
    const/high16 p2, 0x43210000    # 161.0f

    .line 51
    .line 52
    mul-float/2addr p1, p2

    .line 53
    float-to-int p1, p1

    .line 54
    iput p1, p0, Lcom/mycompany/app/web/WebNestFrame;->K:I

    .line 55
    .line 56
    if-nez p1, :cond_6

    .line 57
    .line 58
    goto :goto_4

    .line 59
    :cond_6
    invoke-direct {p0}, Lcom/mycompany/app/web/WebNestFrame;->getWallColor()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    iget p2, p0, Lcom/mycompany/app/web/WebNestFrame;->K:I

    .line 64
    .line 65
    shl-int/lit8 p2, p2, 0x18

    .line 66
    .line 67
    iget v0, p0, Lcom/mycompany/app/web/WebNestFrame;->N:I

    .line 68
    .line 69
    if-eq v0, p1, :cond_7

    .line 70
    .line 71
    iput p1, p0, Lcom/mycompany/app/web/WebNestFrame;->N:I

    .line 72
    .line 73
    if-eqz p1, :cond_7

    .line 74
    .line 75
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->L:Landroid/graphics/Paint;

    .line 76
    .line 77
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    .line 79
    .line 80
    :cond_7
    iget p1, p0, Lcom/mycompany/app/web/WebNestFrame;->O:I

    .line 81
    .line 82
    if-eq p1, p2, :cond_8

    .line 83
    .line 84
    iput p2, p0, Lcom/mycompany/app/web/WebNestFrame;->O:I

    .line 85
    .line 86
    iget-object p1, p0, Lcom/mycompany/app/web/WebNestFrame;->M:Landroid/graphics/Paint;

    .line 87
    .line 88
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    .line 90
    .line 91
    :cond_8
    :goto_4
    return-void
.end method

.method public final R(Lcom/mycompany/app/web/WebNestView;Ljava/util/ArrayList;)V
    .locals 5

    .line 1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    iget v0, p0, Lcom/mycompany/app/web/WebNestFrame;->p:I

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/mycompany/app/web/WebNestFrame;->y(I)Lcom/mycompany/app/web/WebNestFrame$PageItem;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_1
    iget-object v0, v0, Lcom/mycompany/app/web/WebNestFrame$PageItem;->i:Lcom/mycompany/app/web/WebNestView;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v1, 0x1

    .line 31
    sub-int/2addr v0, v1

    .line 32
    :goto_0
    const/4 v2, -0x1

    .line 33
    if-le v0, v2, :cond_5

    .line 34
    .line 35
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lcom/mycompany/app/web/WebNestFrame$PageItem;

    .line 40
    .line 41
    if-nez v2, :cond_3

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_3
    const-string v3, "sb_curr_page"

    .line 45
    .line 46
    iget-object v4, v2, Lcom/mycompany/app/web/WebNestFrame$PageItem;->e:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_4

    .line 53
    .line 54
    invoke-virtual {p0, v2, p1, v1}, Lcom/mycompany/app/web/WebNestFrame;->C(Lcom/mycompany/app/web/WebNestFrame$PageItem;Lcom/mycompany/app/web/WebNestView;Z)V

    .line 55
    .line 56
    .line 57
    iput-object p2, p0, Lcom/mycompany/app/web/WebNestFrame;->o:Ljava/util/List;

    .line 58
    .line 59
    iput v0, p0, Lcom/mycompany/app/web/WebNestFrame;->p:I

    .line 60
    .line 61
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebNestFrame;->q:Z

    .line 62
    .line 63
    invoke-direct {p0, v0}, Lcom/mycompany/app/web/WebNestFrame;->setBlankTime(I)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_4
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_5
    :goto_2
    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    iget-boolean v1, p0, Lcom/mycompany/app/web/WebNestFrame;->c:Z

    .line 2
    .line 3
    if-eqz v1, :cond_29

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/mycompany/app/web/WebNestFrame;->k:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_d

    .line 10
    .line 11
    :cond_0
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebNestFrame;->J:Z

    .line 13
    .line 14
    iget-object v2, p0, Lcom/mycompany/app/web/WebNestFrame;->L:Landroid/graphics/Paint;

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    if-eqz v2, :cond_26

    .line 18
    .line 19
    iget-object v2, p0, Lcom/mycompany/app/web/WebNestFrame;->M:Landroid/graphics/Paint;

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    goto/16 :goto_b

    .line 24
    .line 25
    :cond_1
    iget v2, p0, Lcom/mycompany/app/web/WebNestFrame;->x:F

    .line 26
    .line 27
    const/4 v7, 0x0

    .line 28
    cmpl-float v2, v2, v7

    .line 29
    .line 30
    if-lez v2, :cond_8

    .line 31
    .line 32
    iget v1, p0, Lcom/mycompany/app/web/WebNestFrame;->Q:I

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 37
    .line 38
    .line 39
    :cond_2
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 40
    .line 41
    .line 42
    iget v1, p0, Lcom/mycompany/app/web/WebNestFrame;->K:I

    .line 43
    .line 44
    if-nez v1, :cond_3

    .line 45
    .line 46
    iput-boolean v6, p0, Lcom/mycompany/app/web/WebNestFrame;->J:Z

    .line 47
    .line 48
    return-void

    .line 49
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_7

    .line 54
    .line 55
    iget v2, p0, Lcom/mycompany/app/web/WebNestFrame;->x:F

    .line 56
    .line 57
    int-to-float v3, v1

    .line 58
    cmpl-float v1, v2, v3

    .line 59
    .line 60
    if-ltz v1, :cond_4

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    iget-boolean v2, p0, Lcom/mycompany/app/web/WebNestFrame;->g:Z

    .line 68
    .line 69
    if-eqz v2, :cond_5

    .line 70
    .line 71
    iget v2, p0, Lcom/mycompany/app/web/WebNestFrame;->x:F

    .line 72
    .line 73
    int-to-float v4, v1

    .line 74
    iget-object v5, p0, Lcom/mycompany/app/web/WebNestFrame;->M:Landroid/graphics/Paint;

    .line 75
    .line 76
    move v1, v2

    .line 77
    const/4 v2, 0x0

    .line 78
    move-object v0, p1

    .line 79
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 80
    .line 81
    .line 82
    iget v0, p0, Lcom/mycompany/app/web/WebNestFrame;->N:I

    .line 83
    .line 84
    if-eqz v0, :cond_6

    .line 85
    .line 86
    iget v3, p0, Lcom/mycompany/app/web/WebNestFrame;->x:F

    .line 87
    .line 88
    iget-object v5, p0, Lcom/mycompany/app/web/WebNestFrame;->L:Landroid/graphics/Paint;

    .line 89
    .line 90
    const/4 v1, 0x0

    .line 91
    const/4 v2, 0x0

    .line 92
    move-object v0, p1

    .line 93
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_5
    move v7, v3

    .line 98
    iget v3, p0, Lcom/mycompany/app/web/WebNestFrame;->x:F

    .line 99
    .line 100
    int-to-float v4, v1

    .line 101
    iget-object v5, p0, Lcom/mycompany/app/web/WebNestFrame;->M:Landroid/graphics/Paint;

    .line 102
    .line 103
    const/4 v1, 0x0

    .line 104
    const/4 v2, 0x0

    .line 105
    move-object v0, p1

    .line 106
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 107
    .line 108
    .line 109
    iget v0, p0, Lcom/mycompany/app/web/WebNestFrame;->N:I

    .line 110
    .line 111
    if-eqz v0, :cond_6

    .line 112
    .line 113
    iget v1, p0, Lcom/mycompany/app/web/WebNestFrame;->x:F

    .line 114
    .line 115
    const/4 v2, 0x0

    .line 116
    iget-object v5, p0, Lcom/mycompany/app/web/WebNestFrame;->L:Landroid/graphics/Paint;

    .line 117
    .line 118
    move-object v0, p1

    .line 119
    move v3, v7

    .line 120
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 121
    .line 122
    .line 123
    :cond_6
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/mycompany/app/web/WebNestFrame;->q(Landroid/graphics/Canvas;)V

    .line 124
    .line 125
    .line 126
    iput-boolean v6, p0, Lcom/mycompany/app/web/WebNestFrame;->J:Z

    .line 127
    .line 128
    return-void

    .line 129
    :cond_7
    :goto_1
    iput-boolean v6, p0, Lcom/mycompany/app/web/WebNestFrame;->J:Z

    .line 130
    .line 131
    return-void

    .line 132
    :cond_8
    iget v2, p0, Lcom/mycompany/app/web/WebNestFrame;->A:F

    .line 133
    .line 134
    cmpl-float v2, v2, v7

    .line 135
    .line 136
    if-lez v2, :cond_16

    .line 137
    .line 138
    iget v2, p0, Lcom/mycompany/app/web/WebNestFrame;->E:I

    .line 139
    .line 140
    if-ne v2, v1, :cond_f

    .line 141
    .line 142
    iget v1, p0, Lcom/mycompany/app/web/WebNestFrame;->Q:I

    .line 143
    .line 144
    if-eqz v1, :cond_9

    .line 145
    .line 146
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 147
    .line 148
    .line 149
    :cond_9
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 150
    .line 151
    .line 152
    iget v1, p0, Lcom/mycompany/app/web/WebNestFrame;->K:I

    .line 153
    .line 154
    if-nez v1, :cond_a

    .line 155
    .line 156
    iput-boolean v6, p0, Lcom/mycompany/app/web/WebNestFrame;->J:Z

    .line 157
    .line 158
    return-void

    .line 159
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    if-eqz v1, :cond_e

    .line 164
    .line 165
    iget v2, p0, Lcom/mycompany/app/web/WebNestFrame;->A:F

    .line 166
    .line 167
    int-to-float v3, v1

    .line 168
    cmpl-float v1, v2, v3

    .line 169
    .line 170
    if-ltz v1, :cond_b

    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    iget-boolean v2, p0, Lcom/mycompany/app/web/WebNestFrame;->g:Z

    .line 178
    .line 179
    if-eqz v2, :cond_c

    .line 180
    .line 181
    iget v2, p0, Lcom/mycompany/app/web/WebNestFrame;->A:F

    .line 182
    .line 183
    int-to-float v4, v1

    .line 184
    iget-object v5, p0, Lcom/mycompany/app/web/WebNestFrame;->M:Landroid/graphics/Paint;

    .line 185
    .line 186
    move v1, v2

    .line 187
    const/4 v2, 0x0

    .line 188
    move-object v0, p1

    .line 189
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 190
    .line 191
    .line 192
    iget v0, p0, Lcom/mycompany/app/web/WebNestFrame;->N:I

    .line 193
    .line 194
    if-eqz v0, :cond_d

    .line 195
    .line 196
    iget v3, p0, Lcom/mycompany/app/web/WebNestFrame;->A:F

    .line 197
    .line 198
    iget-object v5, p0, Lcom/mycompany/app/web/WebNestFrame;->L:Landroid/graphics/Paint;

    .line 199
    .line 200
    const/4 v1, 0x0

    .line 201
    const/4 v2, 0x0

    .line 202
    move-object v0, p1

    .line 203
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 204
    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_c
    move v7, v3

    .line 208
    iget v3, p0, Lcom/mycompany/app/web/WebNestFrame;->A:F

    .line 209
    .line 210
    int-to-float v4, v1

    .line 211
    iget-object v5, p0, Lcom/mycompany/app/web/WebNestFrame;->M:Landroid/graphics/Paint;

    .line 212
    .line 213
    const/4 v1, 0x0

    .line 214
    const/4 v2, 0x0

    .line 215
    move-object v0, p1

    .line 216
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 217
    .line 218
    .line 219
    iget v0, p0, Lcom/mycompany/app/web/WebNestFrame;->N:I

    .line 220
    .line 221
    if-eqz v0, :cond_d

    .line 222
    .line 223
    iget v1, p0, Lcom/mycompany/app/web/WebNestFrame;->A:F

    .line 224
    .line 225
    const/4 v2, 0x0

    .line 226
    iget-object v5, p0, Lcom/mycompany/app/web/WebNestFrame;->L:Landroid/graphics/Paint;

    .line 227
    .line 228
    move-object v0, p1

    .line 229
    move v3, v7

    .line 230
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 231
    .line 232
    .line 233
    :cond_d
    :goto_2
    invoke-virtual/range {p0 .. p1}, Lcom/mycompany/app/web/WebNestFrame;->q(Landroid/graphics/Canvas;)V

    .line 234
    .line 235
    .line 236
    goto/16 :goto_4

    .line 237
    .line 238
    :cond_e
    :goto_3
    iput-boolean v6, p0, Lcom/mycompany/app/web/WebNestFrame;->J:Z

    .line 239
    .line 240
    return-void

    .line 241
    :cond_f
    iget v0, p0, Lcom/mycompany/app/web/WebNestFrame;->K:I

    .line 242
    .line 243
    if-nez v0, :cond_10

    .line 244
    .line 245
    iput-boolean v6, p0, Lcom/mycompany/app/web/WebNestFrame;->J:Z

    .line 246
    .line 247
    return-void

    .line 248
    :cond_10
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    if-eqz v0, :cond_15

    .line 253
    .line 254
    iget v1, p0, Lcom/mycompany/app/web/WebNestFrame;->A:F

    .line 255
    .line 256
    int-to-float v8, v0

    .line 257
    cmpl-float v0, v1, v8

    .line 258
    .line 259
    if-ltz v0, :cond_11

    .line 260
    .line 261
    goto :goto_5

    .line 262
    :cond_11
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 263
    .line 264
    .line 265
    move-result v9

    .line 266
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebNestFrame;->g:Z

    .line 267
    .line 268
    if-eqz v0, :cond_13

    .line 269
    .line 270
    iget v0, p0, Lcom/mycompany/app/web/WebNestFrame;->N:I

    .line 271
    .line 272
    if-eqz v0, :cond_12

    .line 273
    .line 274
    iget v3, p0, Lcom/mycompany/app/web/WebNestFrame;->A:F

    .line 275
    .line 276
    int-to-float v4, v9

    .line 277
    iget-object v5, p0, Lcom/mycompany/app/web/WebNestFrame;->L:Landroid/graphics/Paint;

    .line 278
    .line 279
    const/4 v1, 0x0

    .line 280
    const/4 v2, 0x0

    .line 281
    move-object v0, p1

    .line 282
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 283
    .line 284
    .line 285
    :cond_12
    invoke-virtual/range {p0 .. p1}, Lcom/mycompany/app/web/WebNestFrame;->q(Landroid/graphics/Canvas;)V

    .line 286
    .line 287
    .line 288
    iget v1, p0, Lcom/mycompany/app/web/WebNestFrame;->A:F

    .line 289
    .line 290
    sub-float/2addr v1, v8

    .line 291
    invoke-virtual {p1, v1, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 292
    .line 293
    .line 294
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 295
    .line 296
    .line 297
    neg-float v1, v1

    .line 298
    invoke-virtual {p1, v1, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 299
    .line 300
    .line 301
    iget v1, p0, Lcom/mycompany/app/web/WebNestFrame;->A:F

    .line 302
    .line 303
    int-to-float v4, v9

    .line 304
    iget-object v5, p0, Lcom/mycompany/app/web/WebNestFrame;->M:Landroid/graphics/Paint;

    .line 305
    .line 306
    const/4 v2, 0x0

    .line 307
    move-object v0, p1

    .line 308
    move v3, v8

    .line 309
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 310
    .line 311
    .line 312
    goto :goto_4

    .line 313
    :cond_13
    move v3, v8

    .line 314
    iget v0, p0, Lcom/mycompany/app/web/WebNestFrame;->N:I

    .line 315
    .line 316
    if-eqz v0, :cond_14

    .line 317
    .line 318
    iget v1, p0, Lcom/mycompany/app/web/WebNestFrame;->A:F

    .line 319
    .line 320
    int-to-float v4, v9

    .line 321
    iget-object v5, p0, Lcom/mycompany/app/web/WebNestFrame;->L:Landroid/graphics/Paint;

    .line 322
    .line 323
    const/4 v2, 0x0

    .line 324
    move-object v0, p1

    .line 325
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 326
    .line 327
    .line 328
    :cond_14
    invoke-virtual/range {p0 .. p1}, Lcom/mycompany/app/web/WebNestFrame;->q(Landroid/graphics/Canvas;)V

    .line 329
    .line 330
    .line 331
    iget v1, p0, Lcom/mycompany/app/web/WebNestFrame;->A:F

    .line 332
    .line 333
    invoke-virtual {p1, v1, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 334
    .line 335
    .line 336
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 337
    .line 338
    .line 339
    neg-float v1, v1

    .line 340
    invoke-virtual {p1, v1, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 341
    .line 342
    .line 343
    iget v3, p0, Lcom/mycompany/app/web/WebNestFrame;->A:F

    .line 344
    .line 345
    int-to-float v4, v9

    .line 346
    iget-object v5, p0, Lcom/mycompany/app/web/WebNestFrame;->M:Landroid/graphics/Paint;

    .line 347
    .line 348
    const/4 v1, 0x0

    .line 349
    const/4 v2, 0x0

    .line 350
    move-object v0, p1

    .line 351
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 352
    .line 353
    .line 354
    :goto_4
    iput-boolean v6, p0, Lcom/mycompany/app/web/WebNestFrame;->J:Z

    .line 355
    .line 356
    return-void

    .line 357
    :cond_15
    :goto_5
    iput-boolean v6, p0, Lcom/mycompany/app/web/WebNestFrame;->J:Z

    .line 358
    .line 359
    return-void

    .line 360
    :cond_16
    iget v0, p0, Lcom/mycompany/app/web/WebNestFrame;->B:F

    .line 361
    .line 362
    cmpl-float v0, v0, v7

    .line 363
    .line 364
    if-lez v0, :cond_1b

    .line 365
    .line 366
    iget v0, p0, Lcom/mycompany/app/web/WebNestFrame;->K:I

    .line 367
    .line 368
    if-nez v0, :cond_17

    .line 369
    .line 370
    iput-boolean v6, p0, Lcom/mycompany/app/web/WebNestFrame;->J:Z

    .line 371
    .line 372
    return-void

    .line 373
    :cond_17
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 374
    .line 375
    .line 376
    move-result v0

    .line 377
    if-eqz v0, :cond_1a

    .line 378
    .line 379
    iget v1, p0, Lcom/mycompany/app/web/WebNestFrame;->B:F

    .line 380
    .line 381
    int-to-float v4, v0

    .line 382
    cmpl-float v0, v1, v4

    .line 383
    .line 384
    if-ltz v0, :cond_18

    .line 385
    .line 386
    goto :goto_6

    .line 387
    :cond_18
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 388
    .line 389
    .line 390
    move-result v8

    .line 391
    iget v0, p0, Lcom/mycompany/app/web/WebNestFrame;->N:I

    .line 392
    .line 393
    if-eqz v0, :cond_19

    .line 394
    .line 395
    iget v2, p0, Lcom/mycompany/app/web/WebNestFrame;->B:F

    .line 396
    .line 397
    int-to-float v3, v8

    .line 398
    iget-object v5, p0, Lcom/mycompany/app/web/WebNestFrame;->L:Landroid/graphics/Paint;

    .line 399
    .line 400
    const/4 v1, 0x0

    .line 401
    move-object v0, p1

    .line 402
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 403
    .line 404
    .line 405
    :cond_19
    invoke-virtual/range {p0 .. p1}, Lcom/mycompany/app/web/WebNestFrame;->q(Landroid/graphics/Canvas;)V

    .line 406
    .line 407
    .line 408
    iget v1, p0, Lcom/mycompany/app/web/WebNestFrame;->B:F

    .line 409
    .line 410
    invoke-virtual {p1, v7, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 411
    .line 412
    .line 413
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 414
    .line 415
    .line 416
    neg-float v1, v1

    .line 417
    invoke-virtual {p1, v7, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 418
    .line 419
    .line 420
    int-to-float v3, v8

    .line 421
    iget v4, p0, Lcom/mycompany/app/web/WebNestFrame;->B:F

    .line 422
    .line 423
    iget-object v5, p0, Lcom/mycompany/app/web/WebNestFrame;->M:Landroid/graphics/Paint;

    .line 424
    .line 425
    const/4 v1, 0x0

    .line 426
    const/4 v2, 0x0

    .line 427
    move-object v0, p1

    .line 428
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 429
    .line 430
    .line 431
    iput-boolean v6, p0, Lcom/mycompany/app/web/WebNestFrame;->J:Z

    .line 432
    .line 433
    return-void

    .line 434
    :cond_1a
    :goto_6
    iput-boolean v6, p0, Lcom/mycompany/app/web/WebNestFrame;->J:Z

    .line 435
    .line 436
    return-void

    .line 437
    :cond_1b
    iget v1, p0, Lcom/mycompany/app/web/WebNestFrame;->G:F

    .line 438
    .line 439
    cmpl-float v2, v1, v7

    .line 440
    .line 441
    if-gtz v2, :cond_1f

    .line 442
    .line 443
    cmpg-float v1, v1, v7

    .line 444
    .line 445
    if-gez v1, :cond_1c

    .line 446
    .line 447
    goto :goto_8

    .line 448
    :cond_1c
    iget v1, p0, Lcom/mycompany/app/web/WebNestFrame;->Q:I

    .line 449
    .line 450
    if-eqz v1, :cond_1d

    .line 451
    .line 452
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 453
    .line 454
    .line 455
    :cond_1d
    iget-boolean v1, p0, Lcom/mycompany/app/web/WebNestFrame;->I:Z

    .line 456
    .line 457
    if-eqz v1, :cond_1e

    .line 458
    .line 459
    invoke-virtual/range {p0 .. p1}, Lcom/mycompany/app/web/WebNestFrame;->q(Landroid/graphics/Canvas;)V

    .line 460
    .line 461
    .line 462
    goto :goto_7

    .line 463
    :cond_1e
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebNestFrame;->G()V

    .line 464
    .line 465
    .line 466
    :goto_7
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 467
    .line 468
    .line 469
    iput-boolean v6, p0, Lcom/mycompany/app/web/WebNestFrame;->J:Z

    .line 470
    .line 471
    return-void

    .line 472
    :cond_1f
    :goto_8
    iget v1, p0, Lcom/mycompany/app/web/WebNestFrame;->K:I

    .line 473
    .line 474
    if-nez v1, :cond_20

    .line 475
    .line 476
    iput-boolean v6, p0, Lcom/mycompany/app/web/WebNestFrame;->J:Z

    .line 477
    .line 478
    return-void

    .line 479
    :cond_20
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 480
    .line 481
    .line 482
    move-result v1

    .line 483
    if-eqz v1, :cond_25

    .line 484
    .line 485
    iget v2, p0, Lcom/mycompany/app/web/WebNestFrame;->G:F

    .line 486
    .line 487
    int-to-float v3, v1

    .line 488
    cmpl-float v4, v2, v3

    .line 489
    .line 490
    if-gez v4, :cond_25

    .line 491
    .line 492
    neg-int v1, v1

    .line 493
    int-to-float v1, v1

    .line 494
    cmpg-float v1, v2, v1

    .line 495
    .line 496
    if-gtz v1, :cond_21

    .line 497
    .line 498
    goto :goto_a

    .line 499
    :cond_21
    invoke-virtual/range {p0 .. p1}, Lcom/mycompany/app/web/WebNestFrame;->q(Landroid/graphics/Canvas;)V

    .line 500
    .line 501
    .line 502
    iget v1, p0, Lcom/mycompany/app/web/WebNestFrame;->G:F

    .line 503
    .line 504
    iget-boolean v2, p0, Lcom/mycompany/app/web/WebNestFrame;->g:Z

    .line 505
    .line 506
    if-eqz v2, :cond_22

    .line 507
    .line 508
    neg-float v1, v1

    .line 509
    :cond_22
    invoke-virtual {p1, v1, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 510
    .line 511
    .line 512
    iget v2, p0, Lcom/mycompany/app/web/WebNestFrame;->N:I

    .line 513
    .line 514
    if-eqz v2, :cond_23

    .line 515
    .line 516
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 517
    .line 518
    .line 519
    :cond_23
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 520
    .line 521
    .line 522
    neg-float v2, v1

    .line 523
    invoke-virtual {p1, v2, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 524
    .line 525
    .line 526
    cmpl-float v2, v1, v7

    .line 527
    .line 528
    if-lez v2, :cond_24

    .line 529
    .line 530
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 531
    .line 532
    .line 533
    move-result v2

    .line 534
    int-to-float v4, v2

    .line 535
    iget-object v5, p0, Lcom/mycompany/app/web/WebNestFrame;->M:Landroid/graphics/Paint;

    .line 536
    .line 537
    move v3, v1

    .line 538
    const/4 v1, 0x0

    .line 539
    const/4 v2, 0x0

    .line 540
    move-object v0, p1

    .line 541
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 542
    .line 543
    .line 544
    goto :goto_9

    .line 545
    :cond_24
    add-float/2addr v1, v3

    .line 546
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 547
    .line 548
    .line 549
    move-result v0

    .line 550
    int-to-float v4, v0

    .line 551
    iget-object v5, p0, Lcom/mycompany/app/web/WebNestFrame;->M:Landroid/graphics/Paint;

    .line 552
    .line 553
    const/4 v2, 0x0

    .line 554
    move-object v0, p1

    .line 555
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 556
    .line 557
    .line 558
    :goto_9
    iput-boolean v6, p0, Lcom/mycompany/app/web/WebNestFrame;->J:Z

    .line 559
    .line 560
    return-void

    .line 561
    :cond_25
    :goto_a
    iput-boolean v6, p0, Lcom/mycompany/app/web/WebNestFrame;->J:Z

    .line 562
    .line 563
    return-void

    .line 564
    :cond_26
    :goto_b
    iget v1, p0, Lcom/mycompany/app/web/WebNestFrame;->Q:I

    .line 565
    .line 566
    if-eqz v1, :cond_27

    .line 567
    .line 568
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 569
    .line 570
    .line 571
    :cond_27
    iget-boolean v1, p0, Lcom/mycompany/app/web/WebNestFrame;->I:Z

    .line 572
    .line 573
    if-eqz v1, :cond_28

    .line 574
    .line 575
    invoke-virtual/range {p0 .. p1}, Lcom/mycompany/app/web/WebNestFrame;->q(Landroid/graphics/Canvas;)V

    .line 576
    .line 577
    .line 578
    goto :goto_c

    .line 579
    :cond_28
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebNestFrame;->G()V

    .line 580
    .line 581
    .line 582
    :goto_c
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 583
    .line 584
    .line 585
    iput-boolean v6, p0, Lcom/mycompany/app/web/WebNestFrame;->J:Z

    .line 586
    .line 587
    :cond_29
    :goto_d
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebNestFrame;->I:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebNestFrame;->I:Z

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebNestFrame;->G()V

    .line 15
    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebNestFrame;->P:Z

    .line 18
    .line 19
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->C5(Z)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebNestFrame;->u:Z

    .line 29
    .line 30
    if-nez v0, :cond_4

    .line 31
    .line 32
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->v:Landroid/animation/ValueAnimator;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget v0, p0, Lcom/mycompany/app/web/WebNestFrame;->x:F

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    cmpl-float v0, v0, v1

    .line 41
    .line 42
    if-gtz v0, :cond_4

    .line 43
    .line 44
    iget v0, p0, Lcom/mycompany/app/web/WebNestFrame;->A:F

    .line 45
    .line 46
    cmpl-float v0, v0, v1

    .line 47
    .line 48
    if-gtz v0, :cond_4

    .line 49
    .line 50
    iget v0, p0, Lcom/mycompany/app/web/WebNestFrame;->B:F

    .line 51
    .line 52
    cmpl-float v0, v0, v1

    .line 53
    .line 54
    if-lez v0, :cond_2

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    iget v0, p0, Lcom/mycompany/app/web/WebNestFrame;->G:F

    .line 58
    .line 59
    cmpl-float v2, v0, v1

    .line 60
    .line 61
    if-gtz v2, :cond_4

    .line 62
    .line 63
    cmpg-float v0, v0, v1

    .line 64
    .line 65
    if-gez v0, :cond_3

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    return p1

    .line 73
    :cond_4
    :goto_0
    const/4 p1, 0x1

    .line 74
    return p1
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebNestFrame;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebNestFrame;->k:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 11
    .line 12
    .line 13
    :cond_1
    :goto_0
    return-void
.end method

.method public getBackItem()Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->m:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFakeX()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/web/WebNestFrame;->x:F

    .line 2
    .line 3
    return v0
.end method

.method public getListToStr()Ljava/lang/String;
    .locals 12

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZtwo;->E:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto/16 :goto_6

    .line 7
    .line 8
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->o:Ljava/util/List;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    goto/16 :goto_6

    .line 13
    .line 14
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_2

    .line 19
    .line 20
    goto/16 :goto_6

    .line 21
    .line 22
    :cond_2
    iget v3, p0, Lcom/mycompany/app/web/WebNestFrame;->p:I

    .line 23
    .line 24
    add-int/lit8 v3, v3, 0x3

    .line 25
    .line 26
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-gtz v2, :cond_3

    .line 31
    .line 32
    goto/16 :goto_6

    .line 33
    .line 34
    :cond_3
    add-int/lit8 v3, v2, -0xa

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    if-gez v3, :cond_4

    .line 38
    .line 39
    move v3, v4

    .line 40
    :cond_4
    move-object v6, v1

    .line 41
    move v5, v4

    .line 42
    :goto_0
    const/4 v7, 0x1

    .line 43
    if-ge v3, v2, :cond_b

    .line 44
    .line 45
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    check-cast v8, Lcom/mycompany/app/web/WebNestFrame$PageItem;

    .line 50
    .line 51
    if-nez v8, :cond_5

    .line 52
    .line 53
    goto :goto_5

    .line 54
    :cond_5
    iget-object v9, v8, Lcom/mycompany/app/web/WebNestFrame$PageItem;->i:Lcom/mycompany/app/web/WebNestView;

    .line 55
    .line 56
    iget v10, p0, Lcom/mycompany/app/web/WebNestFrame;->p:I

    .line 57
    .line 58
    if-ne v3, v10, :cond_6

    .line 59
    .line 60
    const-string v5, "sb_curr_page"

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_6
    if-eqz v9, :cond_7

    .line 64
    .line 65
    invoke-virtual {v9}, Lcom/mycompany/app/web/WebNestView;->getValidPageUrl()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    :goto_1
    move-object v11, v7

    .line 70
    move v7, v5

    .line 71
    move-object v5, v11

    .line 72
    goto :goto_2

    .line 73
    :cond_7
    iget-boolean v7, v8, Lcom/mycompany/app/web/WebNestFrame$PageItem;->b:Z

    .line 74
    .line 75
    if-eqz v7, :cond_8

    .line 76
    .line 77
    iget-object v7, v8, Lcom/mycompany/app/web/WebNestFrame$PageItem;->d:Ljava/lang/String;

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_8
    iget-object v7, v8, Lcom/mycompany/app/web/WebNestFrame$PageItem;->e:Ljava/lang/String;

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :goto_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    if-eqz v8, :cond_9

    .line 88
    .line 89
    :goto_3
    move v5, v7

    .line 90
    goto :goto_5

    .line 91
    :cond_9
    if-nez v6, :cond_a

    .line 92
    .line 93
    new-instance v6, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_a
    const-string v8, "!@!"

    .line 100
    .line 101
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    :goto_4
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    add-int/lit8 v4, v4, 0x1

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :goto_5
    add-int/lit8 v3, v3, 0x1

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_b
    if-nez v6, :cond_c

    .line 114
    .line 115
    goto :goto_6

    .line 116
    :cond_c
    if-ne v4, v7, :cond_d

    .line 117
    .line 118
    if-eqz v5, :cond_d

    .line 119
    .line 120
    goto :goto_6

    .line 121
    :cond_d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    return-object v0

    .line 126
    :catch_0
    :goto_6
    return-object v1
.end method

.method public getPageCreate()Lcom/mycompany/app/web/WebNestView;
    .locals 3

    .line 1
    iget v0, p0, Lcom/mycompany/app/web/WebNestFrame;->p:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/mycompany/app/web/WebNestFrame;->y(I)Lcom/mycompany/app/web/WebNestFrame$PageItem;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, v1, Lcom/mycompany/app/web/WebNestFrame$PageItem;->i:Lcom/mycompany/app/web/WebNestView;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-nez v2, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/mycompany/app/web/WebNestFrame;->z(I)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {p0, v1, v2}, Lcom/mycompany/app/web/WebNestFrame;->j(Landroid/view/View;I)V

    .line 27
    .line 28
    .line 29
    :cond_2
    move-object v2, v1

    .line 30
    :goto_0
    if-eqz v2, :cond_3

    .line 31
    .line 32
    return-object v2

    .line 33
    :cond_3
    invoke-virtual {p0, v0}, Lcom/mycompany/app/web/WebNestFrame;->x(I)Lcom/mycompany/app/web/WebNestView;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method

.method public getPageIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/web/WebNestFrame;->p:I

    .line 2
    .line 3
    return v0
.end method

.method public getPageValid()Lcom/mycompany/app/web/WebNestView;
    .locals 3

    .line 1
    iget v0, p0, Lcom/mycompany/app/web/WebNestFrame;->p:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/mycompany/app/web/WebNestFrame;->y(I)Lcom/mycompany/app/web/WebNestFrame$PageItem;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, v1, Lcom/mycompany/app/web/WebNestFrame$PageItem;->i:Lcom/mycompany/app/web/WebNestView;

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    :goto_0
    const/4 v0, 0x0

    .line 15
    return-object v0

    .line 16
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-nez v2, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/mycompany/app/web/WebNestFrame;->z(I)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {p0, v1, v0}, Lcom/mycompany/app/web/WebNestFrame;->j(Landroid/view/View;I)V

    .line 27
    .line 28
    .line 29
    :cond_2
    return-object v1
.end method

.method public getTabX()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/web/WebNestFrame;->A:F

    .line 2
    .line 3
    return v0
.end method

.method public getTabY()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/web/WebNestFrame;->B:F

    .line 2
    .line 3
    return v0
.end method

.method public final j(Landroid/view/View;I)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->V6(Landroid/view/View;)V

    .line 5
    .line 6
    .line 7
    if-gez p2, :cond_1

    .line 8
    .line 9
    const/4 p2, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-le p2, v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    :cond_2
    :goto_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 22
    .line 23
    const/4 v1, -0x1

    .line 24
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    :catch_0
    :goto_1
    return-void
.end method

.method public final k(Lcom/mycompany/app/web/WebNestView;II)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebNestFrame;->t:Z

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    :goto_0
    return-void

    .line 9
    :cond_1
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebNestFrame;->t:Z

    .line 11
    .line 12
    invoke-virtual {p0, p1, p3}, Lcom/mycompany/app/web/WebNestFrame;->j(Landroid/view/View;I)V

    .line 13
    .line 14
    .line 15
    iget-object p3, p0, Lcom/mycompany/app/web/WebNestFrame;->o:Ljava/util/List;

    .line 16
    .line 17
    if-nez p3, :cond_2

    .line 18
    .line 19
    new-instance p3, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    :cond_2
    invoke-virtual {p0, p2}, Lcom/mycompany/app/web/WebNestFrame;->y(I)Lcom/mycompany/app/web/WebNestFrame$PageItem;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    new-instance v1, Lcom/mycompany/app/web/WebNestFrame$PageItem;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    :cond_3
    invoke-virtual {p0, v1, p1, v0}, Lcom/mycompany/app/web/WebNestFrame;->C(Lcom/mycompany/app/web/WebNestFrame$PageItem;Lcom/mycompany/app/web/WebNestView;Z)V

    .line 39
    .line 40
    .line 41
    iput-object p3, p0, Lcom/mycompany/app/web/WebNestFrame;->o:Ljava/util/List;

    .line 42
    .line 43
    iput p2, p0, Lcom/mycompany/app/web/WebNestFrame;->p:I

    .line 44
    .line 45
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-le p1, v0, :cond_4

    .line 50
    .line 51
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebNestFrame;->q:Z

    .line 52
    .line 53
    :cond_4
    iget-boolean p3, p0, Lcom/mycompany/app/web/WebNestFrame;->q:Z

    .line 54
    .line 55
    iput-boolean p3, p0, Lcom/mycompany/app/web/WebNestFrame;->r:Z

    .line 56
    .line 57
    iget p3, p0, Lcom/mycompany/app/web/WebNestFrame;->p:I

    .line 58
    .line 59
    invoke-direct {p0, p3}, Lcom/mycompany/app/web/WebNestFrame;->setBlankTime(I)V

    .line 60
    .line 61
    .line 62
    const/4 p3, 0x2

    .line 63
    const/4 v0, 0x0

    .line 64
    if-ge p1, p3, :cond_5

    .line 65
    .line 66
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebNestFrame;->t:Z

    .line 67
    .line 68
    return-void

    .line 69
    :cond_5
    iget-object p1, p0, Lcom/mycompany/app/web/WebNestFrame;->f:Landroid/os/Handler;

    .line 70
    .line 71
    if-nez p1, :cond_6

    .line 72
    .line 73
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebNestFrame;->t:Z

    .line 74
    .line 75
    return-void

    .line 76
    :cond_6
    new-instance p3, Lcom/mycompany/app/web/WebNestFrame$4;

    .line 77
    .line 78
    invoke-direct {p3, p0, p2}, Lcom/mycompany/app/web/WebNestFrame$4;-><init>(Lcom/mycompany/app/web/WebNestFrame;I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public final l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->v:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->v:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebNestFrame;->J()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebNestFrame;->u:Z

    .line 20
    .line 21
    return-void
.end method

.method public final m()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebNestFrame;->l()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->z:Landroid/animation/ValueAnimator;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/mycompany/app/web/WebNestFrame;->z:Landroid/animation/ValueAnimator;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->F:Landroid/animation/ValueAnimator;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/mycompany/app/web/WebNestFrame;->F:Landroid/animation/ValueAnimator;

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->H:Landroid/animation/ValueAnimator;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/mycompany/app/web/WebNestFrame;->H:Landroid/animation/ValueAnimator;

    .line 31
    .line 32
    :cond_2
    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/mycompany/app/web/WebNestFrame;->E:I

    .line 34
    .line 35
    return-void
.end method

.method public final n()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/mycompany/app/web/WebNestFrame;->getBlankTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v2, v0, v2

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v2, p0, Lcom/mycompany/app/web/WebNestFrame;->f:Landroid/os/Handler;

    .line 13
    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    :goto_0
    return-void

    .line 17
    :cond_1
    new-instance v3, Lcom/mycompany/app/web/WebNestFrame$3;

    .line 18
    .line 19
    invoke-direct {v3, p0, v0, v1}, Lcom/mycompany/app/web/WebNestFrame$3;-><init>(Lcom/mycompany/app/web/WebNestFrame;J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final o()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->o:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_4

    .line 6
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    goto :goto_4

    .line 13
    :cond_1
    iget v2, p0, Lcom/mycompany/app/web/WebNestFrame;->p:I

    .line 14
    .line 15
    add-int/lit8 v3, v2, -0x4

    .line 16
    .line 17
    add-int/lit8 v4, v2, 0x4

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    if-gez v3, :cond_2

    .line 21
    .line 22
    move v3, v5

    .line 23
    :cond_2
    if-le v4, v1, :cond_3

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_3
    move v1, v4

    .line 27
    :goto_0
    add-int/lit8 v4, v2, -0x1

    .line 28
    .line 29
    const/4 v6, 0x1

    .line 30
    add-int/2addr v2, v6

    .line 31
    :goto_1
    if-ge v3, v1, :cond_c

    .line 32
    .line 33
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    check-cast v7, Lcom/mycompany/app/web/WebNestFrame$PageItem;

    .line 38
    .line 39
    if-nez v7, :cond_4

    .line 40
    .line 41
    goto :goto_3

    .line 42
    :cond_4
    iget-object v7, v7, Lcom/mycompany/app/web/WebNestFrame$PageItem;->i:Lcom/mycompany/app/web/WebNestView;

    .line 43
    .line 44
    if-nez v7, :cond_5

    .line 45
    .line 46
    goto :goto_3

    .line 47
    :cond_5
    iget v8, p0, Lcom/mycompany/app/web/WebNestFrame;->p:I

    .line 48
    .line 49
    if-ne v3, v8, :cond_7

    .line 50
    .line 51
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    if-eqz v8, :cond_6

    .line 56
    .line 57
    invoke-virtual {v7, v5}, Lcom/mycompany/app/web/WebNestView;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    :cond_6
    invoke-virtual {v7}, Lcom/mycompany/app/web/WebNestView;->onResume()V

    .line 61
    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_7
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    const/16 v9, 0x8

    .line 69
    .line 70
    if-eq v8, v9, :cond_8

    .line 71
    .line 72
    move v8, v6

    .line 73
    goto :goto_2

    .line 74
    :cond_8
    move v8, v5

    .line 75
    :goto_2
    if-nez v8, :cond_a

    .line 76
    .line 77
    if-lt v3, v4, :cond_9

    .line 78
    .line 79
    if-le v3, v2, :cond_a

    .line 80
    .line 81
    :cond_9
    invoke-virtual {v7}, Lcom/mycompany/app/web/WebNestView;->S()V

    .line 82
    .line 83
    .line 84
    :cond_a
    if-eqz v8, :cond_b

    .line 85
    .line 86
    invoke-virtual {v7, v9}, Lcom/mycompany/app/web/WebNestView;->setVisibility(I)V

    .line 87
    .line 88
    .line 89
    :cond_b
    invoke-virtual {v7}, Lcom/mycompany/app/web/WebNestView;->onPause()V

    .line 90
    .line 91
    .line 92
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_c
    :goto_4
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/mycompany/app/web/WebNestFrame;->setDetached(Z)V

    .line 3
    .line 4
    .line 5
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebNestFrame;->m()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, v0}, Lcom/mycompany/app/web/WebNestFrame;->setDetached(Z)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebNestFrame;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebNestFrame;->k:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 11
    .line 12
    .line 13
    :cond_1
    :goto_0
    return-void
.end method

.method public final p(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->o:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_1
    iget v2, p0, Lcom/mycompany/app/web/WebNestFrame;->p:I

    .line 14
    .line 15
    add-int/lit8 v3, v2, -0x1

    .line 16
    .line 17
    add-int/lit8 v2, v2, 0x2

    .line 18
    .line 19
    if-gez v3, :cond_2

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    :cond_2
    if-le v2, v1, :cond_3

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_3
    move v1, v2

    .line 26
    :goto_0
    if-ge v3, v1, :cond_7

    .line 27
    .line 28
    if-eqz p1, :cond_4

    .line 29
    .line 30
    iget v2, p0, Lcom/mycompany/app/web/WebNestFrame;->p:I

    .line 31
    .line 32
    if-ne v3, v2, :cond_4

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_4
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lcom/mycompany/app/web/WebNestFrame$PageItem;

    .line 40
    .line 41
    if-nez v2, :cond_5

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_5
    iget-object v2, v2, Lcom/mycompany/app/web/WebNestFrame$PageItem;->i:Lcom/mycompany/app/web/WebNestView;

    .line 45
    .line 46
    if-nez v2, :cond_6

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_6
    invoke-virtual {v2}, Lcom/mycompany/app/web/WebNestView;->S()V

    .line 50
    .line 51
    .line 52
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_7
    :goto_2
    return-void
.end method

.method public final q(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebNestFrame;->P:Z

    .line 2
    .line 3
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->C5(Z)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_5

    .line 10
    .line 11
    :cond_0
    if-nez p1, :cond_1

    .line 12
    .line 13
    goto/16 :goto_5

    .line 14
    .line 15
    :cond_1
    sget v0, Lcom/mycompany/app/main/MainActivity;->b1:I

    .line 16
    .line 17
    sget v1, Lcom/mycompany/app/main/MainActivity;->c1:I

    .line 18
    .line 19
    if-eqz v0, :cond_14

    .line 20
    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    goto/16 :goto_5

    .line 24
    .line 25
    :cond_2
    iget-object v2, p0, Lcom/mycompany/app/web/WebNestFrame;->T:Landroid/graphics/Paint;

    .line 26
    .line 27
    if-nez v2, :cond_3

    .line 28
    .line 29
    new-instance v2, Landroid/graphics/Paint;

    .line 30
    .line 31
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v2, p0, Lcom/mycompany/app/web/WebNestFrame;->T:Landroid/graphics/Paint;

    .line 35
    .line 36
    :cond_3
    iget-object v3, p0, Lcom/mycompany/app/web/WebNestFrame;->S:Landroid/graphics/Bitmap;

    .line 37
    .line 38
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-nez v4, :cond_5

    .line 43
    .line 44
    if-le v0, v1, :cond_4

    .line 45
    .line 46
    const/4 v3, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_4
    const/4 v3, 0x0

    .line 49
    :goto_0
    iput-boolean v3, p0, Lcom/mycompany/app/web/WebNestFrame;->U:Z

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    iget-boolean v4, p0, Lcom/mycompany/app/web/WebNestFrame;->U:Z

    .line 56
    .line 57
    invoke-static {v3, v4}, Lcom/mycompany/app/main/MainUtil;->l4(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    iput-object v3, p0, Lcom/mycompany/app/web/WebNestFrame;->S:Landroid/graphics/Bitmap;

    .line 62
    .line 63
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-nez v4, :cond_5

    .line 68
    .line 69
    new-instance p1, Lcom/mycompany/app/web/WebNestFrame$31;

    .line 70
    .line 71
    invoke-direct {p1, p0}, Lcom/mycompany/app/web/WebNestFrame$31;-><init>(Lcom/mycompany/app/web/WebNestFrame;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p1}, Lcom/mycompany/app/web/WebNestFrame;->H(Ljava/lang/Runnable;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    if-nez v4, :cond_6

    .line 83
    .line 84
    goto/16 :goto_5

    .line 85
    .line 86
    :cond_6
    iget v5, p0, Lcom/mycompany/app/web/WebNestFrame;->x:F

    .line 87
    .line 88
    const/4 v6, 0x0

    .line 89
    cmpl-float v7, v5, v6

    .line 90
    .line 91
    if-lez v7, :cond_8

    .line 92
    .line 93
    iget-boolean v7, p0, Lcom/mycompany/app/web/WebNestFrame;->g:Z

    .line 94
    .line 95
    if-eqz v7, :cond_7

    .line 96
    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    :goto_1
    int-to-float v7, v7

    .line 102
    sub-float/2addr v5, v7

    .line 103
    :cond_7
    :goto_2
    move v7, v6

    .line 104
    goto :goto_4

    .line 105
    :cond_8
    iget v5, p0, Lcom/mycompany/app/web/WebNestFrame;->A:F

    .line 106
    .line 107
    cmpl-float v7, v5, v6

    .line 108
    .line 109
    if-lez v7, :cond_9

    .line 110
    .line 111
    iget-boolean v7, p0, Lcom/mycompany/app/web/WebNestFrame;->g:Z

    .line 112
    .line 113
    if-eqz v7, :cond_7

    .line 114
    .line 115
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    goto :goto_1

    .line 120
    :cond_9
    iget v5, p0, Lcom/mycompany/app/web/WebNestFrame;->B:F

    .line 121
    .line 122
    cmpl-float v7, v5, v6

    .line 123
    .line 124
    if-lez v7, :cond_a

    .line 125
    .line 126
    move v7, v5

    .line 127
    move v5, v6

    .line 128
    goto :goto_4

    .line 129
    :cond_a
    iget v5, p0, Lcom/mycompany/app/web/WebNestFrame;->G:F

    .line 130
    .line 131
    cmpl-float v7, v5, v6

    .line 132
    .line 133
    if-gtz v7, :cond_c

    .line 134
    .line 135
    cmpg-float v7, v5, v6

    .line 136
    .line 137
    if-gez v7, :cond_b

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_b
    move v5, v6

    .line 141
    move v7, v5

    .line 142
    goto :goto_4

    .line 143
    :cond_c
    :goto_3
    iget-boolean v7, p0, Lcom/mycompany/app/web/WebNestFrame;->g:Z

    .line 144
    .line 145
    if-eqz v7, :cond_7

    .line 146
    .line 147
    neg-float v5, v5

    .line 148
    goto :goto_2

    .line 149
    :goto_4
    int-to-float v8, v0

    .line 150
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 151
    .line 152
    .line 153
    move-result v9

    .line 154
    int-to-float v9, v9

    .line 155
    div-float/2addr v8, v9

    .line 156
    int-to-float v9, v1

    .line 157
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 158
    .line 159
    .line 160
    move-result v10

    .line 161
    int-to-float v10, v10

    .line 162
    div-float/2addr v9, v10

    .line 163
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 164
    .line 165
    .line 166
    cmpl-float v10, v5, v6

    .line 167
    .line 168
    if-gtz v10, :cond_d

    .line 169
    .line 170
    cmpl-float v10, v7, v6

    .line 171
    .line 172
    if-lez v10, :cond_e

    .line 173
    .line 174
    :cond_d
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    .line 175
    .line 176
    .line 177
    move-result v10

    .line 178
    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    .line 179
    .line 180
    .line 181
    move-result v11

    .line 182
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 183
    .line 184
    .line 185
    move-result v12

    .line 186
    int-to-float v12, v12

    .line 187
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 188
    .line 189
    .line 190
    move-result v13

    .line 191
    int-to-float v13, v13

    .line 192
    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 193
    .line 194
    .line 195
    :cond_e
    sget v10, Lcom/mycompany/app/pref/PrefTts;->F:I

    .line 196
    .line 197
    if-eqz v10, :cond_f

    .line 198
    .line 199
    if-le v0, v1, :cond_f

    .line 200
    .line 201
    int-to-float v0, v10

    .line 202
    sub-float/2addr v5, v0

    .line 203
    :cond_f
    sget-boolean v0, Lcom/mycompany/app/main/MainConst;->d:Z

    .line 204
    .line 205
    if-eqz v0, :cond_10

    .line 206
    .line 207
    sget v0, Lcom/mycompany/app/main/MainActivity;->d1:I

    .line 208
    .line 209
    int-to-float v0, v0

    .line 210
    sub-float/2addr v5, v0

    .line 211
    :cond_10
    check-cast v4, Landroid/view/View;

    .line 212
    .line 213
    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    sub-float/2addr v7, v0

    .line 218
    sget-boolean v0, Lcom/mycompany/app/pref/PrefWeb;->t:Z

    .line 219
    .line 220
    if-eqz v0, :cond_11

    .line 221
    .line 222
    sget v0, Lcom/mycompany/app/pref/PrefMain;->u:I

    .line 223
    .line 224
    int-to-float v0, v0

    .line 225
    sub-float/2addr v7, v0

    .line 226
    :cond_11
    sget-boolean v0, Lcom/mycompany/app/pref/PrefWeb;->v:Z

    .line 227
    .line 228
    if-eqz v0, :cond_12

    .line 229
    .line 230
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->H3()I

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    int-to-float v0, v0

    .line 235
    sub-float/2addr v7, v0

    .line 236
    :cond_12
    sget-boolean v0, Lcom/mycompany/app/pref/PrefTts;->H:Z

    .line 237
    .line 238
    if-eqz v0, :cond_13

    .line 239
    .line 240
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Io:I

    .line 241
    .line 242
    int-to-float v0, v0

    .line 243
    sub-float/2addr v7, v0

    .line 244
    :cond_13
    invoke-virtual {p1, v5, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->scale(FF)V

    .line 248
    .line 249
    .line 250
    :try_start_0
    invoke-virtual {p1, v3, v6, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    .line 252
    .line 253
    :catch_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 254
    .line 255
    .line 256
    :cond_14
    :goto_5
    return-void
.end method

.method public final r(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->h:Lcom/mycompany/app/web/WebNestFrame$WebFrameListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->f:Landroid/os/Handler;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    new-instance v1, Lcom/mycompany/app/web/WebNestFrame$7;

    .line 12
    .line 13
    invoke-direct {v1, p0, p1, p2}, Lcom/mycompany/app/web/WebNestFrame$7;-><init>(Lcom/mycompany/app/web/WebNestFrame;IZ)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final s(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->h:Lcom/mycompany/app/web/WebNestFrame$WebFrameListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/mycompany/app/web/WebNestFrame;->w:Z

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    invoke-interface {v0, p1, p2}, Lcom/mycompany/app/web/WebNestFrame$WebFrameListener;->c(IZ)V

    .line 11
    .line 12
    .line 13
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->f:Landroid/os/Handler;

    .line 14
    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    :goto_0
    return-void

    .line 18
    :cond_2
    new-instance v1, Lcom/mycompany/app/web/WebNestFrame$6;

    .line 19
    .line 20
    invoke-direct {v1, p0, p1, p2}, Lcom/mycompany/app/web/WebNestFrame$6;-><init>(Lcom/mycompany/app/web/WebNestFrame;IZ)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public setAddNeed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/web/WebNestFrame;->u:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x4

    .line 6
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public setAddPage(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebNestFrame;->R:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/web/WebNestFrame;->R:Z

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/web/WebNestFrame;->o:Ljava/util/List;

    .line 12
    .line 13
    if-nez p1, :cond_2

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x2

    .line 21
    if-ge v0, v1, :cond_3

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_3
    iget v0, p0, Lcom/mycompany/app/web/WebNestFrame;->p:I

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lcom/mycompany/app/web/WebNestFrame;->y(I)Lcom/mycompany/app/web/WebNestFrame$PageItem;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-nez v1, :cond_4

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    iput-object v2, p0, Lcom/mycompany/app/web/WebNestFrame;->o:Ljava/util/List;

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    iput v2, p0, Lcom/mycompany/app/web/WebNestFrame;->p:I

    .line 45
    .line 46
    iget-boolean v3, p0, Lcom/mycompany/app/web/WebNestFrame;->q:Z

    .line 47
    .line 48
    iput-boolean v3, p0, Lcom/mycompany/app/web/WebNestFrame;->r:Z

    .line 49
    .line 50
    invoke-direct {p0, v2}, Lcom/mycompany/app/web/WebNestFrame;->setBlankTime(I)V

    .line 51
    .line 52
    .line 53
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_5

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 64
    .line 65
    .line 66
    iget-object v0, v1, Lcom/mycompany/app/web/WebNestFrame$PageItem;->i:Lcom/mycompany/app/web/WebNestView;

    .line 67
    .line 68
    invoke-virtual {p0, v0, v2}, Lcom/mycompany/app/web/WebNestFrame;->j(Landroid/view/View;I)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->f:Landroid/os/Handler;

    .line 72
    .line 73
    if-nez v0, :cond_6

    .line 74
    .line 75
    :goto_0
    return-void

    .line 76
    :cond_6
    new-instance v1, Lcom/mycompany/app/web/WebNestFrame$5;

    .line 77
    .line 78
    invoke-direct {v1, p0, p1}, Lcom/mycompany/app/web/WebNestFrame$5;-><init>(Lcom/mycompany/app/web/WebNestFrame;Ljava/util/List;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public setBackItem(Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/web/WebNestFrame;->m:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 2
    .line 3
    return-void
.end method

.method public setBlankView(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->o:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_d

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
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    if-eqz p1, :cond_7

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/4 v3, 0x2

    .line 22
    if-ge p1, v3, :cond_1

    .line 23
    .line 24
    goto/16 :goto_3

    .line 25
    .line 26
    :cond_1
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    const/4 v3, 0x0

    .line 31
    :goto_0
    if-ge v3, p1, :cond_6

    .line 32
    .line 33
    iget v4, p0, Lcom/mycompany/app/web/WebNestFrame;->p:I

    .line 34
    .line 35
    if-ne v3, v4, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Lcom/mycompany/app/web/WebNestFrame$PageItem;

    .line 43
    .line 44
    if-nez v4, :cond_3

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    iget-object v5, v4, Lcom/mycompany/app/web/WebNestFrame$PageItem;->i:Lcom/mycompany/app/web/WebNestView;

    .line 48
    .line 49
    if-nez v5, :cond_4

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_4
    invoke-static {v4, v5}, Lcom/mycompany/app/web/WebNestFrame;->K(Lcom/mycompany/app/web/WebNestFrame$PageItem;Lcom/mycompany/app/web/WebNestView;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5, v2}, Lcom/mycompany/app/web/WebNestView;->setDetached(Z)V

    .line 56
    .line 57
    .line 58
    if-nez v1, :cond_5

    .line 59
    .line 60
    new-instance v1, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    :cond_5
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_6
    invoke-direct {p0, v1}, Lcom/mycompany/app/web/WebNestFrame;->setDelList(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-nez p1, :cond_8

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_8
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_c

    .line 91
    .line 92
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Lcom/mycompany/app/web/WebNestFrame$PageItem;

    .line 97
    .line 98
    if-nez v0, :cond_9

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_9
    iget-object v3, v0, Lcom/mycompany/app/web/WebNestFrame$PageItem;->i:Lcom/mycompany/app/web/WebNestView;

    .line 102
    .line 103
    if-nez v3, :cond_a

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_a
    invoke-static {v0, v3}, Lcom/mycompany/app/web/WebNestFrame;->K(Lcom/mycompany/app/web/WebNestFrame$PageItem;Lcom/mycompany/app/web/WebNestView;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3, v2}, Lcom/mycompany/app/web/WebNestView;->setDetached(Z)V

    .line 110
    .line 111
    .line 112
    if-nez v1, :cond_b

    .line 113
    .line 114
    new-instance v0, Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .line 118
    .line 119
    move-object v1, v0

    .line 120
    :cond_b
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_c
    invoke-direct {p0, v1}, Lcom/mycompany/app/web/WebNestFrame;->setDelList(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 125
    .line 126
    .line 127
    :catch_0
    :cond_d
    :goto_3
    return-void
.end method

.method public setDarkMode(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/web/WebNestFrame;->P:Z

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/mycompany/app/web/WebNestFrame;->getBackColor()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget v0, p0, Lcom/mycompany/app/web/WebNestFrame;->Q:I

    .line 8
    .line 9
    if-ne v0, p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iput p1, p0, Lcom/mycompany/app/web/WebNestFrame;->Q:I

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setListener(Lcom/mycompany/app/web/WebNestFrame$WebFrameListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/web/WebNestFrame;->h:Lcom/mycompany/app/web/WebNestFrame$WebFrameListener;

    .line 2
    .line 3
    return-void
.end method

.method public setPageIndex(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/web/WebNestFrame;->p:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/web/WebNestFrame;->p:I

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebNestFrame;->q:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebNestFrame;->r:Z

    .line 11
    .line 12
    invoke-direct {p0, p1}, Lcom/mycompany/app/web/WebNestFrame;->setBlankTime(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setTabUid(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/mycompany/app/web/WebNestFrame;->i:J

    .line 2
    .line 3
    return-void
.end method

.method public setTabX(F)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebNestFrame;->I:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebNestFrame;->I:Z

    .line 7
    .line 8
    move v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget-boolean v2, p0, Lcom/mycompany/app/web/WebNestFrame;->g:Z

    .line 12
    .line 13
    if-eqz v2, :cond_2

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    cmpg-float v2, p1, v2

    .line 17
    .line 18
    const v3, 0x3dcccccd    # 0.1f

    .line 19
    .line 20
    .line 21
    if-gtz v2, :cond_1

    .line 22
    .line 23
    move p1, v3

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    int-to-float v2, v2

    .line 30
    cmpl-float v2, p1, v2

    .line 31
    .line 32
    if-ltz v2, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    int-to-float p1, p1

    .line 39
    sub-float/2addr p1, v3

    .line 40
    :cond_2
    :goto_1
    iget v2, p0, Lcom/mycompany/app/web/WebNestFrame;->A:F

    .line 41
    .line 42
    invoke-static {v2, p1}, Ljava/lang/Float;->compare(FF)I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_4

    .line 47
    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    iget-boolean p1, p0, Lcom/mycompany/app/web/WebNestFrame;->P:Z

    .line 51
    .line 52
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->C5(Z)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_3

    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 59
    .line 60
    .line 61
    :cond_3
    return-void

    .line 62
    :cond_4
    iput p1, p0, Lcom/mycompany/app/web/WebNestFrame;->A:F

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebNestFrame;->B()V

    .line 65
    .line 66
    .line 67
    iget p1, p0, Lcom/mycompany/app/web/WebNestFrame;->A:F

    .line 68
    .line 69
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/web/WebNestFrame;->Q(FI)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public setTabY(F)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebNestFrame;->I:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebNestFrame;->I:Z

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    iget v1, p0, Lcom/mycompany/app/web/WebNestFrame;->B:F

    .line 11
    .line 12
    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_2

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-boolean p1, p0, Lcom/mycompany/app/web/WebNestFrame;->P:Z

    .line 21
    .line 22
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->C5(Z)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void

    .line 32
    :cond_2
    iput p1, p0, Lcom/mycompany/app/web/WebNestFrame;->B:F

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebNestFrame;->B()V

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x2

    .line 38
    iget v0, p0, Lcom/mycompany/app/web/WebNestFrame;->B:F

    .line 39
    .line 40
    invoke-virtual {p0, v0, p1}, Lcom/mycompany/app/web/WebNestFrame;->Q(FI)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public setValid(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/web/WebNestFrame;->c:Z

    .line 2
    .line 3
    return-void
.end method

.method public setVisibility(I)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_4

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/mycompany/app/web/WebNestFrame;->j:Z

    .line 6
    .line 7
    if-nez v2, :cond_3

    .line 8
    .line 9
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebNestFrame;->j:Z

    .line 10
    .line 11
    iget-boolean v2, p0, Lcom/mycompany/app/web/WebNestFrame;->r:Z

    .line 12
    .line 13
    if-eqz v2, :cond_3

    .line 14
    .line 15
    iget-boolean v2, p0, Lcom/mycompany/app/web/WebNestFrame;->s:Z

    .line 16
    .line 17
    if-nez v2, :cond_3

    .line 18
    .line 19
    iget-boolean v2, p0, Lcom/mycompany/app/web/WebNestFrame;->c:Z

    .line 20
    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-boolean v2, Lcom/mycompany/app/pref/PrefZtwo;->E:Z

    .line 25
    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-wide v2, p0, Lcom/mycompany/app/web/WebNestFrame;->i:J

    .line 30
    .line 31
    const-wide/16 v4, 0x0

    .line 32
    .line 33
    cmp-long v2, v2, v4

    .line 34
    .line 35
    if-gtz v2, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebNestFrame;->r:Z

    .line 39
    .line 40
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebNestFrame;->s:Z

    .line 41
    .line 42
    new-instance v2, Lcom/mycompany/app/web/WebNestFrame$9;

    .line 43
    .line 44
    invoke-direct {v2, p0}, Lcom/mycompany/app/web/WebNestFrame$9;-><init>(Lcom/mycompany/app/web/WebNestFrame;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v2}, Lcom/mycompany/app/web/WebNestFrame;->H(Ljava/lang/Runnable;)V

    .line 48
    .line 49
    .line 50
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebNestFrame;->G()V

    .line 51
    .line 52
    .line 53
    :cond_4
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebNestFrame;->getPageValid()Lcom/mycompany/app/web/WebNestView;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    if-eqz v2, :cond_7

    .line 58
    .line 59
    iget-boolean v3, v2, Lcom/mycompany/app/web/WebNestView;->n:Z

    .line 60
    .line 61
    if-nez v3, :cond_7

    .line 62
    .line 63
    if-nez p1, :cond_7

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_7

    .line 70
    .line 71
    iget-boolean v3, p0, Lcom/mycompany/app/web/WebNestFrame;->a0:Z

    .line 72
    .line 73
    if-eqz v3, :cond_5

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_5
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebNestFrame;->a0:Z

    .line 77
    .line 78
    iget-object v1, p0, Lcom/mycompany/app/web/WebNestFrame;->f:Landroid/os/Handler;

    .line 79
    .line 80
    if-nez v1, :cond_6

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_6
    new-instance v3, Lcom/mycompany/app/web/WebNestFrame$2;

    .line 84
    .line 85
    invoke-direct {v3, p0}, Lcom/mycompany/app/web/WebNestFrame$2;-><init>(Lcom/mycompany/app/web/WebNestFrame;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    .line 90
    .line 91
    :cond_7
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 92
    .line 93
    .line 94
    if-nez v2, :cond_8

    .line 95
    .line 96
    return-void

    .line 97
    :cond_8
    if-nez p1, :cond_9

    .line 98
    .line 99
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_9

    .line 104
    .line 105
    invoke-virtual {v2, v0}, Lcom/mycompany/app/web/WebNestView;->setVisibility(I)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_9
    invoke-virtual {v2, p1}, Lcom/mycompany/app/web/WebNestView;->setWebVisible(I)V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public final t(Lcom/mycompany/app/web/WebNestView;)Z
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebNestFrame;->c:Z

    .line 3
    .line 4
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->V6(Landroid/view/View;)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/mycompany/app/web/WebNestFrame;->o:Ljava/util/List;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/mycompany/app/web/WebNestFrame;->f:Landroid/os/Handler;

    .line 10
    .line 11
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->R6(Landroid/os/Handler;)V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    iput-object v2, p0, Lcom/mycompany/app/web/WebNestFrame;->f:Landroid/os/Handler;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebNestFrame;->m()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebNestFrame;->G()V

    .line 21
    .line 22
    .line 23
    iput-object v2, p0, Lcom/mycompany/app/web/WebNestFrame;->L:Landroid/graphics/Paint;

    .line 24
    .line 25
    iput-object v2, p0, Lcom/mycompany/app/web/WebNestFrame;->M:Landroid/graphics/Paint;

    .line 26
    .line 27
    iput-object v2, p0, Lcom/mycompany/app/web/WebNestFrame;->m:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 28
    .line 29
    iput-object v2, p0, Lcom/mycompany/app/web/WebNestFrame;->o:Ljava/util/List;

    .line 30
    .line 31
    iput-object v2, p0, Lcom/mycompany/app/web/WebNestFrame;->n:Ljava/util/List;

    .line 32
    .line 33
    iput-object v2, p0, Lcom/mycompany/app/web/WebNestFrame;->h:Lcom/mycompany/app/web/WebNestFrame$WebFrameListener;

    .line 34
    .line 35
    iput-object v2, p0, Lcom/mycompany/app/web/WebNestFrame;->V:Ljava/util/concurrent/ExecutorService;

    .line 36
    .line 37
    if-eqz v1, :cond_6

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    move v4, v0

    .line 51
    move-object v3, v2

    .line 52
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-eqz v5, :cond_5

    .line 57
    .line 58
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    check-cast v5, Lcom/mycompany/app/web/WebNestFrame$PageItem;

    .line 63
    .line 64
    if-nez v5, :cond_1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    iget-object v6, v5, Lcom/mycompany/app/web/WebNestFrame$PageItem;->i:Lcom/mycompany/app/web/WebNestView;

    .line 68
    .line 69
    if-nez v6, :cond_2

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    const/4 v7, 0x1

    .line 73
    if-eqz p1, :cond_3

    .line 74
    .line 75
    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    if-eqz v8, :cond_3

    .line 80
    .line 81
    move-object p1, v2

    .line 82
    move v4, v7

    .line 83
    :cond_3
    invoke-virtual {p0, v5, v2, v0}, Lcom/mycompany/app/web/WebNestFrame;->C(Lcom/mycompany/app/web/WebNestFrame$PageItem;Lcom/mycompany/app/web/WebNestView;Z)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v6, v7}, Lcom/mycompany/app/web/WebNestView;->setDetached(Z)V

    .line 87
    .line 88
    .line 89
    if-nez v3, :cond_4

    .line 90
    .line 91
    new-instance v3, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .line 95
    .line 96
    :cond_4
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_5
    invoke-direct {p0, v3}, Lcom/mycompany/app/web/WebNestFrame;->setDelList(Ljava/util/List;)V

    .line 101
    .line 102
    .line 103
    iput-object v2, p0, Lcom/mycompany/app/web/WebNestFrame;->W:Lcom/mycompany/app/main/MainWebDestroy;

    .line 104
    .line 105
    return v4

    .line 106
    :cond_6
    :goto_1
    iput-object v2, p0, Lcom/mycompany/app/web/WebNestFrame;->W:Lcom/mycompany/app/main/MainWebDestroy;

    .line 107
    .line 108
    return v0
.end method

.method public final u()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebNestFrame;->getPageValid()Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebNestView;->c:Z

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget v1, v0, Lcom/mycompany/app/web/WebNestView;->i:I

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    if-eq v1, v2, :cond_3

    .line 17
    .line 18
    # Keep media alive on deselected tabs when background play is on
    # and audio is already active (same gate as activity/tab-switch paths).
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZone;->G:Z

    if-eqz v1, :cond_check_f1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->S5(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_check_f1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebNestView;->setBackPlay(Z)V

    const-string v3, "(function(){try{Object.defineProperty(document,'hidden',{configurable:true,get:function(){return false;}});Object.defineProperty(document,'visibilityState',{configurable:true,get:function(){return 'visible';}});}catch(e){}if(!window.sb_bp){window.sb_bp=1;document.addEventListener('visibilitychange',function(e){try{e.stopImmediatePropagation();}catch(x){}},true);}})();"

    invoke-static {v0, v3, v1}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    goto :cond_3

    :cond_check_f1
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebNestView;->f1:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/mycompany/app/web/WebNestFrame;->f:Landroid/os/Handler;

    .line 19
    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    new-instance v2, Lcom/mycompany/app/web/WebNestFrame$1;

    .line 24
    .line 25
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebNestFrame$1;-><init>(Lcom/mycompany/app/web/WebNestView;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    :cond_3
    :goto_0
    return-void
.end method

.method public final v()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebNestFrame;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->f:Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->R6(Landroid/os/Handler;)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->f:Landroid/os/Handler;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebNestFrame;->m()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebNestFrame;->G()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->L:Landroid/graphics/Paint;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->M:Landroid/graphics/Paint;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->m:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->o:Ljava/util/List;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->n:Ljava/util/List;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->h:Lcom/mycompany/app/web/WebNestFrame$WebFrameListener;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->V:Ljava/util/concurrent/ExecutorService;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->W:Lcom/mycompany/app/main/MainWebDestroy;

    .line 33
    .line 34
    return-void
.end method

.method public final w(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebNestFrame;->R:Z

    .line 2
    .line 3
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZtwo;->E:Z

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Lcom/mycompany/app/web/WebNestFrame;->setAddPage(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebNestFrame;->getPageCreate()Lcom/mycompany/app/web/WebNestView;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    const/4 v1, 0x0

    .line 18
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebNestFrame;->j:Z

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    iget-object p1, v0, Lcom/mycompany/app/web/WebNestView;->Z0:Lcom/mycompany/app/quick/QuickView;

    .line 23
    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    iget-boolean v2, p1, Lcom/mycompany/app/quick/QuickView;->D:Z

    .line 27
    .line 28
    iput-boolean v2, p1, Lcom/mycompany/app/quick/QuickView;->B:Z

    .line 29
    .line 30
    iput-boolean v1, p1, Lcom/mycompany/app/quick/QuickView;->C:Z

    .line 31
    .line 32
    :cond_2
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebNestView;->onResume()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final x(I)Lcom/mycompany/app/web/WebNestView;
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/mycompany/app/web/WebNestFrame;->y(I)Lcom/mycompany/app/web/WebNestFrame$PageItem;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebNestFrame$PageItem;->b:Z

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v1, v0, Lcom/mycompany/app/web/WebNestFrame$PageItem;->d:Ljava/lang/String;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/web/WebNestFrame$PageItem;->e:Ljava/lang/String;

    .line 16
    .line 17
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    const-string v1, "about:blank"

    .line 24
    .line 25
    :cond_2
    :try_start_0
    new-instance v2, Lcom/mycompany/app/web/WebNestView;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-direct {v2, v3}, Lcom/mycompany/app/web/WebNestView;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebNestFrame$PageItem;->b:Z

    .line 35
    .line 36
    const/4 v4, 0x1

    .line 37
    if-eqz v3, :cond_3

    .line 38
    .line 39
    iget-wide v5, v0, Lcom/mycompany/app/web/WebNestFrame$PageItem;->c:J

    .line 40
    .line 41
    iput-boolean v4, v2, Lcom/mycompany/app/web/WebNestView;->z0:Z

    .line 42
    .line 43
    iput-wide v5, v2, Lcom/mycompany/app/web/WebNestView;->A0:J

    .line 44
    .line 45
    iput-object v1, v2, Lcom/mycompany/app/web/WebNestView;->B0:Ljava/lang/String;

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    invoke-virtual {v2, v1}, Lcom/mycompany/app/web/WebNestView;->setBlankPage(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :goto_1
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebNestFrame$PageItem;->f:Z

    .line 52
    .line 53
    invoke-virtual {v2, v1}, Lcom/mycompany/app/web/WebNestView;->setDeskMode(Z)V

    .line 54
    .line 55
    .line 56
    iget v1, v0, Lcom/mycompany/app/web/WebNestFrame$PageItem;->g:I

    .line 57
    .line 58
    iget v3, v0, Lcom/mycompany/app/web/WebNestFrame$PageItem;->h:I

    .line 59
    .line 60
    invoke-virtual {v2, v1, v3}, Lcom/mycompany/app/web/WebNestView;->T(II)V

    .line 61
    .line 62
    .line 63
    sget v1, Lcom/mycompany/app/pref/PrefZone;->x:I

    .line 64
    .line 65
    invoke-virtual {v2, v1}, Lcom/mycompany/app/web/WebNestView;->setScrollPos(I)V

    .line 66
    .line 67
    .line 68
    const/16 v1, 0x8

    .line 69
    .line 70
    invoke-virtual {v2, v1}, Lcom/mycompany/app/web/WebNestView;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Lcom/mycompany/app/web/WebNestView;->g()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Lcom/mycompany/app/web/WebNestFrame;->z(I)I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    invoke-virtual {p0, v2, p1}, Lcom/mycompany/app/web/WebNestFrame;->j(Landroid/view/View;I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v0, v2, v4}, Lcom/mycompany/app/web/WebNestFrame;->C(Lcom/mycompany/app/web/WebNestFrame$PageItem;Lcom/mycompany/app/web/WebNestView;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    .line 86
    return-object v2

    .line 87
    :catch_0
    :goto_2
    const/4 p1, 0x0

    .line 88
    return-object p1
.end method

.method public final y(I)Lcom/mycompany/app/web/WebNestFrame$PageItem;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestFrame;->o:Ljava/util/List;

    .line 2
    .line 3
    if-ltz p1, :cond_1

    .line 4
    .line 5
    if-eqz v0, :cond_1

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
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/mycompany/app/web/WebNestFrame$PageItem;

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 22
    return-object p1
.end method

.method public final z(I)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/mycompany/app/web/WebNestFrame;->p:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebNestFrame;->getPageValid()Lcom/mycompany/app/web/WebNestView;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1

    .line 21
    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, -0x1

    .line 26
    if-ne v0, v1, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    return p1

    .line 33
    :cond_2
    iget v1, p0, Lcom/mycompany/app/web/WebNestFrame;->p:I

    .line 34
    .line 35
    if-le p1, v1, :cond_3

    .line 36
    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    :cond_3
    return v0
.end method
