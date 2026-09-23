.class public Lcom/mycompany/app/image/ImageTransView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/image/ImageTransView$ImageTransListener;
    }
.end annotation


# static fields
.field public static final synthetic J:I


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:I

.field public G:I

.field public H:I

.field public I:Z

.field public c:Z

.field public f:Landroid/content/Context;

.field public g:Lcom/mycompany/app/image/ImageTransView$ImageTransListener;

.field public h:Landroid/widget/FrameLayout;

.field public i:Lcom/mycompany/app/view/MyButtonText;

.field public j:Lcom/mycompany/app/view/MyButtonImage;

.field public k:Lcom/mycompany/app/view/MyButtonImage;

.field public l:Lcom/mycompany/app/view/MyButtonImage;

.field public m:Lcom/mycompany/app/view/MyButtonImage;

.field public n:Lcom/mycompany/app/view/MyButtonImage;

.field public o:I

.field public p:Z

.field public q:Z

.field public r:Lcom/mycompany/app/view/MyRoundFrame;

.field public s:Lcom/mycompany/app/view/MyButtonImage;

.field public t:Landroidx/appcompat/widget/AppCompatTextView;

.field public u:Lcom/mycompany/app/view/MyArrowView;

.field public v:I

.field public w:Landroid/graphics/RectF;

.field public x:Landroid/graphics/Paint;

.field public final y:I

