.class public Lcom/mycompany/app/view/MyProgressVideo;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/view/MyProgressVideo$ProgVideoListener;,
        Lcom/mycompany/app/view/MyProgressVideo$EventReceiver;
    }
.end annotation


# static fields
.field public static final synthetic I:I


# instance fields
.field public A:Z

.field public B:I

.field public C:Z

.field public final D:Ljava/lang/Runnable;

.field public E:F

.field public final F:Ljava/lang/Runnable;

.field public final G:Ljava/lang/Runnable;

.field public H:F

.field public c:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Z

.field public j:Landroid/content/Context;

.field public k:I

.field public l:Lcom/mycompany/app/view/MyProgressVideo$ProgVideoListener;

.field public m:Landroid/media/AudioManager;

.field public n:I

.field public o:Landroid/graphics/Paint;

.field public p:Landroid/graphics/Paint;

.field public q:I

.field public r:I

.field public s:F

.field public t:F

.field public u:F

.field public v:F

.field public w:F

.field public x:Lcom/mycompany/app/view/MyProgressVideo$EventReceiver;

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/mycompany/app/view/MyProgressVideo$4;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyProgressVideo$4;-><init>(Lcom/mycompany/app/view/MyProgressVideo;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/mycompany/app/view/MyProgressVideo;->D:Ljava/lang/Runnable;

    .line 10
    .line 11
    new-instance p1, Lcom/mycompany/app/view/MyProgressVideo$6;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyProgressVideo$6;-><init>(Lcom/mycompany/app/view/MyProgressVideo;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/mycompany/app/view/MyProgressVideo;->F:Ljava/lang/Runnable;

    .line 17
    .line 18
    new-instance p1, Lcom/mycompany/app/view/MyProgressVideo$7;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyProgressVideo$7;-><init>(Lcom/mycompany/app/view/MyProgressVideo;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/mycompany/app/view/MyProgressVideo;->G:Ljava/lang/Runnable;

    .line 24
    .line 25
    return-void
.end method

.method private setTouchMove(F)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyProgressVideo;->A:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyProgressVideo;->A:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyProgressVideo;->y:Z

    .line 10
    .line 11
    iput p1, p0, Lcom/mycompany/app/view/MyProgressVideo;->E:F

    .line 12
    .line 13
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyProgressVideo;->i:Z

    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    :goto_0
    return-void

    .line 18
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/view/MyProgressVideo;->D:Ljava/lang/Runnable;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private setTouchUp(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mycompany/app/view/MyProgressVideo;->H:F

    .line 2
    .line 3
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyProgressVideo;->i:Z

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/view/MyProgressVideo;->G:Ljava/lang/Runnable;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 2

    .line 1
    iput p1, p0, Lcom/mycompany/app/view/MyProgressVideo;->n:I

    .line 2
    .line 3
    if-gez p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/mycompany/app/view/MyProgressVideo;->n:I

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget v0, p0, Lcom/mycompany/app/view/MyProgressVideo;->f:I

    .line 10
    .line 11
    if-le p1, v0, :cond_1

    .line 12
    .line 13
    iput v0, p0, Lcom/mycompany/app/view/MyProgressVideo;->n:I

    .line 14
    .line 15
    :cond_1
    :goto_0
    iget p1, p0, Lcom/mycompany/app/view/MyProgressVideo;->n:I

    .line 16
    .line 17
    if-nez p1, :cond_2

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/mycompany/app/view/MyProgressVideo;->u:F

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_2
    iget v0, p0, Lcom/mycompany/app/view/MyProgressVideo;->f:I

    .line 24
    .line 25
    if-ne p1, v0, :cond_3

    .line 26
    .line 27
    iget v0, p0, Lcom/mycompany/app/view/MyProgressVideo;->t:F

    .line 28
    .line 29
    iput v0, p0, Lcom/mycompany/app/view/MyProgressVideo;->u:F

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_3
    int-to-float v0, p1

    .line 33
    iget v1, p0, Lcom/mycompany/app/view/MyProgressVideo;->w:F

    .line 34
    .line 35
    mul-float/2addr v0, v1

    .line 36
    iput v0, p0, Lcom/mycompany/app/view/MyProgressVideo;->u:F

    .line 37
    .line 38
    :goto_1
    iget v0, p0, Lcom/mycompany/app/view/MyProgressVideo;->u:F

    .line 39
    .line 40
    iput v0, p0, Lcom/mycompany/app/view/MyProgressVideo;->v:F

    .line 41
    .line 42
    iget v1, p0, Lcom/mycompany/app/view/MyProgressVideo;->s:F

    .line 43
    .line 44
    cmpl-float v0, v0, v1

    .line 45
    .line 46
    if-lez v0, :cond_4

    .line 47
    .line 48
    iput v1, p0, Lcom/mycompany/app/view/MyProgressVideo;->v:F

    .line 49
    .line 50
    :cond_4
    return p1
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyProgressVideo;->j:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v1, p0, Lcom/mycompany/app/view/MyProgressVideo;->c:I

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    add-int/2addr v1, v2

    .line 10
    iput v1, p0, Lcom/mycompany/app/view/MyProgressVideo;->f:I

    .line 11
    .line 12
    const/high16 v1, 0x40000000    # 2.0f

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput v0, p0, Lcom/mycompany/app/view/MyProgressVideo;->g:I

    .line 23
    .line 24
    mul-int/lit8 v0, v0, 0x2

    .line 25
    .line 26
    iput v0, p0, Lcom/mycompany/app/view/MyProgressVideo;->h:I

    .line 27
    .line 28
    new-instance v0, Landroid/graphics/Paint;

    .line 29
    .line 30
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/mycompany/app/view/MyProgressVideo;->o:Landroid/graphics/Paint;

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/mycompany/app/view/MyProgressVideo;->o:Landroid/graphics/Paint;

    .line 39
    .line 40
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/mycompany/app/view/MyProgressVideo;->o:Landroid/graphics/Paint;

    .line 46
    .line 47
    iget v1, p0, Lcom/mycompany/app/view/MyProgressVideo;->g:I

    .line 48
    .line 49
    int-to-float v1, v1

    .line 50
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/mycompany/app/view/MyProgressVideo;->o:Landroid/graphics/Paint;

    .line 54
    .line 55
    const/4 v1, -0x1

    .line 56
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    .line 58
    .line 59
    new-instance v0, Landroid/graphics/Paint;

    .line 60
    .line 61
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lcom/mycompany/app/view/MyProgressVideo;->p:Landroid/graphics/Paint;

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/mycompany/app/view/MyProgressVideo;->p:Landroid/graphics/Paint;

    .line 70
    .line 71
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/mycompany/app/view/MyProgressVideo;->p:Landroid/graphics/Paint;

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    .line 80
    .line 81
    iget v0, p0, Lcom/mycompany/app/view/MyProgressVideo;->n:I

    .line 82
    .line 83
    const/4 v1, 0x0

    .line 84
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/view/MyProgressVideo;->f(IZ)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public final c(Landroid/content/Context;ILcom/mycompany/app/view/MyProgressVideo$ProgVideoListener;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyProgressVideo;->i:Z

    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyProgressVideo;->j:Landroid/content/Context;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/view/MyProgressVideo;->k:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mycompany/app/view/MyProgressVideo;->l:Lcom/mycompany/app/view/MyProgressVideo$ProgVideoListener;

    .line 9
    .line 10
    new-instance p2, Lcom/mycompany/app/view/MyProgressVideo$1;

    .line 11
    .line 12
    invoke-direct {p2, p0}, Lcom/mycompany/app/view/MyProgressVideo$1;-><init>(Lcom/mycompany/app/view/MyProgressVideo;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final d(II)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/mycompany/app/view/MyProgressVideo;->q:I

    .line 2
    .line 3
    iput p2, p0, Lcom/mycompany/app/view/MyProgressVideo;->r:I

    .line 4
    .line 5
    iget v0, p0, Lcom/mycompany/app/view/MyProgressVideo;->k:I

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget p2, p0, Lcom/mycompany/app/view/MyProgressVideo;->h:I

    .line 11
    .line 12
    sub-int/2addr p1, p2

    .line 13
    int-to-float p1, p1

    .line 14
    iput p1, p0, Lcom/mycompany/app/view/MyProgressVideo;->s:F

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget p1, p0, Lcom/mycompany/app/view/MyProgressVideo;->h:I

    .line 18
    .line 19
    sub-int/2addr p2, p1

    .line 20
    int-to-float p1, p2

    .line 21
    iput p1, p0, Lcom/mycompany/app/view/MyProgressVideo;->s:F

    .line 22
    .line 23
    :goto_0
    iget p1, p0, Lcom/mycompany/app/view/MyProgressVideo;->f:I

    .line 24
    .line 25
    const/4 p2, 0x2

    .line 26
    if-ge p1, p2, :cond_1

    .line 27
    .line 28
    iput p2, p0, Lcom/mycompany/app/view/MyProgressVideo;->f:I

    .line 29
    .line 30
    :cond_1
    iget p1, p0, Lcom/mycompany/app/view/MyProgressVideo;->s:F

    .line 31
    .line 32
    iget p2, p0, Lcom/mycompany/app/view/MyProgressVideo;->f:I

    .line 33
    .line 34
    add-int/lit8 p2, p2, -0x1

    .line 35
    .line 36
    int-to-float p2, p2

    .line 37
    div-float p2, p1, p2

    .line 38
    .line 39
    iput p2, p0, Lcom/mycompany/app/view/MyProgressVideo;->w:F

    .line 40
    .line 41
    add-float/2addr p1, p2

    .line 42
    iput p1, p0, Lcom/mycompany/app/view/MyProgressVideo;->t:F

    .line 43
    .line 44
    iget p1, p0, Lcom/mycompany/app/view/MyProgressVideo;->n:I

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyProgressVideo;->a(I)I

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyProgressVideo;->y:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyProgressVideo;->z:Z

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/mycompany/app/pref/PrefVideo;->r(Landroid/content/Context;)Lcom/mycompany/app/pref/PrefVideo;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "mUserBright3"

    .line 18
    .line 19
    sget-boolean v2, Lcom/mycompany/app/pref/PrefVideo;->u:Z

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    const-string v1, "mBright3"

    .line 25
    .line 26
    sget v2, Lcom/mycompany/app/pref/PrefVideo;->v:I

    .line 27
    .line 28
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final f(IZ)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyProgressVideo;->a(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget v0, p0, Lcom/mycompany/app/view/MyProgressVideo;->c:I

    .line 6
    .line 7
    if-le p1, v0, :cond_0

    .line 8
    .line 9
    move p1, v0

    .line 10
    :cond_0
    iget v0, p0, Lcom/mycompany/app/view/MyProgressVideo;->k:I

    .line 11
    .line 12
    if-eqz p2, :cond_4

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x1

    .line 16
    if-ne v0, v2, :cond_3

    .line 17
    .line 18
    if-gez p1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/16 v1, 0x64

    .line 22
    .line 23
    if-le p1, v1, :cond_2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    move v1, p1

    .line 27
    :goto_0
    sput-boolean v2, Lcom/mycompany/app/pref/PrefVideo;->u:Z

    .line 28
    .line 29
    sput v1, Lcom/mycompany/app/pref/PrefVideo;->v:I

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyProgressVideo;->e()V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_3
    const/4 v2, 0x2

    .line 36
    if-ne v0, v2, :cond_4

    .line 37
    .line 38
    iget-object v0, p0, Lcom/mycompany/app/view/MyProgressVideo;->m:Landroid/media/AudioManager;

    .line 39
    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    const/4 v2, 0x3

    .line 43
    invoke-virtual {v0, v2, p1, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 44
    .line 45
    .line 46
    :cond_4
    :goto_1
    iput p1, p0, Lcom/mycompany/app/view/MyProgressVideo;->B:I

    .line 47
    .line 48
    iput-boolean p2, p0, Lcom/mycompany/app/view/MyProgressVideo;->C:Z

    .line 49
    .line 50
    iget-object p1, p0, Lcom/mycompany/app/view/MyProgressVideo;->l:Lcom/mycompany/app/view/MyProgressVideo$ProgVideoListener;

    .line 51
    .line 52
    if-nez p1, :cond_5

    .line 53
    .line 54
    return-void

    .line 55
    :cond_5
    new-instance p1, Lcom/mycompany/app/view/MyProgressVideo$3;

    .line 56
    .line 57
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyProgressVideo$3;-><init>(Lcom/mycompany/app/view/MyProgressVideo;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final g(Landroid/view/MotionEvent;F)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    if-eq p1, v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-direct {p0, p2}, Lcom/mycompany/app/view/MyProgressVideo;->setTouchUp(F)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    invoke-direct {p0, p2}, Lcom/mycompany/app/view/MyProgressVideo;->setTouchMove(F)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public getMaxSize()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyProgressVideo;->t:F

    .line 2
    .line 3
    return v0
.end method

.method public getProgress()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyProgressVideo;->n:I

    .line 2
    .line 3
    if-gez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    iget v1, p0, Lcom/mycompany/app/view/MyProgressVideo;->c:I

    .line 8
    .line 9
    if-le v0, v1, :cond_1

    .line 10
    .line 11
    return v1

    .line 12
    :cond_1
    return v0
.end method

.method public getSize()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyProgressVideo;->u:F

    .line 2
    .line 3
    return v0
.end method

.method public final h()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyProgressVideo;->invalidate()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyProgressVideo;->y:Z

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyProgressVideo;->z:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyProgressVideo;->z:Z

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyProgressVideo;->e()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyProgressVideo;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyProgressVideo;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyProgressVideo;->o:Landroid/graphics/Paint;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    const/high16 v0, -0x5f000000

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 14
    .line 15
    .line 16
    iget v0, p0, Lcom/mycompany/app/view/MyProgressVideo;->q:I

    .line 17
    .line 18
    int-to-float v4, v0

    .line 19
    iget v0, p0, Lcom/mycompany/app/view/MyProgressVideo;->r:I

    .line 20
    .line 21
    int-to-float v5, v0

    .line 22
    iget-object v6, p0, Lcom/mycompany/app/view/MyProgressVideo;->o:Landroid/graphics/Paint;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x0

    .line 26
    move-object v1, p1

    .line 27
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 28
    .line 29
    .line 30
    move-object v7, v1

    .line 31
    iget-object v12, p0, Lcom/mycompany/app/view/MyProgressVideo;->p:Landroid/graphics/Paint;

    .line 32
    .line 33
    if-nez v12, :cond_2

    .line 34
    .line 35
    :goto_0
    return-void

    .line 36
    :cond_2
    iget p1, p0, Lcom/mycompany/app/view/MyProgressVideo;->k:I

    .line 37
    .line 38
    const/4 v0, 0x3

    .line 39
    if-ne p1, v0, :cond_3

    .line 40
    .line 41
    iget p1, p0, Lcom/mycompany/app/view/MyProgressVideo;->g:I

    .line 42
    .line 43
    int-to-float v8, p1

    .line 44
    iget v0, p0, Lcom/mycompany/app/view/MyProgressVideo;->v:F

    .line 45
    .line 46
    add-float v10, v8, v0

    .line 47
    .line 48
    iget v0, p0, Lcom/mycompany/app/view/MyProgressVideo;->r:I

    .line 49
    .line 50
    sub-int/2addr v0, p1

    .line 51
    int-to-float v11, v0

    .line 52
    move v9, v8

    .line 53
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_3
    iget p1, p0, Lcom/mycompany/app/view/MyProgressVideo;->g:I

    .line 58
    .line 59
    int-to-float v8, p1

    .line 60
    iget v0, p0, Lcom/mycompany/app/view/MyProgressVideo;->r:I

    .line 61
    .line 62
    sub-int/2addr v0, p1

    .line 63
    int-to-float v11, v0

    .line 64
    iget v0, p0, Lcom/mycompany/app/view/MyProgressVideo;->v:F

    .line 65
    .line 66
    sub-float v9, v11, v0

    .line 67
    .line 68
    iget v0, p0, Lcom/mycompany/app/view/MyProgressVideo;->q:I

    .line 69
    .line 70
    sub-int/2addr v0, p1

    .line 71
    int-to-float v10, v0

    .line 72
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/mycompany/app/view/MyProgressVideo;->d(II)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
