.class public Lcom/mycompany/app/wview/WebAreaMenu;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/wview/WebAreaMenu$WebAreaMenuListener;
    }
.end annotation


# static fields
.field public static final K:I


# instance fields
.field public A:F

.field public B:I

.field public C:F

.field public final D:Landroid/view/GestureDetector;

.field public E:F

.field public F:Z

.field public final G:Ljava/lang/Runnable;

.field public H:F

.field public I:Z

.field public final J:Ljava/lang/Runnable;

.field public final c:Z

.field public final f:Landroid/content/Context;

.field public g:Lcom/mycompany/app/wview/WebAreaMenu$WebAreaMenuListener;

.field public final h:Lcom/mycompany/app/view/MyButtonImage;

.field public final i:Lcom/mycompany/app/view/MyButtonImage;

.field public final j:Lcom/mycompany/app/view/MyButtonImage;

.field public final k:Landroid/graphics/RectF;

.field public final l:Landroid/graphics/Paint;

.field public m:Z

.field public final n:I

.field public final o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:Z

.field public v:Z

.field public w:Landroid/animation/ValueAnimator;

.field public x:Landroid/animation/ValueAnimator;

.field public y:Z

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 2
    .line 3
    sput v0, Lcom/mycompany/app/wview/WebAreaMenu;->K:I

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/wview/WebAreaMenu$11;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/wview/WebAreaMenu$11;-><init>(Lcom/mycompany/app/wview/WebAreaMenu;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->G:Ljava/lang/Runnable;

    .line 10
    .line 11
    new-instance v0, Lcom/mycompany/app/wview/WebAreaMenu$15;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/mycompany/app/wview/WebAreaMenu$15;-><init>(Lcom/mycompany/app/wview/WebAreaMenu;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->J:Ljava/lang/Runnable;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->c:Z

    .line 20
    .line 21
    iput-object p1, p0, Lcom/mycompany/app/wview/WebAreaMenu;->f:Landroid/content/Context;

    .line 22
    .line 23
    const/high16 v1, 0x43200000    # 160.0f

    .line 24
    .line 25
    invoke-static {p1, v1}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iput p1, p0, Lcom/mycompany/app/wview/WebAreaMenu;->n:I

    .line 34
    .line 35
    sget p1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 36
    .line 37
    iput p1, p0, Lcom/mycompany/app/wview/WebAreaMenu;->o:I

    .line 38
    .line 39
    new-instance p1, Landroid/graphics/RectF;

    .line 40
    .line 41
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lcom/mycompany/app/wview/WebAreaMenu;->k:Landroid/graphics/RectF;

    .line 45
    .line 46
    new-instance p1, Landroid/graphics/Paint;

    .line 47
    .line 48
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lcom/mycompany/app/wview/WebAreaMenu;->l:Landroid/graphics/Paint;

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/mycompany/app/wview/WebAreaMenu;->l:Landroid/graphics/Paint;

    .line 57
    .line 58
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 59
    .line 60
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/mycompany/app/wview/WebAreaMenu;->l:Landroid/graphics/Paint;

    .line 64
    .line 65
    const v1, -0x8a8a8b

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/mycompany/app/wview/WebAreaMenu;->l:Landroid/graphics/Paint;

    .line 72
    .line 73
    const/high16 v1, 0x3f800000    # 1.0f

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 76
    .line 77
    .line 78
    new-instance p1, Lcom/mycompany/app/wview/WebAreaMenu$1;

    .line 79
    .line 80
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    .line 85
    .line 86
    new-instance p1, Landroid/view/GestureDetector;

    .line 87
    .line 88
    iget-object v1, p0, Lcom/mycompany/app/wview/WebAreaMenu;->f:Landroid/content/Context;

    .line 89
    .line 90
    new-instance v2, Lcom/mycompany/app/wview/WebAreaMenu$2;

    .line 91
    .line 92
    invoke-direct {v2, p0}, Lcom/mycompany/app/wview/WebAreaMenu$2;-><init>(Lcom/mycompany/app/wview/WebAreaMenu;)V

    .line 93
    .line 94
    .line 95
    invoke-direct {p1, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 96
    .line 97
    .line 98
    iput-object p1, p0, Lcom/mycompany/app/wview/WebAreaMenu;->D:Landroid/view/GestureDetector;

    .line 99
    .line 100
    sget p1, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 101
    .line 102
    int-to-float p1, p1

    .line 103
    invoke-virtual {p0, p1}, Landroid/view/View;->setElevation(F)V

    .line 104
    .line 105
    .line 106
    new-instance p1, Lcom/mycompany/app/wview/WebAreaMenu$3;

    .line 107
    .line 108
    invoke-direct {p1}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 115
    .line 116
    .line 117
    new-instance p1, Lcom/mycompany/app/view/MyButtonImage;

    .line 118
    .line 119
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->f:Landroid/content/Context;

    .line 120
    .line 121
    invoke-direct {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 122
    .line 123
    .line 124
    iput-object p1, p0, Lcom/mycompany/app/wview/WebAreaMenu;->h:Lcom/mycompany/app/view/MyButtonImage;

    .line 125
    .line 126
    new-instance p1, Lcom/mycompany/app/view/MyButtonImage;

    .line 127
    .line 128
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->f:Landroid/content/Context;

    .line 129
    .line 130
    invoke-direct {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 131
    .line 132
    .line 133
    iput-object p1, p0, Lcom/mycompany/app/wview/WebAreaMenu;->i:Lcom/mycompany/app/view/MyButtonImage;

    .line 134
    .line 135
    new-instance p1, Lcom/mycompany/app/view/MyButtonImage;

    .line 136
    .line 137
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->f:Landroid/content/Context;

    .line 138
    .line 139
    invoke-direct {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 140
    .line 141
    .line 142
    iput-object p1, p0, Lcom/mycompany/app/wview/WebAreaMenu;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 143
    .line 144
    iget-object p1, p0, Lcom/mycompany/app/wview/WebAreaMenu;->h:Lcom/mycompany/app/view/MyButtonImage;

    .line 145
    .line 146
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 147
    .line 148
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 149
    .line 150
    .line 151
    iget-object p1, p0, Lcom/mycompany/app/wview/WebAreaMenu;->i:Lcom/mycompany/app/view/MyButtonImage;

    .line 152
    .line 153
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 154
    .line 155
    .line 156
    iget-object p1, p0, Lcom/mycompany/app/wview/WebAreaMenu;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 157
    .line 158
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 159
    .line 160
    .line 161
    sget p1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 162
    .line 163
    const/4 v0, 0x0

    .line 164
    invoke-virtual {p0, p1, v0, p1, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 168
    .line 169
    .line 170
    iget-object p1, p0, Lcom/mycompany/app/wview/WebAreaMenu;->h:Lcom/mycompany/app/view/MyButtonImage;

    .line 171
    .line 172
    iget v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->o:I

    .line 173
    .line 174
    invoke-virtual {p0, p1, v0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 175
    .line 176
    .line 177
    iget-object p1, p0, Lcom/mycompany/app/wview/WebAreaMenu;->i:Lcom/mycompany/app/view/MyButtonImage;

    .line 178
    .line 179
    iget v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->o:I

    .line 180
    .line 181
    invoke-virtual {p0, p1, v0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 182
    .line 183
    .line 184
    iget-object p1, p0, Lcom/mycompany/app/wview/WebAreaMenu;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 185
    .line 186
    iget v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->o:I

    .line 187
    .line 188
    invoke-virtual {p0, p1, v0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 189
    .line 190
    .line 191
    iget-object p1, p0, Lcom/mycompany/app/wview/WebAreaMenu;->h:Lcom/mycompany/app/view/MyButtonImage;

    .line 192
    .line 193
    new-instance v0, Lcom/mycompany/app/wview/WebAreaMenu$4;

    .line 194
    .line 195
    invoke-direct {v0, p0}, Lcom/mycompany/app/wview/WebAreaMenu$4;-><init>(Lcom/mycompany/app/wview/WebAreaMenu;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    .line 200
    .line 201
    iget-object p1, p0, Lcom/mycompany/app/wview/WebAreaMenu;->i:Lcom/mycompany/app/view/MyButtonImage;

    .line 202
    .line 203
    new-instance v0, Lcom/mycompany/app/wview/WebAreaMenu$5;

    .line 204
    .line 205
    invoke-direct {v0, p0}, Lcom/mycompany/app/wview/WebAreaMenu$5;-><init>(Lcom/mycompany/app/wview/WebAreaMenu;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    .line 210
    .line 211
    iget-object p1, p0, Lcom/mycompany/app/wview/WebAreaMenu;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 212
    .line 213
    new-instance v0, Lcom/mycompany/app/wview/WebAreaMenu$6;

    .line 214
    .line 215
    invoke-direct {v0, p0}, Lcom/mycompany/app/wview/WebAreaMenu$6;-><init>(Lcom/mycompany/app/wview/WebAreaMenu;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebAreaMenu;->f()V

    .line 222
    .line 223
    .line 224
    return-void
.end method

.method public static bridge synthetic a(Lcom/mycompany/app/wview/WebAreaMenu;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/wview/WebAreaMenu;->setValAnimReset(F)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/mycompany/app/wview/WebAreaMenu;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/wview/WebAreaMenu;->setValAnimSwipe(F)V

    return-void
.end method

.method private setTransX(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->s:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    add-float/2addr v0, p1

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->setX(F)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private setTransY(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->t:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    add-float/2addr v0, p1

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->setY(F)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private setValAnimReset(F)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->B:I

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/mycompany/app/wview/WebAreaMenu;->setTransX(F)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    const/4 v1, 0x1

    .line 16
    if-ne v0, v1, :cond_2

    .line 17
    .line 18
    invoke-direct {p0, p1}, Lcom/mycompany/app/wview/WebAreaMenu;->setTransY(F)V

    .line 19
    .line 20
    .line 21
    :cond_2
    :goto_0
    return-void
.end method

.method private setValAnimSwipe(F)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->B:I

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    iget v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->C:F

    .line 12
    .line 13
    sub-float v0, p1, v0

    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    sget v1, Lcom/mycompany/app/wview/WebAreaMenu;->K:I

    .line 20
    .line 21
    int-to-float v1, v1

    .line 22
    div-float/2addr v0, v1

    .line 23
    iget v1, p0, Lcom/mycompany/app/wview/WebAreaMenu;->B:I

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    if-ne v1, v2, :cond_2

    .line 27
    .line 28
    invoke-direct {p0, p1}, Lcom/mycompany/app/wview/WebAreaMenu;->setTransX(F)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    invoke-direct {p0, p1}, Lcom/mycompany/app/wview/WebAreaMenu;->setTransY(F)V

    .line 33
    .line 34
    .line 35
    :goto_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 36
    .line 37
    sub-float/2addr p1, v0

    .line 38
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 39
    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->u:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->m:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->m:Z

    .line 13
    .line 14
    new-instance v0, Lcom/mycompany/app/wview/WebAreaMenu$7;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/mycompany/app/wview/WebAreaMenu$7;-><init>(Lcom/mycompany/app/wview/WebAreaMenu;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->w:Landroid/animation/ValueAnimator;

    .line 3
    .line 4
    iget v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->B:I

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    const/4 v2, 0x0

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v2}, Lcom/mycompany/app/wview/WebAreaMenu;->setTransX(F)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x1

    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    invoke-direct {p0, v2}, Lcom/mycompany/app/wview/WebAreaMenu;->setTransY(F)V

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->B:I

    .line 22
    .line 23
    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->l:Landroid/graphics/Paint;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lcom/mycompany/app/wview/WebAreaMenu;->k:Landroid/graphics/RectF;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 18
    .line 19
    int-to-float v2, v2

    .line 20
    invoke-virtual {p1, v1, v2, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-boolean v1, p0, Lcom/mycompany/app/wview/WebAreaMenu;->c:Z

    .line 3
    .line 4
    if-eqz v1, :cond_16

    .line 5
    .line 6
    iget-object v2, p0, Lcom/mycompany/app/wview/WebAreaMenu;->w:Landroid/animation/ValueAnimator;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    goto/16 :goto_1

    .line 11
    .line 12
    :cond_0
    iget-object v2, p0, Lcom/mycompany/app/wview/WebAreaMenu;->x:Landroid/animation/ValueAnimator;

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    goto/16 :goto_1

    .line 17
    .line 18
    :cond_1
    iget-object v2, p0, Lcom/mycompany/app/wview/WebAreaMenu;->D:Landroid/view/GestureDetector;

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 23
    .line 24
    .line 25
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x1

    .line 31
    if-eqz v2, :cond_14

    .line 32
    .line 33
    const/4 v5, 0x2

    .line 34
    if-eq v2, v4, :cond_c

    .line 35
    .line 36
    if-eq v2, v5, :cond_3

    .line 37
    .line 38
    const/4 v6, 0x3

    .line 39
    if-eq v2, v6, :cond_c

    .line 40
    .line 41
    goto/16 :goto_0

    .line 42
    .line 43
    :cond_3
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->y:Z

    .line 44
    .line 45
    if-nez v0, :cond_4

    .line 46
    .line 47
    goto/16 :goto_0

    .line 48
    .line 49
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    iget v2, p0, Lcom/mycompany/app/wview/WebAreaMenu;->B:I

    .line 58
    .line 59
    if-nez v2, :cond_8

    .line 60
    .line 61
    iget v2, p0, Lcom/mycompany/app/wview/WebAreaMenu;->z:F

    .line 62
    .line 63
    sub-float/2addr v0, v2

    .line 64
    iget v2, p0, Lcom/mycompany/app/wview/WebAreaMenu;->A:F

    .line 65
    .line 66
    sub-float/2addr v1, v2

    .line 67
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    cmpl-float v6, v2, v3

    .line 76
    .line 77
    if-lez v6, :cond_6

    .line 78
    .line 79
    sget v1, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 80
    .line 81
    int-to-float v1, v1

    .line 82
    cmpg-float v1, v2, v1

    .line 83
    .line 84
    if-gez v1, :cond_5

    .line 85
    .line 86
    goto/16 :goto_0

    .line 87
    .line 88
    :cond_5
    iput v5, p0, Lcom/mycompany/app/wview/WebAreaMenu;->B:I

    .line 89
    .line 90
    iput v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->C:F

    .line 91
    .line 92
    invoke-direct {p0, v0}, Lcom/mycompany/app/wview/WebAreaMenu;->setTransX(F)V

    .line 93
    .line 94
    .line 95
    new-instance v0, Lcom/mycompany/app/wview/WebAreaMenu$8;

    .line 96
    .line 97
    invoke-direct {v0, p0}, Lcom/mycompany/app/wview/WebAreaMenu$8;-><init>(Lcom/mycompany/app/wview/WebAreaMenu;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 101
    .line 102
    .line 103
    goto/16 :goto_0

    .line 104
    .line 105
    :cond_6
    sget v0, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 106
    .line 107
    int-to-float v0, v0

    .line 108
    cmpg-float v0, v3, v0

    .line 109
    .line 110
    if-gez v0, :cond_7

    .line 111
    .line 112
    goto/16 :goto_0

    .line 113
    .line 114
    :cond_7
    iput v4, p0, Lcom/mycompany/app/wview/WebAreaMenu;->B:I

    .line 115
    .line 116
    iput v1, p0, Lcom/mycompany/app/wview/WebAreaMenu;->C:F

    .line 117
    .line 118
    invoke-direct {p0, v1}, Lcom/mycompany/app/wview/WebAreaMenu;->setTransY(F)V

    .line 119
    .line 120
    .line 121
    new-instance v0, Lcom/mycompany/app/wview/WebAreaMenu$8;

    .line 122
    .line 123
    invoke-direct {v0, p0}, Lcom/mycompany/app/wview/WebAreaMenu$8;-><init>(Lcom/mycompany/app/wview/WebAreaMenu;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 127
    .line 128
    .line 129
    goto/16 :goto_0

    .line 130
    .line 131
    :cond_8
    const/high16 v3, 0x40000000    # 2.0f

    .line 132
    .line 133
    if-ne v2, v5, :cond_a

    .line 134
    .line 135
    iget v1, p0, Lcom/mycompany/app/wview/WebAreaMenu;->z:F

    .line 136
    .line 137
    sub-float/2addr v0, v1

    .line 138
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    sget v2, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 143
    .line 144
    int-to-float v2, v2

    .line 145
    div-float/2addr v2, v3

    .line 146
    cmpg-float v1, v1, v2

    .line 147
    .line 148
    if-gez v1, :cond_9

    .line 149
    .line 150
    goto/16 :goto_0

    .line 151
    .line 152
    :cond_9
    iput v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->C:F

    .line 153
    .line 154
    invoke-direct {p0, v0}, Lcom/mycompany/app/wview/WebAreaMenu;->setTransX(F)V

    .line 155
    .line 156
    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    :cond_a
    if-ne v2, v4, :cond_15

    .line 160
    .line 161
    iget v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->A:F

    .line 162
    .line 163
    sub-float/2addr v1, v0

    .line 164
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    sget v2, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 169
    .line 170
    int-to-float v2, v2

    .line 171
    div-float/2addr v2, v3

    .line 172
    cmpg-float v0, v0, v2

    .line 173
    .line 174
    if-gez v0, :cond_b

    .line 175
    .line 176
    goto/16 :goto_0

    .line 177
    .line 178
    :cond_b
    iput v1, p0, Lcom/mycompany/app/wview/WebAreaMenu;->C:F

    .line 179
    .line 180
    invoke-direct {p0, v1}, Lcom/mycompany/app/wview/WebAreaMenu;->setTransY(F)V

    .line 181
    .line 182
    .line 183
    goto/16 :goto_0

    .line 184
    .line 185
    :cond_c
    iput-boolean v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->y:Z

    .line 186
    .line 187
    iget v2, p0, Lcom/mycompany/app/wview/WebAreaMenu;->B:I

    .line 188
    .line 189
    if-nez v2, :cond_d

    .line 190
    .line 191
    goto/16 :goto_0

    .line 192
    .line 193
    :cond_d
    iget v2, p0, Lcom/mycompany/app/wview/WebAreaMenu;->C:F

    .line 194
    .line 195
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 200
    .line 201
    int-to-float v6, v6

    .line 202
    cmpg-float v2, v2, v6

    .line 203
    .line 204
    if-gez v2, :cond_13

    .line 205
    .line 206
    if-nez v1, :cond_e

    .line 207
    .line 208
    goto/16 :goto_0

    .line 209
    .line 210
    :cond_e
    iget v1, p0, Lcom/mycompany/app/wview/WebAreaMenu;->B:I

    .line 211
    .line 212
    if-nez v1, :cond_f

    .line 213
    .line 214
    goto :goto_0

    .line 215
    :cond_f
    iget-object v1, p0, Lcom/mycompany/app/wview/WebAreaMenu;->w:Landroid/animation/ValueAnimator;

    .line 216
    .line 217
    if-eqz v1, :cond_10

    .line 218
    .line 219
    goto :goto_0

    .line 220
    :cond_10
    iget v1, p0, Lcom/mycompany/app/wview/WebAreaMenu;->C:F

    .line 221
    .line 222
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    if-nez v2, :cond_11

    .line 227
    .line 228
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebAreaMenu;->d()V

    .line 229
    .line 230
    .line 231
    goto :goto_0

    .line 232
    :cond_11
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    sget v6, Lcom/mycompany/app/wview/WebAreaMenu;->K:I

    .line 237
    .line 238
    int-to-float v6, v6

    .line 239
    div-float/2addr v2, v6

    .line 240
    const/high16 v6, 0x43340000    # 180.0f

    .line 241
    .line 242
    mul-float/2addr v2, v6

    .line 243
    float-to-long v6, v2

    .line 244
    const-wide/16 v8, 0x0

    .line 245
    .line 246
    cmp-long v2, v6, v8

    .line 247
    .line 248
    if-gtz v2, :cond_12

    .line 249
    .line 250
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebAreaMenu;->d()V

    .line 251
    .line 252
    .line 253
    goto :goto_0

    .line 254
    :cond_12
    iput v1, p0, Lcom/mycompany/app/wview/WebAreaMenu;->E:F

    .line 255
    .line 256
    iput-boolean v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->F:Z

    .line 257
    .line 258
    new-array v2, v5, [F

    .line 259
    .line 260
    aput v1, v2, v0

    .line 261
    .line 262
    aput v3, v2, v4

    .line 263
    .line 264
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    iput-object v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->w:Landroid/animation/ValueAnimator;

    .line 269
    .line 270
    const-wide/16 v1, 0xb4

    .line 271
    .line 272
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 273
    .line 274
    .line 275
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->w:Landroid/animation/ValueAnimator;

    .line 276
    .line 277
    new-instance v1, Lcom/mycompany/app/wview/WebAreaMenu$9;

    .line 278
    .line 279
    invoke-direct {v1, p0}, Lcom/mycompany/app/wview/WebAreaMenu$9;-><init>(Lcom/mycompany/app/wview/WebAreaMenu;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 283
    .line 284
    .line 285
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->w:Landroid/animation/ValueAnimator;

    .line 286
    .line 287
    new-instance v1, Lcom/mycompany/app/wview/WebAreaMenu$10;

    .line 288
    .line 289
    invoke-direct {v1, p0}, Lcom/mycompany/app/wview/WebAreaMenu$10;-><init>(Lcom/mycompany/app/wview/WebAreaMenu;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 293
    .line 294
    .line 295
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->w:Landroid/animation/ValueAnimator;

    .line 296
    .line 297
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 298
    .line 299
    .line 300
    goto :goto_0

    .line 301
    :cond_13
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebAreaMenu;->e()V

    .line 302
    .line 303
    .line 304
    goto :goto_0

    .line 305
    :cond_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 310
    .line 311
    .line 312
    move-result v2

    .line 313
    iput-boolean v4, p0, Lcom/mycompany/app/wview/WebAreaMenu;->y:Z

    .line 314
    .line 315
    iput v1, p0, Lcom/mycompany/app/wview/WebAreaMenu;->z:F

    .line 316
    .line 317
    iput v2, p0, Lcom/mycompany/app/wview/WebAreaMenu;->A:F

    .line 318
    .line 319
    iput v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->B:I

    .line 320
    .line 321
    iput v3, p0, Lcom/mycompany/app/wview/WebAreaMenu;->C:F

    .line 322
    .line 323
    :cond_15
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 324
    .line 325
    .line 326
    move-result p1

    .line 327
    return p1

    .line 328
    :cond_16
    :goto_1
    iput-boolean v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->y:Z

    .line 329
    .line 330
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 331
    .line 332
    .line 333
    move-result p1

    .line 334
    return p1
.end method

.method public final e()V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->B:I

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/wview/WebAreaMenu;->x:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    :goto_0
    return-void

    .line 16
    :cond_2
    iget v1, p0, Lcom/mycompany/app/wview/WebAreaMenu;->C:F

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    if-ne v0, v2, :cond_3

    .line 20
    .line 21
    iget v3, p0, Lcom/mycompany/app/wview/WebAreaMenu;->s:I

    .line 22
    .line 23
    iget v4, p0, Lcom/mycompany/app/wview/WebAreaMenu;->q:I

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_3
    iget v3, p0, Lcom/mycompany/app/wview/WebAreaMenu;->t:I

    .line 27
    .line 28
    iget v4, p0, Lcom/mycompany/app/wview/WebAreaMenu;->r:I

    .line 29
    .line 30
    :goto_1
    const/4 v5, 0x0

    .line 31
    cmpg-float v6, v1, v5

    .line 32
    .line 33
    const/16 v7, 0x8

    .line 34
    .line 35
    const/4 v8, 0x0

    .line 36
    const/4 v9, 0x0

    .line 37
    sget v10, Lcom/mycompany/app/wview/WebAreaMenu;->K:I

    .line 38
    .line 39
    if-gez v6, :cond_6

    .line 40
    .line 41
    if-ne v0, v2, :cond_4

    .line 42
    .line 43
    iget v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->n:I

    .line 44
    .line 45
    :goto_2
    add-int/2addr v3, v0

    .line 46
    goto :goto_3

    .line 47
    :cond_4
    iget v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->o:I

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :goto_3
    int-to-float v0, v3

    .line 51
    add-float v4, v0, v1

    .line 52
    .line 53
    cmpg-float v4, v4, v5

    .line 54
    .line 55
    if-gtz v4, :cond_5

    .line 56
    .line 57
    iput-object v8, p0, Lcom/mycompany/app/wview/WebAreaMenu;->x:Landroid/animation/ValueAnimator;

    .line 58
    .line 59
    iput v9, p0, Lcom/mycompany/app/wview/WebAreaMenu;->B:I

    .line 60
    .line 61
    invoke-virtual {p0, v7}, Lcom/mycompany/app/wview/WebAreaMenu;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_5
    int-to-float v4, v10

    .line 66
    sub-float v4, v1, v4

    .line 67
    .line 68
    add-float/2addr v0, v4

    .line 69
    cmpg-float v0, v0, v5

    .line 70
    .line 71
    if-gtz v0, :cond_9

    .line 72
    .line 73
    neg-int v0, v3

    .line 74
    int-to-float v4, v0

    .line 75
    goto :goto_4

    .line 76
    :cond_6
    int-to-float v0, v3

    .line 77
    add-float v5, v0, v1

    .line 78
    .line 79
    int-to-float v6, v4

    .line 80
    cmpl-float v5, v5, v6

    .line 81
    .line 82
    if-ltz v5, :cond_7

    .line 83
    .line 84
    iput-object v8, p0, Lcom/mycompany/app/wview/WebAreaMenu;->x:Landroid/animation/ValueAnimator;

    .line 85
    .line 86
    iput v9, p0, Lcom/mycompany/app/wview/WebAreaMenu;->B:I

    .line 87
    .line 88
    invoke-virtual {p0, v7}, Lcom/mycompany/app/wview/WebAreaMenu;->setVisibility(I)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_7
    int-to-float v5, v10

    .line 93
    add-float/2addr v5, v1

    .line 94
    add-float/2addr v0, v5

    .line 95
    cmpl-float v0, v0, v6

    .line 96
    .line 97
    if-ltz v0, :cond_8

    .line 98
    .line 99
    sub-int/2addr v4, v3

    .line 100
    int-to-float v4, v4

    .line 101
    goto :goto_4

    .line 102
    :cond_8
    move v4, v5

    .line 103
    :cond_9
    :goto_4
    sub-float v0, v4, v1

    .line 104
    .line 105
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    int-to-float v3, v10

    .line 110
    div-float/2addr v0, v3

    .line 111
    const/high16 v3, 0x43340000    # 180.0f

    .line 112
    .line 113
    mul-float/2addr v0, v3

    .line 114
    float-to-long v5, v0

    .line 115
    const-wide/16 v10, 0x0

    .line 116
    .line 117
    cmp-long v0, v5, v10

    .line 118
    .line 119
    if-gtz v0, :cond_a

    .line 120
    .line 121
    iput-object v8, p0, Lcom/mycompany/app/wview/WebAreaMenu;->x:Landroid/animation/ValueAnimator;

    .line 122
    .line 123
    iput v9, p0, Lcom/mycompany/app/wview/WebAreaMenu;->B:I

    .line 124
    .line 125
    invoke-virtual {p0, v7}, Lcom/mycompany/app/wview/WebAreaMenu;->setVisibility(I)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_a
    iput v1, p0, Lcom/mycompany/app/wview/WebAreaMenu;->H:F

    .line 130
    .line 131
    iput-boolean v9, p0, Lcom/mycompany/app/wview/WebAreaMenu;->I:Z

    .line 132
    .line 133
    new-array v0, v2, [F

    .line 134
    .line 135
    aput v1, v0, v9

    .line 136
    .line 137
    const/4 v1, 0x1

    .line 138
    aput v4, v0, v1

    .line 139
    .line 140
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    iput-object v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->x:Landroid/animation/ValueAnimator;

    .line 145
    .line 146
    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->x:Landroid/animation/ValueAnimator;

    .line 150
    .line 151
    new-instance v1, Lcom/mycompany/app/wview/WebAreaMenu$13;

    .line 152
    .line 153
    invoke-direct {v1, p0}, Lcom/mycompany/app/wview/WebAreaMenu$13;-><init>(Lcom/mycompany/app/wview/WebAreaMenu;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 157
    .line 158
    .line 159
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->x:Landroid/animation/ValueAnimator;

    .line 160
    .line 161
    new-instance v1, Lcom/mycompany/app/wview/WebAreaMenu$14;

    .line 162
    .line 163
    invoke-direct {v1, p0}, Lcom/mycompany/app/wview/WebAreaMenu$14;-><init>(Lcom/mycompany/app/wview/WebAreaMenu;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 167
    .line 168
    .line 169
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->x:Landroid/animation/ValueAnimator;

    .line 170
    .line 171
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 172
    .line 173
    .line 174
    return-void
.end method

.method public final f()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->h:Lcom/mycompany/app/view/MyButtonImage;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->v:Z

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    const v0, -0xdededf

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->h:Lcom/mycompany/app/view/MyButtonImage;

    .line 24
    .line 25
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_remove_selection_dark_24:I

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->i:Lcom/mycompany/app/view/MyButtonImage;

    .line 31
    .line 32
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_dark_20:I

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 38
    .line 39
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_dark_24:I

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->h:Lcom/mycompany/app/view/MyButtonImage;

    .line 45
    .line 46
    const v1, -0xc0c0c1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->i:Lcom/mycompany/app/view/MyButtonImage;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_2
    const/4 v0, -0x1

    .line 64
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->h:Lcom/mycompany/app/view/MyButtonImage;

    .line 68
    .line 69
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_remove_selection_black_24:I

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->i:Lcom/mycompany/app/view/MyButtonImage;

    .line 75
    .line 76
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_black_20:I

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 82
    .line 83
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_black_24:I

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->h:Lcom/mycompany/app/view/MyButtonImage;

    .line 89
    .line 90
    const v1, -0x1f1f20

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->i:Lcom/mycompany/app/view/MyButtonImage;

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public final g(Landroid/view/View;II)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    sub-int/2addr v2, v0

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    sub-int/2addr v2, v3

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    sub-int/2addr v3, v1

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    sub-int/2addr v3, p1

    .line 32
    iput v1, p0, Lcom/mycompany/app/wview/WebAreaMenu;->p:I

    .line 33
    .line 34
    iput v2, p0, Lcom/mycompany/app/wview/WebAreaMenu;->q:I

    .line 35
    .line 36
    iput v3, p0, Lcom/mycompany/app/wview/WebAreaMenu;->r:I

    .line 37
    .line 38
    const/16 p1, -0x4d2

    .line 39
    .line 40
    if-ne p2, p1, :cond_1

    .line 41
    .line 42
    if-ne p3, p1, :cond_1

    .line 43
    .line 44
    iget p1, p0, Lcom/mycompany/app/wview/WebAreaMenu;->n:I

    .line 45
    .line 46
    sub-int p1, v2, p1

    .line 47
    .line 48
    div-int/lit8 p1, p1, 0x2

    .line 49
    .line 50
    iget p2, p0, Lcom/mycompany/app/wview/WebAreaMenu;->o:I

    .line 51
    .line 52
    sub-int p2, v3, p2

    .line 53
    .line 54
    div-int/lit8 p2, p2, 0x2

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    sub-int/2addr p2, v0

    .line 58
    sub-int/2addr p3, v1

    .line 59
    iget p1, p0, Lcom/mycompany/app/wview/WebAreaMenu;->n:I

    .line 60
    .line 61
    div-int/lit8 p1, p1, 0x2

    .line 62
    .line 63
    sub-int p1, p2, p1

    .line 64
    .line 65
    iget p2, p0, Lcom/mycompany/app/wview/WebAreaMenu;->o:I

    .line 66
    .line 67
    mul-int/lit8 v1, p2, 0x2

    .line 68
    .line 69
    if-le p3, v1, :cond_2

    .line 70
    .line 71
    sub-int/2addr p3, v1

    .line 72
    sget p2, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 73
    .line 74
    sub-int p2, p3, p2

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    div-int/lit8 p2, p2, 0x2

    .line 78
    .line 79
    add-int/2addr p2, p3

    .line 80
    :goto_0
    iget p3, p0, Lcom/mycompany/app/wview/WebAreaMenu;->n:I

    .line 81
    .line 82
    add-int v1, p1, p3

    .line 83
    .line 84
    if-le v1, v2, :cond_3

    .line 85
    .line 86
    sub-int p1, v2, p3

    .line 87
    .line 88
    :cond_3
    iget p3, p0, Lcom/mycompany/app/wview/WebAreaMenu;->o:I

    .line 89
    .line 90
    add-int v1, p2, p3

    .line 91
    .line 92
    if-le v1, v3, :cond_4

    .line 93
    .line 94
    sub-int p2, v3, p3

    .line 95
    .line 96
    :cond_4
    const/4 p3, 0x0

    .line 97
    if-gez p1, :cond_5

    .line 98
    .line 99
    move p1, p3

    .line 100
    :cond_5
    if-gez p2, :cond_6

    .line 101
    .line 102
    move p2, p3

    .line 103
    :cond_6
    iput p1, p0, Lcom/mycompany/app/wview/WebAreaMenu;->s:I

    .line 104
    .line 105
    iput p2, p0, Lcom/mycompany/app/wview/WebAreaMenu;->t:I

    .line 106
    .line 107
    add-int/2addr p1, v0

    .line 108
    int-to-float p1, p1

    .line 109
    invoke-virtual {p0, p1}, Landroid/view/View;->setX(F)V

    .line 110
    .line 111
    .line 112
    iget p1, p0, Lcom/mycompany/app/wview/WebAreaMenu;->p:I

    .line 113
    .line 114
    add-int/2addr p2, p1

    .line 115
    int-to-float p1, p2

    .line 116
    invoke-virtual {p0, p1}, Landroid/view/View;->setY(F)V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method public getViewHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->o:I

    .line 2
    .line 3
    return v0
.end method

.method public getViewWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->n:I

    .line 2
    .line 3
    return v0
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget-object p3, p0, Lcom/mycompany/app/wview/WebAreaMenu;->k:Landroid/graphics/RectF;

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    int-to-float p1, p1

    .line 9
    int-to-float p2, p2

    .line 10
    const/4 p4, 0x0

    .line 11
    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setFltListener(Lcom/mycompany/app/wview/WebAreaMenu$WebAreaMenuListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/wview/WebAreaMenu;->g:Lcom/mycompany/app/wview/WebAreaMenu$WebAreaMenuListener;

    .line 2
    .line 3
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    iput-boolean v0, p0, Lcom/mycompany/app/wview/WebAreaMenu;->u:Z

    .line 7
    .line 8
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
