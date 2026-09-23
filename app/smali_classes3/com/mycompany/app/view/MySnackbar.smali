.class public Lcom/mycompany/app/view/MySnackbar;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/view/MySnackbar$EventHandler;,
        Lcom/mycompany/app/view/MySnackbar$SnackbarListener;,
        Lcom/mycompany/app/view/MySnackbar$SnackItem;
    }
.end annotation


# static fields
.field public static final u0:I


# instance fields
.field public A:Lcom/mycompany/app/view/MyButtonImage;

.field public B:Lcom/mycompany/app/view/MyButtonImage;

.field public C:Landroid/widget/LinearLayout;

.field public D:Lcom/mycompany/app/view/MyLineFrame;

.field public E:Landroid/widget/LinearLayout;

.field public F:Landroid/widget/RelativeLayout;

.field public G:Lcom/mycompany/app/view/MyRoundFrame;

.field public H:Landroid/widget/FrameLayout;

.field public I:Landroid/view/View;

.field public J:Landroid/view/View;

.field public K:Lcom/mycompany/app/view/MyButtonImage;

.field public L:Landroidx/appcompat/widget/AppCompatTextView;

.field public M:Lcom/mycompany/app/view/MyArrowView;

.field public N:I

.field public O:Lcom/mycompany/app/main/MainListLoader;

.field public P:Landroid/animation/ValueAnimator;

.field public Q:Landroid/animation/ValueAnimator;

.field public R:Landroid/animation/ValueAnimator;

.field public S:Landroid/animation/ValueAnimator;

.field public T:F

.field public U:F

.field public V:Lcom/mycompany/app/view/MySnackbar$EventHandler;

.field public W:Z

.field public a0:F

.field public b0:F

.field public c:Z

.field public c0:I

.field public d0:F

.field public e0:Landroid/view/GestureDetector;

.field public f:Lcom/mycompany/app/main/MainActivity;

.field public f0:Ljava/lang/CharSequence;

.field public g:Landroid/content/Context;

.field public g0:Landroid/graphics/Bitmap;

.field public h:Lcom/mycompany/app/view/MySnackbar$SnackbarListener;

.field public h0:F

.field public i:I

.field public i0:Z

.field public j:I

.field public final j0:Ljava/lang/Runnable;

.field public k:I

.field public k0:F

.field public l:I

.field public l0:Z

.field public m:Ljava/lang/String;

.field public final m0:Ljava/lang/Runnable;

.field public n:Ljava/lang/String;

.field public n0:F

.field public o:Z

.field public o0:Z

.field public p:Lcom/google/android/material/appbar/AppBarLayout;

.field public final p0:Ljava/lang/Runnable;

.field public q:I

.field public q0:F

.field public r:Lcom/mycompany/app/view/MySnackbar$SnackItem;

.field public r0:Z

.field public s:Landroid/view/ViewGroup;

.field public final s0:Ljava/lang/Runnable;

.field public t:Lcom/mycompany/app/view/MySnackSub;

.field public t0:Lcom/mycompany/app/web/WebNestFrame;

.field public u:Landroid/widget/ImageView;

.field public v:Landroidx/appcompat/widget/AppCompatTextView;

.field public w:Lcom/mycompany/app/view/MyRoundImage;

.field public x:Landroidx/appcompat/widget/AppCompatTextView;

.field public y:Landroidx/appcompat/widget/AppCompatTextView;