.field public final z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/mycompany/app/image/ImageTransView;->c:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/mycompany/app/image/ImageTransView;->f:Landroid/content/Context;

    .line 8
    .line 9
    sget p1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 10
    .line 11
    iput p1, p0, Lcom/mycompany/app/image/ImageTransView;->y:I

    .line 12
    .line 13
    mul-int/lit8 p1, p1, 0x2

    .line 14
    .line 15
    iput p1, p0, Lcom/mycompany/app/image/ImageTransView;->z:I

    .line 16
    .line 17
    new-instance p1, Lcom/mycompany/app/image/ImageTransView$1;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    .line 24
    .line 25
    new-instance p1, Lcom/mycompany/app/image/ImageTransView$2;

    .line 26
    .line 27
    invoke-direct {p1, p0}, Lcom/mycompany/app/image/ImageTransView$2;-><init>(Lcom/mycompany/app/image/ImageTransView;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public static a(Lcom/mycompany/app/image/ImageTransView;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/image/ImageTransView;->q:Z

    .line 3
    .line 4
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZone;->t0:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    sput-boolean v0, Lcom/mycompany/app/pref/PrefZone;->t0:Z

    .line 9
    .line 10
    iget-object v1, p0, Lcom/mycompany/app/image/ImageTransView;->f:Landroid/content/Context;

    .line 11
    .line 12
    const/16 v2, 0xf

    .line 13
    .line 14
    const-string v3, "mOcrGuide"

    .line 15
    .line 16
    invoke-static {v2, v1, v3, v0}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageTransView;->f()V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;I)V
    .locals 2

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/mycompany/app/image/ImageTransView$4;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/mycompany/app/image/ImageTransView$4;-><init>(Lcom/mycompany/app/image/ImageTransView;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/mycompany/app/image/ImageTransView$5;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/mycompany/app/image/ImageTransView$5;-><init>(Lcom/mycompany/app/image/ImageTransView;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    iget v1, p0, Lcom/mycompany/app/image/ImageTransView;->y:I

    .line 26
    .line 27
    if-ne p2, v0, :cond_0

    .line 28
    .line 29
    sget-boolean p2, Lcom/mycompany/app/pref/PrefZone;->o0:Z

    .line 30
    .line 31
    if-eqz p2, :cond_9

    .line 32
    .line 33
    sget p2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 34
    .line 35
    :goto_0
    add-int/2addr v1, p2

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    const/4 v0, 0x2

    .line 38
    if-ne p2, v0, :cond_2

    .line 39
    .line 40
    sget-boolean p2, Lcom/mycompany/app/pref/PrefZone;->o0:Z

    .line 41
    .line 42
    if-eqz p2, :cond_1

    .line 43
    .line 44
    sget p2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 45
    .line 46
    add-int/2addr v1, p2

    .line 47
    :cond_1
    sget-boolean p2, Lcom/mycompany/app/pref/PrefZone;->p0:Z

    .line 48
    .line 49
    if-eqz p2, :cond_9

    .line 50
    .line 51
    sget p2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const/4 v0, 0x3

    .line 55
    if-ne p2, v0, :cond_5

    .line 56
    .line 57
    sget-boolean p2, Lcom/mycompany/app/pref/PrefZone;->o0:Z

    .line 58
    .line 59
    if-eqz p2, :cond_3

    .line 60
    .line 61
    sget p2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 62
    .line 63
    add-int/2addr v1, p2

    .line 64
    :cond_3
    sget-boolean p2, Lcom/mycompany/app/pref/PrefZone;->p0:Z

    .line 65
    .line 66
    if-eqz p2, :cond_4

    .line 67
    .line 68
    sget p2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 69
    .line 70
    add-int/2addr v1, p2

    .line 71
    :cond_4
    sget-boolean p2, Lcom/mycompany/app/pref/PrefZone;->q0:Z

    .line 72
    .line 73
    if-eqz p2, :cond_9

    .line 74
    .line 75
    sget p2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_5
    const/4 v0, 0x4

    .line 79
    if-ne p2, v0, :cond_9

    .line 80
    .line 81
    sget-boolean p2, Lcom/mycompany/app/pref/PrefZone;->o0:Z

    .line 82
    .line 83
    if-eqz p2, :cond_6

    .line 84
    .line 85
    sget p2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 86
    .line 87
    add-int/2addr v1, p2

    .line 88
    :cond_6
    sget-boolean p2, Lcom/mycompany/app/pref/PrefZone;->p0:Z

    .line 89
    .line 90
    if-eqz p2, :cond_7

    .line 91
    .line 92
    sget p2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 93
    .line 94
    add-int/2addr v1, p2

    .line 95
    :cond_7
    sget-boolean p2, Lcom/mycompany/app/pref/PrefZone;->q0:Z

    .line 96
    .line 97
    if-eqz p2, :cond_8

    .line 98
    .line 99
    sget p2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 100
    .line 101
    add-int/2addr v1, p2

    .line 102
    :cond_8
    sget-boolean p2, Lcom/mycompany/app/pref/PrefZone;->r0:Z

    .line 103
    .line 104
    if-eqz p2, :cond_9

    .line 105
    .line 106
    sget p2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_9
    :goto_1
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 110
    .line 111
    sget v0, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 112
    .line 113
    invoke-direct {p2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 114
    .line 115
    .line 116
    iget v0, p0, Lcom/mycompany/app/image/ImageTransView;->y:I

    .line 117
    .line 118
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 119
    .line 120
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method public final c()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageTransView;->h:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/image/ImageTransView;->i:Lcom/mycompany/app/view/MyButtonText;

    .line 7
    .line 8
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZone;->o0:Z

    .line 9
    .line 10
    iget-boolean v2, p0, Lcom/mycompany/app/image/ImageTransView;->c:Z

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    if-nez v1, :cond_2

    .line 19
    .line 20
    if-eqz v0, :cond_4

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonText;->t()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    if-nez v0, :cond_3

    .line 27
    .line 28
    new-instance v0, Lcom/mycompany/app/view/MyButtonText;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/mycompany/app/image/ImageTransView;->f:Landroid/content/Context;

    .line 31
    .line 32
    invoke-direct {v0, v1}, Lcom/mycompany/app/view/MyButtonText;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    sget v1, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 36
    .line 37
    int-to-float v1, v1

    .line 38
    sget v2, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 39
    .line 40
    int-to-float v2, v2

    .line 41
    iput v1, v0, Lcom/mycompany/app/view/MyButtonText;->q:F

    .line 42
    .line 43
    iput-boolean v3, v0, Lcom/mycompany/app/view/MyButtonText;->o:Z

    .line 44
    .line 45
    iput v2, v0, Lcom/mycompany/app/view/MyButtonText;->x:F

    .line 46
    .line 47
    iput-boolean v3, v0, Lcom/mycompany/app/view/MyButtonText;->w:Z

    .line 48
    .line 49
    const/high16 v1, -0x5f000000

    .line 50
    .line 51
    const v2, -0x5e8a8a8b

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 55
    .line 56
    .line 57
    const/16 v1, 0x11

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 60
    .line 61
    .line 62
    const/high16 v1, 0x41900000    # 18.0f

    .line 63
    .line 64
    invoke-virtual {v0, v3, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 65
    .line 66
    .line 67
    const v1, -0x50506

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    .line 72
    .line 73
    :cond_3
    invoke-virtual {p0, v0, v4}, Lcom/mycompany/app/image/ImageTransView;->b(Landroid/view/View;I)V

    .line 74
    .line 75
    .line 76
    move-object v5, v0

    .line 77
    :cond_4
    :goto_0
    iput-object v5, p0, Lcom/mycompany/app/image/ImageTransView;->i:Lcom/mycompany/app/view/MyButtonText;

    .line 78
    .line 79
    iget-object v0, p0, Lcom/mycompany/app/image/ImageTransView;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 80
    .line 81
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZone;->o0:Z

    .line 82
    .line 83
    invoke-virtual {p0, v4, v0, v1}, Lcom/mycompany/app/image/ImageTransView;->h(ILcom/mycompany/app/view/MyButtonImage;Z)Lcom/mycompany/app/view/MyButtonImage;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iput-object v0, p0, Lcom/mycompany/app/image/ImageTransView;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 88
    .line 89
    iget-object v0, p0, Lcom/mycompany/app/image/ImageTransView;->k:Lcom/mycompany/app/view/MyButtonImage;

    .line 90
    .line 91
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZone;->p0:Z

    .line 92
    .line 93
    invoke-virtual {p0, v3, v0, v1}, Lcom/mycompany/app/image/ImageTransView;->h(ILcom/mycompany/app/view/MyButtonImage;Z)Lcom/mycompany/app/view/MyButtonImage;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iput-object v0, p0, Lcom/mycompany/app/image/ImageTransView;->k:Lcom/mycompany/app/view/MyButtonImage;

    .line 98
    .line 99
    iget-object v0, p0, Lcom/mycompany/app/image/ImageTransView;->l:Lcom/mycompany/app/view/MyButtonImage;

    .line 100
    .line 101
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZone;->q0:Z

    .line 102
    .line 103
    const/4 v2, 0x2

    .line 104
    invoke-virtual {p0, v2, v0, v1}, Lcom/mycompany/app/image/ImageTransView;->h(ILcom/mycompany/app/view/MyButtonImage;Z)Lcom/mycompany/app/view/MyButtonImage;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iput-object v0, p0, Lcom/mycompany/app/image/ImageTransView;->l:Lcom/mycompany/app/view/MyButtonImage;

    .line 109
    .line 110
    iget-object v0, p0, Lcom/mycompany/app/image/ImageTransView;->m:Lcom/mycompany/app/view/MyButtonImage;

    .line 111
    .line 112
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZone;->r0:Z

    .line 113
    .line 114
    const/4 v2, 0x3

    .line 115
    invoke-virtual {p0, v2, v0, v1}, Lcom/mycompany/app/image/ImageTransView;->h(ILcom/mycompany/app/view/MyButtonImage;Z)Lcom/mycompany/app/view/MyButtonImage;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    iput-object v0, p0, Lcom/mycompany/app/image/ImageTransView;->m:Lcom/mycompany/app/view/MyButtonImage;

    .line 120
    .line 121
    iget-object v0, p0, Lcom/mycompany/app/image/ImageTransView;->n:Lcom/mycompany/app/view/MyButtonImage;

    .line 122
    .line 123
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZone;->s0:Z

    .line 124
    .line 125
    const/4 v2, 0x4

    .line 126
    invoke-virtual {p0, v2, v0, v1}, Lcom/mycompany/app/image/ImageTransView;->h(ILcom/mycompany/app/view/MyButtonImage;Z)Lcom/mycompany/app/view/MyButtonImage;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    iput-object v0, p0, Lcom/mycompany/app/image/ImageTransView;->n:Lcom/mycompany/app/view/MyButtonImage;

    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageTransView;->o()V

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lcom/mycompany/app/image/ImageTransView;->h:Landroid/widget/FrameLayout;

    .line 136
    .line 137
    new-instance v1, Lcom/mycompany/app/image/ImageTransView$3;

    .line 138
    .line 139
    invoke-direct {v1, p0}, Lcom/mycompany/app/image/ImageTransView$3;-><init>(Lcom/mycompany/app/image/ImageTransView;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 143
    .line 144
    .line 145
    return-void
.end method

.method public final d(I)I
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p1, v0, :cond_1

    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/mycompany/app/image/ImageTransView;->p:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_g_translate_color_24:I

    .line 9
    .line 10
    return p1

    .line 11
    :cond_0
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_g_translate_white_24:I

    .line 12
    .line 13
    return p1

    .line 14
    :cond_1
    if-nez p1, :cond_2

    .line 15
    .line 16
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_search_white_24:I

    .line 17
    .line 18
    return p1

    .line 19
    :cond_2
    const/4 v0, 0x1

    .line 20
    if-ne p1, v0, :cond_3

    .line 21
    .line 22
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_refresh_white_24:I

    .line 23
    .line 24
    return p1

    .line 25
    :cond_3
    const/4 v0, 0x3

    .line 26
    if-ne p1, v0, :cond_4

    .line 27
    .line 28
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_format_color_fill_white_24:I

    .line 29
    .line 30
    return p1

    .line 31
    :cond_4
    const/4 v0, 0x4

    .line 32
    if-ne p1, v0, :cond_5

    .line 33
    .line 34
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_center_focus_strong_white_24:I

    .line 35
    .line 36
    return p1

    .line 37
    :cond_5
    const/4 p1, 0x0

    .line 38
    return p1
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/image/ImageTransView;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/image/ImageTransView;->w:Landroid/graphics/RectF;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lcom/mycompany/app/image/ImageTransView;->x:Landroid/graphics/Paint;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget v2, p0, Lcom/mycompany/app/image/ImageTransView;->v:I

    .line 18
    .line 19
    int-to-float v2, v2

    .line 20
    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/image/ImageTransView;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_6

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    if-eq v0, v2, :cond_4

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    if-eq v0, v2, :cond_1

    .line 22
    .line 23
    const/4 v2, 0x3

    .line 24
    if-eq v0, v2, :cond_4

    .line 25
    .line 26
    goto/16 :goto_0

    .line 27
    .line 28
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/image/ImageTransView;->I:Z

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    goto/16 :goto_0

    .line 33
    .line 34
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    iget v2, p0, Lcom/mycompany/app/image/ImageTransView;->A:I

    .line 43
    .line 44
    int-to-float v2, v2

    .line 45
    iget v3, p0, Lcom/mycompany/app/image/ImageTransView;->B:I

    .line 46
    .line 47
    int-to-float v3, v3

    .line 48
    invoke-static {v2, v0, v3, v1}, Lcom/mycompany/app/main/MainUtil;->I0(FFFF)F

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    sget v3, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 53
    .line 54
    int-to-float v3, v3

    .line 55
    const/high16 v4, 0x40000000    # 2.0f

    .line 56
    .line 57
    div-float/2addr v3, v4

    .line 58
    cmpg-float v2, v2, v3

    .line 59
    .line 60
    if-gez v2, :cond_3

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    iput v0, p0, Lcom/mycompany/app/image/ImageTransView;->A:I

    .line 68
    .line 69
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    iput v0, p0, Lcom/mycompany/app/image/ImageTransView;->B:I

    .line 74
    .line 75
    iget v1, p0, Lcom/mycompany/app/image/ImageTransView;->A:I

    .line 76
    .line 77
    iget v2, p0, Lcom/mycompany/app/image/ImageTransView;->C:I

    .line 78
    .line 79
    add-int/2addr v1, v2

    .line 80
    iget v2, p0, Lcom/mycompany/app/image/ImageTransView;->D:I

    .line 81
    .line 82
    add-int/2addr v0, v2

    .line 83
    invoke-virtual {p0, v1, v0}, Lcom/mycompany/app/image/ImageTransView;->k(II)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    iget-boolean v0, p0, Lcom/mycompany/app/image/ImageTransView;->I:Z

    .line 88
    .line 89
    if-nez v0, :cond_5

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_5
    iput-boolean v1, p0, Lcom/mycompany/app/image/ImageTransView;->I:Z

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageTransView;->m()V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    iput-boolean v1, p0, Lcom/mycompany/app/image/ImageTransView;->I:Z

    .line 107
    .line 108
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    iput v0, p0, Lcom/mycompany/app/image/ImageTransView;->A:I

    .line 113
    .line 114
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    iput v0, p0, Lcom/mycompany/app/image/ImageTransView;->B:I

    .line 119
    .line 120
    sget v0, Lcom/mycompany/app/pref/PrefZtri;->Z:F

    .line 121
    .line 122
    sget v1, Lcom/mycompany/app/pref/PrefZtri;->a0:F

    .line 123
    .line 124
    sget v2, Lcom/mycompany/app/pref/PrefZtri;->b0:F

    .line 125
    .line 126
    sget v3, Lcom/mycompany/app/pref/PrefZtri;->c0:F

    .line 127
    .line 128
    iget v4, p0, Lcom/mycompany/app/image/ImageTransView;->G:I

    .line 129
    .line 130
    iget v5, p0, Lcom/mycompany/app/image/ImageTransView;->E:I

    .line 131
    .line 132
    sub-int/2addr v4, v5

    .line 133
    int-to-float v4, v4

    .line 134
    invoke-static {v0, v1, v4, v0}, Lcom/mycompany/app/dialog/a;->a(FFFF)I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    iget v1, p0, Lcom/mycompany/app/image/ImageTransView;->H:I

    .line 139
    .line 140
    iget v4, p0, Lcom/mycompany/app/image/ImageTransView;->F:I

    .line 141
    .line 142
    sub-int/2addr v1, v4

    .line 143
    int-to-float v1, v1

    .line 144
    invoke-static {v2, v3, v1, v2}, Lcom/mycompany/app/dialog/a;->a(FFFF)I

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    iget v2, p0, Lcom/mycompany/app/image/ImageTransView;->A:I

    .line 149
    .line 150
    sub-int/2addr v0, v2

    .line 151
    iput v0, p0, Lcom/mycompany/app/image/ImageTransView;->C:I

    .line 152
    .line 153
    iget v0, p0, Lcom/mycompany/app/image/ImageTransView;->B:I

    .line 154
    .line 155
    sub-int/2addr v1, v0

    .line 156
    iput v1, p0, Lcom/mycompany/app/image/ImageTransView;->D:I

    .line 157
    .line 158
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    return p1
.end method

.method public final e()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/image/ImageTransView;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/image/ImageTransView;->f:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/image/ImageTransView;->h:Landroid/widget/FrameLayout;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageTransView;->f()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/mycompany/app/image/ImageTransView;->h:Landroid/widget/FrameLayout;

    .line 18
    .line 19
    iput-object v1, p0, Lcom/mycompany/app/image/ImageTransView;->h:Landroid/widget/FrameLayout;

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageTransView;->i:Lcom/mycompany/app/view/MyButtonText;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonText;->t()V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lcom/mycompany/app/image/ImageTransView;->i:Lcom/mycompany/app/view/MyButtonText;

    .line 32
    .line 33
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/image/ImageTransView;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lcom/mycompany/app/image/ImageTransView;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 41
    .line 42
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/image/ImageTransView;->k:Lcom/mycompany/app/view/MyButtonImage;

    .line 43
    .line 44
    if-eqz v0, :cond_4

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 47
    .line 48
    .line 49
    iput-object v1, p0, Lcom/mycompany/app/image/ImageTransView;->k:Lcom/mycompany/app/view/MyButtonImage;

    .line 50
    .line 51
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/image/ImageTransView;->l:Lcom/mycompany/app/view/MyButtonImage;

    .line 52
    .line 53
    if-eqz v0, :cond_5

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 56
    .line 57
    .line 58
    iput-object v1, p0, Lcom/mycompany/app/image/ImageTransView;->l:Lcom/mycompany/app/view/MyButtonImage;

    .line 59
    .line 60
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/image/ImageTransView;->m:Lcom/mycompany/app/view/MyButtonImage;

    .line 61
    .line 62
    if-eqz v0, :cond_6

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 65
    .line 66
    .line 67
    iput-object v1, p0, Lcom/mycompany/app/image/ImageTransView;->m:Lcom/mycompany/app/view/MyButtonImage;

    .line 68
    .line 69
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/image/ImageTransView;->n:Lcom/mycompany/app/view/MyButtonImage;

    .line 70
    .line 71
    if-eqz v0, :cond_7

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 74
    .line 75
    .line 76
    iput-object v1, p0, Lcom/mycompany/app/image/ImageTransView;->n:Lcom/mycompany/app/view/MyButtonImage;

    .line 77
    .line 78
    :cond_7
    iput-object v1, p0, Lcom/mycompany/app/image/ImageTransView;->f:Landroid/content/Context;

    .line 79
    .line 80
    iput-object v1, p0, Lcom/mycompany/app/image/ImageTransView;->g:Lcom/mycompany/app/image/ImageTransView$ImageTransListener;

    .line 81
    .line 82
    return-void
.end method

.method public final f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageTransView;->r:Lcom/mycompany/app/view/MyRoundFrame;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v2, p0, Lcom/mycompany/app/image/ImageTransView;->h:Landroid/widget/FrameLayout;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    :try_start_0
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    :catch_0
    :cond_0
    iput-object v1, p0, Lcom/mycompany/app/image/ImageTransView;->r:Lcom/mycompany/app/view/MyRoundFrame;

    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageTransView;->u:Lcom/mycompany/app/view/MyArrowView;

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    iget-object v2, p0, Lcom/mycompany/app/image/ImageTransView;->h:Landroid/widget/FrameLayout;

    .line 20
    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    :try_start_1
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 24
    .line 25
    .line 26
    :catch_1
    :cond_2
    iput-object v1, p0, Lcom/mycompany/app/image/ImageTransView;->u:Lcom/mycompany/app/view/MyArrowView;

    .line 27
    .line 28
    :cond_3
    iput-object v1, p0, Lcom/mycompany/app/image/ImageTransView;->s:Lcom/mycompany/app/view/MyButtonImage;

    .line 29
    .line 30
    iput-object v1, p0, Lcom/mycompany/app/image/ImageTransView;->t:Landroidx/appcompat/widget/AppCompatTextView;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/mycompany/app/image/ImageTransView;->w:Landroid/graphics/RectF;

    .line 33
    .line 34
    if-nez v0, :cond_4

    .line 35
    .line 36
    iget-object v0, p0, Lcom/mycompany/app/image/ImageTransView;->x:Landroid/graphics/Paint;

    .line 37
    .line 38
    if-eqz v0, :cond_5

    .line 39
    .line 40
    :cond_4
    iput-object v1, p0, Lcom/mycompany/app/image/ImageTransView;->w:Landroid/graphics/RectF;

    .line 41
    .line 42
    iput-object v1, p0, Lcom/mycompany/app/image/ImageTransView;->x:Landroid/graphics/Paint;

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageTransView;->invalidate()V

    .line 45
    .line 46
    .line 47
    :cond_5
    return-void
.end method

.method public final g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageTransView;->h:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageTransView;->f()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/image/ImageTransView;->h:Landroid/widget/FrameLayout;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageTransView;->c()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final h(ILcom/mycompany/app/view/MyButtonImage;Z)Lcom/mycompany/app/view/MyButtonImage;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/image/ImageTransView;->c:Z

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
    if-nez p3, :cond_2

    .line 8
    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 12
    .line 13
    .line 14
    :cond_1
    :goto_0
    return-object v1

    .line 15
    :cond_2
    if-nez p2, :cond_3

    .line 16
    .line 17
    new-instance p2, Lcom/mycompany/app/view/MyButtonImage;

    .line 18
    .line 19
    iget-object p3, p0, Lcom/mycompany/app/image/ImageTransView;->f:Landroid/content/Context;

    .line 20
    .line 21
    invoke-direct {p2, p3}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    sget p3, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 25
    .line 26
    int-to-float p3, p3

    .line 27
    sget v0, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 28
    .line 29
    int-to-float v0, v0

    .line 30
    invoke-virtual {p2, p3, v0}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 31
    .line 32
    .line 33
    const/high16 p3, -0x5f000000

    .line 34
    .line 35
    const v0, -0x5e8a8a8b

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, p3, v0}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 39
    .line 40
    .line 41
    sget-object p3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 42
    .line 43
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lcom/mycompany/app/image/ImageTransView;->d(I)I

    .line 47
    .line 48
    .line 49
    move-result p3

    .line 50
    invoke-virtual {p2, p3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 51
    .line 52
    .line 53
    :cond_3
    invoke-virtual {p0, p2, p1}, Lcom/mycompany/app/image/ImageTransView;->b(Landroid/view/View;I)V

    .line 54
    .line 55
    .line 56
    return-object p2
.end method

.method public final i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageTransView;->r:Lcom/mycompany/app/view/MyRoundFrame;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/image/ImageTransView;->u:Lcom/mycompany/app/view/MyArrowView;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    sget v1, Lcom/mycompany/app/pref/PrefZtri;->b0:F

    .line 18
    .line 19
    iget v2, p0, Lcom/mycompany/app/image/ImageTransView;->y:I

    .line 20
    .line 21
    int-to-float v2, v2

    .line 22
    sub-float/2addr v1, v2

    .line 23
    iget-object v2, p0, Lcom/mycompany/app/image/ImageTransView;->r:Lcom/mycompany/app/view/MyRoundFrame;

    .line 24
    .line 25
    int-to-float v0, v0

    .line 26
    sub-float v0, v1, v0

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Landroid/view/View;->setY(F)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/mycompany/app/image/ImageTransView;->u:Lcom/mycompany/app/view/MyArrowView;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/mycompany/app/image/ImageTransView;->r:Lcom/mycompany/app/view/MyRoundFrame;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/mycompany/app/image/ImageTransView;->u:Lcom/mycompany/app/view/MyArrowView;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageTransView;->j()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/image/ImageTransView;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final j()V
    .locals 2

    .line 1
    sget v0, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 2
    .line 3
    iput v0, p0, Lcom/mycompany/app/image/ImageTransView;->v:I

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/RectF;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/mycompany/app/image/ImageTransView;->w:Landroid/graphics/RectF;

    .line 11
    .line 12
    new-instance v0, Landroid/graphics/Paint;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/mycompany/app/image/ImageTransView;->x:Landroid/graphics/Paint;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/mycompany/app/image/ImageTransView;->x:Landroid/graphics/Paint;

    .line 24
    .line 25
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/mycompany/app/image/ImageTransView;->x:Landroid/graphics/Paint;

    .line 31
    .line 32
    const v1, -0xe4a1e0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/mycompany/app/image/ImageTransView;->x:Landroid/graphics/Paint;

    .line 39
    .line 40
    sget v1, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 41
    .line 42
    int-to-float v1, v1

    .line 43
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/image/ImageTransView;->n(II)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageTransView;->invalidate()V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final k(II)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/image/ImageTransView;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v0, p0, Lcom/mycompany/app/image/ImageTransView;->E:I

    .line 7
    .line 8
    add-int v1, p1, v0

    .line 9
    .line 10
    iget v2, p0, Lcom/mycompany/app/image/ImageTransView;->G:I

    .line 11
    .line 12
    if-le v1, v2, :cond_1

    .line 13
    .line 14
    sub-int p1, v2, v0

    .line 15
    .line 16
    :cond_1
    iget v1, p0, Lcom/mycompany/app/image/ImageTransView;->F:I

    .line 17
    .line 18
    add-int v3, p2, v1

    .line 19
    .line 20
    iget v4, p0, Lcom/mycompany/app/image/ImageTransView;->H:I

    .line 21
    .line 22
    if-le v3, v4, :cond_2

    .line 23
    .line 24
    sub-int p2, v4, v1

    .line 25
    .line 26
    :cond_2
    const/4 v3, 0x0

    .line 27
    if-gez p1, :cond_3

    .line 28
    .line 29
    move p1, v3

    .line 30
    :cond_3
    if-gez p2, :cond_4

    .line 31
    .line 32
    move p2, v3

    .line 33
    :cond_4
    add-int/2addr v0, p1

    .line 34
    sub-int/2addr v2, v0

    .line 35
    int-to-float v0, v2

    .line 36
    add-int/2addr v1, p2

    .line 37
    sub-int/2addr v4, v1

    .line 38
    int-to-float v1, v4

    .line 39
    int-to-float v2, p1

    .line 40
    sput v2, Lcom/mycompany/app/pref/PrefZtri;->Z:F

    .line 41
    .line 42
    sput v0, Lcom/mycompany/app/pref/PrefZtri;->a0:F

    .line 43
    .line 44
    int-to-float v0, p2

    .line 45
    sput v0, Lcom/mycompany/app/pref/PrefZtri;->b0:F

    .line 46
    .line 47
    sput v1, Lcom/mycompany/app/pref/PrefZtri;->c0:F

    .line 48
    .line 49
    iget v0, p0, Lcom/mycompany/app/image/ImageTransView;->y:I

    .line 50
    .line 51
    sub-int/2addr p1, v0

    .line 52
    int-to-float p1, p1

    .line 53
    invoke-virtual {p0, p1}, Landroid/view/View;->setX(F)V

    .line 54
    .line 55
    .line 56
    iget p1, p0, Lcom/mycompany/app/image/ImageTransView;->y:I

    .line 57
    .line 58
    sub-int/2addr p2, p1

    .line 59
    int-to-float p1, p2

    .line 60
    invoke-virtual {p0, p1}, Landroid/view/View;->setY(F)V

    .line 61
    .line 62
    .line 63
    iget-boolean p1, p0, Lcom/mycompany/app/image/ImageTransView;->q:Z

    .line 64
    .line 65
    if-eqz p1, :cond_6

    .line 66
    .line 67
    iget-object p1, p0, Lcom/mycompany/app/image/ImageTransView;->r:Lcom/mycompany/app/view/MyRoundFrame;

    .line 68
    .line 69
    if-nez p1, :cond_5

    .line 70
    .line 71
    iget-object p1, p0, Lcom/mycompany/app/image/ImageTransView;->h:Landroid/widget/FrameLayout;

    .line 72
    .line 73
    new-instance p2, Lcom/mycompany/app/image/ImageTransView$10;

    .line 74
    .line 75
    invoke-direct {p2, p0}, Lcom/mycompany/app/image/ImageTransView$10;-><init>(Lcom/mycompany/app/image/ImageTransView;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_5
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageTransView;->i()V

    .line 83
    .line 84
    .line 85
    :cond_6
    :goto_0
    return-void
.end method

.method public final l()V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/image/ImageTransView;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/image/ImageTransView;->h:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget v1, p0, Lcom/mycompany/app/image/ImageTransView;->z:I

    .line 16
    .line 17
    add-int/2addr v0, v1

    .line 18
    iget-object v1, p0, Lcom/mycompany/app/image/ImageTransView;->h:Landroid/widget/FrameLayout;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iget v2, p0, Lcom/mycompany/app/image/ImageTransView;->z:I

    .line 25
    .line 26
    add-int/2addr v1, v2

    .line 27
    iget v2, p0, Lcom/mycompany/app/image/ImageTransView;->G:I

    .line 28
    .line 29
    if-ne v0, v2, :cond_1

    .line 30
    .line 31
    iget v2, p0, Lcom/mycompany/app/image/ImageTransView;->H:I

    .line 32
    .line 33
    if-ne v1, v2, :cond_1

    .line 34
    .line 35
    goto/16 :goto_1

    .line 36
    .line 37
    :cond_1
    iput v0, p0, Lcom/mycompany/app/image/ImageTransView;->G:I

    .line 38
    .line 39
    iput v1, p0, Lcom/mycompany/app/image/ImageTransView;->H:I

    .line 40
    .line 41
    sget v2, Lcom/mycompany/app/pref/PrefZtri;->Z:F

    .line 42
    .line 43
    sget v3, Lcom/mycompany/app/pref/PrefZtri;->a0:F

    .line 44
    .line 45
    sget v4, Lcom/mycompany/app/pref/PrefZtri;->b0:F

    .line 46
    .line 47
    sget v5, Lcom/mycompany/app/pref/PrefZtri;->c0:F

    .line 48
    .line 49
    const/4 v6, 0x0

    .line 50
    cmpg-float v7, v2, v6

    .line 51
    .line 52
    if-gez v7, :cond_2

    .line 53
    .line 54
    cmpg-float v7, v3, v6

    .line 55
    .line 56
    if-gez v7, :cond_2

    .line 57
    .line 58
    cmpg-float v7, v4, v6

    .line 59
    .line 60
    if-gez v7, :cond_2

    .line 61
    .line 62
    cmpg-float v6, v5, v6

    .line 63
    .line 64
    if-gez v6, :cond_2

    .line 65
    .line 66
    iget v6, p0, Lcom/mycompany/app/image/ImageTransView;->E:I

    .line 67
    .line 68
    sub-int/2addr v0, v6

    .line 69
    div-int/lit8 v0, v0, 0x2

    .line 70
    .line 71
    iget v6, p0, Lcom/mycompany/app/image/ImageTransView;->F:I

    .line 72
    .line 73
    sub-int/2addr v1, v6

    .line 74
    div-int/lit8 v1, v1, 0x2

    .line 75
    .line 76
    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 77
    .line 78
    sub-int/2addr v1, v6

    .line 79
    sget-boolean v6, Lcom/mycompany/app/pref/PrefZone;->t0:Z

    .line 80
    .line 81
    iput-boolean v6, p0, Lcom/mycompany/app/image/ImageTransView;->q:Z

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    iget v1, p0, Lcom/mycompany/app/image/ImageTransView;->E:I

    .line 85
    .line 86
    sub-int/2addr v0, v1

    .line 87
    int-to-float v0, v0

    .line 88
    invoke-static {v2, v3, v0, v2}, Lcom/mycompany/app/dialog/a;->a(FFFF)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    iget v1, p0, Lcom/mycompany/app/image/ImageTransView;->H:I

    .line 93
    .line 94
    iget v6, p0, Lcom/mycompany/app/image/ImageTransView;->F:I

    .line 95
    .line 96
    sub-int/2addr v1, v6

    .line 97
    int-to-float v1, v1

    .line 98
    invoke-static {v4, v5, v1, v4}, Lcom/mycompany/app/dialog/a;->a(FFFF)I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    :goto_0
    iget-boolean v6, p0, Lcom/mycompany/app/image/ImageTransView;->q:Z

    .line 103
    .line 104
    if-nez v6, :cond_3

    .line 105
    .line 106
    sget-boolean v6, Lcom/mycompany/app/pref/PrefZone;->t0:Z

    .line 107
    .line 108
    if-eqz v6, :cond_3

    .line 109
    .line 110
    const/4 v6, 0x0

    .line 111
    sput-boolean v6, Lcom/mycompany/app/pref/PrefZone;->t0:Z

    .line 112
    .line 113
    iget-object v7, p0, Lcom/mycompany/app/image/ImageTransView;->f:Landroid/content/Context;

    .line 114
    .line 115
    const/16 v8, 0xf

    .line 116
    .line 117
    const-string v9, "mOcrGuide"

    .line 118
    .line 119
    invoke-static {v8, v7, v9, v6}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 120
    .line 121
    .line 122
    :cond_3
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/image/ImageTransView;->k(II)V

    .line 123
    .line 124
    .line 125
    sget v0, Lcom/mycompany/app/pref/PrefZtri;->Z:F

    .line 126
    .line 127
    sget v1, Lcom/mycompany/app/pref/PrefZtri;->a0:F

    .line 128
    .line 129
    sget v6, Lcom/mycompany/app/pref/PrefZtri;->b0:F

    .line 130
    .line 131
    sget v7, Lcom/mycompany/app/pref/PrefZtri;->c0:F

    .line 132
    .line 133
    invoke-static {v2, v0}, Ljava/lang/Float;->compare(FF)I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-nez v0, :cond_4

    .line 138
    .line 139
    invoke-static {v3, v1}, Ljava/lang/Float;->compare(FF)I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-nez v0, :cond_4

    .line 144
    .line 145
    invoke-static {v4, v6}, Ljava/lang/Float;->compare(FF)I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-nez v0, :cond_4

    .line 150
    .line 151
    invoke-static {v5, v7}, Ljava/lang/Float;->compare(FF)I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-eqz v0, :cond_5

    .line 156
    .line 157
    :cond_4
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageTransView;->m()V

    .line 158
    .line 159
    .line 160
    :cond_5
    :goto_1
    return-void
.end method

.method public final m()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageTransView;->f:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v0}, Lcom/mycompany/app/pref/PrefZtri;->r(Landroid/content/Context;)Lcom/mycompany/app/pref/PrefZtri;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    const-string v1, "mItrsLtX"

    .line 14
    .line 15
    sget v2, Lcom/mycompany/app/pref/PrefZtri;->Z:F

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 18
    .line 19
    .line 20
    const-string v1, "mItrsRtX"

    .line 21
    .line 22
    sget v2, Lcom/mycompany/app/pref/PrefZtri;->a0:F

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 25
    .line 26
    .line 27
    const-string v1, "mItrsUpY"

    .line 28
    .line 29
    sget v2, Lcom/mycompany/app/pref/PrefZtri;->b0:F

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 32
    .line 33
    .line 34
    const-string v1, "mItrsDnY"

    .line 35
    .line 36
    sget v2, Lcom/mycompany/app/pref/PrefZtri;->c0:F

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final n(II)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageTransView;->w:Landroid/graphics/RectF;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    div-int/lit8 p1, p1, 0x2

    .line 7
    .line 8
    div-int/lit8 p2, p2, 0x2

    .line 9
    .line 10
    iget v0, p0, Lcom/mycompany/app/image/ImageTransView;->E:I

    .line 11
    .line 12
    iget v1, p0, Lcom/mycompany/app/image/ImageTransView;->z:I

    .line 13
    .line 14
    sub-int/2addr v0, v1

    .line 15
    div-int/lit8 v0, v0, 0x2

    .line 16
    .line 17
    iget v2, p0, Lcom/mycompany/app/image/ImageTransView;->F:I

    .line 18
    .line 19
    sub-int/2addr v2, v1

    .line 20
    div-int/lit8 v2, v2, 0x2

    .line 21
    .line 22
    sget v1, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 23
    .line 24
    int-to-float v1, v1

    .line 25
    const/high16 v3, 0x40000000    # 2.0f

    .line 26
    .line 27
    div-float/2addr v1, v3

    .line 28
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    iget-object v3, p0, Lcom/mycompany/app/image/ImageTransView;->w:Landroid/graphics/RectF;

    .line 33
    .line 34
    sub-int v4, p1, v0

    .line 35
    .line 36
    add-int/2addr v4, v1

    .line 37
    int-to-float v4, v4

    .line 38
    sub-int v5, p2, v2

    .line 39
    .line 40
    add-int/2addr v5, v1

    .line 41
    int-to-float v5, v5

    .line 42
    add-int/2addr p1, v0

    .line 43
    sub-int/2addr p1, v1

    .line 44
    int-to-float p1, p1

    .line 45
    add-int/2addr p2, v2

    .line 46
    sub-int/2addr p2, v1

    .line 47
    int-to-float p2, p2

    .line 48
    invoke-virtual {v3, v4, v5, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final o()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageTransView;->i:Lcom/mycompany/app/view/MyButtonText;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget v1, Lcom/mycompany/app/pref/PrefAlbum;->A:I

    .line 7
    .line 8
    const/4 v2, 0x5

    .line 9
    const/16 v3, 0x8

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    if-ne v1, v2, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/mycompany/app/image/ImageTransView;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 15
    .line 16
    invoke-virtual {p0, v4}, Lcom/mycompany/app/image/ImageTransView;->d(I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/mycompany/app/image/ImageTransView;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 24
    .line 25
    invoke-virtual {v0, v4}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/mycompany/app/image/ImageTransView;->i:Lcom/mycompany/app/view/MyButtonText;

    .line 29
    .line 30
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyButtonText;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    invoke-static {}, Lcom/mycompany/app/web/WebTransOcrCtrl;->getTransCap()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/mycompany/app/image/ImageTransView;->i:Lcom/mycompany/app/view/MyButtonText;

    .line 42
    .line 43
    invoke-virtual {v0, v4}, Lcom/mycompany/app/view/MyButtonText;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/mycompany/app/image/ImageTransView;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 47
    .line 48
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageTransView;->l()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageTransView;->l()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageTransView;->l()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/mycompany/app/image/ImageTransView;->n(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setFltListener(Lcom/mycompany/app/image/ImageTransView$ImageTransListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/image/ImageTransView;->g:Lcom/mycompany/app/image/ImageTransView$ImageTransListener;

    .line 2
    .line 3
    return-void
.end method

.method public setIconTrans(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageTransView;->l:Lcom/mycompany/app/view/MyButtonImage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/mycompany/app/image/ImageTransView;->p:Z

    .line 7
    .line 8
    if-ne v1, p1, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    iput-boolean p1, p0, Lcom/mycompany/app/image/ImageTransView;->p:Z

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    invoke-virtual {p0, p1}, Lcom/mycompany/app/image/ImageTransView;->d(I)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
