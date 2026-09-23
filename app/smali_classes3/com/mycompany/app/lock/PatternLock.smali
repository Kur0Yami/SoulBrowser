.class public Lcom/mycompany/app/lock/PatternLock;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/lock/PatternLock$DotState;,
        Lcom/mycompany/app/lock/PatternLock$Dot;,
        Lcom/mycompany/app/lock/PatternLock$SavedState;,
        Lcom/mycompany/app/lock/PatternLock$PatternLockListener;
    }
.end annotation


# static fields
.field public static J:I


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:F

.field public F:F

.field public final G:Landroid/graphics/Path;

.field public H:Landroid/view/animation/Interpolator;

.field public I:Landroid/view/animation/Interpolator;

.field public c:[[Lcom/mycompany/app/lock/PatternLock$DotState;

.field public f:I

.field public g:J

.field public final h:F

.field public i:Z

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:Landroid/graphics/Paint;

.field public t:Landroid/graphics/Paint;

.field public final u:Ljava/util/ArrayList;

.field public v:Ljava/util/ArrayList;

.field public w:[[Z

.field public x:F

.field public y:F

.field public z:I


# direct methods
.method public constructor <init>(Lcom/mycompany/app/lock/PatternActivity;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const v0, 0x3f19999a    # 0.6f

    .line 5
    .line 6
    .line 7
    iput v0, p0, Lcom/mycompany/app/lock/PatternLock;->h:F

    .line 8
    .line 9
    const/high16 v0, -0x40800000    # -1.0f

    .line 10
    .line 11
    iput v0, p0, Lcom/mycompany/app/lock/PatternLock;->x:F

    .line 12
    .line 13
    iput v0, p0, Lcom/mycompany/app/lock/PatternLock;->y:F

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/mycompany/app/lock/PatternLock;->z:I

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    iput-boolean v1, p0, Lcom/mycompany/app/lock/PatternLock;->A:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/mycompany/app/lock/PatternLock;->B:Z

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/mycompany/app/lock/PatternLock;->C:Z

    .line 24
    .line 25
    iput-boolean v0, p0, Lcom/mycompany/app/lock/PatternLock;->D:Z

    .line 26
    .line 27
    new-instance v2, Landroid/graphics/Path;

    .line 28
    .line 29
    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v2, p0, Lcom/mycompany/app/lock/PatternLock;->G:Landroid/graphics/Path;

    .line 33
    .line 34
    const/4 v2, 0x3

    .line 35
    sput v2, Lcom/mycompany/app/lock/PatternLock;->J:I

    .line 36
    .line 37
    iput-boolean v1, p0, Lcom/mycompany/app/lock/PatternLock;->i:Z

    .line 38
    .line 39
    const/4 v2, 0x2

    .line 40
    iput v2, p0, Lcom/mycompany/app/lock/PatternLock;->j:I

    .line 41
    .line 42
    const/high16 v3, 0x40400000    # 3.0f

    .line 43
    .line 44
    invoke-static {p1, v3}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    float-to-int v3, v3

    .line 49
    iput v3, p0, Lcom/mycompany/app/lock/PatternLock;->n:I

    .line 50
    .line 51
    const/high16 v3, 0x41200000    # 10.0f

    .line 52
    .line 53
    invoke-static {p1, v3}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    float-to-int v3, v3

    .line 58
    iput v3, p0, Lcom/mycompany/app/lock/PatternLock;->o:I

    .line 59
    .line 60
    const/high16 v3, 0x41c00000    # 24.0f

    .line 61
    .line 62
    invoke-static {p1, v3}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    float-to-int p1, p1

    .line 67
    iput p1, p0, Lcom/mycompany/app/lock/PatternLock;->p:I

    .line 68
    .line 69
    const/16 p1, 0x96

    .line 70
    .line 71
    iput p1, p0, Lcom/mycompany/app/lock/PatternLock;->q:I

    .line 72
    .line 73
    const/16 p1, 0x64

    .line 74
    .line 75
    iput p1, p0, Lcom/mycompany/app/lock/PatternLock;->r:I

    .line 76
    .line 77
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 78
    .line 79
    const v3, -0xbaee2

    .line 80
    .line 81
    .line 82
    if-eqz p1, :cond_0

    .line 83
    .line 84
    const/4 p1, -0x1

    .line 85
    iput p1, p0, Lcom/mycompany/app/lock/PatternLock;->k:I

    .line 86
    .line 87
    iput p1, p0, Lcom/mycompany/app/lock/PatternLock;->m:I

    .line 88
    .line 89
    iput v3, p0, Lcom/mycompany/app/lock/PatternLock;->l:I

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_0
    const/high16 p1, -0x1000000

    .line 93
    .line 94
    iput p1, p0, Lcom/mycompany/app/lock/PatternLock;->k:I

    .line 95
    .line 96
    iput p1, p0, Lcom/mycompany/app/lock/PatternLock;->m:I

    .line 97
    .line 98
    iput v3, p0, Lcom/mycompany/app/lock/PatternLock;->l:I

    .line 99
    .line 100
    :goto_0
    sget p1, Lcom/mycompany/app/lock/PatternLock;->J:I

    .line 101
    .line 102
    mul-int/2addr p1, p1

    .line 103
    iput p1, p0, Lcom/mycompany/app/lock/PatternLock;->f:I

    .line 104
    .line 105
    new-instance p1, Ljava/util/ArrayList;

    .line 106
    .line 107
    iget v3, p0, Lcom/mycompany/app/lock/PatternLock;->f:I

    .line 108
    .line 109
    invoke-direct {p1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 110
    .line 111
    .line 112
    iput-object p1, p0, Lcom/mycompany/app/lock/PatternLock;->v:Ljava/util/ArrayList;

    .line 113
    .line 114
    sget p1, Lcom/mycompany/app/lock/PatternLock;->J:I

    .line 115
    .line 116
    new-array v3, v2, [I

    .line 117
    .line 118
    aput p1, v3, v1

    .line 119
    .line 120
    aput p1, v3, v0

    .line 121
    .line 122
    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 123
    .line 124
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    check-cast p1, [[Z

    .line 129
    .line 130
    iput-object p1, p0, Lcom/mycompany/app/lock/PatternLock;->w:[[Z

    .line 131
    .line 132
    sget p1, Lcom/mycompany/app/lock/PatternLock;->J:I

    .line 133
    .line 134
    new-array v2, v2, [I

    .line 135
    .line 136
    aput p1, v2, v1

    .line 137
    .line 138
    aput p1, v2, v0

    .line 139
    .line 140
    const-class p1, Lcom/mycompany/app/lock/PatternLock$DotState;

    .line 141
    .line 142
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    check-cast p1, [[Lcom/mycompany/app/lock/PatternLock$DotState;

    .line 147
    .line 148
    iput-object p1, p0, Lcom/mycompany/app/lock/PatternLock;->c:[[Lcom/mycompany/app/lock/PatternLock$DotState;

    .line 149
    .line 150
    move p1, v0

    .line 151
    :goto_1
    sget v1, Lcom/mycompany/app/lock/PatternLock;->J:I

    .line 152
    .line 153
    if-ge p1, v1, :cond_2

    .line 154
    .line 155
    move v1, v0

    .line 156
    :goto_2
    sget v2, Lcom/mycompany/app/lock/PatternLock;->J:I

    .line 157
    .line 158
    if-ge v1, v2, :cond_1

    .line 159
    .line 160
    iget-object v2, p0, Lcom/mycompany/app/lock/PatternLock;->c:[[Lcom/mycompany/app/lock/PatternLock$DotState;

    .line 161
    .line 162
    aget-object v3, v2, p1

    .line 163
    .line 164
    new-instance v4, Lcom/mycompany/app/lock/PatternLock$DotState;

    .line 165
    .line 166
    invoke-direct {v4}, Lcom/mycompany/app/lock/PatternLock$DotState;-><init>()V

    .line 167
    .line 168
    .line 169
    aput-object v4, v3, v1

    .line 170
    .line 171
    aget-object v2, v2, p1

    .line 172
    .line 173
    aget-object v2, v2, v1

    .line 174
    .line 175
    iget v3, p0, Lcom/mycompany/app/lock/PatternLock;->o:I

    .line 176
    .line 177
    int-to-float v3, v3

    .line 178
    iput v3, v2, Lcom/mycompany/app/lock/PatternLock$DotState;->a:F

    .line 179
    .line 180
    add-int/lit8 v1, v1, 0x1

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    .line 187
    .line 188
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .line 190
    .line 191
    iput-object p1, p0, Lcom/mycompany/app/lock/PatternLock;->u:Ljava/util/ArrayList;

    .line 192
    .line 193
    invoke-virtual {p0}, Lcom/mycompany/app/lock/PatternLock;->g()V

    .line 194
    .line 195
    .line 196
    return-void
.end method

.method public static h(Lcom/mycompany/app/lock/PatternLock;Ljava/util/List;)Ljava/lang/String;
    .locals 6

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    if-ge v2, v0, :cond_1

    .line 17
    .line 18
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Lcom/mycompany/app/lock/PatternLock$Dot;

    .line 23
    .line 24
    iget v4, v3, Lcom/mycompany/app/lock/PatternLock$Dot;->c:I

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/mycompany/app/lock/PatternLock;->getDotCount()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    mul-int/2addr v5, v4

    .line 31
    iget v3, v3, Lcom/mycompany/app/lock/PatternLock$Dot;->f:I

    .line 32
    .line 33
    add-int/2addr v5, v3

    .line 34
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :cond_2
    :goto_1
    const-string p0, ""

    .line 46
    .line 47
    return-object p0
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/lock/PatternLock$Dot;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/lock/PatternLock;->w:[[Z

    .line 2
    .line 3
    iget v1, p1, Lcom/mycompany/app/lock/PatternLock$Dot;->c:I

    .line 4
    .line 5
    aget-object v0, v0, v1

    .line 6
    .line 7
    iget v2, p1, Lcom/mycompany/app/lock/PatternLock$Dot;->f:I

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    aput-boolean v3, v0, v2

    .line 11
    .line 12
    iget-object v0, p0, Lcom/mycompany/app/lock/PatternLock;->v:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    iget-boolean p1, p0, Lcom/mycompany/app/lock/PatternLock;->B:Z

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/mycompany/app/lock/PatternLock;->c:[[Lcom/mycompany/app/lock/PatternLock$DotState;

    .line 22
    .line 23
    aget-object p1, p1, v1

    .line 24
    .line 25
    aget-object v5, p1, v2

    .line 26
    .line 27
    iget p1, p0, Lcom/mycompany/app/lock/PatternLock;->o:I

    .line 28
    .line 29
    int-to-float v4, p1

    .line 30
    iget p1, p0, Lcom/mycompany/app/lock/PatternLock;->p:I

    .line 31
    .line 32
    int-to-float p1, p1

    .line 33
    iget v0, p0, Lcom/mycompany/app/lock/PatternLock;->q:I

    .line 34
    .line 35
    int-to-long v6, v0

    .line 36
    iget-object v8, p0, Lcom/mycompany/app/lock/PatternLock;->I:Landroid/view/animation/Interpolator;

    .line 37
    .line 38
    new-instance v10, Lcom/mycompany/app/lock/PatternLock$1;

    .line 39
    .line 40
    invoke-direct {v10, p0, v5}, Lcom/mycompany/app/lock/PatternLock$1;-><init>(Lcom/mycompany/app/lock/PatternLock;Lcom/mycompany/app/lock/PatternLock$DotState;)V

    .line 41
    .line 42
    .line 43
    move-object v3, p0

    .line 44
    move-object v9, v5

    .line 45
    move v5, p1

    .line 46
    invoke-virtual/range {v3 .. v10}, Lcom/mycompany/app/lock/PatternLock;->j(FFJLandroid/view/animation/Interpolator;Lcom/mycompany/app/lock/PatternLock$DotState;Ljava/lang/Runnable;)V

    .line 47
    .line 48
    .line 49
    move-object v5, v9

    .line 50
    iget v6, v3, Lcom/mycompany/app/lock/PatternLock;->x:F

    .line 51
    .line 52
    iget v8, v3, Lcom/mycompany/app/lock/PatternLock;->y:F

    .line 53
    .line 54
    invoke-virtual {p0, v2}, Lcom/mycompany/app/lock/PatternLock;->d(I)F

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    invoke-virtual {p0, v1}, Lcom/mycompany/app/lock/PatternLock;->e(I)F

    .line 59
    .line 60
    .line 61
    move-result v9

    .line 62
    const/4 p1, 0x2

    .line 63
    new-array p1, p1, [F

    .line 64
    .line 65
    fill-array-data p1, :array_0

    .line 66
    .line 67
    .line 68
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    new-instance v3, Lcom/mycompany/app/lock/PatternLock$2;

    .line 73
    .line 74
    move-object v4, p0

    .line 75
    invoke-direct/range {v3 .. v9}, Lcom/mycompany/app/lock/PatternLock$2;-><init>(Lcom/mycompany/app/lock/PatternLock;Lcom/mycompany/app/lock/PatternLock$DotState;FFFF)V

    .line 76
    .line 77
    .line 78
    move-object v0, v3

    .line 79
    move-object v3, v4

    .line 80
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 81
    .line 82
    .line 83
    new-instance v0, Lcom/mycompany/app/lock/PatternLock$3;

    .line 84
    .line 85
    invoke-direct {v0, v5}, Lcom/mycompany/app/lock/PatternLock$3;-><init>(Lcom/mycompany/app/lock/PatternLock$DotState;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, v3, Lcom/mycompany/app/lock/PatternLock;->H:Landroid/view/animation/Interpolator;

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 94
    .line 95
    .line 96
    iget v0, v3, Lcom/mycompany/app/lock/PatternLock;->r:I

    .line 97
    .line 98
    int-to-long v0, v0

    .line 99
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 103
    .line 104
    .line 105
    iput-object p1, v5, Lcom/mycompany/app/lock/PatternLock$DotState;->d:Landroid/animation/ValueAnimator;

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_0
    move-object v3, p0

    .line 109
    :goto_0
    iget-object p1, v3, Lcom/mycompany/app/lock/PatternLock;->u:Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    const/4 v1, 0x0

    .line 116
    :goto_1
    if-ge v1, v0, :cond_1

    .line 117
    .line 118
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    add-int/lit8 v1, v1, 0x1

    .line 123
    .line 124
    check-cast v2, Lcom/mycompany/app/lock/PatternLock$PatternLockListener;

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_1
    return-void

    .line 128
    nop

    .line 129
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final b()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    sget v2, Lcom/mycompany/app/lock/PatternLock;->J:I

    .line 4
    .line 5
    if-ge v1, v2, :cond_1

    .line 6
    .line 7
    move v2, v0

    .line 8
    :goto_1
    sget v3, Lcom/mycompany/app/lock/PatternLock;->J:I

    .line 9
    .line 10
    if-ge v2, v3, :cond_0

    .line 11
    .line 12
    iget-object v3, p0, Lcom/mycompany/app/lock/PatternLock;->w:[[Z

    .line 13
    .line 14
    aget-object v3, v3, v1

    .line 15
    .line 16
    aput-boolean v0, v3, v2

    .line 17
    .line 18
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    return-void
.end method

.method public final c(FF)Lcom/mycompany/app/lock/PatternLock$Dot;
    .locals 10

    .line 1
    iget v0, p0, Lcom/mycompany/app/lock/PatternLock;->F:F

    .line 2
    .line 3
    iget v1, p0, Lcom/mycompany/app/lock/PatternLock;->h:F

    .line 4
    .line 5
    mul-float v2, v0, v1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    int-to-float v3, v3

    .line 12
    sub-float v4, v0, v2

    .line 13
    .line 14
    const/high16 v5, 0x40000000    # 2.0f

    .line 15
    .line 16
    div-float/2addr v4, v5

    .line 17
    add-float/2addr v4, v3

    .line 18
    const/4 v3, 0x0

    .line 19
    move v6, v3

    .line 20
    :goto_0
    sget v7, Lcom/mycompany/app/lock/PatternLock;->J:I

    .line 21
    .line 22
    const/4 v8, -0x1

    .line 23
    if-ge v6, v7, :cond_1

    .line 24
    .line 25
    int-to-float v7, v6

    .line 26
    mul-float/2addr v7, v0

    .line 27
    add-float/2addr v7, v4

    .line 28
    cmpl-float v9, p2, v7

    .line 29
    .line 30
    if-ltz v9, :cond_0

    .line 31
    .line 32
    add-float/2addr v7, v2

    .line 33
    cmpg-float v7, p2, v7

    .line 34
    .line 35
    if-gtz v7, :cond_0

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move v6, v8

    .line 42
    :goto_1
    const/4 p2, 0x0

    .line 43
    if-gez v6, :cond_2

    .line 44
    .line 45
    :goto_2
    move-object p1, p2

    .line 46
    goto :goto_5

    .line 47
    :cond_2
    iget v0, p0, Lcom/mycompany/app/lock/PatternLock;->E:F

    .line 48
    .line 49
    mul-float/2addr v1, v0

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    int-to-float v2, v2

    .line 55
    sub-float v4, v0, v1

    .line 56
    .line 57
    div-float/2addr v4, v5

    .line 58
    add-float/2addr v4, v2

    .line 59
    :goto_3
    sget v2, Lcom/mycompany/app/lock/PatternLock;->J:I

    .line 60
    .line 61
    if-ge v3, v2, :cond_4

    .line 62
    .line 63
    int-to-float v2, v3

    .line 64
    mul-float/2addr v2, v0

    .line 65
    add-float/2addr v2, v4

    .line 66
    cmpl-float v5, p1, v2

    .line 67
    .line 68
    if-ltz v5, :cond_3

    .line 69
    .line 70
    add-float/2addr v2, v1

    .line 71
    cmpg-float v2, p1, v2

    .line 72
    .line 73
    if-gtz v2, :cond_3

    .line 74
    .line 75
    goto :goto_4

    .line 76
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_4
    move v3, v8

    .line 80
    :goto_4
    if-gez v3, :cond_5

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_5
    iget-object p1, p0, Lcom/mycompany/app/lock/PatternLock;->w:[[Z

    .line 84
    .line 85
    aget-object p1, p1, v6

    .line 86
    .line 87
    aget-boolean p1, p1, v3

    .line 88
    .line 89
    if-eqz p1, :cond_6

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_6
    invoke-static {v6, v3}, Lcom/mycompany/app/lock/PatternLock$Dot;->b(II)Lcom/mycompany/app/lock/PatternLock$Dot;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    :goto_5
    if-eqz p1, :cond_e

    .line 97
    .line 98
    iget-object v0, p0, Lcom/mycompany/app/lock/PatternLock;->v:Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-nez v1, :cond_b

    .line 105
    .line 106
    const/4 p2, 0x1

    .line 107
    invoke-static {p2, v0}, Landroid/support/v4/media/a;->c(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Lcom/mycompany/app/lock/PatternLock$Dot;

    .line 112
    .line 113
    iget v1, p1, Lcom/mycompany/app/lock/PatternLock$Dot;->c:I

    .line 114
    .line 115
    iget v2, v0, Lcom/mycompany/app/lock/PatternLock$Dot;->c:I

    .line 116
    .line 117
    iget v3, v0, Lcom/mycompany/app/lock/PatternLock$Dot;->f:I

    .line 118
    .line 119
    sub-int/2addr v1, v2

    .line 120
    iget v4, p1, Lcom/mycompany/app/lock/PatternLock$Dot;->f:I

    .line 121
    .line 122
    sub-int/2addr v4, v3

    .line 123
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    const/4 v6, 0x2

    .line 128
    if-ne v5, v6, :cond_8

    .line 129
    .line 130
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    if-eq v5, p2, :cond_8

    .line 135
    .line 136
    iget v0, v0, Lcom/mycompany/app/lock/PatternLock$Dot;->c:I

    .line 137
    .line 138
    if-lez v1, :cond_7

    .line 139
    .line 140
    move v2, p2

    .line 141
    goto :goto_6

    .line 142
    :cond_7
    move v2, v8

    .line 143
    :goto_6
    add-int/2addr v2, v0

    .line 144
    :cond_8
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-ne v0, v6, :cond_a

    .line 149
    .line 150
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-eq v0, p2, :cond_a

    .line 155
    .line 156
    if-lez v4, :cond_9

    .line 157
    .line 158
    move v8, p2

    .line 159
    :cond_9
    add-int/2addr v3, v8

    .line 160
    :cond_a
    invoke-static {v2, v3}, Lcom/mycompany/app/lock/PatternLock$Dot;->b(II)Lcom/mycompany/app/lock/PatternLock$Dot;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    :cond_b
    if-eqz p2, :cond_c

    .line 165
    .line 166
    iget-object v0, p0, Lcom/mycompany/app/lock/PatternLock;->w:[[Z

    .line 167
    .line 168
    iget v1, p2, Lcom/mycompany/app/lock/PatternLock$Dot;->c:I

    .line 169
    .line 170
    aget-object v0, v0, v1

    .line 171
    .line 172
    iget v1, p2, Lcom/mycompany/app/lock/PatternLock$Dot;->f:I

    .line 173
    .line 174
    aget-boolean v0, v0, v1

    .line 175
    .line 176
    if-nez v0, :cond_c

    .line 177
    .line 178
    invoke-virtual {p0, p2}, Lcom/mycompany/app/lock/PatternLock;->a(Lcom/mycompany/app/lock/PatternLock$Dot;)V

    .line 179
    .line 180
    .line 181
    :cond_c
    invoke-virtual {p0, p1}, Lcom/mycompany/app/lock/PatternLock;->a(Lcom/mycompany/app/lock/PatternLock$Dot;)V

    .line 182
    .line 183
    .line 184
    iget-boolean p2, p0, Lcom/mycompany/app/lock/PatternLock;->C:Z

    .line 185
    .line 186
    if-eqz p2, :cond_d

    .line 187
    .line 188
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->l7(Landroid/view/View;)V

    .line 189
    .line 190
    .line 191
    :cond_d
    return-object p1

    .line 192
    :cond_e
    return-object p2
.end method

.method public final d(I)F
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    int-to-float p1, p1

    .line 7
    iget v1, p0, Lcom/mycompany/app/lock/PatternLock;->E:F

    .line 8
    .line 9
    mul-float/2addr p1, v1

    .line 10
    add-float/2addr p1, v0

    .line 11
    const/high16 v0, 0x40000000    # 2.0f

    .line 12
    .line 13
    div-float/2addr v1, v0

    .line 14
    add-float/2addr v1, p1

    .line 15
    return v1
.end method

.method public final e(I)F
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    int-to-float p1, p1

    .line 7
    iget v1, p0, Lcom/mycompany/app/lock/PatternLock;->F:F

    .line 8
    .line 9
    mul-float/2addr p1, v1

    .line 10
    add-float/2addr p1, v0

    .line 11
    const/high16 v0, 0x40000000    # 2.0f

    .line 12
    .line 13
    div-float/2addr v1, v0

    .line 14
    add-float/2addr v1, p1

    .line 15
    return v1
.end method

.method public final f(Z)I
    .locals 2

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    iget-boolean p1, p0, Lcom/mycompany/app/lock/PatternLock;->B:Z

    .line 4
    .line 5
    if-nez p1, :cond_4

    .line 6
    .line 7
    iget-boolean p1, p0, Lcom/mycompany/app/lock/PatternLock;->D:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget p1, p0, Lcom/mycompany/app/lock/PatternLock;->z:I

    .line 13
    .line 14
    const/4 v0, 0x2

    .line 15
    if-ne p1, v0, :cond_1

    .line 16
    .line 17
    iget p1, p0, Lcom/mycompany/app/lock/PatternLock;->l:I

    .line 18
    .line 19
    return p1

    .line 20
    :cond_1
    if-eqz p1, :cond_3

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    if-ne p1, v0, :cond_2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v1, "Unknown view mode "

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget v1, p0, Lcom/mycompany/app/lock/PatternLock;->z:I

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :cond_3
    :goto_0
    iget p1, p0, Lcom/mycompany/app/lock/PatternLock;->m:I

    .line 49
    .line 50
    return p1

    .line 51
    :cond_4
    :goto_1
    iget p1, p0, Lcom/mycompany/app/lock/PatternLock;->k:I

    .line 52
    .line 53
    return p1
.end method

.method public final g()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 3
    .line 4
    .line 5
    new-instance v1, Landroid/graphics/Paint;

    .line 6
    .line 7
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Lcom/mycompany/app/lock/PatternLock;->t:Landroid/graphics/Paint;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/mycompany/app/lock/PatternLock;->t:Landroid/graphics/Paint;

    .line 16
    .line 17
    iget v2, p0, Lcom/mycompany/app/lock/PatternLock;->k:I

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/mycompany/app/lock/PatternLock;->t:Landroid/graphics/Paint;

    .line 23
    .line 24
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/mycompany/app/lock/PatternLock;->t:Landroid/graphics/Paint;

    .line 30
    .line 31
    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/mycompany/app/lock/PatternLock;->t:Landroid/graphics/Paint;

    .line 37
    .line 38
    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/mycompany/app/lock/PatternLock;->t:Landroid/graphics/Paint;

    .line 44
    .line 45
    iget v2, p0, Lcom/mycompany/app/lock/PatternLock;->n:I

    .line 46
    .line 47
    int-to-float v2, v2

    .line 48
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 49
    .line 50
    .line 51
    new-instance v1, Landroid/graphics/Paint;

    .line 52
    .line 53
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v1, p0, Lcom/mycompany/app/lock/PatternLock;->s:Landroid/graphics/Paint;

    .line 57
    .line 58
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_0

    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const v1, 0x10c000d

    .line 72
    .line 73
    .line 74
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iput-object v0, p0, Lcom/mycompany/app/lock/PatternLock;->H:Landroid/view/animation/Interpolator;

    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    const v1, 0x10c000e

    .line 85
    .line 86
    .line 87
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iput-object v0, p0, Lcom/mycompany/app/lock/PatternLock;->I:Landroid/view/animation/Interpolator;

    .line 92
    .line 93
    :cond_0
    return-void
.end method

.method public getAspectRatio()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/lock/PatternLock;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public getCorrectStateColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/lock/PatternLock;->m:I

    .line 2
    .line 3
    return v0
.end method

.method public getDotAnimationDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/lock/PatternLock;->q:I

    .line 2
    .line 3
    return v0
.end method

.method public getDotCount()I
    .locals 1

    .line 1
    sget v0, Lcom/mycompany/app/lock/PatternLock;->J:I

    .line 2
    .line 3
    return v0
.end method

.method public getDotNormalSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/lock/PatternLock;->o:I

    .line 2
    .line 3
    return v0
.end method

.method public getDotSelectedSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/lock/PatternLock;->p:I

    .line 2
    .line 3
    return v0
.end method

.method public getNormalStateColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/lock/PatternLock;->k:I

    .line 2
    .line 3
    return v0
.end method

.method public getPathEndAnimationDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/lock/PatternLock;->r:I

    .line 2
    .line 3
    return v0
.end method

.method public getPathWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/lock/PatternLock;->n:I

    .line 2
    .line 3
    return v0
.end method

.method public getPattern()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mycompany/app/lock/PatternLock$Dot;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/lock/PatternLock;->v:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    return-object v0
.end method

.method public getPatternSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/lock/PatternLock;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public getPatternViewMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/lock/PatternLock;->z:I

    .line 2
    .line 3
    return v0
.end method

.method public getWrongStateColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/lock/PatternLock;->l:I

    .line 2
    .line 3
    return v0
.end method

.method public final i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/lock/PatternLock;->v:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/mycompany/app/lock/PatternLock;->b()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/mycompany/app/lock/PatternLock;->z:I

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final j(FFJLandroid/view/animation/Interpolator;Lcom/mycompany/app/lock/PatternLock$DotState;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    aput p1, v0, v1

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    aput p2, v0, p1

    .line 9
    .line 10
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    new-instance p2, Lcom/mycompany/app/lock/PatternLock$4;

    .line 15
    .line 16
    invoke-direct {p2, p0, p6}, Lcom/mycompany/app/lock/PatternLock$4;-><init>(Lcom/mycompany/app/lock/PatternLock;Lcom/mycompany/app/lock/PatternLock$DotState;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 20
    .line 21
    .line 22
    if-eqz p7, :cond_0

    .line 23
    .line 24
    new-instance p2, Lcom/mycompany/app/lock/PatternLock$5;

    .line 25
    .line 26
    invoke-direct {p2, p7}, Lcom/mycompany/app/lock/PatternLock$5;-><init>(Ljava/lang/Runnable;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p1, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/lock/PatternLock;->v:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    iget-object v4, v0, Lcom/mycompany/app/lock/PatternLock;->w:[[Z

    .line 12
    .line 13
    iget v5, v0, Lcom/mycompany/app/lock/PatternLock;->z:I

    .line 14
    .line 15
    const/4 v7, 0x1

    .line 16
    if-ne v5, v7, :cond_2

    .line 17
    .line 18
    add-int/lit8 v5, v3, 0x1

    .line 19
    .line 20
    mul-int/lit16 v5, v5, 0x2bc

    .line 21
    .line 22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 23
    .line 24
    .line 25
    move-result-wide v8

    .line 26
    iget-wide v10, v0, Lcom/mycompany/app/lock/PatternLock;->g:J

    .line 27
    .line 28
    sub-long/2addr v8, v10

    .line 29
    long-to-int v8, v8

    .line 30
    rem-int/2addr v8, v5

    .line 31
    div-int/lit16 v5, v8, 0x2bc

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/mycompany/app/lock/PatternLock;->b()V

    .line 34
    .line 35
    .line 36
    const/4 v9, 0x0

    .line 37
    :goto_0
    if-ge v9, v5, :cond_0

    .line 38
    .line 39
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v10

    .line 43
    check-cast v10, Lcom/mycompany/app/lock/PatternLock$Dot;

    .line 44
    .line 45
    iget v11, v10, Lcom/mycompany/app/lock/PatternLock$Dot;->c:I

    .line 46
    .line 47
    aget-object v11, v4, v11

    .line 48
    .line 49
    iget v10, v10, Lcom/mycompany/app/lock/PatternLock$Dot;->f:I

    .line 50
    .line 51
    aput-boolean v7, v11, v10

    .line 52
    .line 53
    add-int/lit8 v9, v9, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    if-lez v5, :cond_1

    .line 57
    .line 58
    if-ge v5, v3, :cond_1

    .line 59
    .line 60
    rem-int/lit16 v8, v8, 0x2bc

    .line 61
    .line 62
    int-to-float v8, v8

    .line 63
    const/high16 v9, 0x442f0000    # 700.0f

    .line 64
    .line 65
    div-float/2addr v8, v9

    .line 66
    add-int/lit8 v9, v5, -0x1

    .line 67
    .line 68
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    check-cast v9, Lcom/mycompany/app/lock/PatternLock$Dot;

    .line 73
    .line 74
    iget v10, v9, Lcom/mycompany/app/lock/PatternLock$Dot;->f:I

    .line 75
    .line 76
    invoke-virtual {v0, v10}, Lcom/mycompany/app/lock/PatternLock;->d(I)F

    .line 77
    .line 78
    .line 79
    move-result v10

    .line 80
    iget v9, v9, Lcom/mycompany/app/lock/PatternLock$Dot;->c:I

    .line 81
    .line 82
    invoke-virtual {v0, v9}, Lcom/mycompany/app/lock/PatternLock;->e(I)F

    .line 83
    .line 84
    .line 85
    move-result v9

    .line 86
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    check-cast v5, Lcom/mycompany/app/lock/PatternLock$Dot;

    .line 91
    .line 92
    iget v11, v5, Lcom/mycompany/app/lock/PatternLock$Dot;->f:I

    .line 93
    .line 94
    invoke-virtual {v0, v11}, Lcom/mycompany/app/lock/PatternLock;->d(I)F

    .line 95
    .line 96
    .line 97
    move-result v11

    .line 98
    sub-float/2addr v11, v10

    .line 99
    mul-float/2addr v11, v8

    .line 100
    iget v5, v5, Lcom/mycompany/app/lock/PatternLock$Dot;->c:I

    .line 101
    .line 102
    invoke-virtual {v0, v5}, Lcom/mycompany/app/lock/PatternLock;->e(I)F

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    sub-float/2addr v5, v9

    .line 107
    mul-float/2addr v5, v8

    .line 108
    add-float/2addr v10, v11

    .line 109
    iput v10, v0, Lcom/mycompany/app/lock/PatternLock;->x:F

    .line 110
    .line 111
    add-float/2addr v9, v5

    .line 112
    iput v9, v0, Lcom/mycompany/app/lock/PatternLock;->y:F

    .line 113
    .line 114
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 115
    .line 116
    .line 117
    :cond_2
    iget-object v5, v0, Lcom/mycompany/app/lock/PatternLock;->G:Landroid/graphics/Path;

    .line 118
    .line 119
    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    .line 120
    .line 121
    .line 122
    const/4 v8, 0x0

    .line 123
    :goto_1
    sget v9, Lcom/mycompany/app/lock/PatternLock;->J:I

    .line 124
    .line 125
    const/high16 v10, 0x437f0000    # 255.0f

    .line 126
    .line 127
    const/high16 v11, 0x3f800000    # 1.0f

    .line 128
    .line 129
    const/4 v12, 0x0

    .line 130
    if-ge v8, v9, :cond_4

    .line 131
    .line 132
    invoke-virtual {v0, v8}, Lcom/mycompany/app/lock/PatternLock;->e(I)F

    .line 133
    .line 134
    .line 135
    move-result v9

    .line 136
    const/4 v13, 0x0

    .line 137
    :goto_2
    sget v14, Lcom/mycompany/app/lock/PatternLock;->J:I

    .line 138
    .line 139
    if-ge v13, v14, :cond_3

    .line 140
    .line 141
    iget-object v14, v0, Lcom/mycompany/app/lock/PatternLock;->c:[[Lcom/mycompany/app/lock/PatternLock$DotState;

    .line 142
    .line 143
    aget-object v14, v14, v8

    .line 144
    .line 145
    aget-object v14, v14, v13

    .line 146
    .line 147
    invoke-virtual {v0, v13}, Lcom/mycompany/app/lock/PatternLock;->d(I)F

    .line 148
    .line 149
    .line 150
    move-result v15

    .line 151
    iget v14, v14, Lcom/mycompany/app/lock/PatternLock$DotState;->a:F

    .line 152
    .line 153
    mul-float/2addr v14, v11

    .line 154
    float-to-int v15, v15

    .line 155
    int-to-float v15, v15

    .line 156
    float-to-int v6, v9

    .line 157
    int-to-float v6, v6

    .line 158
    add-float/2addr v6, v12

    .line 159
    aget-object v17, v4, v8

    .line 160
    .line 161
    aget-boolean v11, v17, v13

    .line 162
    .line 163
    iget-object v12, v0, Lcom/mycompany/app/lock/PatternLock;->s:Landroid/graphics/Paint;

    .line 164
    .line 165
    invoke-virtual {v0, v11}, Lcom/mycompany/app/lock/PatternLock;->f(Z)I

    .line 166
    .line 167
    .line 168
    move-result v11

    .line 169
    invoke-virtual {v12, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 170
    .line 171
    .line 172
    iget-object v11, v0, Lcom/mycompany/app/lock/PatternLock;->s:Landroid/graphics/Paint;

    .line 173
    .line 174
    float-to-int v12, v10

    .line 175
    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 176
    .line 177
    .line 178
    const/high16 v11, 0x40000000    # 2.0f

    .line 179
    .line 180
    div-float/2addr v14, v11

    .line 181
    iget-object v11, v0, Lcom/mycompany/app/lock/PatternLock;->s:Landroid/graphics/Paint;

    .line 182
    .line 183
    invoke-virtual {v1, v15, v6, v14, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 184
    .line 185
    .line 186
    add-int/lit8 v13, v13, 0x1

    .line 187
    .line 188
    const/high16 v11, 0x3f800000    # 1.0f

    .line 189
    .line 190
    const/4 v12, 0x0

    .line 191
    goto :goto_2

    .line 192
    :cond_3
    add-int/lit8 v8, v8, 0x1

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_4
    iget-boolean v6, v0, Lcom/mycompany/app/lock/PatternLock;->B:Z

    .line 196
    .line 197
    if-nez v6, :cond_a

    .line 198
    .line 199
    iget-object v6, v0, Lcom/mycompany/app/lock/PatternLock;->t:Landroid/graphics/Paint;

    .line 200
    .line 201
    invoke-virtual {v0, v7}, Lcom/mycompany/app/lock/PatternLock;->f(Z)I

    .line 202
    .line 203
    .line 204
    move-result v8

    .line 205
    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 206
    .line 207
    .line 208
    const/4 v6, 0x0

    .line 209
    const/4 v8, 0x0

    .line 210
    const/4 v9, 0x0

    .line 211
    const/16 v16, 0x0

    .line 212
    .line 213
    :goto_3
    if-ge v6, v3, :cond_8

    .line 214
    .line 215
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v11

    .line 219
    check-cast v11, Lcom/mycompany/app/lock/PatternLock$Dot;

    .line 220
    .line 221
    iget v12, v11, Lcom/mycompany/app/lock/PatternLock$Dot;->c:I

    .line 222
    .line 223
    iget v11, v11, Lcom/mycompany/app/lock/PatternLock$Dot;->f:I

    .line 224
    .line 225
    aget-object v13, v4, v12

    .line 226
    .line 227
    aget-boolean v13, v13, v11

    .line 228
    .line 229
    if-nez v13, :cond_5

    .line 230
    .line 231
    goto :goto_5

    .line 232
    :cond_5
    invoke-virtual {v0, v11}, Lcom/mycompany/app/lock/PatternLock;->d(I)F

    .line 233
    .line 234
    .line 235
    move-result v13

    .line 236
    invoke-virtual {v0, v12}, Lcom/mycompany/app/lock/PatternLock;->e(I)F

    .line 237
    .line 238
    .line 239
    move-result v14

    .line 240
    if-eqz v6, :cond_7

    .line 241
    .line 242
    iget-object v15, v0, Lcom/mycompany/app/lock/PatternLock;->c:[[Lcom/mycompany/app/lock/PatternLock$DotState;

    .line 243
    .line 244
    aget-object v12, v15, v12

    .line 245
    .line 246
    aget-object v11, v12, v11

    .line 247
    .line 248
    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v5, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 252
    .line 253
    .line 254
    iget v8, v11, Lcom/mycompany/app/lock/PatternLock$DotState;->b:F

    .line 255
    .line 256
    const/4 v9, 0x1

    .line 257
    cmpl-float v12, v8, v9

    .line 258
    .line 259
    if-eqz v12, :cond_6

    .line 260
    .line 261
    iget v11, v11, Lcom/mycompany/app/lock/PatternLock$DotState;->c:F

    .line 262
    .line 263
    cmpl-float v9, v11, v9

    .line 264
    .line 265
    if-eqz v9, :cond_6

    .line 266
    .line 267
    invoke-virtual {v5, v8, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 268
    .line 269
    .line 270
    goto :goto_4

    .line 271
    :cond_6
    invoke-virtual {v5, v13, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 272
    .line 273
    .line 274
    :goto_4
    iget-object v8, v0, Lcom/mycompany/app/lock/PatternLock;->t:Landroid/graphics/Paint;

    .line 275
    .line 276
    invoke-virtual {v1, v5, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 277
    .line 278
    .line 279
    :cond_7
    add-int/lit8 v6, v6, 0x1

    .line 280
    .line 281
    move/from16 v16, v7

    .line 282
    .line 283
    move v8, v13

    .line 284
    move v9, v14

    .line 285
    goto :goto_3

    .line 286
    :cond_8
    :goto_5
    iget-boolean v2, v0, Lcom/mycompany/app/lock/PatternLock;->D:Z

    .line 287
    .line 288
    if-nez v2, :cond_9

    .line 289
    .line 290
    iget v2, v0, Lcom/mycompany/app/lock/PatternLock;->z:I

    .line 291
    .line 292
    if-ne v2, v7, :cond_a

    .line 293
    .line 294
    :cond_9
    if-eqz v16, :cond_a

    .line 295
    .line 296
    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v5, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 300
    .line 301
    .line 302
    iget v2, v0, Lcom/mycompany/app/lock/PatternLock;->x:F

    .line 303
    .line 304
    iget v3, v0, Lcom/mycompany/app/lock/PatternLock;->y:F

    .line 305
    .line 306
    invoke-virtual {v5, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 307
    .line 308
    .line 309
    iget-object v2, v0, Lcom/mycompany/app/lock/PatternLock;->t:Landroid/graphics/Paint;

    .line 310
    .line 311
    iget v3, v0, Lcom/mycompany/app/lock/PatternLock;->x:F

    .line 312
    .line 313
    iget v4, v0, Lcom/mycompany/app/lock/PatternLock;->y:F

    .line 314
    .line 315
    sub-float/2addr v3, v8

    .line 316
    sub-float/2addr v4, v9

    .line 317
    mul-float/2addr v3, v3

    .line 318
    mul-float/2addr v4, v4

    .line 319
    add-float/2addr v4, v3

    .line 320
    float-to-double v3, v4

    .line 321
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    .line 322
    .line 323
    .line 324
    move-result-wide v3

    .line 325
    double-to-float v3, v3

    .line 326
    iget v4, v0, Lcom/mycompany/app/lock/PatternLock;->E:F

    .line 327
    .line 328
    div-float/2addr v3, v4

    .line 329
    const v4, 0x3e99999a    # 0.3f

    .line 330
    .line 331
    .line 332
    sub-float/2addr v3, v4

    .line 333
    const/high16 v4, 0x40800000    # 4.0f

    .line 334
    .line 335
    mul-float/2addr v3, v4

    .line 336
    const/4 v4, 0x0

    .line 337
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    .line 338
    .line 339
    .line 340
    move-result v3

    .line 341
    const/high16 v4, 0x3f800000    # 1.0f

    .line 342
    .line 343
    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    .line 344
    .line 345
    .line 346
    move-result v3

    .line 347
    mul-float/2addr v3, v10

    .line 348
    float-to-int v3, v3

    .line 349
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 350
    .line 351
    .line 352
    iget-object v2, v0, Lcom/mycompany/app/lock/PatternLock;->t:Landroid/graphics/Paint;

    .line 353
    .line 354
    invoke-virtual {v1, v5, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 355
    .line 356
    .line 357
    :cond_a
    return-void
.end method

.method public final onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "accessibility"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x7

    .line 24
    if-eq v0, v1, :cond_2

    .line 25
    .line 26
    const/16 v1, 0x9

    .line 27
    .line 28
    if-eq v0, v1, :cond_1

    .line 29
    .line 30
    const/16 v1, 0xa

    .line 31
    .line 32
    if-eq v0, v1, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v1, 0x1

    .line 36
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v1, 0x0

    .line 41
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const/4 v1, 0x2

    .line 46
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 47
    .line 48
    .line 49
    :goto_0
    invoke-virtual {p0, p1}, Lcom/mycompany/app/lock/PatternLock;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 53
    .line 54
    .line 55
    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    return p1
.end method

.method public final onMeasure(II)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/mycompany/app/lock/PatternLock;->i:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/high16 v2, -0x80000000

    .line 22
    .line 23
    if-eq p1, v2, :cond_1

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    move v0, v1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-eq p2, v2, :cond_3

    .line 46
    .line 47
    if-eqz p2, :cond_4

    .line 48
    .line 49
    move p1, v1

    .line 50
    goto :goto_1

    .line 51
    :cond_3
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    :cond_4
    :goto_1
    iget p2, p0, Lcom/mycompany/app/lock/PatternLock;->j:I

    .line 56
    .line 57
    if-eqz p2, :cond_7

    .line 58
    .line 59
    const/4 v1, 0x1

    .line 60
    if-eq p2, v1, :cond_6

    .line 61
    .line 62
    const/4 v1, 0x2

    .line 63
    if-ne p2, v1, :cond_5

    .line 64
    .line 65
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    goto :goto_2

    .line 70
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 71
    .line 72
    const-string p2, "Unknown aspect ratio"

    .line 73
    .line 74
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p1

    .line 78
    :cond_6
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    goto :goto_2

    .line 83
    :cond_7
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    move p1, v0

    .line 88
    :goto_2
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7

    .line 1
    :try_start_0
    check-cast p1, Lcom/mycompany/app/lock/PatternLock$SavedState;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p1, Lcom/mycompany/app/lock/PatternLock$SavedState;->c:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    move v3, v2

    .line 19
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-ge v3, v4, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    invoke-static {v4}, Ljava/lang/Character;->getNumericValue(C)I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    invoke-virtual {p0}, Lcom/mycompany/app/lock/PatternLock;->getDotCount()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    div-int v5, v4, v5

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/mycompany/app/lock/PatternLock;->getDotCount()I

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    rem-int/2addr v4, v6

    .line 44
    invoke-static {v5, v4}, Lcom/mycompany/app/lock/PatternLock$Dot;->b(II)Lcom/mycompany/app/lock/PatternLock$Dot;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    add-int/lit8 v3, v3, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/lock/PatternLock;->v:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/mycompany/app/lock/PatternLock;->v:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/mycompany/app/lock/PatternLock;->b()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    move v3, v2

    .line 72
    :goto_1
    if-ge v3, v0, :cond_1

    .line 73
    .line 74
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    add-int/lit8 v3, v3, 0x1

    .line 79
    .line 80
    check-cast v4, Lcom/mycompany/app/lock/PatternLock$Dot;

    .line 81
    .line 82
    iget-object v5, p0, Lcom/mycompany/app/lock/PatternLock;->w:[[Z

    .line 83
    .line 84
    iget v6, v4, Lcom/mycompany/app/lock/PatternLock$Dot;->c:I

    .line 85
    .line 86
    aget-object v5, v5, v6

    .line 87
    .line 88
    iget v4, v4, Lcom/mycompany/app/lock/PatternLock$Dot;->f:I

    .line 89
    .line 90
    const/4 v6, 0x1

    .line 91
    aput-boolean v6, v5, v4

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_1
    invoke-virtual {p0, v2}, Lcom/mycompany/app/lock/PatternLock;->setViewMode(I)V

    .line 95
    .line 96
    .line 97
    iget v0, p1, Lcom/mycompany/app/lock/PatternLock$SavedState;->f:I

    .line 98
    .line 99
    iput v0, p0, Lcom/mycompany/app/lock/PatternLock;->z:I

    .line 100
    .line 101
    iget-boolean v0, p1, Lcom/mycompany/app/lock/PatternLock$SavedState;->g:Z

    .line 102
    .line 103
    iput-boolean v0, p0, Lcom/mycompany/app/lock/PatternLock;->A:Z

    .line 104
    .line 105
    iget-boolean v0, p1, Lcom/mycompany/app/lock/PatternLock$SavedState;->h:Z

    .line 106
    .line 107
    iput-boolean v0, p0, Lcom/mycompany/app/lock/PatternLock;->B:Z

    .line 108
    .line 109
    iget-boolean p1, p1, Lcom/mycompany/app/lock/PatternLock$SavedState;->i:Z

    .line 110
    .line 111
    iput-boolean p1, p0, Lcom/mycompany/app/lock/PatternLock;->C:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    :catch_0
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    new-instance v0, Lcom/mycompany/app/lock/PatternLock$SavedState;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/mycompany/app/lock/PatternLock;->v:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-static {p0, v2}, Lcom/mycompany/app/lock/PatternLock;->h(Lcom/mycompany/app/lock/PatternLock;Ljava/util/List;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget v3, p0, Lcom/mycompany/app/lock/PatternLock;->z:I

    .line 14
    .line 15
    iget-boolean v4, p0, Lcom/mycompany/app/lock/PatternLock;->A:Z

    .line 16
    .line 17
    iget-boolean v5, p0, Lcom/mycompany/app/lock/PatternLock;->B:Z

    .line 18
    .line 19
    iget-boolean v6, p0, Lcom/mycompany/app/lock/PatternLock;->C:Z

    .line 20
    .line 21
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/lock/PatternLock$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZ)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    sub-int/2addr p1, p3

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 7
    .line 8
    .line 9
    move-result p3

    .line 10
    sub-int/2addr p1, p3

    .line 11
    int-to-float p1, p1

    .line 12
    sget p3, Lcom/mycompany/app/lock/PatternLock;->J:I

    .line 13
    .line 14
    int-to-float p3, p3

    .line 15
    div-float/2addr p1, p3

    .line 16
    iput p1, p0, Lcom/mycompany/app/lock/PatternLock;->E:F

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    sub-int/2addr p2, p1

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    sub-int/2addr p2, p1

    .line 28
    int-to-float p1, p2

    .line 29
    sget p2, Lcom/mycompany/app/lock/PatternLock;->J:I

    .line 30
    .line 31
    int-to-float p2, p2

    .line 32
    div-float/2addr p1, p2

    .line 33
    iput p1, p0, Lcom/mycompany/app/lock/PatternLock;->F:F

    .line 34
    .line 35
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-boolean v2, v0, Lcom/mycompany/app/lock/PatternLock;->A:Z

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v2, :cond_18

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    goto/16 :goto_c

    .line 17
    .line 18
    :cond_0
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v4, 0x1

    .line 23
    if-eqz v2, :cond_13

    .line 24
    .line 25
    if-eq v2, v4, :cond_c

    .line 26
    .line 27
    const/4 v5, 0x2

    .line 28
    if-eq v2, v5, :cond_3

    .line 29
    .line 30
    const/4 v1, 0x3

    .line 31
    if-eq v2, v1, :cond_1

    .line 32
    .line 33
    goto/16 :goto_c

    .line 34
    .line 35
    :cond_1
    iput-boolean v3, v0, Lcom/mycompany/app/lock/PatternLock;->D:Z

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/mycompany/app/lock/PatternLock;->i()V

    .line 38
    .line 39
    .line 40
    iget-object v1, v0, Lcom/mycompany/app/lock/PatternLock;->u:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    :goto_0
    if-ge v3, v2, :cond_2

    .line 47
    .line 48
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    add-int/lit8 v3, v3, 0x1

    .line 53
    .line 54
    check-cast v5, Lcom/mycompany/app/lock/PatternLock$PatternLockListener;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    move/from16 v16, v4

    .line 58
    .line 59
    goto/16 :goto_9

    .line 60
    .line 61
    :cond_3
    iget v2, v0, Lcom/mycompany/app/lock/PatternLock;->n:I

    .line 62
    .line 63
    int-to-float v2, v2

    .line 64
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getHistorySize()I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    move v6, v3

    .line 69
    move v7, v6

    .line 70
    :goto_1
    add-int/lit8 v8, v5, 0x1

    .line 71
    .line 72
    if-ge v6, v8, :cond_b

    .line 73
    .line 74
    if-ge v6, v5, :cond_4

    .line 75
    .line 76
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    .line 77
    .line 78
    .line 79
    move-result v8

    .line 80
    goto :goto_2

    .line 81
    :cond_4
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    .line 82
    .line 83
    .line 84
    move-result v8

    .line 85
    :goto_2
    if-ge v6, v5, :cond_5

    .line 86
    .line 87
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    .line 88
    .line 89
    .line 90
    move-result v9

    .line 91
    goto :goto_3

    .line 92
    :cond_5
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    :goto_3
    invoke-virtual {v0, v8, v9}, Lcom/mycompany/app/lock/PatternLock;->c(FF)Lcom/mycompany/app/lock/PatternLock$Dot;

    .line 97
    .line 98
    .line 99
    move-result-object v10

    .line 100
    iget-object v11, v0, Lcom/mycompany/app/lock/PatternLock;->v:Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 103
    .line 104
    .line 105
    move-result v11

    .line 106
    if-eqz v10, :cond_7

    .line 107
    .line 108
    if-ne v11, v4, :cond_7

    .line 109
    .line 110
    iput-boolean v4, v0, Lcom/mycompany/app/lock/PatternLock;->D:Z

    .line 111
    .line 112
    iget-object v12, v0, Lcom/mycompany/app/lock/PatternLock;->u:Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 115
    .line 116
    .line 117
    move-result v13

    .line 118
    move v14, v3

    .line 119
    :cond_6
    :goto_4
    if-ge v14, v13, :cond_7

    .line 120
    .line 121
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v15

    .line 125
    add-int/lit8 v14, v14, 0x1

    .line 126
    .line 127
    check-cast v15, Lcom/mycompany/app/lock/PatternLock$PatternLockListener;

    .line 128
    .line 129
    if-eqz v15, :cond_6

    .line 130
    .line 131
    invoke-interface {v15}, Lcom/mycompany/app/lock/PatternLock$PatternLockListener;->b()V

    .line 132
    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_7
    iget v12, v0, Lcom/mycompany/app/lock/PatternLock;->x:F

    .line 136
    .line 137
    sub-float v12, v8, v12

    .line 138
    .line 139
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    .line 140
    .line 141
    .line 142
    move-result v12

    .line 143
    iget v13, v0, Lcom/mycompany/app/lock/PatternLock;->y:F

    .line 144
    .line 145
    sub-float v13, v9, v13

    .line 146
    .line 147
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    .line 148
    .line 149
    .line 150
    move-result v13

    .line 151
    const/4 v14, 0x0

    .line 152
    cmpl-float v12, v12, v14

    .line 153
    .line 154
    if-gtz v12, :cond_8

    .line 155
    .line 156
    cmpl-float v12, v13, v14

    .line 157
    .line 158
    if-lez v12, :cond_9

    .line 159
    .line 160
    :cond_8
    move v7, v4

    .line 161
    :cond_9
    iget-boolean v12, v0, Lcom/mycompany/app/lock/PatternLock;->D:Z

    .line 162
    .line 163
    if-eqz v12, :cond_a

    .line 164
    .line 165
    if-lez v11, :cond_a

    .line 166
    .line 167
    iget-object v12, v0, Lcom/mycompany/app/lock/PatternLock;->v:Ljava/util/ArrayList;

    .line 168
    .line 169
    add-int/lit8 v11, v11, -0x1

    .line 170
    .line 171
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v11

    .line 175
    check-cast v11, Lcom/mycompany/app/lock/PatternLock$Dot;

    .line 176
    .line 177
    iget v12, v11, Lcom/mycompany/app/lock/PatternLock$Dot;->f:I

    .line 178
    .line 179
    invoke-virtual {v0, v12}, Lcom/mycompany/app/lock/PatternLock;->d(I)F

    .line 180
    .line 181
    .line 182
    move-result v12

    .line 183
    iget v11, v11, Lcom/mycompany/app/lock/PatternLock$Dot;->c:I

    .line 184
    .line 185
    invoke-virtual {v0, v11}, Lcom/mycompany/app/lock/PatternLock;->e(I)F

    .line 186
    .line 187
    .line 188
    move-result v11

    .line 189
    invoke-static {v12, v8}, Ljava/lang/Math;->min(FF)F

    .line 190
    .line 191
    .line 192
    move-result v13

    .line 193
    sub-float/2addr v13, v2

    .line 194
    invoke-static {v12, v8}, Ljava/lang/Math;->max(FF)F

    .line 195
    .line 196
    .line 197
    move-result v8

    .line 198
    add-float/2addr v8, v2

    .line 199
    invoke-static {v11, v9}, Ljava/lang/Math;->min(FF)F

    .line 200
    .line 201
    .line 202
    move-result v12

    .line 203
    sub-float/2addr v12, v2

    .line 204
    invoke-static {v11, v9}, Ljava/lang/Math;->max(FF)F

    .line 205
    .line 206
    .line 207
    move-result v9

    .line 208
    add-float/2addr v9, v2

    .line 209
    if-eqz v10, :cond_a

    .line 210
    .line 211
    iget v11, v0, Lcom/mycompany/app/lock/PatternLock;->E:F

    .line 212
    .line 213
    const/high16 v14, 0x3f000000    # 0.5f

    .line 214
    .line 215
    mul-float/2addr v11, v14

    .line 216
    iget v15, v0, Lcom/mycompany/app/lock/PatternLock;->F:F

    .line 217
    .line 218
    mul-float/2addr v15, v14

    .line 219
    iget v14, v10, Lcom/mycompany/app/lock/PatternLock$Dot;->f:I

    .line 220
    .line 221
    invoke-virtual {v0, v14}, Lcom/mycompany/app/lock/PatternLock;->d(I)F

    .line 222
    .line 223
    .line 224
    move-result v14

    .line 225
    iget v10, v10, Lcom/mycompany/app/lock/PatternLock$Dot;->c:I

    .line 226
    .line 227
    invoke-virtual {v0, v10}, Lcom/mycompany/app/lock/PatternLock;->e(I)F

    .line 228
    .line 229
    .line 230
    move-result v10

    .line 231
    move/from16 v16, v4

    .line 232
    .line 233
    sub-float v4, v14, v11

    .line 234
    .line 235
    invoke-static {v4, v13}, Ljava/lang/Math;->min(FF)F

    .line 236
    .line 237
    .line 238
    add-float/2addr v14, v11

    .line 239
    invoke-static {v14, v8}, Ljava/lang/Math;->max(FF)F

    .line 240
    .line 241
    .line 242
    sub-float v4, v10, v15

    .line 243
    .line 244
    invoke-static {v4, v12}, Ljava/lang/Math;->min(FF)F

    .line 245
    .line 246
    .line 247
    add-float/2addr v10, v15

    .line 248
    invoke-static {v10, v9}, Ljava/lang/Math;->max(FF)F

    .line 249
    .line 250
    .line 251
    goto :goto_5

    .line 252
    :cond_a
    move/from16 v16, v4

    .line 253
    .line 254
    :goto_5
    add-int/lit8 v6, v6, 0x1

    .line 255
    .line 256
    move/from16 v4, v16

    .line 257
    .line 258
    goto/16 :goto_1

    .line 259
    .line 260
    :cond_b
    move/from16 v16, v4

    .line 261
    .line 262
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    iput v2, v0, Lcom/mycompany/app/lock/PatternLock;->x:F

    .line 267
    .line 268
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    .line 269
    .line 270
    .line 271
    move-result v1

    .line 272
    iput v1, v0, Lcom/mycompany/app/lock/PatternLock;->y:F

    .line 273
    .line 274
    if-eqz v7, :cond_12

    .line 275
    .line 276
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 277
    .line 278
    .line 279
    return v16

    .line 280
    :cond_c
    move/from16 v16, v4

    .line 281
    .line 282
    iget-object v1, v0, Lcom/mycompany/app/lock/PatternLock;->v:Ljava/util/ArrayList;

    .line 283
    .line 284
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 285
    .line 286
    .line 287
    move-result v1

    .line 288
    if-nez v1, :cond_12

    .line 289
    .line 290
    iput-boolean v3, v0, Lcom/mycompany/app/lock/PatternLock;->D:Z

    .line 291
    .line 292
    move v1, v3

    .line 293
    :goto_6
    sget v2, Lcom/mycompany/app/lock/PatternLock;->J:I

    .line 294
    .line 295
    if-ge v1, v2, :cond_f

    .line 296
    .line 297
    move v2, v3

    .line 298
    :goto_7
    sget v4, Lcom/mycompany/app/lock/PatternLock;->J:I

    .line 299
    .line 300
    if-ge v2, v4, :cond_e

    .line 301
    .line 302
    iget-object v4, v0, Lcom/mycompany/app/lock/PatternLock;->c:[[Lcom/mycompany/app/lock/PatternLock$DotState;

    .line 303
    .line 304
    aget-object v4, v4, v1

    .line 305
    .line 306
    aget-object v4, v4, v2

    .line 307
    .line 308
    iget-object v5, v4, Lcom/mycompany/app/lock/PatternLock$DotState;->d:Landroid/animation/ValueAnimator;

    .line 309
    .line 310
    if-eqz v5, :cond_d

    .line 311
    .line 312
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    .line 313
    .line 314
    .line 315
    const/4 v5, 0x1

    .line 316
    iput v5, v4, Lcom/mycompany/app/lock/PatternLock$DotState;->b:F

    .line 317
    .line 318
    iput v5, v4, Lcom/mycompany/app/lock/PatternLock$DotState;->c:F

    .line 319
    .line 320
    :cond_d
    add-int/lit8 v2, v2, 0x1

    .line 321
    .line 322
    goto :goto_7

    .line 323
    :cond_e
    add-int/lit8 v1, v1, 0x1

    .line 324
    .line 325
    goto :goto_6

    .line 326
    :cond_f
    iget-object v1, v0, Lcom/mycompany/app/lock/PatternLock;->v:Ljava/util/ArrayList;

    .line 327
    .line 328
    iget-object v2, v0, Lcom/mycompany/app/lock/PatternLock;->u:Ljava/util/ArrayList;

    .line 329
    .line 330
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 331
    .line 332
    .line 333
    move-result v4

    .line 334
    :cond_10
    :goto_8
    if-ge v3, v4, :cond_11

    .line 335
    .line 336
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v5

    .line 340
    add-int/lit8 v3, v3, 0x1

    .line 341
    .line 342
    check-cast v5, Lcom/mycompany/app/lock/PatternLock$PatternLockListener;

    .line 343
    .line 344
    if-eqz v5, :cond_10

    .line 345
    .line 346
    invoke-interface {v5, v1}, Lcom/mycompany/app/lock/PatternLock$PatternLockListener;->a(Ljava/util/ArrayList;)V

    .line 347
    .line 348
    .line 349
    goto :goto_8

    .line 350
    :cond_11
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 351
    .line 352
    .line 353
    :cond_12
    :goto_9
    return v16

    .line 354
    :cond_13
    move/from16 v16, v4

    .line 355
    .line 356
    invoke-virtual {v0}, Lcom/mycompany/app/lock/PatternLock;->i()V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    .line 360
    .line 361
    .line 362
    move-result v2

    .line 363
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    .line 364
    .line 365
    .line 366
    move-result v1

    .line 367
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/lock/PatternLock;->c(FF)Lcom/mycompany/app/lock/PatternLock$Dot;

    .line 368
    .line 369
    .line 370
    move-result-object v4

    .line 371
    if-eqz v4, :cond_15

    .line 372
    .line 373
    move/from16 v5, v16

    .line 374
    .line 375
    iput-boolean v5, v0, Lcom/mycompany/app/lock/PatternLock;->D:Z

    .line 376
    .line 377
    iput v3, v0, Lcom/mycompany/app/lock/PatternLock;->z:I

    .line 378
    .line 379
    iget-object v5, v0, Lcom/mycompany/app/lock/PatternLock;->u:Ljava/util/ArrayList;

    .line 380
    .line 381
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 382
    .line 383
    .line 384
    move-result v6

    .line 385
    :cond_14
    :goto_a
    if-ge v3, v6, :cond_16

    .line 386
    .line 387
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v7

    .line 391
    add-int/lit8 v3, v3, 0x1

    .line 392
    .line 393
    check-cast v7, Lcom/mycompany/app/lock/PatternLock$PatternLockListener;

    .line 394
    .line 395
    if-eqz v7, :cond_14

    .line 396
    .line 397
    invoke-interface {v7}, Lcom/mycompany/app/lock/PatternLock$PatternLockListener;->b()V

    .line 398
    .line 399
    .line 400
    goto :goto_a

    .line 401
    :cond_15
    iput-boolean v3, v0, Lcom/mycompany/app/lock/PatternLock;->D:Z

    .line 402
    .line 403
    iget-object v5, v0, Lcom/mycompany/app/lock/PatternLock;->u:Ljava/util/ArrayList;

    .line 404
    .line 405
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 406
    .line 407
    .line 408
    move-result v6

    .line 409
    :goto_b
    if-ge v3, v6, :cond_16

    .line 410
    .line 411
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v7

    .line 415
    add-int/lit8 v3, v3, 0x1

    .line 416
    .line 417
    check-cast v7, Lcom/mycompany/app/lock/PatternLock$PatternLockListener;

    .line 418
    .line 419
    goto :goto_b

    .line 420
    :cond_16
    if-eqz v4, :cond_17

    .line 421
    .line 422
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 423
    .line 424
    .line 425
    :cond_17
    iput v2, v0, Lcom/mycompany/app/lock/PatternLock;->x:F

    .line 426
    .line 427
    iput v1, v0, Lcom/mycompany/app/lock/PatternLock;->y:F

    .line 428
    .line 429
    const/16 v16, 0x1

    .line 430
    .line 431
    return v16

    .line 432
    :cond_18
    :goto_c
    return v3
.end method

.method public setAspectRatio(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mycompany/app/lock/PatternLock;->j:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setAspectRatioEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/lock/PatternLock;->i:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setCorrectStateColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mycompany/app/lock/PatternLock;->m:I

    .line 2
    .line 3
    return-void
.end method

.method public setDotAnimationDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mycompany/app/lock/PatternLock;->q:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDotCount(I)V
    .locals 5

    .line 1
    sput p1, Lcom/mycompany/app/lock/PatternLock;->J:I

    .line 2
    .line 3
    mul-int/2addr p1, p1

    .line 4
    iput p1, p0, Lcom/mycompany/app/lock/PatternLock;->f:I

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    iget v0, p0, Lcom/mycompany/app/lock/PatternLock;->f:I

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/mycompany/app/lock/PatternLock;->v:Ljava/util/ArrayList;

    .line 14
    .line 15
    sget p1, Lcom/mycompany/app/lock/PatternLock;->J:I

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    new-array v1, v0, [I

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    aput p1, v1, v2

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    aput p1, v1, v3

    .line 25
    .line 26
    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 27
    .line 28
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, [[Z

    .line 33
    .line 34
    iput-object p1, p0, Lcom/mycompany/app/lock/PatternLock;->w:[[Z

    .line 35
    .line 36
    sget p1, Lcom/mycompany/app/lock/PatternLock;->J:I

    .line 37
    .line 38
    new-array v0, v0, [I

    .line 39
    .line 40
    aput p1, v0, v2

    .line 41
    .line 42
    aput p1, v0, v3

    .line 43
    .line 44
    const-class p1, Lcom/mycompany/app/lock/PatternLock$DotState;

    .line 45
    .line 46
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, [[Lcom/mycompany/app/lock/PatternLock$DotState;

    .line 51
    .line 52
    iput-object p1, p0, Lcom/mycompany/app/lock/PatternLock;->c:[[Lcom/mycompany/app/lock/PatternLock$DotState;

    .line 53
    .line 54
    move p1, v3

    .line 55
    :goto_0
    sget v0, Lcom/mycompany/app/lock/PatternLock;->J:I

    .line 56
    .line 57
    if-ge p1, v0, :cond_1

    .line 58
    .line 59
    move v0, v3

    .line 60
    :goto_1
    sget v1, Lcom/mycompany/app/lock/PatternLock;->J:I

    .line 61
    .line 62
    if-ge v0, v1, :cond_0

    .line 63
    .line 64
    iget-object v1, p0, Lcom/mycompany/app/lock/PatternLock;->c:[[Lcom/mycompany/app/lock/PatternLock$DotState;

    .line 65
    .line 66
    aget-object v2, v1, p1

    .line 67
    .line 68
    new-instance v4, Lcom/mycompany/app/lock/PatternLock$DotState;

    .line 69
    .line 70
    invoke-direct {v4}, Lcom/mycompany/app/lock/PatternLock$DotState;-><init>()V

    .line 71
    .line 72
    .line 73
    aput-object v4, v2, v0

    .line 74
    .line 75
    aget-object v1, v1, p1

    .line 76
    .line 77
    aget-object v1, v1, v0

    .line 78
    .line 79
    iget v2, p0, Lcom/mycompany/app/lock/PatternLock;->o:I

    .line 80
    .line 81
    int-to-float v2, v2

    .line 82
    iput v2, v1, Lcom/mycompany/app/lock/PatternLock$DotState;->a:F

    .line 83
    .line 84
    add-int/lit8 v0, v0, 0x1

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public setDotNormalSize(I)V
    .locals 5

    .line 1
    iput p1, p0, Lcom/mycompany/app/lock/PatternLock;->o:I

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    move v0, p1

    .line 5
    :goto_0
    sget v1, Lcom/mycompany/app/lock/PatternLock;->J:I

    .line 6
    .line 7
    if-ge v0, v1, :cond_1

    .line 8
    .line 9
    move v1, p1

    .line 10
    :goto_1
    sget v2, Lcom/mycompany/app/lock/PatternLock;->J:I

    .line 11
    .line 12
    if-ge v1, v2, :cond_0

    .line 13
    .line 14
    iget-object v2, p0, Lcom/mycompany/app/lock/PatternLock;->c:[[Lcom/mycompany/app/lock/PatternLock$DotState;

    .line 15
    .line 16
    aget-object v3, v2, v0

    .line 17
    .line 18
    new-instance v4, Lcom/mycompany/app/lock/PatternLock$DotState;

    .line 19
    .line 20
    invoke-direct {v4}, Lcom/mycompany/app/lock/PatternLock$DotState;-><init>()V

    .line 21
    .line 22
    .line 23
    aput-object v4, v3, v1

    .line 24
    .line 25
    aget-object v2, v2, v0

    .line 26
    .line 27
    aget-object v2, v2, v1

    .line 28
    .line 29
    iget v3, p0, Lcom/mycompany/app/lock/PatternLock;->o:I

    .line 30
    .line 31
    int-to-float v3, v3

    .line 32
    iput v3, v2, Lcom/mycompany/app/lock/PatternLock$DotState;->a:F

    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public setDotSelectedSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mycompany/app/lock/PatternLock;->p:I

    .line 2
    .line 3
    return-void
.end method

.method public setEnableHapticFeedback(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/lock/PatternLock;->C:Z

    .line 2
    .line 3
    return-void
.end method

.method public setInStealthMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/lock/PatternLock;->B:Z

    .line 2
    .line 3
    return-void
.end method

.method public setInputEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/lock/PatternLock;->A:Z

    .line 2
    .line 3
    return-void
.end method

.method public setNormalStateColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mycompany/app/lock/PatternLock;->k:I

    .line 2
    .line 3
    return-void
.end method

.method public setPathEndAnimationDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mycompany/app/lock/PatternLock;->r:I

    .line 2
    .line 3
    return-void
.end method

.method public setPathWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mycompany/app/lock/PatternLock;->n:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/mycompany/app/lock/PatternLock;->g()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/lock/PatternLock;->C:Z

    .line 2
    .line 3
    return-void
.end method

.method public setViewMode(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/mycompany/app/lock/PatternLock;->z:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_1

    .line 5
    .line 6
    iget-object p1, p0, Lcom/mycompany/app/lock/PatternLock;->v:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    iput-wide v0, p0, Lcom/mycompany/app/lock/PatternLock;->g:J

    .line 19
    .line 20
    iget-object p1, p0, Lcom/mycompany/app/lock/PatternLock;->v:Ljava/util/ArrayList;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lcom/mycompany/app/lock/PatternLock$Dot;

    .line 28
    .line 29
    iget v0, p1, Lcom/mycompany/app/lock/PatternLock$Dot;->f:I

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/mycompany/app/lock/PatternLock;->d(I)F

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput v0, p0, Lcom/mycompany/app/lock/PatternLock;->x:F

    .line 36
    .line 37
    iget p1, p1, Lcom/mycompany/app/lock/PatternLock$Dot;->c:I

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lcom/mycompany/app/lock/PatternLock;->e(I)F

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    iput p1, p0, Lcom/mycompany/app/lock/PatternLock;->y:F

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/mycompany/app/lock/PatternLock;->b()V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    const-string v0, "you must have a pattern to animate if you want to set the display mode to animate"

    .line 52
    .line 53
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1

    .line 57
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public setWrongStateColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mycompany/app/lock/PatternLock;->l:I

    .line 2
    .line 3
    return-void
.end method