.field public z:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 2
    .line 3
    sput v0, Lcom/mycompany/app/view/MySnackbar;->u0:I

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/view/MySnackbar$25;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MySnackbar$25;-><init>(Lcom/mycompany/app/view/MySnackbar;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->j0:Ljava/lang/Runnable;

    .line 10
    .line 11
    new-instance v0, Lcom/mycompany/app/view/MySnackbar$30;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MySnackbar$30;-><init>(Lcom/mycompany/app/view/MySnackbar;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->m0:Ljava/lang/Runnable;

    .line 17
    .line 18
    new-instance v0, Lcom/mycompany/app/view/MySnackbar$34;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MySnackbar$34;-><init>(Lcom/mycompany/app/view/MySnackbar;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->p0:Ljava/lang/Runnable;

    .line 24
    .line 25
    new-instance v0, Lcom/mycompany/app/view/MySnackbar$38;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MySnackbar$38;-><init>(Lcom/mycompany/app/view/MySnackbar;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->s0:Ljava/lang/Runnable;

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/mycompany/app/view/MySnackbar;->c:Z

    .line 34
    .line 35
    iput-object p1, p0, Lcom/mycompany/app/view/MySnackbar;->g:Landroid/content/Context;

    .line 36
    .line 37
    const/4 p1, 0x4

    .line 38
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    new-instance p1, Lcom/mycompany/app/view/MySnackbar$EventHandler;

    .line 42
    .line 43
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MySnackbar$EventHandler;-><init>(Lcom/mycompany/app/view/MySnackbar;)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lcom/mycompany/app/view/MySnackbar;->V:Lcom/mycompany/app/view/MySnackbar$EventHandler;

    .line 47
    .line 48
    new-instance p1, Landroid/view/GestureDetector;

    .line 49
    .line 50
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->g:Landroid/content/Context;

    .line 51
    .line 52
    new-instance v1, Lcom/mycompany/app/view/MySnackbar$1;

    .line 53
    .line 54
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MySnackbar$1;-><init>(Lcom/mycompany/app/view/MySnackbar;)V

    .line 55
    .line 56
    .line 57
    invoke-direct {p1, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Lcom/mycompany/app/view/MySnackbar;->e0:Landroid/view/GestureDetector;

    .line 61
    .line 62
    return-void
.end method

.method public static a(Lcom/mycompany/app/view/MySnackbar;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->s:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_c

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->t:Lcom/mycompany/app/view/MySnackSub;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_5

    .line 10
    .line 11
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/mycompany/app/view/MySnackbar;->i:I

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    const/4 v2, 0x1

    .line 15
    const/4 v3, 0x4

    .line 16
    const/4 v4, 0x3

    .line 17
    const/4 v5, -0x2

    .line 18
    const/4 v6, -0x1

    .line 19
    if-eq v0, v4, :cond_7

    .line 20
    .line 21
    if-ne v0, v3, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    if-ne v0, v2, :cond_3

    .line 25
    .line 26
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    goto/16 :goto_5

    .line 31
    .line 32
    :cond_2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 33
    .line 34
    invoke-direct {v0, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 35
    .line 36
    .line 37
    iget-object v6, p0, Lcom/mycompany/app/view/MySnackbar;->t:Lcom/mycompany/app/view/MySnackSub;

    .line 38
    .line 39
    iget-object v7, p0, Lcom/mycompany/app/view/MySnackbar;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 40
    .line 41
    invoke-virtual {v6, v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    if-ne v0, v1, :cond_5

    .line 46
    .line 47
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->z:Landroidx/appcompat/widget/AppCompatTextView;

    .line 48
    .line 49
    if-nez v0, :cond_4

    .line 50
    .line 51
    goto/16 :goto_5

    .line 52
    .line 53
    :cond_4
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 54
    .line 55
    sget v7, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 56
    .line 57
    invoke-direct {v0, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 58
    .line 59
    .line 60
    iget-object v6, p0, Lcom/mycompany/app/view/MySnackbar;->t:Lcom/mycompany/app/view/MySnackSub;

    .line 61
    .line 62
    iget-object v7, p0, Lcom/mycompany/app/view/MySnackbar;->z:Landroidx/appcompat/widget/AppCompatTextView;

    .line 63
    .line 64
    invoke-virtual {v6, v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->C:Landroid/widget/LinearLayout;

    .line 69
    .line 70
    if-nez v0, :cond_6

    .line 71
    .line 72
    goto/16 :goto_5

    .line 73
    .line 74
    :cond_6
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 75
    .line 76
    invoke-direct {v0, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 77
    .line 78
    .line 79
    iget-object v6, p0, Lcom/mycompany/app/view/MySnackbar;->t:Lcom/mycompany/app/view/MySnackSub;

    .line 80
    .line 81
    iget-object v7, p0, Lcom/mycompany/app/view/MySnackbar;->C:Landroid/widget/LinearLayout;

    .line 82
    .line 83
    invoke-virtual {v6, v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->D:Lcom/mycompany/app/view/MyLineFrame;

    .line 88
    .line 89
    if-nez v0, :cond_8

    .line 90
    .line 91
    goto :goto_5

    .line 92
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->g:Landroid/content/Context;

    .line 93
    .line 94
    const/high16 v7, 0x42100000    # 36.0f

    .line 95
    .line 96
    invoke-static {v0, v7}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 105
    .line 106
    invoke-direct {v7, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 107
    .line 108
    .line 109
    iget-object v8, p0, Lcom/mycompany/app/view/MySnackbar;->t:Lcom/mycompany/app/view/MySnackSub;

    .line 110
    .line 111
    iget-object v9, p0, Lcom/mycompany/app/view/MySnackbar;->D:Lcom/mycompany/app/view/MyLineFrame;

    .line 112
    .line 113
    invoke-virtual {v8, v9, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    .line 115
    .line 116
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 117
    .line 118
    invoke-direct {v7, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 119
    .line 120
    .line 121
    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 122
    .line 123
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->t:Lcom/mycompany/app/view/MySnackSub;

    .line 124
    .line 125
    iget-object v6, p0, Lcom/mycompany/app/view/MySnackbar;->E:Landroid/widget/LinearLayout;

    .line 126
    .line 127
    invoke-virtual {v0, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    .line 129
    .line 130
    :goto_1
    iget v0, p0, Lcom/mycompany/app/view/MySnackbar;->i:I

    .line 131
    .line 132
    if-ne v0, v1, :cond_9

    .line 133
    .line 134
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->s:Landroid/view/ViewGroup;

    .line 135
    .line 136
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    int-to-float v0, v0

    .line 141
    const v1, 0x3f333333    # 0.7f

    .line 142
    .line 143
    .line 144
    :goto_2
    mul-float/2addr v0, v1

    .line 145
    float-to-int v0, v0

    .line 146
    goto :goto_3

    .line 147
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->s:Landroid/view/ViewGroup;

    .line 148
    .line 149
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    int-to-float v0, v0

    .line 154
    const/high16 v1, 0x3f400000    # 0.75f

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :goto_3
    invoke-direct {p0}, Lcom/mycompany/app/view/MySnackbar;->getBotMargin()I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    iput v1, p0, Lcom/mycompany/app/view/MySnackbar;->q:I

    .line 162
    .line 163
    iget v6, p0, Lcom/mycompany/app/view/MySnackbar;->i:I

    .line 164
    .line 165
    if-eq v6, v4, :cond_b

    .line 166
    .line 167
    if-ne v6, v3, :cond_a

    .line 168
    .line 169
    goto :goto_4

    .line 170
    :cond_a
    sget v3, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 171
    .line 172
    add-int/2addr v1, v3

    .line 173
    :cond_b
    :goto_4
    const/4 v3, 0x0

    .line 174
    invoke-virtual {p0, v3, v3, v3, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 175
    .line 176
    .line 177
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 178
    .line 179
    invoke-direct {v1, v0, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 180
    .line 181
    .line 182
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 183
    .line 184
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->t:Lcom/mycompany/app/view/MySnackSub;

    .line 185
    .line 186
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    .line 188
    .line 189
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->s:Landroid/view/ViewGroup;

    .line 190
    .line 191
    new-instance v1, Lcom/mycompany/app/view/MySnackbar$14;

    .line 192
    .line 193
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MySnackbar$14;-><init>(Lcom/mycompany/app/view/MySnackbar;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .line 198
    .line 199
    :catch_0
    :cond_c
    :goto_5
    return-void
.end method

.method public static bridge synthetic b(Lcom/mycompany/app/view/MySnackbar;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MySnackbar;->setBmpIcon(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static c(Lcom/mycompany/app/view/MySnackbar;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->t:Lcom/mycompany/app/view/MySnackSub;

    .line 2
    .line 3
    if-nez v0, :cond_11

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->g:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_4

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->m:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->B1(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->m:Ljava/lang/String;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->I1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->q0(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->n:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->m:Ljava/lang/String;

    .line 37
    .line 38
    :cond_1
    new-instance v2, Lcom/mycompany/app/view/MySnackSub;

    .line 39
    .line 40
    iget-object v3, p0, Lcom/mycompany/app/view/MySnackbar;->g:Landroid/content/Context;

    .line 41
    .line 42
    invoke-direct {v2, v3}, Lcom/mycompany/app/view/MySnackSub;-><init>(Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    iput-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->t:Lcom/mycompany/app/view/MySnackSub;

    .line 46
    .line 47
    invoke-virtual {v2, p0}, Lcom/mycompany/app/view/MySnackSub;->setBodyView(Lcom/mycompany/app/view/MySnackbar;)V

    .line 48
    .line 49
    .line 50
    new-instance v2, Lcom/mycompany/app/view/MyLineFrame;

    .line 51
    .line 52
    iget-object v3, p0, Lcom/mycompany/app/view/MySnackbar;->g:Landroid/content/Context;

    .line 53
    .line 54
    invoke-direct {v2, v3}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    iput-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->D:Lcom/mycompany/app/view/MyLineFrame;

    .line 58
    .line 59
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyLineFrame;->setLinePad(I)V

    .line 62
    .line 63
    .line 64
    iget-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->D:Lcom/mycompany/app/view/MyLineFrame;

    .line 65
    .line 66
    invoke-virtual {v2, v1}, Lcom/mycompany/app/view/MyLineFrame;->setLineDn(Z)V

    .line 67
    .line 68
    .line 69
    new-instance v2, Landroid/widget/ImageView;

    .line 70
    .line 71
    iget-object v3, p0, Lcom/mycompany/app/view/MySnackbar;->g:Landroid/content/Context;

    .line 72
    .line 73
    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 74
    .line 75
    .line 76
    iput-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->u:Landroid/widget/ImageView;

    .line 77
    .line 78
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 79
    .line 80
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 81
    .line 82
    .line 83
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 84
    .line 85
    if-eqz v2, :cond_2

    .line 86
    .line 87
    iget-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->u:Landroid/widget/ImageView;

    .line 88
    .line 89
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_block_dark_24:I

    .line 90
    .line 91
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_2
    iget-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->u:Landroid/widget/ImageView;

    .line 96
    .line 97
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_block_black_24:I

    .line 98
    .line 99
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    .line 101
    .line 102
    :goto_0
    new-instance v2, Landroidx/appcompat/widget/AppCompatTextView;

    .line 103
    .line 104
    iget-object v4, p0, Lcom/mycompany/app/view/MySnackbar;->g:Landroid/content/Context;

    .line 105
    .line 106
    const/4 v5, 0x0

    .line 107
    invoke-direct {v2, v4, v5}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    .line 109
    .line 110
    iput-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 111
    .line 112
    const/high16 v4, 0x41600000    # 14.0f

    .line 113
    .line 114
    invoke-virtual {v2, v1, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 115
    .line 116
    .line 117
    iget-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 118
    .line 119
    sget-boolean v6, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 120
    .line 121
    const/high16 v7, -0x1000000

    .line 122
    .line 123
    const v8, -0x50506

    .line 124
    .line 125
    .line 126
    if-eqz v6, :cond_3

    .line 127
    .line 128
    move v6, v8

    .line 129
    goto :goto_1

    .line 130
    :cond_3
    move v6, v7

    .line 131
    :goto_1
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    .line 133
    .line 134
    iget-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 135
    .line 136
    iget v6, p0, Lcom/mycompany/app/view/MySnackbar;->j:I

    .line 137
    .line 138
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 139
    .line 140
    .line 141
    new-instance v2, Landroid/widget/LinearLayout;

    .line 142
    .line 143
    iget-object v6, p0, Lcom/mycompany/app/view/MySnackbar;->g:Landroid/content/Context;

    .line 144
    .line 145
    invoke-direct {v2, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 146
    .line 147
    .line 148
    iput-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->E:Landroid/widget/LinearLayout;

    .line 149
    .line 150
    sget v6, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 151
    .line 152
    const/4 v9, 0x0

    .line 153
    invoke-virtual {v2, v6, v9, v6, v9}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 154
    .line 155
    .line 156
    iget-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->E:Landroid/widget/LinearLayout;

    .line 157
    .line 158
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 159
    .line 160
    .line 161
    iget-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->E:Landroid/widget/LinearLayout;

    .line 162
    .line 163
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 164
    .line 165
    .line 166
    new-instance v2, Lcom/mycompany/app/view/MyRoundImage;

    .line 167
    .line 168
    iget-object v6, p0, Lcom/mycompany/app/view/MySnackbar;->g:Landroid/content/Context;

    .line 169
    .line 170
    invoke-direct {v2, v6}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 171
    .line 172
    .line 173
    iput-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->w:Lcom/mycompany/app/view/MyRoundImage;

    .line 174
    .line 175
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 176
    .line 177
    .line 178
    iget-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->w:Lcom/mycompany/app/view/MyRoundImage;

    .line 179
    .line 180
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 181
    .line 182
    sget v10, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 183
    .line 184
    add-int/2addr v6, v10

    .line 185
    int-to-float v6, v6

    .line 186
    invoke-virtual {v2, v6}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 187
    .line 188
    .line 189
    iget v2, p0, Lcom/mycompany/app/view/MySnackbar;->i:I

    .line 190
    .line 191
    const/4 v6, 0x3

    .line 192
    if-ne v2, v6, :cond_6

    .line 193
    .line 194
    iget-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->w:Lcom/mycompany/app/view/MyRoundImage;

    .line 195
    .line 196
    if-nez v2, :cond_4

    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_4
    invoke-virtual {p0}, Lcom/mycompany/app/view/MySnackbar;->u()V

    .line 200
    .line 201
    .line 202
    iget-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->f:Lcom/mycompany/app/main/MainActivity;

    .line 203
    .line 204
    if-nez v2, :cond_5

    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_5
    new-instance v6, Lcom/mycompany/app/view/MySnackbar$21;

    .line 208
    .line 209
    invoke-direct {v6, p0}, Lcom/mycompany/app/view/MySnackbar$21;-><init>(Lcom/mycompany/app/view/MySnackbar;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2, v6}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 213
    .line 214
    .line 215
    goto :goto_2

    .line 216
    :cond_6
    iget-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->w:Lcom/mycompany/app/view/MyRoundImage;

    .line 217
    .line 218
    if-nez v2, :cond_7

    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_7
    iget-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->m:Ljava/lang/String;

    .line 222
    .line 223
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    if-eqz v2, :cond_8

    .line 228
    .line 229
    invoke-virtual {p0}, Lcom/mycompany/app/view/MySnackbar;->u()V

    .line 230
    .line 231
    .line 232
    goto :goto_2

    .line 233
    :cond_8
    iget-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->n:Ljava/lang/String;

    .line 234
    .line 235
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->n4(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 240
    .line 241
    .line 242
    move-result v6

    .line 243
    if-eqz v6, :cond_9

    .line 244
    .line 245
    invoke-direct {p0, v2}, Lcom/mycompany/app/view/MySnackbar;->setBmpIcon(Landroid/graphics/Bitmap;)V

    .line 246
    .line 247
    .line 248
    goto :goto_2

    .line 249
    :cond_9
    new-instance v2, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 250
    .line 251
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 252
    .line 253
    .line 254
    const/16 v6, 0x12

    .line 255
    .line 256
    iput v6, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 257
    .line 258
    const/16 v6, 0xb

    .line 259
    .line 260
    iput v6, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 261
    .line 262
    iget-object v6, p0, Lcom/mycompany/app/view/MySnackbar;->m:Ljava/lang/String;

    .line 263
    .line 264
    iput-object v6, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 265
    .line 266
    iget-object v6, p0, Lcom/mycompany/app/view/MySnackbar;->O:Lcom/mycompany/app/main/MainListLoader;

    .line 267
    .line 268
    if-nez v6, :cond_a

    .line 269
    .line 270
    new-instance v6, Lcom/mycompany/app/main/MainListLoader;

    .line 271
    .line 272
    iget-object v10, p0, Lcom/mycompany/app/view/MySnackbar;->g:Landroid/content/Context;

    .line 273
    .line 274
    new-instance v11, Lcom/mycompany/app/view/MySnackbar$20;

    .line 275
    .line 276
    invoke-direct {v11, p0}, Lcom/mycompany/app/view/MySnackbar$20;-><init>(Lcom/mycompany/app/view/MySnackbar;)V

    .line 277
    .line 278
    .line 279
    invoke-direct {v6, v10, v9, v11}, Lcom/mycompany/app/main/MainListLoader;-><init>(Landroid/content/Context;ZLcom/mycompany/app/main/MainListLoader$ListLoadListener;)V

    .line 280
    .line 281
    .line 282
    iput-object v6, p0, Lcom/mycompany/app/view/MySnackbar;->O:Lcom/mycompany/app/main/MainListLoader;

    .line 283
    .line 284
    :cond_a
    iget-object v6, p0, Lcom/mycompany/app/view/MySnackbar;->w:Lcom/mycompany/app/view/MyRoundImage;

    .line 285
    .line 286
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 287
    .line 288
    .line 289
    move-result-object v10

    .line 290
    invoke-virtual {v6, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    iget-object v6, p0, Lcom/mycompany/app/view/MySnackbar;->O:Lcom/mycompany/app/main/MainListLoader;

    .line 294
    .line 295
    iget-object v10, p0, Lcom/mycompany/app/view/MySnackbar;->w:Lcom/mycompany/app/view/MyRoundImage;

    .line 296
    .line 297
    invoke-virtual {v6, v2, v10}, Lcom/mycompany/app/main/MainListLoader;->e(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;)V

    .line 298
    .line 299
    .line 300
    :goto_2
    new-instance v2, Landroidx/appcompat/widget/AppCompatTextView;

    .line 301
    .line 302
    iget-object v6, p0, Lcom/mycompany/app/view/MySnackbar;->g:Landroid/content/Context;

    .line 303
    .line 304
    invoke-direct {v2, v6, v5}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 305
    .line 306
    .line 307
    iput-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 308
    .line 309
    sget v5, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 310
    .line 311
    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 312
    .line 313
    .line 314
    iget-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 315
    .line 316
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 317
    .line 318
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 319
    .line 320
    .line 321
    iget-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 322
    .line 323
    const/16 v5, 0x10

    .line 324
    .line 325
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 326
    .line 327
    .line 328
    iget-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 329
    .line 330
    const/4 v5, 0x2

    .line 331
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 332
    .line 333
    .line 334
    iget-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 335
    .line 336
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 337
    .line 338
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 339
    .line 340
    .line 341
    iget-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 342
    .line 343
    invoke-virtual {v2, v1, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 344
    .line 345
    .line 346
    iget-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 347
    .line 348
    sget-boolean v4, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 349
    .line 350
    if-eqz v4, :cond_b

    .line 351
    .line 352
    move v7, v8

    .line 353
    :cond_b
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 354
    .line 355
    .line 356
    iget-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 357
    .line 358
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    .line 360
    .line 361
    iget v0, p0, Lcom/mycompany/app/view/MySnackbar;->k:I

    .line 362
    .line 363
    const v2, -0x1f1f20

    .line 364
    .line 365
    .line 366
    const v4, -0xc0c0c1

    .line 367
    .line 368
    .line 369
    if-eqz v0, :cond_d

    .line 370
    .line 371
    new-instance v0, Lcom/mycompany/app/view/MyButtonImage;

    .line 372
    .line 373
    iget-object v5, p0, Lcom/mycompany/app/view/MySnackbar;->g:Landroid/content/Context;

    .line 374
    .line 375
    invoke-direct {v0, v5}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 376
    .line 377
    .line 378
    iput-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->A:Lcom/mycompany/app/view/MyButtonImage;

    .line 379
    .line 380
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 381
    .line 382
    .line 383
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->A:Lcom/mycompany/app/view/MyButtonImage;

    .line 384
    .line 385
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 386
    .line 387
    if-eqz v5, :cond_c

    .line 388
    .line 389
    move v5, v4

    .line 390
    goto :goto_3

    .line 391
    :cond_c
    move v5, v2

    .line 392
    :goto_3
    invoke-virtual {v0, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 393
    .line 394
    .line 395
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->A:Lcom/mycompany/app/view/MyButtonImage;

    .line 396
    .line 397
    iget v5, p0, Lcom/mycompany/app/view/MySnackbar;->k:I

    .line 398
    .line 399
    invoke-static {v5}, Lcom/mycompany/app/view/MySnackbar;->j(I)I

    .line 400
    .line 401
    .line 402
    move-result v5

    .line 403
    invoke-virtual {v0, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 404
    .line 405
    .line 406
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->A:Lcom/mycompany/app/view/MyButtonImage;

    .line 407
    .line 408
    new-instance v5, Lcom/mycompany/app/view/MySnackbar$10;

    .line 409
    .line 410
    invoke-direct {v5, p0}, Lcom/mycompany/app/view/MySnackbar$10;-><init>(Lcom/mycompany/app/view/MySnackbar;)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v0, v5}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    .line 415
    .line 416
    :cond_d
    iget v0, p0, Lcom/mycompany/app/view/MySnackbar;->l:I

    .line 417
    .line 418
    if-eqz v0, :cond_10

    .line 419
    .line 420
    new-instance v0, Lcom/mycompany/app/view/MyButtonImage;

    .line 421
    .line 422
    iget-object v5, p0, Lcom/mycompany/app/view/MySnackbar;->g:Landroid/content/Context;

    .line 423
    .line 424
    invoke-direct {v0, v5}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 425
    .line 426
    .line 427
    iput-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 428
    .line 429
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 430
    .line 431
    .line 432
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 433
    .line 434
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 435
    .line 436
    if-eqz v3, :cond_e

    .line 437
    .line 438
    move v2, v4

    .line 439
    :cond_e
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 440
    .line 441
    .line 442
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 443
    .line 444
    iget v2, p0, Lcom/mycompany/app/view/MySnackbar;->l:I

    .line 445
    .line 446
    invoke-static {v2}, Lcom/mycompany/app/view/MySnackbar;->j(I)I

    .line 447
    .line 448
    .line 449
    move-result v2

    .line 450
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 451
    .line 452
    .line 453
    iget-boolean v0, p0, Lcom/mycompany/app/view/MySnackbar;->o:Z

    .line 454
    .line 455
    if-eqz v0, :cond_f

    .line 456
    .line 457
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 458
    .line 459
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setNoti(Z)V

    .line 460
    .line 461
    .line 462
    :cond_f
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 463
    .line 464
    invoke-virtual {v0, v9}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 465
    .line 466
    .line 467
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 468
    .line 469
    new-instance v1, Lcom/mycompany/app/view/MySnackbar$11;

    .line 470
    .line 471
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MySnackbar$11;-><init>(Lcom/mycompany/app/view/MySnackbar;)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 475
    .line 476
    .line 477
    :cond_10
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->s:Landroid/view/ViewGroup;

    .line 478
    .line 479
    new-instance v1, Lcom/mycompany/app/view/MySnackbar$12;

    .line 480
    .line 481
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MySnackbar$12;-><init>(Lcom/mycompany/app/view/MySnackbar;)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 485
    .line 486
    .line 487
    :cond_11
    :goto_4
    return-void
.end method

.method public static d(Lcom/mycompany/app/view/MySnackbar;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZone;->d0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/mycompany/app/pref/PrefZone;->d0:Z

    .line 7
    .line 8
    iget-object p0, p0, Lcom/mycompany/app/view/MySnackbar;->g:Landroid/content/Context;

    .line 9
    .line 10
    const/16 v1, 0xf

    .line 11
    .line 12
    const-string v2, "mSnkGuide"

    .line 13
    .line 14
    invoke-static {v1, p0, v2, v0}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public static bridge synthetic e(Lcom/mycompany/app/view/MySnackbar;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MySnackbar;->setValAnimHide(F)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/mycompany/app/view/MySnackbar;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MySnackbar;->setValAnimReset(F)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/mycompany/app/view/MySnackbar;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MySnackbar;->setValAnimShow(F)V

    return-void
.end method

.method private getBotMargin()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->p:Lcom/google/android/material/appbar/AppBarLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget v0, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    sget v0, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 9
    .line 10
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->j0()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method private getTransY()F
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/mycompany/app/view/MySnackbar;->p:Lcom/google/android/material/appbar/AppBarLayout;

    .line 6
    .line 7
    iget v2, p0, Lcom/mycompany/app/view/MySnackbar;->q:I

    .line 8
    .line 9
    invoke-static {v1, v2}, Lcom/mycompany/app/behavior/MyBehaviorSnack;->y(Landroid/view/View;I)F

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    sub-float/2addr v0, v1

    .line 14
    return v0
.end method

.method public static bridge synthetic h(Lcom/mycompany/app/view/MySnackbar;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MySnackbar;->setValAnimSwipe(F)V

    return-void
.end method

.method public static j(I)I
    .locals 6

    .line 1
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x4

    .line 5
    const/4 v3, 0x3

    .line 6
    const/4 v4, 0x2

    .line 7
    const/4 v5, 0x1

    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    if-ne p0, v5, :cond_0

    .line 11
    .line 12
    sget p0, Lnet/kaki87/soul2/testing/R$drawable;->outline_open_in_new_dark_24:I

    .line 13
    .line 14
    return p0

    .line 15
    :cond_0
    if-ne p0, v4, :cond_1

    .line 16
    .line 17
    sget p0, Lnet/kaki87/soul2/testing/R$drawable;->outline_folder_dark_24:I

    .line 18
    .line 19
    return p0

    .line 20
    :cond_1
    if-ne p0, v3, :cond_2

    .line 21
    .line 22
    sget p0, Lnet/kaki87/soul2/testing/R$drawable;->outline_menu_dark_24:I

    .line 23
    .line 24
    return p0

    .line 25
    :cond_2
    if-ne p0, v2, :cond_3

    .line 26
    .line 27
    sget p0, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_box_dark_24:I

    .line 28
    .line 29
    return p0

    .line 30
    :cond_3
    if-ne p0, v1, :cond_9

    .line 31
    .line 32
    sget p0, Lnet/kaki87/soul2/testing/R$drawable;->outline_refresh_dark_24:I

    .line 33
    .line 34
    return p0

    .line 35
    :cond_4
    if-ne p0, v5, :cond_5

    .line 36
    .line 37
    sget p0, Lnet/kaki87/soul2/testing/R$drawable;->outline_open_in_new_black_24:I

    .line 38
    .line 39
    return p0

    .line 40
    :cond_5
    if-ne p0, v4, :cond_6

    .line 41
    .line 42
    sget p0, Lnet/kaki87/soul2/testing/R$drawable;->outline_folder_black_24:I

    .line 43
    .line 44
    return p0

    .line 45
    :cond_6
    if-ne p0, v3, :cond_7

    .line 46
    .line 47
    sget p0, Lnet/kaki87/soul2/testing/R$drawable;->outline_menu_black_24:I

    .line 48
    .line 49
    return p0

    .line 50
    :cond_7
    if-ne p0, v2, :cond_8

    .line 51
    .line 52
    sget p0, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_box_black_24:I

    .line 53
    .line 54
    return p0

    .line 55
    :cond_8
    if-ne p0, v1, :cond_9

    .line 56
    .line 57
    sget p0, Lnet/kaki87/soul2/testing/R$drawable;->outline_refresh_black_24:I

    .line 58
    .line 59
    return p0

    .line 60
    :cond_9
    const/4 p0, 0x0

    .line 61
    return p0
.end method

.method public static k(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_4

    .line 3
    .line 4
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_1
    const-string v1, "android"

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_2
    const-string v1, "net.kaki87.soul2.testing"

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    return-object v0

    .line 36
    :cond_3
    return-object p0

    .line 37
    :cond_4
    :goto_0
    return-object v0
.end method

.method public static l(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v2, 0x21

    .line 5
    .line 6
    if-lt v1, v2, :cond_0

    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Landroid/content/pm/ResolveInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :goto_0
    invoke-static {v1}, Lcom/mycompany/app/view/MySnackbar;->k(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    return-object v1

    .line 34
    :catch_0
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    if-eqz p0, :cond_3

    .line 39
    .line 40
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_3

    .line 45
    .line 46
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 61
    .line 62
    invoke-static {v0}, Lcom/mycompany/app/view/MySnackbar;->k(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    if-nez v1, :cond_2

    .line 71
    .line 72
    return-object v0

    .line 73
    :catch_1
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    if-nez p0, :cond_4

    .line 82
    .line 83
    const-string p0, "com.android.vending"

    .line 84
    .line 85
    return-object p0

    .line 86
    :cond_4
    const/4 p0, 0x0

    .line 87
    return-object p0
.end method

.method private setBmpIcon(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->w:Lcom/mycompany/app/view/MyRoundImage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->w:Lcom/mycompany/app/view/MyRoundImage;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyRoundImage;->setIconSmall(Z)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->w:Lcom/mycompany/app/view/MyRoundImage;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private setTransY(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->p:Lcom/google/android/material/appbar/AppBarLayout;

    .line 2
    .line 3
    iget v1, p0, Lcom/mycompany/app/view/MySnackbar;->q:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/mycompany/app/behavior/MyBehaviorSnack;->y(Landroid/view/View;I)F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    add-float/2addr v0, p1

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private setValAnimHide(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->s:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/mycompany/app/view/MySnackbar;->T:F

    .line 7
    .line 8
    sub-float v0, p1, v0

    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget v1, p0, Lcom/mycompany/app/view/MySnackbar;->U:F

    .line 15
    .line 16
    div-float/2addr v0, v1

    .line 17
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MySnackbar;->setTransY(F)V

    .line 18
    .line 19
    .line 20
    const/high16 p1, 0x3f800000    # 1.0f

    .line 21
    .line 22
    sub-float/2addr p1, v0

    .line 23
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private setValAnimReset(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->s:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v0, p0, Lcom/mycompany/app/view/MySnackbar;->c0:I

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

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
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MySnackbar;->setTransY(F)V

    .line 19
    .line 20
    .line 21
    :cond_2
    :goto_0
    return-void
.end method

.method private setValAnimShow(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->s:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MySnackbar;->setTransY(F)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    :cond_1
    :goto_0
    return-void
.end method

.method private setValAnimSwipe(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->s:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v0, p0, Lcom/mycompany/app/view/MySnackbar;->c0:I

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    iget v0, p0, Lcom/mycompany/app/view/MySnackbar;->d0:F

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
    sget v1, Lcom/mycompany/app/view/MySnackbar;->u0:I

    .line 20
    .line 21
    int-to-float v1, v1

    .line 22
    div-float/2addr v0, v1

    .line 23
    iget v1, p0, Lcom/mycompany/app/view/MySnackbar;->c0:I

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    if-ne v1, v2, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MySnackbar;->setTransY(F)V

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
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MySnackbar;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1a

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->P:Landroid/animation/ValueAnimator;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->Q:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->R:Landroid/animation/ValueAnimator;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    goto/16 :goto_2

    .line 22
    .line 23
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->S:Landroid/animation/ValueAnimator;

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    goto/16 :goto_2

    .line 28
    .line 29
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->e0:Landroid/view/GestureDetector;

    .line 30
    .line 31
    if-eqz v0, :cond_4

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 34
    .line 35
    .line 36
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/4 v1, 0x0

    .line 41
    const/4 v2, 0x0

    .line 42
    if-eqz v0, :cond_18

    .line 43
    .line 44
    const/4 v3, 0x1

    .line 45
    const/4 v4, 0x2

    .line 46
    if-eq v0, v3, :cond_e

    .line 47
    .line 48
    if-eq v0, v4, :cond_5

    .line 49
    .line 50
    const/4 v5, 0x3

    .line 51
    if-eq v0, v5, :cond_e

    .line 52
    .line 53
    goto/16 :goto_1

    .line 54
    .line 55
    :cond_5
    iget-boolean v0, p0, Lcom/mycompany/app/view/MySnackbar;->W:Z

    .line 56
    .line 57
    if-nez v0, :cond_6

    .line 58
    .line 59
    goto/16 :goto_1

    .line 60
    .line 61
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    iget v2, p0, Lcom/mycompany/app/view/MySnackbar;->c0:I

    .line 70
    .line 71
    if-nez v2, :cond_a

    .line 72
    .line 73
    iget v2, p0, Lcom/mycompany/app/view/MySnackbar;->a0:F

    .line 74
    .line 75
    sub-float/2addr v0, v2

    .line 76
    iget v2, p0, Lcom/mycompany/app/view/MySnackbar;->b0:F

    .line 77
    .line 78
    sub-float/2addr v1, v2

    .line 79
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    cmpl-float v6, v2, v5

    .line 88
    .line 89
    if-lez v6, :cond_8

    .line 90
    .line 91
    sget v1, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 92
    .line 93
    int-to-float v1, v1

    .line 94
    cmpg-float v1, v2, v1

    .line 95
    .line 96
    if-gez v1, :cond_7

    .line 97
    .line 98
    goto/16 :goto_1

    .line 99
    .line 100
    :cond_7
    iput v4, p0, Lcom/mycompany/app/view/MySnackbar;->c0:I

    .line 101
    .line 102
    iput v0, p0, Lcom/mycompany/app/view/MySnackbar;->d0:F

    .line 103
    .line 104
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 105
    .line 106
    .line 107
    new-instance v0, Lcom/mycompany/app/view/MySnackbar$41;

    .line 108
    .line 109
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MySnackbar$41;-><init>(Lcom/mycompany/app/view/MySnackbar;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 113
    .line 114
    .line 115
    goto/16 :goto_1

    .line 116
    .line 117
    :cond_8
    sget v0, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 118
    .line 119
    int-to-float v0, v0

    .line 120
    cmpg-float v0, v5, v0

    .line 121
    .line 122
    if-gez v0, :cond_9

    .line 123
    .line 124
    goto/16 :goto_1

    .line 125
    .line 126
    :cond_9
    iput v3, p0, Lcom/mycompany/app/view/MySnackbar;->c0:I

    .line 127
    .line 128
    iput v1, p0, Lcom/mycompany/app/view/MySnackbar;->d0:F

    .line 129
    .line 130
    invoke-direct {p0, v1}, Lcom/mycompany/app/view/MySnackbar;->setTransY(F)V

    .line 131
    .line 132
    .line 133
    new-instance v0, Lcom/mycompany/app/view/MySnackbar$41;

    .line 134
    .line 135
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MySnackbar$41;-><init>(Lcom/mycompany/app/view/MySnackbar;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 139
    .line 140
    .line 141
    goto/16 :goto_1

    .line 142
    .line 143
    :cond_a
    const/high16 v5, 0x40000000    # 2.0f

    .line 144
    .line 145
    if-ne v2, v4, :cond_c

    .line 146
    .line 147
    iget v1, p0, Lcom/mycompany/app/view/MySnackbar;->a0:F

    .line 148
    .line 149
    sub-float/2addr v0, v1

    .line 150
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    sget v2, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 155
    .line 156
    int-to-float v2, v2

    .line 157
    div-float/2addr v2, v5

    .line 158
    cmpg-float v1, v1, v2

    .line 159
    .line 160
    if-gez v1, :cond_b

    .line 161
    .line 162
    goto/16 :goto_1

    .line 163
    .line 164
    :cond_b
    iput v0, p0, Lcom/mycompany/app/view/MySnackbar;->d0:F

    .line 165
    .line 166
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 167
    .line 168
    .line 169
    goto/16 :goto_1

    .line 170
    .line 171
    :cond_c
    if-ne v2, v3, :cond_19

    .line 172
    .line 173
    iget v0, p0, Lcom/mycompany/app/view/MySnackbar;->b0:F

    .line 174
    .line 175
    sub-float/2addr v1, v0

    .line 176
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    sget v2, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 181
    .line 182
    int-to-float v2, v2

    .line 183
    div-float/2addr v2, v5

    .line 184
    cmpg-float v0, v0, v2

    .line 185
    .line 186
    if-gez v0, :cond_d

    .line 187
    .line 188
    goto/16 :goto_1

    .line 189
    .line 190
    :cond_d
    iput v1, p0, Lcom/mycompany/app/view/MySnackbar;->d0:F

    .line 191
    .line 192
    invoke-direct {p0, v1}, Lcom/mycompany/app/view/MySnackbar;->setTransY(F)V

    .line 193
    .line 194
    .line 195
    goto/16 :goto_1

    .line 196
    .line 197
    :cond_e
    iget v0, p0, Lcom/mycompany/app/view/MySnackbar;->c0:I

    .line 198
    .line 199
    if-nez v0, :cond_f

    .line 200
    .line 201
    goto/16 :goto_1

    .line 202
    .line 203
    :cond_f
    if-ne v0, v4, :cond_10

    .line 204
    .line 205
    sget v0, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 206
    .line 207
    goto :goto_0

    .line 208
    :cond_10
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    div-int/2addr v0, v4

    .line 213
    :goto_0
    iget v5, p0, Lcom/mycompany/app/view/MySnackbar;->d0:F

    .line 214
    .line 215
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 216
    .line 217
    .line 218
    move-result v5

    .line 219
    int-to-float v0, v0

    .line 220
    cmpg-float v0, v5, v0

    .line 221
    .line 222
    if-gez v0, :cond_17

    .line 223
    .line 224
    iget v0, p0, Lcom/mycompany/app/view/MySnackbar;->c0:I

    .line 225
    .line 226
    if-nez v0, :cond_11

    .line 227
    .line 228
    goto/16 :goto_1

    .line 229
    .line 230
    :cond_11
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->R:Landroid/animation/ValueAnimator;

    .line 231
    .line 232
    if-eqz v0, :cond_12

    .line 233
    .line 234
    goto/16 :goto_1

    .line 235
    .line 236
    :cond_12
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->t:Lcom/mycompany/app/view/MySnackSub;

    .line 237
    .line 238
    if-nez v0, :cond_13

    .line 239
    .line 240
    goto :goto_1

    .line 241
    :cond_13
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->V:Lcom/mycompany/app/view/MySnackbar$EventHandler;

    .line 242
    .line 243
    if-eqz v0, :cond_14

    .line 244
    .line 245
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 246
    .line 247
    .line 248
    :cond_14
    iget v0, p0, Lcom/mycompany/app/view/MySnackbar;->d0:F

    .line 249
    .line 250
    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    .line 251
    .line 252
    .line 253
    move-result v5

    .line 254
    if-nez v5, :cond_15

    .line 255
    .line 256
    invoke-virtual {p0}, Lcom/mycompany/app/view/MySnackbar;->m()V

    .line 257
    .line 258
    .line 259
    goto :goto_1

    .line 260
    :cond_15
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 261
    .line 262
    .line 263
    move-result v5

    .line 264
    sget v6, Lcom/mycompany/app/view/MySnackbar;->u0:I

    .line 265
    .line 266
    int-to-float v6, v6

    .line 267
    div-float/2addr v5, v6

    .line 268
    const/high16 v6, 0x43340000    # 180.0f

    .line 269
    .line 270
    mul-float/2addr v5, v6

    .line 271
    float-to-long v5, v5

    .line 272
    const-wide/16 v7, 0x0

    .line 273
    .line 274
    cmp-long v5, v5, v7

    .line 275
    .line 276
    if-gtz v5, :cond_16

    .line 277
    .line 278
    invoke-virtual {p0}, Lcom/mycompany/app/view/MySnackbar;->m()V

    .line 279
    .line 280
    .line 281
    goto :goto_1

    .line 282
    :cond_16
    iput v0, p0, Lcom/mycompany/app/view/MySnackbar;->n0:F

    .line 283
    .line 284
    iput-boolean v1, p0, Lcom/mycompany/app/view/MySnackbar;->o0:Z

    .line 285
    .line 286
    new-array v4, v4, [F

    .line 287
    .line 288
    aput v0, v4, v1

    .line 289
    .line 290
    aput v2, v4, v3

    .line 291
    .line 292
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    iput-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->R:Landroid/animation/ValueAnimator;

    .line 297
    .line 298
    const-wide/16 v1, 0xb4

    .line 299
    .line 300
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 301
    .line 302
    .line 303
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->R:Landroid/animation/ValueAnimator;

    .line 304
    .line 305
    new-instance v1, Lcom/mycompany/app/view/MySnackbar$32;

    .line 306
    .line 307
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MySnackbar$32;-><init>(Lcom/mycompany/app/view/MySnackbar;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 311
    .line 312
    .line 313
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->R:Landroid/animation/ValueAnimator;

    .line 314
    .line 315
    new-instance v1, Lcom/mycompany/app/view/MySnackbar$33;

    .line 316
    .line 317
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MySnackbar$33;-><init>(Lcom/mycompany/app/view/MySnackbar;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 321
    .line 322
    .line 323
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->R:Landroid/animation/ValueAnimator;

    .line 324
    .line 325
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 326
    .line 327
    .line 328
    goto :goto_1

    .line 329
    :cond_17
    invoke-virtual {p0}, Lcom/mycompany/app/view/MySnackbar;->t()V

    .line 330
    .line 331
    .line 332
    goto :goto_1

    .line 333
    :cond_18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 334
    .line 335
    .line 336
    move-result v0

    .line 337
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 338
    .line 339
    .line 340
    move-result v3

    .line 341
    iput v0, p0, Lcom/mycompany/app/view/MySnackbar;->a0:F

    .line 342
    .line 343
    iput v3, p0, Lcom/mycompany/app/view/MySnackbar;->b0:F

    .line 344
    .line 345
    iput v1, p0, Lcom/mycompany/app/view/MySnackbar;->c0:I

    .line 346
    .line 347
    iput v2, p0, Lcom/mycompany/app/view/MySnackbar;->d0:F

    .line 348
    .line 349
    :cond_19
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 350
    .line 351
    .line 352
    move-result p1

    .line 353
    return p1

    .line 354
    :cond_1a
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 355
    .line 356
    .line 357
    move-result p1

    .line 358
    return p1
.end method

.method public getSnackItem()Lcom/mycompany/app/view/MySnackbar$SnackItem;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->r:Lcom/mycompany/app/view/MySnackbar$SnackItem;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/mycompany/app/view/MySnackbar;->r:Lcom/mycompany/app/view/MySnackbar$SnackItem;

    .line 5
    .line 6
    return-object v0
.end method

.method public final i(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->h:Lcom/mycompany/app/view/MySnackbar$SnackbarListener;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/mycompany/app/view/MySnackbar;->s()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/view/MySnackbar;->p()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MySnackbar;->c:Z

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

.method public final m()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->R:Landroid/animation/ValueAnimator;

    .line 3
    .line 4
    iget v0, p0, Lcom/mycompany/app/view/MySnackbar;->c0:I

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    const/4 v2, 0x0

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, v2}, Landroid/view/View;->setTranslationX(F)V

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
    invoke-direct {p0, v2}, Lcom/mycompany/app/view/MySnackbar;->setTransY(F)V

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/mycompany/app/view/MySnackbar;->c0:I

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/mycompany/app/view/MySnackbar;->r()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final n()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->P:Landroid/animation/ValueAnimator;

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/mycompany/app/view/MySnackbar;->getTransY()F

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-direct {p0, v1}, Lcom/mycompany/app/view/MySnackbar;->setTransY(F)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MySnackbar;->r()V

    .line 29
    .line 30
    .line 31
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZone;->d0:Z

    .line 32
    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->s:Landroid/view/ViewGroup;

    .line 37
    .line 38
    if-eqz v0, :cond_4

    .line 39
    .line 40
    iget-object v1, p0, Lcom/mycompany/app/view/MySnackbar;->t:Lcom/mycompany/app/view/MySnackSub;

    .line 41
    .line 42
    if-eqz v1, :cond_4

    .line 43
    .line 44
    iget-object v1, p0, Lcom/mycompany/app/view/MySnackbar;->F:Landroid/widget/RelativeLayout;

    .line 45
    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    new-instance v1, Lcom/mycompany/app/view/MySnackbar$27;

    .line 50
    .line 51
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MySnackbar$27;-><init>(Lcom/mycompany/app/view/MySnackbar;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 55
    .line 56
    .line 57
    :cond_4
    :goto_0
    return-void
.end method

.method public final o()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->S:Landroid/animation/ValueAnimator;

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/mycompany/app/view/MySnackbar;->c0:I

    .line 6
    .line 7
    const/16 v0, 0x8

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/mycompany/app/view/MySnackbar;->p()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/mycompany/app/view/MySnackbar;->F:Landroid/widget/RelativeLayout;

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    :goto_0
    return-void

    .line 16
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/view/MySnackbar;->F:Landroid/widget/RelativeLayout;

    .line 17
    .line 18
    const/4 p3, 0x0

    .line 19
    invoke-virtual {p1, p3, p3, p3, p2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final p()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MySnackbar;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_1

    .line 6
    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/mycompany/app/view/MySnackbar;->c:Z

    .line 9
    .line 10
    iget-object v1, p0, Lcom/mycompany/app/view/MySnackbar;->r:Lcom/mycompany/app/view/MySnackbar$SnackItem;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iput-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->r:Lcom/mycompany/app/view/MySnackbar$SnackItem;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/mycompany/app/view/MySnackbar$SnackItem;->f:Lcom/mycompany/app/web/WebNestFrame;

    .line 19
    .line 20
    if-eqz v1, :cond_4

    .line 21
    .line 22
    iget-boolean v3, v1, Lcom/mycompany/app/web/WebNestFrame;->c:Z

    .line 23
    .line 24
    if-nez v3, :cond_2

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    iget-object v3, p0, Lcom/mycompany/app/view/MySnackbar;->s:Landroid/view/ViewGroup;

    .line 28
    .line 29
    if-nez v3, :cond_3

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lcom/mycompany/app/web/WebNestFrame;->t(Lcom/mycompany/app/web/WebNestView;)Z

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_3
    invoke-virtual {v1, v0}, Lcom/mycompany/app/web/WebNestFrame;->setValid(Z)V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lcom/mycompany/app/view/MySnackbar;->t0:Lcom/mycompany/app/web/WebNestFrame;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/mycompany/app/view/MySnackbar;->s:Landroid/view/ViewGroup;

    .line 41
    .line 42
    new-instance v3, Lcom/mycompany/app/view/MySnackbar$40;

    .line 43
    .line 44
    invoke-direct {v3, p0}, Lcom/mycompany/app/view/MySnackbar$40;-><init>(Lcom/mycompany/app/view/MySnackbar;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 48
    .line 49
    .line 50
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/view/MySnackbar;->q()V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/mycompany/app/view/MySnackbar;->h:Lcom/mycompany/app/view/MySnackbar$SnackbarListener;

    .line 54
    .line 55
    if-eqz v1, :cond_5

    .line 56
    .line 57
    invoke-interface {v1}, Lcom/mycompany/app/view/MySnackbar$SnackbarListener;->onDismiss()V

    .line 58
    .line 59
    .line 60
    iput-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->h:Lcom/mycompany/app/view/MySnackbar$SnackbarListener;

    .line 61
    .line 62
    :cond_5
    iget-object v1, p0, Lcom/mycompany/app/view/MySnackbar;->V:Lcom/mycompany/app/view/MySnackbar$EventHandler;

    .line 63
    .line 64
    if-eqz v1, :cond_6

    .line 65
    .line 66
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 67
    .line 68
    .line 69
    iput-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->V:Lcom/mycompany/app/view/MySnackbar$EventHandler;

    .line 70
    .line 71
    :cond_6
    iget-object v1, p0, Lcom/mycompany/app/view/MySnackbar;->P:Landroid/animation/ValueAnimator;

    .line 72
    .line 73
    if-eqz v1, :cond_7

    .line 74
    .line 75
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 76
    .line 77
    .line 78
    iput-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->P:Landroid/animation/ValueAnimator;

    .line 79
    .line 80
    :cond_7
    iget-object v1, p0, Lcom/mycompany/app/view/MySnackbar;->Q:Landroid/animation/ValueAnimator;

    .line 81
    .line 82
    if-eqz v1, :cond_8

    .line 83
    .line 84
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 85
    .line 86
    .line 87
    iput-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->Q:Landroid/animation/ValueAnimator;

    .line 88
    .line 89
    :cond_8
    iget-object v1, p0, Lcom/mycompany/app/view/MySnackbar;->R:Landroid/animation/ValueAnimator;

    .line 90
    .line 91
    if-eqz v1, :cond_9

    .line 92
    .line 93
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 94
    .line 95
    .line 96
    iput-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->R:Landroid/animation/ValueAnimator;

    .line 97
    .line 98
    :cond_9
    iget-object v1, p0, Lcom/mycompany/app/view/MySnackbar;->S:Landroid/animation/ValueAnimator;

    .line 99
    .line 100
    if-eqz v1, :cond_a

    .line 101
    .line 102
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 103
    .line 104
    .line 105
    iput-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->S:Landroid/animation/ValueAnimator;

    .line 106
    .line 107
    :cond_a
    iget-object v1, p0, Lcom/mycompany/app/view/MySnackbar;->t:Lcom/mycompany/app/view/MySnackSub;

    .line 108
    .line 109
    if-eqz v1, :cond_b

    .line 110
    .line 111
    iput-boolean v0, v1, Lcom/mycompany/app/view/MySnackSub;->c:Z

    .line 112
    .line 113
    iput-object v2, v1, Lcom/mycompany/app/view/MySnackSub;->f:Lcom/mycompany/app/view/MySnackbar;

    .line 114
    .line 115
    iput-object v2, v1, Lcom/mycompany/app/view/MySnackSub;->j:Landroid/graphics/RectF;

    .line 116
    .line 117
    iput-object v2, v1, Lcom/mycompany/app/view/MySnackSub;->k:Landroid/graphics/Paint;

    .line 118
    .line 119
    iput-object v2, v1, Lcom/mycompany/app/view/MySnackSub;->l:Landroid/graphics/Paint;

    .line 120
    .line 121
    iput-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->t:Lcom/mycompany/app/view/MySnackSub;

    .line 122
    .line 123
    :cond_b
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->w:Lcom/mycompany/app/view/MyRoundImage;

    .line 124
    .line 125
    if-eqz v0, :cond_c

    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundImage;->k()V

    .line 128
    .line 129
    .line 130
    iput-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->w:Lcom/mycompany/app/view/MyRoundImage;

    .line 131
    .line 132
    :cond_c
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->A:Lcom/mycompany/app/view/MyButtonImage;

    .line 133
    .line 134
    if-eqz v0, :cond_d

    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 137
    .line 138
    .line 139
    iput-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->A:Lcom/mycompany/app/view/MyButtonImage;

    .line 140
    .line 141
    :cond_d
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 142
    .line 143
    if-eqz v0, :cond_e

    .line 144
    .line 145
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 146
    .line 147
    .line 148
    iput-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 149
    .line 150
    :cond_e
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->D:Lcom/mycompany/app/view/MyLineFrame;

    .line 151
    .line 152
    if-eqz v0, :cond_f

    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineFrame;->g()V

    .line 155
    .line 156
    .line 157
    iput-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->D:Lcom/mycompany/app/view/MyLineFrame;

    .line 158
    .line 159
    :cond_f
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->O:Lcom/mycompany/app/main/MainListLoader;

    .line 160
    .line 161
    if-eqz v0, :cond_10

    .line 162
    .line 163
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListLoader;->f()V

    .line 164
    .line 165
    .line 166
    iput-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->O:Lcom/mycompany/app/main/MainListLoader;

    .line 167
    .line 168
    :cond_10
    iput-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->f:Lcom/mycompany/app/main/MainActivity;

    .line 169
    .line 170
    iput-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->g:Landroid/content/Context;

    .line 171
    .line 172
    iput-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->m:Ljava/lang/String;

    .line 173
    .line 174
    iput-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->n:Ljava/lang/String;

    .line 175
    .line 176
    iput-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->p:Lcom/google/android/material/appbar/AppBarLayout;

    .line 177
    .line 178
    iput-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 179
    .line 180
    iput-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 181
    .line 182
    iput-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->z:Landroidx/appcompat/widget/AppCompatTextView;

    .line 183
    .line 184
    iput-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->u:Landroid/widget/ImageView;

    .line 185
    .line 186
    iput-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 187
    .line 188
    iput-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->C:Landroid/widget/LinearLayout;

    .line 189
    .line 190
    iput-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->E:Landroid/widget/LinearLayout;

    .line 191
    .line 192
    iput-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->e0:Landroid/view/GestureDetector;

    .line 193
    .line 194
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->s:Landroid/view/ViewGroup;

    .line 195
    .line 196
    if-eqz v0, :cond_11

    .line 197
    .line 198
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .line 200
    .line 201
    :catch_0
    iput-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->s:Landroid/view/ViewGroup;

    .line 202
    .line 203
    :cond_11
    :goto_1
    return-void
.end method

.method public final q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->F:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/16 v1, 0x8

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->t:Lcom/mycompany/app/view/MySnackSub;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MySnackSub;->setGuideMode(Z)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->s:Landroid/view/ViewGroup;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/mycompany/app/view/MySnackbar;->F:Landroid/widget/RelativeLayout;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    :catch_0
    :cond_2
    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->F:Landroid/widget/RelativeLayout;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->G:Lcom/mycompany/app/view/MyRoundFrame;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->H:Landroid/widget/FrameLayout;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->I:Landroid/view/View;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->J:Landroid/view/View;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->K:Lcom/mycompany/app/view/MyButtonImage;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->L:Landroidx/appcompat/widget/AppCompatTextView;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->M:Lcom/mycompany/app/view/MyArrowView;

    .line 44
    .line 45
    return-void
.end method

.method public final r()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->V:Lcom/mycompany/app/view/MySnackbar$EventHandler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    .line 9
    .line 10
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZone;->d0:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const-wide/16 v2, 0x3a98

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    iget v0, p0, Lcom/mycompany/app/view/MySnackbar;->i:I

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    if-eq v0, v2, :cond_3

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    if-ne v0, v2, :cond_2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    const-wide/16 v2, 0x1388

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_3
    :goto_0
    const-wide/16 v2, 0xbb8

    .line 30
    .line 31
    :goto_1
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->V:Lcom/mycompany/app/view/MySnackbar$EventHandler;

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final s()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->Q:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->t:Lcom/mycompany/app/view/MySnackSub;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->V:Lcom/mycompany/app/view/MySnackbar$EventHandler;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 17
    .line 18
    .line 19
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->F:Landroid/widget/RelativeLayout;

    .line 20
    .line 21
    const/16 v2, 0x8

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->t:Lcom/mycompany/app/view/MySnackSub;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MySnackSub;->setGuideMode(Z)V

    .line 31
    .line 32
    .line 33
    :cond_3
    invoke-direct {p0}, Lcom/mycompany/app/view/MySnackbar;->getTransY()F

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    sget v3, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 38
    .line 39
    int-to-float v3, v3

    .line 40
    sub-float v4, v3, v0

    .line 41
    .line 42
    div-float v5, v4, v3

    .line 43
    .line 44
    const/high16 v6, 0x43340000    # 180.0f

    .line 45
    .line 46
    mul-float/2addr v5, v6

    .line 47
    float-to-long v5, v5

    .line 48
    cmpl-float v7, v0, v3

    .line 49
    .line 50
    const/4 v8, 0x0

    .line 51
    if-gez v7, :cond_6

    .line 52
    .line 53
    const-wide/16 v9, 0x0

    .line 54
    .line 55
    cmp-long v7, v5, v9

    .line 56
    .line 57
    if-gtz v7, :cond_4

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_4
    iput v0, p0, Lcom/mycompany/app/view/MySnackbar;->T:F

    .line 61
    .line 62
    iput v4, p0, Lcom/mycompany/app/view/MySnackbar;->U:F

    .line 63
    .line 64
    iput v0, p0, Lcom/mycompany/app/view/MySnackbar;->k0:F

    .line 65
    .line 66
    iput-boolean v1, p0, Lcom/mycompany/app/view/MySnackbar;->l0:Z

    .line 67
    .line 68
    const/4 v2, 0x2

    .line 69
    new-array v2, v2, [F

    .line 70
    .line 71
    aput v0, v2, v1

    .line 72
    .line 73
    const/4 v0, 0x1

    .line 74
    aput v3, v2, v0

    .line 75
    .line 76
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->Q:Landroid/animation/ValueAnimator;

    .line 81
    .line 82
    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->Q:Landroid/animation/ValueAnimator;

    .line 86
    .line 87
    new-instance v1, Lcom/mycompany/app/view/MySnackbar$28;

    .line 88
    .line 89
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MySnackbar$28;-><init>(Lcom/mycompany/app/view/MySnackbar;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->Q:Landroid/animation/ValueAnimator;

    .line 96
    .line 97
    new-instance v1, Lcom/mycompany/app/view/MySnackbar$29;

    .line 98
    .line 99
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MySnackbar$29;-><init>(Lcom/mycompany/app/view/MySnackbar;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->P:Landroid/animation/ValueAnimator;

    .line 106
    .line 107
    if-eqz v0, :cond_5

    .line 108
    .line 109
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 110
    .line 111
    .line 112
    iput-object v8, p0, Lcom/mycompany/app/view/MySnackbar;->P:Landroid/animation/ValueAnimator;

    .line 113
    .line 114
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->Q:Landroid/animation/ValueAnimator;

    .line 115
    .line 116
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_6
    :goto_1
    iput-object v8, p0, Lcom/mycompany/app/view/MySnackbar;->Q:Landroid/animation/ValueAnimator;

    .line 121
    .line 122
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/mycompany/app/view/MySnackbar;->p()V

    .line 126
    .line 127
    .line 128
    return-void
.end method

.method public setActivity(Lcom/mycompany/app/main/MainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MySnackbar;->f:Lcom/mycompany/app/main/MainActivity;

    .line 2
    .line 3
    return-void
.end method

.method public setAppBarView(Lcom/google/android/material/appbar/AppBarLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MySnackbar;->p:Lcom/google/android/material/appbar/AppBarLayout;

    .line 2
    .line 3
    return-void
.end method

.method public setSnackItem(Lcom/mycompany/app/view/MySnackbar$SnackItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MySnackbar;->r:Lcom/mycompany/app/view/MySnackbar$SnackItem;

    .line 2
    .line 3
    return-void
.end method

.method public setTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iput-boolean v1, p0, Lcom/mycompany/app/view/MySnackbar;->W:Z

    .line 10
    .line 11
    iget-object p1, p0, Lcom/mycompany/app/view/MySnackbar;->V:Lcom/mycompany/app/view/MySnackbar$EventHandler;

    .line 12
    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    if-eq p1, v1, :cond_1

    .line 20
    .line 21
    const/4 v1, 0x3

    .line 22
    if-ne p1, v1, :cond_2

    .line 23
    .line 24
    :cond_1
    iput-boolean v0, p0, Lcom/mycompany/app/view/MySnackbar;->W:Z

    .line 25
    .line 26
    iget p1, p0, Lcom/mycompany/app/view/MySnackbar;->c0:I

    .line 27
    .line 28
    if-eqz p1, :cond_3

    .line 29
    .line 30
    :cond_2
    return-void

    .line 31
    :cond_3
    invoke-virtual {p0}, Lcom/mycompany/app/view/MySnackbar;->r()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final t()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MySnackbar;->c0:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->S:Landroid/animation/ValueAnimator;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->t:Lcom/mycompany/app/view/MySnackSub;

    .line 12
    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    :goto_0
    return-void

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->V:Lcom/mycompany/app/view/MySnackbar$EventHandler;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 22
    .line 23
    .line 24
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->h:Lcom/mycompany/app/view/MySnackbar$SnackbarListener;

    .line 25
    .line 26
    if-eqz v0, :cond_4

    .line 27
    .line 28
    invoke-interface {v0}, Lcom/mycompany/app/view/MySnackbar$SnackbarListener;->b()V

    .line 29
    .line 30
    .line 31
    :cond_4
    iget v0, p0, Lcom/mycompany/app/view/MySnackbar;->d0:F

    .line 32
    .line 33
    iget v2, p0, Lcom/mycompany/app/view/MySnackbar;->c0:I

    .line 34
    .line 35
    const/4 v3, 0x2

    .line 36
    if-ne v2, v3, :cond_5

    .line 37
    .line 38
    iget-object v2, p0, Lcom/mycompany/app/view/MySnackbar;->t:Lcom/mycompany/app/view/MySnackSub;

    .line 39
    .line 40
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    goto :goto_1

    .line 49
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    :goto_1
    const/4 v5, 0x0

    .line 58
    cmpg-float v6, v0, v5

    .line 59
    .line 60
    sget v7, Lcom/mycompany/app/view/MySnackbar;->u0:I

    .line 61
    .line 62
    if-gez v6, :cond_8

    .line 63
    .line 64
    iget v4, p0, Lcom/mycompany/app/view/MySnackbar;->c0:I

    .line 65
    .line 66
    if-ne v4, v3, :cond_6

    .line 67
    .line 68
    iget-object v4, p0, Lcom/mycompany/app/view/MySnackbar;->t:Lcom/mycompany/app/view/MySnackSub;

    .line 69
    .line 70
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    :goto_2
    add-int/2addr v4, v2

    .line 75
    goto :goto_3

    .line 76
    :cond_6
    iget-object v4, p0, Lcom/mycompany/app/view/MySnackbar;->t:Lcom/mycompany/app/view/MySnackSub;

    .line 77
    .line 78
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    goto :goto_2

    .line 83
    :goto_3
    int-to-float v2, v4

    .line 84
    add-float v6, v2, v0

    .line 85
    .line 86
    cmpg-float v6, v6, v5

    .line 87
    .line 88
    if-gtz v6, :cond_7

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/mycompany/app/view/MySnackbar;->o()V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_7
    int-to-float v6, v7

    .line 95
    sub-float v6, v0, v6

    .line 96
    .line 97
    add-float/2addr v2, v6

    .line 98
    cmpg-float v2, v2, v5

    .line 99
    .line 100
    if-gtz v2, :cond_a

    .line 101
    .line 102
    neg-int v2, v4

    .line 103
    int-to-float v6, v2

    .line 104
    goto :goto_4

    .line 105
    :cond_8
    int-to-float v5, v2

    .line 106
    add-float v6, v5, v0

    .line 107
    .line 108
    int-to-float v8, v4

    .line 109
    cmpl-float v6, v6, v8

    .line 110
    .line 111
    if-ltz v6, :cond_9

    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/mycompany/app/view/MySnackbar;->o()V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_9
    int-to-float v6, v7

    .line 118
    add-float/2addr v6, v0

    .line 119
    add-float/2addr v5, v6

    .line 120
    cmpl-float v5, v5, v8

    .line 121
    .line 122
    if-ltz v5, :cond_a

    .line 123
    .line 124
    sub-int/2addr v4, v2

    .line 125
    int-to-float v6, v4

    .line 126
    :cond_a
    :goto_4
    sub-float v2, v6, v0

    .line 127
    .line 128
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    int-to-float v4, v7

    .line 133
    div-float/2addr v2, v4

    .line 134
    const/high16 v4, 0x43340000    # 180.0f

    .line 135
    .line 136
    mul-float/2addr v2, v4

    .line 137
    float-to-long v4, v2

    .line 138
    const-wide/16 v7, 0x0

    .line 139
    .line 140
    cmp-long v2, v4, v7

    .line 141
    .line 142
    if-gtz v2, :cond_b

    .line 143
    .line 144
    invoke-virtual {p0}, Lcom/mycompany/app/view/MySnackbar;->o()V

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :cond_b
    iput v0, p0, Lcom/mycompany/app/view/MySnackbar;->q0:F

    .line 149
    .line 150
    iput-boolean v1, p0, Lcom/mycompany/app/view/MySnackbar;->r0:Z

    .line 151
    .line 152
    new-array v2, v3, [F

    .line 153
    .line 154
    aput v0, v2, v1

    .line 155
    .line 156
    const/4 v0, 0x1

    .line 157
    aput v6, v2, v0

    .line 158
    .line 159
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    iput-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->S:Landroid/animation/ValueAnimator;

    .line 164
    .line 165
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 166
    .line 167
    .line 168
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->S:Landroid/animation/ValueAnimator;

    .line 169
    .line 170
    new-instance v1, Lcom/mycompany/app/view/MySnackbar$36;

    .line 171
    .line 172
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MySnackbar$36;-><init>(Lcom/mycompany/app/view/MySnackbar;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 176
    .line 177
    .line 178
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->S:Landroid/animation/ValueAnimator;

    .line 179
    .line 180
    new-instance v1, Lcom/mycompany/app/view/MySnackbar$37;

    .line 181
    .line 182
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MySnackbar$37;-><init>(Lcom/mycompany/app/view/MySnackbar;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 186
    .line 187
    .line 188
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->S:Landroid/animation/ValueAnimator;

    .line 189
    .line 190
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 191
    .line 192
    .line 193
    return-void
.end method

.method public final u()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->w:Lcom/mycompany/app/view/MyRoundImage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v1, p0, Lcom/mycompany/app/view/MySnackbar;->i:I

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    if-ne v1, v2, :cond_2

    .line 10
    .line 11
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_android_dark_24:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_android_black_24:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_2
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 22
    .line 23
    if-eqz v1, :cond_3

    .line 24
    .line 25
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_dark_24:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_3
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 29
    .line 30
    :goto_0
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyRoundImage;->setImageResource(I)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final v(Landroid/view/ViewGroup;ILcom/mycompany/app/view/MySnackbar$SnackbarListener;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/mycompany/app/view/MySnackbar;->i:I

    .line 3
    .line 4
    const/4 v4, 0x0

    .line 5
    const/4 v5, 0x0

    .line 6
    move-object v1, p0

    .line 7
    move-object v2, p1

    .line 8
    move v3, p2

    .line 9
    move-object v6, p3

    .line 10
    invoke-virtual/range {v1 .. v6}, Lcom/mycompany/app/view/MySnackbar;->x(Landroid/view/ViewGroup;IIILcom/mycompany/app/view/MySnackbar$SnackbarListener;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final w(Landroid/view/ViewGroup;IILcom/mycompany/app/view/MySnackbar$SnackbarListener;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/mycompany/app/view/MySnackbar;->i:I

    .line 3
    .line 4
    const/4 v5, 0x0

    .line 5
    move-object v1, p0

    .line 6
    move-object v2, p1

    .line 7
    move v3, p2

    .line 8
    move v4, p3

    .line 9
    move-object v6, p4

    .line 10
    invoke-virtual/range {v1 .. v6}, Lcom/mycompany/app/view/MySnackbar;->x(Landroid/view/ViewGroup;IIILcom/mycompany/app/view/MySnackbar$SnackbarListener;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final x(Landroid/view/ViewGroup;IIILcom/mycompany/app/view/MySnackbar$SnackbarListener;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar;->s:Landroid/view/ViewGroup;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iput-object p1, p0, Lcom/mycompany/app/view/MySnackbar;->s:Landroid/view/ViewGroup;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/mycompany/app/view/MySnackbar;->h:Lcom/mycompany/app/view/MySnackbar$SnackbarListener;

    .line 11
    .line 12
    iput p2, p0, Lcom/mycompany/app/view/MySnackbar;->j:I

    .line 13
    .line 14
    iput p3, p0, Lcom/mycompany/app/view/MySnackbar;->k:I

    .line 15
    .line 16
    iput p4, p0, Lcom/mycompany/app/view/MySnackbar;->l:I

    .line 17
    .line 18
    new-instance p2, Lcom/mycompany/app/view/MySnackbar$2;

    .line 19
    .line 20
    invoke-direct {p2, p0}, Lcom/mycompany/app/view/MySnackbar$2;-><init>(Lcom/mycompany/app/view/MySnackbar;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void
.end method
