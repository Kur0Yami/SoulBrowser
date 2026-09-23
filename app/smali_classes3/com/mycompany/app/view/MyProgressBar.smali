.class public Lcom/mycompany/app/view/MyProgressBar;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/view/MyProgressBar$MyProgressListener;
    }
.end annotation


# instance fields
.field public A:Z

.field public B:Z

.field public C:Lcom/mycompany/app/view/MyProgressBar$MyProgressListener;

.field public D:Lcom/mycompany/app/quick/QuickView;

.field public E:I

.field public final F:Ljava/lang/Runnable;

.field public final G:Ljava/lang/Runnable;

.field public H:Z

.field public I:F

.field public J:Z

.field public final K:Ljava/lang/Runnable;

.field public c:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:Landroid/graphics/Paint;

.field public n:Landroid/graphics/Paint;

.field public o:I

.field public p:I

.field public q:I

.field public r:F

.field public s:F

.field public t:F

.field public u:Z

.field public v:Z

.field public w:Landroid/animation/ValueAnimator;

.field public x:Landroid/animation/ValueAnimator;

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/mycompany/app/view/MyProgressBar$1;

    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyProgressBar$1;-><init>(Lcom/mycompany/app/view/MyProgressBar;)V

    iput-object v0, p0, Lcom/mycompany/app/view/MyProgressBar;->F:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Lcom/mycompany/app/view/MyProgressBar$2;

    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyProgressBar$2;-><init>(Lcom/mycompany/app/view/MyProgressBar;)V

    iput-object v0, p0, Lcom/mycompany/app/view/MyProgressBar;->G:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Lcom/mycompany/app/view/MyProgressBar$4;

    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyProgressBar$4;-><init>(Lcom/mycompany/app/view/MyProgressBar;)V

    iput-object v0, p0, Lcom/mycompany/app/view/MyProgressBar;->K:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/view/MyProgressBar;->c(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 7
    new-instance p2, Lcom/mycompany/app/view/MyProgressBar$1;

    invoke-direct {p2, p0}, Lcom/mycompany/app/view/MyProgressBar$1;-><init>(Lcom/mycompany/app/view/MyProgressBar;)V

    iput-object p2, p0, Lcom/mycompany/app/view/MyProgressBar;->F:Ljava/lang/Runnable;

    .line 8
    new-instance p2, Lcom/mycompany/app/view/MyProgressBar$2;

    invoke-direct {p2, p0}, Lcom/mycompany/app/view/MyProgressBar$2;-><init>(Lcom/mycompany/app/view/MyProgressBar;)V

    iput-object p2, p0, Lcom/mycompany/app/view/MyProgressBar;->G:Ljava/lang/Runnable;

    .line 9
    new-instance p2, Lcom/mycompany/app/view/MyProgressBar$4;

    invoke-direct {p2, p0}, Lcom/mycompany/app/view/MyProgressBar$4;-><init>(Lcom/mycompany/app/view/MyProgressBar;)V

    iput-object p2, p0, Lcom/mycompany/app/view/MyProgressBar;->K:Ljava/lang/Runnable;

    const/4 p2, 0x1

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/mycompany/app/view/MyProgressBar;->c(Landroid/content/Context;Z)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/mycompany/app/view/MyProgressBar;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyProgressBar;->setValAnimLoop(F)V

    return-void
.end method

.method private setProgress2(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/mycompany/app/view/MyProgressBar;->r:F

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    cmpg-float v1, p1, v0

    .line 5
    .line 6
    if-gez v1, :cond_0

    .line 7
    .line 8
    iput v0, p0, Lcom/mycompany/app/view/MyProgressBar;->r:F

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget v0, p0, Lcom/mycompany/app/view/MyProgressBar;->p:I

    .line 12
    .line 13
    int-to-float v1, v0

    .line 14
    cmpl-float p1, p1, v1

    .line 15
    .line 16
    if-lez p1, :cond_1

    .line 17
    .line 18
    int-to-float p1, v0

    .line 19
    iput p1, p0, Lcom/mycompany/app/view/MyProgressBar;->r:F

    .line 20
    .line 21
    :cond_1
    :goto_0
    iget p1, p0, Lcom/mycompany/app/view/MyProgressBar;->r:F

    .line 22
    .line 23
    iget v0, p0, Lcom/mycompany/app/view/MyProgressBar;->s:F

    .line 24
    .line 25
    mul-float/2addr p1, v0

    .line 26
    iput p1, p0, Lcom/mycompany/app/view/MyProgressBar;->t:F

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyProgressBar;->invalidate()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private setValAnimLoop(F)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyProgressBar;->H:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/view/MyProgressBar;->w:Landroid/animation/ValueAnimator;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyProgressBar;->y:F

    .line 11
    .line 12
    iget v0, p0, Lcom/mycompany/app/view/MyProgressBar;->o:I

    .line 13
    .line 14
    div-int/lit8 v0, v0, 0x2

    .line 15
    .line 16
    int-to-float v0, v0

    .line 17
    cmpl-float p1, p1, v0

    .line 18
    .line 19
    if-ltz p1, :cond_3

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyProgressBar;->j(Z)V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/view/MyProgressBar;->x:Landroid/animation/ValueAnimator;

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    :goto_0
    return-void

    .line 31
    :cond_2
    iput p1, p0, Lcom/mycompany/app/view/MyProgressBar;->z:F

    .line 32
    .line 33
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyProgressBar;->invalidate()V

    .line 34
    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyProgressBar;->w:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/mycompany/app/view/MyProgressBar;->w:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyProgressBar;->x:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/view/MyProgressBar;->x:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/mycompany/app/view/MyProgressBar;->y:F

    .line 22
    .line 23
    iput v0, p0, Lcom/mycompany/app/view/MyProgressBar;->z:F

    .line 24
    .line 25
    return-void
.end method

.method public final c(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->O5(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyProgressBar;->c:Z

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyProgressBar;->f:Z

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyProgressBar;->g:Z

    .line 14
    .line 15
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyProgressBar;->h:Z

    .line 16
    .line 17
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyProgressBar;->B:Z

    .line 18
    .line 19
    sget p2, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 20
    .line 21
    div-int/lit8 p2, p2, 0x2

    .line 22
    .line 23
    iput p2, p0, Lcom/mycompany/app/view/MyProgressBar;->l:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iput v0, p0, Lcom/mycompany/app/view/MyProgressBar;->j:I

    .line 27
    .line 28
    sget p2, Lcom/mycompany/app/main/MainApp;->x1:I

    .line 29
    .line 30
    iput p2, p0, Lcom/mycompany/app/view/MyProgressBar;->l:I

    .line 31
    .line 32
    :goto_0
    iput v0, p0, Lcom/mycompany/app/view/MyProgressBar;->k:I

    .line 33
    .line 34
    const/16 p2, 0x64

    .line 35
    .line 36
    iput p2, p0, Lcom/mycompany/app/view/MyProgressBar;->p:I

    .line 37
    .line 38
    iget p2, p0, Lcom/mycompany/app/view/MyProgressBar;->j:I

    .line 39
    .line 40
    iput p2, p0, Lcom/mycompany/app/view/MyProgressBar;->i:I

    .line 41
    .line 42
    new-instance p2, Landroid/graphics/Paint;

    .line 43
    .line 44
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object p2, p0, Lcom/mycompany/app/view/MyProgressBar;->m:Landroid/graphics/Paint;

    .line 48
    .line 49
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 50
    .line 51
    .line 52
    iget-object p2, p0, Lcom/mycompany/app/view/MyProgressBar;->m:Landroid/graphics/Paint;

    .line 53
    .line 54
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 55
    .line 56
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    .line 58
    .line 59
    iget-boolean p2, p0, Lcom/mycompany/app/view/MyProgressBar;->g:Z

    .line 60
    .line 61
    if-eqz p2, :cond_2

    .line 62
    .line 63
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 64
    .line 65
    if-eqz p1, :cond_1

    .line 66
    .line 67
    const p1, -0x37000001

    .line 68
    .line 69
    .line 70
    iput p1, p0, Lcom/mycompany/app/view/MyProgressBar;->j:I

    .line 71
    .line 72
    iget-object p2, p0, Lcom/mycompany/app/view/MyProgressBar;->m:Landroid/graphics/Paint;

    .line 73
    .line 74
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/view/MyProgressBar;->m:Landroid/graphics/Paint;

    .line 79
    .line 80
    iget p2, p0, Lcom/mycompany/app/view/MyProgressBar;->j:I

    .line 81
    .line 82
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_2
    new-instance p2, Landroid/graphics/Paint;

    .line 87
    .line 88
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 89
    .line 90
    .line 91
    iput-object p2, p0, Lcom/mycompany/app/view/MyProgressBar;->n:Landroid/graphics/Paint;

    .line 92
    .line 93
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/mycompany/app/view/MyProgressBar;->n:Landroid/graphics/Paint;

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 99
    .line 100
    .line 101
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 102
    .line 103
    const/16 p2, 0xc8

    .line 104
    .line 105
    if-eqz p1, :cond_3

    .line 106
    .line 107
    const p1, -0x50506

    .line 108
    .line 109
    .line 110
    iput p1, p0, Lcom/mycompany/app/view/MyProgressBar;->j:I

    .line 111
    .line 112
    const v0, -0xc0c0c1

    .line 113
    .line 114
    .line 115
    iput v0, p0, Lcom/mycompany/app/view/MyProgressBar;->k:I

    .line 116
    .line 117
    iget-object v0, p0, Lcom/mycompany/app/view/MyProgressBar;->m:Landroid/graphics/Paint;

    .line 118
    .line 119
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lcom/mycompany/app/view/MyProgressBar;->m:Landroid/graphics/Paint;

    .line 123
    .line 124
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lcom/mycompany/app/view/MyProgressBar;->n:Landroid/graphics/Paint;

    .line 128
    .line 129
    iget p2, p0, Lcom/mycompany/app/view/MyProgressBar;->k:I

    .line 130
    .line 131
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :cond_3
    const p1, -0xc6b655

    .line 136
    .line 137
    .line 138
    iput p1, p0, Lcom/mycompany/app/view/MyProgressBar;->j:I

    .line 139
    .line 140
    const v0, -0x131314

    .line 141
    .line 142
    .line 143
    iput v0, p0, Lcom/mycompany/app/view/MyProgressBar;->k:I

    .line 144
    .line 145
    iget-object v0, p0, Lcom/mycompany/app/view/MyProgressBar;->m:Landroid/graphics/Paint;

    .line 146
    .line 147
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 148
    .line 149
    .line 150
    iget-object p1, p0, Lcom/mycompany/app/view/MyProgressBar;->m:Landroid/graphics/Paint;

    .line 151
    .line 152
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 153
    .line 154
    .line 155
    iget-object p1, p0, Lcom/mycompany/app/view/MyProgressBar;->n:Landroid/graphics/Paint;

    .line 156
    .line 157
    iget p2, p0, Lcom/mycompany/app/view/MyProgressBar;->k:I

    .line 158
    .line 159
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 160
    .line 161
    .line 162
    return-void
.end method

.method public final d(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyProgressBar;->g:Z

    .line 3
    .line 4
    const v1, -0xc6b655

    .line 5
    .line 6
    .line 7
    iput v1, p0, Lcom/mycompany/app/view/MyProgressBar;->j:I

    .line 8
    .line 9
    iput p1, p0, Lcom/mycompany/app/view/MyProgressBar;->l:I

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyProgressBar;->B:Z

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/mycompany/app/view/MyProgressBar;->k:I

    .line 15
    .line 16
    iput v1, p0, Lcom/mycompany/app/view/MyProgressBar;->i:I

    .line 17
    .line 18
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    const p1, -0x37000001

    .line 23
    .line 24
    .line 25
    iput p1, p0, Lcom/mycompany/app/view/MyProgressBar;->j:I

    .line 26
    .line 27
    iget-object v0, p0, Lcom/mycompany/app/view/MyProgressBar;->m:Landroid/graphics/Paint;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/view/MyProgressBar;->m:Landroid/graphics/Paint;

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    .line 37
    .line 38
    :goto_0
    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/mycompany/app/view/MyProgressBar;->n:Landroid/graphics/Paint;

    .line 40
    .line 41
    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyProgressBar;->B:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyProgressBar;->A:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/mycompany/app/view/MyProgressBar;->C:Lcom/mycompany/app/view/MyProgressBar$MyProgressListener;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lcom/mycompany/app/view/MyProgressBar;->r:F

    .line 11
    .line 12
    iput v1, p0, Lcom/mycompany/app/view/MyProgressBar;->t:F

    .line 13
    .line 14
    invoke-super {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyProgressBar;->f:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyProgressBar;->b()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/mycompany/app/view/MyProgressBar;->m:Landroid/graphics/Paint;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/mycompany/app/view/MyProgressBar;->n:Landroid/graphics/Paint;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/mycompany/app/view/MyProgressBar;->C:Lcom/mycompany/app/view/MyProgressBar$MyProgressListener;

    .line 13
    .line 14
    return-void
.end method

.method public final g(II)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyProgressBar;->g:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const v0, -0xc6b655

    .line 10
    .line 11
    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    const p1, -0x50506

    .line 15
    .line 16
    .line 17
    :cond_0
    iget v0, p0, Lcom/mycompany/app/view/MyProgressBar;->j:I

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x1

    .line 21
    if-eq v0, p1, :cond_3

    .line 22
    .line 23
    iput p1, p0, Lcom/mycompany/app/view/MyProgressBar;->j:I

    .line 24
    .line 25
    iget-object p1, p0, Lcom/mycompany/app/view/MyProgressBar;->m:Landroid/graphics/Paint;

    .line 26
    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    new-instance p1, Landroid/graphics/Paint;

    .line 30
    .line 31
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/mycompany/app/view/MyProgressBar;->m:Landroid/graphics/Paint;

    .line 35
    .line 36
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/mycompany/app/view/MyProgressBar;->m:Landroid/graphics/Paint;

    .line 40
    .line 41
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/view/MyProgressBar;->m:Landroid/graphics/Paint;

    .line 47
    .line 48
    iget v0, p0, Lcom/mycompany/app/view/MyProgressBar;->j:I

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    .line 52
    .line 53
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyProgressBar;->g:Z

    .line 54
    .line 55
    if-nez p1, :cond_2

    .line 56
    .line 57
    iget-object p1, p0, Lcom/mycompany/app/view/MyProgressBar;->m:Landroid/graphics/Paint;

    .line 58
    .line 59
    const/16 v0, 0xc8

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 62
    .line 63
    .line 64
    :cond_2
    move p1, v2

    .line 65
    goto :goto_0

    .line 66
    :cond_3
    move p1, v1

    .line 67
    :goto_0
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyProgressBar;->g:Z

    .line 68
    .line 69
    if-eqz v0, :cond_7

    .line 70
    .line 71
    iget v0, p0, Lcom/mycompany/app/view/MyProgressBar;->k:I

    .line 72
    .line 73
    if-eq v0, p2, :cond_7

    .line 74
    .line 75
    iput p2, p0, Lcom/mycompany/app/view/MyProgressBar;->k:I

    .line 76
    .line 77
    iget-object p1, p0, Lcom/mycompany/app/view/MyProgressBar;->n:Landroid/graphics/Paint;

    .line 78
    .line 79
    if-nez p1, :cond_4

    .line 80
    .line 81
    new-instance p1, Landroid/graphics/Paint;

    .line 82
    .line 83
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object p1, p0, Lcom/mycompany/app/view/MyProgressBar;->n:Landroid/graphics/Paint;

    .line 87
    .line 88
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/mycompany/app/view/MyProgressBar;->n:Landroid/graphics/Paint;

    .line 92
    .line 93
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 94
    .line 95
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    .line 97
    .line 98
    :cond_4
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyProgressBar;->h:Z

    .line 99
    .line 100
    if-eqz p1, :cond_6

    .line 101
    .line 102
    iget p1, p0, Lcom/mycompany/app/view/MyProgressBar;->k:I

    .line 103
    .line 104
    if-eqz p1, :cond_8

    .line 105
    .line 106
    iget-object p2, p0, Lcom/mycompany/app/view/MyProgressBar;->n:Landroid/graphics/Paint;

    .line 107
    .line 108
    if-nez p2, :cond_5

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_5
    filled-new-array {p1, p1, v1}, [I

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    const/4 p1, 0x3

    .line 116
    new-array v9, p1, [F

    .line 117
    .line 118
    fill-array-data v9, :array_0

    .line 119
    .line 120
    .line 121
    new-instance v3, Landroid/graphics/LinearGradient;

    .line 122
    .line 123
    sget p1, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 124
    .line 125
    int-to-float v7, p1

    .line 126
    sget-object v10, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 127
    .line 128
    const/4 v4, 0x0

    .line 129
    const/4 v5, 0x0

    .line 130
    const/4 v6, 0x0

    .line 131
    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_6
    iget-object p1, p0, Lcom/mycompany/app/view/MyProgressBar;->n:Landroid/graphics/Paint;

    .line 139
    .line 140
    iget p2, p0, Lcom/mycompany/app/view/MyProgressBar;->k:I

    .line 141
    .line 142
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_7
    move v2, p1

    .line 147
    :cond_8
    :goto_1
    if-eqz v2, :cond_9

    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyProgressBar;->invalidate()V

    .line 150
    .line 151
    .line 152
    :cond_9
    return-void

    .line 153
    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getMax()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyProgressBar;->p:I

    .line 2
    .line 3
    return v0
.end method

.method public getProgress()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyProgressBar;->r:F

    .line 2
    .line 3
    return v0
.end method

.method public final h(ZZ)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyProgressBar;->u:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyProgressBar;->v:Z

    .line 6
    .line 7
    if-ne v0, p2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyProgressBar;->u:Z

    .line 11
    .line 12
    iput-boolean p2, p0, Lcom/mycompany/app/view/MyProgressBar;->v:Z

    .line 13
    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyProgressBar;->j(Z)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyProgressBar;->b()V

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyProgressBar;->invalidate()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final i(Lcom/mycompany/app/quick/QuickView;I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyProgressBar;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    if-nez p2, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    iput p2, p0, Lcom/mycompany/app/view/MyProgressBar;->E:I

    .line 10
    .line 11
    iget v0, p0, Lcom/mycompany/app/view/MyProgressBar;->r:F

    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-lt v0, p2, :cond_2

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    int-to-float p2, v0

    .line 23
    invoke-virtual {p0, p2}, Lcom/mycompany/app/view/MyProgressBar;->setProgress(F)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/mycompany/app/view/MyProgressBar;->F:Ljava/lang/Runnable;

    .line 27
    .line 28
    if-eqz p2, :cond_3

    .line 29
    .line 30
    iput-object p1, p0, Lcom/mycompany/app/view/MyProgressBar;->D:Lcom/mycompany/app/quick/QuickView;

    .line 31
    .line 32
    invoke-virtual {p0, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    :cond_3
    :goto_0
    return-void
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyProgressBar;->f:Z

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

.method public final j(Z)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyProgressBar;->o:I

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
    iget-object v1, p0, Lcom/mycompany/app/view/MyProgressBar;->w:Landroid/animation/ValueAnimator;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/view/MyProgressBar;->x:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    :goto_0
    if-eqz v1, :cond_2

    .line 14
    .line 15
    :goto_1
    return-void

    .line 16
    :cond_2
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyProgressBar;->H:Z

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput v1, p0, Lcom/mycompany/app/view/MyProgressBar;->I:F

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    iput-boolean v2, p0, Lcom/mycompany/app/view/MyProgressBar;->J:Z

    .line 23
    .line 24
    int-to-float v0, v0

    .line 25
    const/4 v3, 0x2

    .line 26
    new-array v3, v3, [F

    .line 27
    .line 28
    aput v1, v3, v2

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    aput v0, v3, v2

    .line 32
    .line 33
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    iput-object v0, p0, Lcom/mycompany/app/view/MyProgressBar;->w:Landroid/animation/ValueAnimator;

    .line 40
    .line 41
    iput v1, p0, Lcom/mycompany/app/view/MyProgressBar;->y:F

    .line 42
    .line 43
    iput v1, p0, Lcom/mycompany/app/view/MyProgressBar;->z:F

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_3
    iput-object v0, p0, Lcom/mycompany/app/view/MyProgressBar;->x:Landroid/animation/ValueAnimator;

    .line 47
    .line 48
    :goto_2
    const-wide/16 v3, 0x3e8

    .line 49
    .line 50
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 51
    .line 52
    .line 53
    if-eqz p1, :cond_4

    .line 54
    .line 55
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    .line 56
    .line 57
    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 58
    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_4
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    .line 62
    .line 63
    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 64
    .line 65
    .line 66
    :goto_3
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 70
    .line 71
    .line 72
    const/4 p1, -0x1

    .line 73
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 74
    .line 75
    .line 76
    new-instance p1, Lcom/mycompany/app/view/MyProgressBar$3;

    .line 77
    .line 78
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyProgressBar$3;-><init>(Lcom/mycompany/app/view/MyProgressBar;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public final k(ZILcom/mycompany/app/view/MyProgressBar$MyProgressListener;)V
    .locals 3

    .line 1
    iput p2, p0, Lcom/mycompany/app/view/MyProgressBar;->q:I

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iget-object p1, p0, Lcom/mycompany/app/view/MyProgressBar;->C:Lcom/mycompany/app/view/MyProgressBar$MyProgressListener;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyProgressBar;->A:Z

    .line 13
    .line 14
    iput-object p3, p0, Lcom/mycompany/app/view/MyProgressBar;->C:Lcom/mycompany/app/view/MyProgressBar$MyProgressListener;

    .line 15
    .line 16
    iput p2, p0, Lcom/mycompany/app/view/MyProgressBar;->r:F

    .line 17
    .line 18
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/view/MyProgressBar;->C:Lcom/mycompany/app/view/MyProgressBar$MyProgressListener;

    .line 19
    .line 20
    const/4 p3, 0x0

    .line 21
    if-nez p1, :cond_2

    .line 22
    .line 23
    iput-boolean p3, p0, Lcom/mycompany/app/view/MyProgressBar;->A:Z

    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    iget v1, p0, Lcom/mycompany/app/view/MyProgressBar;->r:F

    .line 27
    .line 28
    const/high16 v2, 0x42c80000    # 100.0f

    .line 29
    .line 30
    cmpl-float v1, v1, v2

    .line 31
    .line 32
    if-ltz v1, :cond_5

    .line 33
    .line 34
    invoke-interface {p1}, Lcom/mycompany/app/view/MyProgressBar$MyProgressListener;->c()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_4

    .line 39
    .line 40
    iput-boolean p3, p0, Lcom/mycompany/app/view/MyProgressBar;->A:Z

    .line 41
    .line 42
    iget-object p1, p0, Lcom/mycompany/app/view/MyProgressBar;->C:Lcom/mycompany/app/view/MyProgressBar$MyProgressListener;

    .line 43
    .line 44
    if-nez p1, :cond_3

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    invoke-interface {p1}, Lcom/mycompany/app/view/MyProgressBar$MyProgressListener;->a()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyProgressBar;->setSkipDraw(Z)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_4
    iput p2, p0, Lcom/mycompany/app/view/MyProgressBar;->r:F

    .line 55
    .line 56
    :cond_5
    iget-object p1, p0, Lcom/mycompany/app/view/MyProgressBar;->C:Lcom/mycompany/app/view/MyProgressBar$MyProgressListener;

    .line 57
    .line 58
    invoke-interface {p1}, Lcom/mycompany/app/view/MyProgressBar$MyProgressListener;->b()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_6

    .line 63
    .line 64
    int-to-float p1, p1

    .line 65
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyProgressBar;->setProgress2(F)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_6
    iget p1, p0, Lcom/mycompany/app/view/MyProgressBar;->r:F

    .line 70
    .line 71
    iget p2, p0, Lcom/mycompany/app/view/MyProgressBar;->q:I

    .line 72
    .line 73
    int-to-float p2, p2

    .line 74
    add-float/2addr p1, p2

    .line 75
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyProgressBar;->setProgress2(F)V

    .line 76
    .line 77
    .line 78
    :goto_0
    invoke-virtual {p0, p3}, Lcom/mycompany/app/view/MyProgressBar;->setSkipDraw(Z)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/mycompany/app/view/MyProgressBar;->G:Ljava/lang/Runnable;

    .line 82
    .line 83
    if-eqz p1, :cond_7

    .line 84
    .line 85
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 89
    .line 90
    .line 91
    :cond_7
    :goto_1
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/view/MyProgressBar;->f:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_7

    .line 8
    .line 9
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 10
    .line 11
    .line 12
    iget-boolean v1, v0, Lcom/mycompany/app/view/MyProgressBar;->B:Z

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    goto/16 :goto_7

    .line 17
    .line 18
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget-boolean v2, v0, Lcom/mycompany/app/view/MyProgressBar;->u:Z

    .line 23
    .line 24
    if-eqz v2, :cond_a

    .line 25
    .line 26
    iget-boolean v2, v0, Lcom/mycompany/app/view/MyProgressBar;->v:Z

    .line 27
    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyProgressBar;->j(Z)V

    .line 32
    .line 33
    .line 34
    :cond_2
    iget-boolean v2, v0, Lcom/mycompany/app/view/MyProgressBar;->c:Z

    .line 35
    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    int-to-float v2, v1

    .line 39
    iget v3, v0, Lcom/mycompany/app/view/MyProgressBar;->z:F

    .line 40
    .line 41
    sub-float v3, v2, v3

    .line 42
    .line 43
    iget v4, v0, Lcom/mycompany/app/view/MyProgressBar;->y:F

    .line 44
    .line 45
    sub-float/2addr v2, v4

    .line 46
    :goto_0
    move v5, v2

    .line 47
    goto :goto_1

    .line 48
    :cond_3
    iget v3, v0, Lcom/mycompany/app/view/MyProgressBar;->y:F

    .line 49
    .line 50
    iget v2, v0, Lcom/mycompany/app/view/MyProgressBar;->z:F

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :goto_1
    cmpl-float v2, v3, v5

    .line 54
    .line 55
    if-lez v2, :cond_6

    .line 56
    .line 57
    iget-object v9, v0, Lcom/mycompany/app/view/MyProgressBar;->n:Landroid/graphics/Paint;

    .line 58
    .line 59
    if-eqz v9, :cond_4

    .line 60
    .line 61
    iget v2, v0, Lcom/mycompany/app/view/MyProgressBar;->l:I

    .line 62
    .line 63
    int-to-float v8, v2

    .line 64
    move v7, v5

    .line 65
    const/4 v5, 0x0

    .line 66
    const/4 v6, 0x0

    .line 67
    move-object/from16 v4, p1

    .line 68
    .line 69
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_4
    move v7, v5

    .line 74
    :goto_2
    iget-object v9, v0, Lcom/mycompany/app/view/MyProgressBar;->m:Landroid/graphics/Paint;

    .line 75
    .line 76
    if-eqz v9, :cond_5

    .line 77
    .line 78
    iget v2, v0, Lcom/mycompany/app/view/MyProgressBar;->l:I

    .line 79
    .line 80
    int-to-float v8, v2

    .line 81
    const/4 v6, 0x0

    .line 82
    move-object/from16 v4, p1

    .line 83
    .line 84
    move v5, v7

    .line 85
    move v7, v3

    .line 86
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 87
    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_5
    move v7, v3

    .line 91
    :goto_3
    iget-object v11, v0, Lcom/mycompany/app/view/MyProgressBar;->n:Landroid/graphics/Paint;

    .line 92
    .line 93
    if-eqz v11, :cond_10

    .line 94
    .line 95
    int-to-float v9, v1

    .line 96
    iget v1, v0, Lcom/mycompany/app/view/MyProgressBar;->l:I

    .line 97
    .line 98
    int-to-float v10, v1

    .line 99
    const/4 v8, 0x0

    .line 100
    move-object/from16 v6, p1

    .line 101
    .line 102
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_6
    move v7, v3

    .line 107
    cmpg-float v2, v7, v5

    .line 108
    .line 109
    if-gez v2, :cond_9

    .line 110
    .line 111
    iget-object v11, v0, Lcom/mycompany/app/view/MyProgressBar;->m:Landroid/graphics/Paint;

    .line 112
    .line 113
    if-eqz v11, :cond_7

    .line 114
    .line 115
    iget v2, v0, Lcom/mycompany/app/view/MyProgressBar;->l:I

    .line 116
    .line 117
    int-to-float v10, v2

    .line 118
    move v9, v7

    .line 119
    const/4 v7, 0x0

    .line 120
    const/4 v8, 0x0

    .line 121
    move-object/from16 v6, p1

    .line 122
    .line 123
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 124
    .line 125
    .line 126
    move v7, v9

    .line 127
    :cond_7
    iget-object v9, v0, Lcom/mycompany/app/view/MyProgressBar;->n:Landroid/graphics/Paint;

    .line 128
    .line 129
    if-eqz v9, :cond_8

    .line 130
    .line 131
    iget v2, v0, Lcom/mycompany/app/view/MyProgressBar;->l:I

    .line 132
    .line 133
    int-to-float v8, v2

    .line 134
    const/4 v6, 0x0

    .line 135
    move v4, v7

    .line 136
    move v7, v5

    .line 137
    move v5, v4

    .line 138
    move-object/from16 v4, p1

    .line 139
    .line 140
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 141
    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_8
    move v7, v5

    .line 145
    :goto_4
    iget-object v9, v0, Lcom/mycompany/app/view/MyProgressBar;->m:Landroid/graphics/Paint;

    .line 146
    .line 147
    if-eqz v9, :cond_10

    .line 148
    .line 149
    move v5, v7

    .line 150
    int-to-float v7, v1

    .line 151
    iget v1, v0, Lcom/mycompany/app/view/MyProgressBar;->l:I

    .line 152
    .line 153
    int-to-float v8, v1

    .line 154
    const/4 v6, 0x0

    .line 155
    move-object/from16 v4, p1

    .line 156
    .line 157
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :cond_9
    iget-object v15, v0, Lcom/mycompany/app/view/MyProgressBar;->n:Landroid/graphics/Paint;

    .line 162
    .line 163
    if-eqz v15, :cond_10

    .line 164
    .line 165
    int-to-float v13, v1

    .line 166
    iget v1, v0, Lcom/mycompany/app/view/MyProgressBar;->l:I

    .line 167
    .line 168
    int-to-float v14, v1

    .line 169
    const/4 v11, 0x0

    .line 170
    const/4 v12, 0x0

    .line 171
    move-object/from16 v10, p1

    .line 172
    .line 173
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :cond_a
    iget-boolean v2, v0, Lcom/mycompany/app/view/MyProgressBar;->c:Z

    .line 178
    .line 179
    if-eqz v2, :cond_b

    .line 180
    .line 181
    int-to-float v3, v1

    .line 182
    iget v4, v0, Lcom/mycompany/app/view/MyProgressBar;->t:F

    .line 183
    .line 184
    sub-float/2addr v3, v4

    .line 185
    goto :goto_5

    .line 186
    :cond_b
    iget v3, v0, Lcom/mycompany/app/view/MyProgressBar;->t:F

    .line 187
    .line 188
    :goto_5
    iget-object v15, v0, Lcom/mycompany/app/view/MyProgressBar;->n:Landroid/graphics/Paint;

    .line 189
    .line 190
    if-eqz v15, :cond_c

    .line 191
    .line 192
    iget-boolean v4, v0, Lcom/mycompany/app/view/MyProgressBar;->h:Z

    .line 193
    .line 194
    if-eqz v4, :cond_d

    .line 195
    .line 196
    iget v2, v0, Lcom/mycompany/app/view/MyProgressBar;->k:I

    .line 197
    .line 198
    if-eqz v2, :cond_c

    .line 199
    .line 200
    int-to-float v13, v1

    .line 201
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    int-to-float v14, v2

    .line 206
    iget-object v15, v0, Lcom/mycompany/app/view/MyProgressBar;->n:Landroid/graphics/Paint;

    .line 207
    .line 208
    const/4 v11, 0x0

    .line 209
    const/4 v12, 0x0

    .line 210
    move-object/from16 v10, p1

    .line 211
    .line 212
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 213
    .line 214
    .line 215
    :cond_c
    move v11, v3

    .line 216
    goto :goto_6

    .line 217
    :cond_d
    if-eqz v2, :cond_e

    .line 218
    .line 219
    iget v2, v0, Lcom/mycompany/app/view/MyProgressBar;->l:I

    .line 220
    .line 221
    int-to-float v14, v2

    .line 222
    const/4 v11, 0x0

    .line 223
    const/4 v12, 0x0

    .line 224
    move-object/from16 v10, p1

    .line 225
    .line 226
    move v13, v3

    .line 227
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 228
    .line 229
    .line 230
    move v11, v13

    .line 231
    goto :goto_6

    .line 232
    :cond_e
    move v11, v3

    .line 233
    int-to-float v13, v1

    .line 234
    iget v2, v0, Lcom/mycompany/app/view/MyProgressBar;->l:I

    .line 235
    .line 236
    int-to-float v14, v2

    .line 237
    const/4 v12, 0x0

    .line 238
    move-object/from16 v10, p1

    .line 239
    .line 240
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 241
    .line 242
    .line 243
    :goto_6
    iget-object v15, v0, Lcom/mycompany/app/view/MyProgressBar;->m:Landroid/graphics/Paint;

    .line 244
    .line 245
    if-eqz v15, :cond_10

    .line 246
    .line 247
    iget-boolean v2, v0, Lcom/mycompany/app/view/MyProgressBar;->c:Z

    .line 248
    .line 249
    if-eqz v2, :cond_f

    .line 250
    .line 251
    int-to-float v13, v1

    .line 252
    iget v1, v0, Lcom/mycompany/app/view/MyProgressBar;->l:I

    .line 253
    .line 254
    int-to-float v14, v1

    .line 255
    const/4 v12, 0x0

    .line 256
    move-object/from16 v10, p1

    .line 257
    .line 258
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 259
    .line 260
    .line 261
    return-void

    .line 262
    :cond_f
    iget v1, v0, Lcom/mycompany/app/view/MyProgressBar;->l:I

    .line 263
    .line 264
    int-to-float v14, v1

    .line 265
    move v13, v11

    .line 266
    const/4 v11, 0x0

    .line 267
    const/4 v12, 0x0

    .line 268
    move-object/from16 v10, p1

    .line 269
    .line 270
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 271
    .line 272
    .line 273
    :cond_10
    :goto_7
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/mycompany/app/view/MyProgressBar;->o:I

    .line 5
    .line 6
    iget p2, p0, Lcom/mycompany/app/view/MyProgressBar;->p:I

    .line 7
    .line 8
    const/4 p3, 0x1

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    iput p3, p0, Lcom/mycompany/app/view/MyProgressBar;->p:I

    .line 12
    .line 13
    :cond_0
    int-to-float p1, p1

    .line 14
    iget p2, p0, Lcom/mycompany/app/view/MyProgressBar;->p:I

    .line 15
    .line 16
    int-to-float p2, p2

    .line 17
    div-float/2addr p1, p2

    .line 18
    iput p1, p0, Lcom/mycompany/app/view/MyProgressBar;->s:F

    .line 19
    .line 20
    iget p2, p0, Lcom/mycompany/app/view/MyProgressBar;->r:F

    .line 21
    .line 22
    mul-float/2addr p2, p1

    .line 23
    iput p2, p0, Lcom/mycompany/app/view/MyProgressBar;->t:F

    .line 24
    .line 25
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyProgressBar;->v:Z

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyProgressBar;->b()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p3}, Lcom/mycompany/app/view/MyProgressBar;->j(Z)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method public setHeader(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyProgressBar;->g:Z

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const p1, -0x37000001

    .line 10
    .line 11
    .line 12
    iput p1, p0, Lcom/mycompany/app/view/MyProgressBar;->j:I

    .line 13
    .line 14
    iget-object v0, p0, Lcom/mycompany/app/view/MyProgressBar;->m:Landroid/graphics/Paint;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/view/MyProgressBar;->m:Landroid/graphics/Paint;

    .line 21
    .line 22
    iget v0, p0, Lcom/mycompany/app/view/MyProgressBar;->j:I

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public setIncrease(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mycompany/app/view/MyProgressBar;->q:I

    .line 2
    .line 3
    return-void
.end method

.method public setMax(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyProgressBar;->p:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyProgressBar;->p:I

    .line 7
    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    iput p1, p0, Lcom/mycompany/app/view/MyProgressBar;->p:I

    .line 12
    .line 13
    :cond_1
    iget p1, p0, Lcom/mycompany/app/view/MyProgressBar;->o:I

    .line 14
    .line 15
    int-to-float p1, p1

    .line 16
    iget v0, p0, Lcom/mycompany/app/view/MyProgressBar;->p:I

    .line 17
    .line 18
    int-to-float v0, v0

    .line 19
    div-float/2addr p1, v0

    .line 20
    iput p1, p0, Lcom/mycompany/app/view/MyProgressBar;->s:F

    .line 21
    .line 22
    iget v0, p0, Lcom/mycompany/app/view/MyProgressBar;->r:F

    .line 23
    .line 24
    mul-float/2addr v0, p1

    .line 25
    iput v0, p0, Lcom/mycompany/app/view/MyProgressBar;->t:F

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyProgressBar;->invalidate()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public setProgress(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyProgressBar;->A:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/mycompany/app/view/MyProgressBar;->C:Lcom/mycompany/app/view/MyProgressBar$MyProgressListener;

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyProgressBar;->setProgress2(F)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setSkipDraw(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyProgressBar;->B:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyProgressBar;->B:Z

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyProgressBar;->b()V

    .line 12
    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyProgressBar;->A:Z

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lcom/mycompany/app/view/MyProgressBar;->C:Lcom/mycompany/app/view/MyProgressBar$MyProgressListener;

    .line 18
    .line 19
    :cond_1
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyProgressBar;->h:Z

    .line 20
    .line 21
    if-eqz p1, :cond_3

    .line 22
    .line 23
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyProgressBar;->B:Z

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    const/16 v0, 0x8

    .line 28
    .line 29
    :cond_2
    invoke-super {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    :cond_3
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyProgressBar;->invalidate()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyProgressBar;->b()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyProgressBar;->A:Z

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/mycompany/app/view/MyProgressBar;->C:Lcom/mycompany/app/view/MyProgressBar$MyProgressListener;

    .line 11
    .line 12
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
