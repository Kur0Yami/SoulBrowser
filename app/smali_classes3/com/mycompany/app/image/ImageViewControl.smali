.class public Lcom/mycompany/app/image/ImageViewControl;
.super Lcom/mycompany/app/view/MyFadeRelative;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/image/ImageViewControl$ControlListener;
    }
.end annotation


# instance fields
.field public A:Lcom/mycompany/app/main/MainActivity;

.field public B:Landroid/view/Window;

.field public C:Lcom/mycompany/app/image/ImageViewControl$ControlListener;

.field public D:I

.field public E:Z

.field public F:Landroid/view/View;

.field public G:Landroidx/appcompat/widget/AppCompatTextView;

.field public H:Lcom/mycompany/app/view/MyButtonImage;

.field public I:Lcom/mycompany/app/view/MyButtonImage;

.field public J:Lcom/mycompany/app/view/MyButtonImage;

.field public K:Lcom/mycompany/app/view/MyButtonImage;

.field public L:Lcom/mycompany/app/view/MyButtonImage;

.field public M:Landroid/widget/LinearLayout;

.field public N:Lcom/mycompany/app/view/MyButtonImage;

.field public O:Lcom/mycompany/app/view/MyButtonImage;

.field public P:Lcom/mycompany/app/view/MyButtonImage;

.field public Q:Lcom/mycompany/app/view/MyButtonImage;

.field public R:Lcom/mycompany/app/view/MyButtonImage;

.field public S:Lcom/mycompany/app/view/MyButtonImage;

.field public T:Lcom/mycompany/app/view/MyButtonImage;

.field public U:Lcom/mycompany/app/view/MyAreaView;

.field public V:Landroid/widget/LinearLayout;

.field public W:Lcom/mycompany/app/view/MyButtonImage;

.field public a0:Lcom/mycompany/app/view/MyButtonImage;

.field public b0:Lcom/mycompany/app/view/MyButtonImage;

.field public c0:Lcom/mycompany/app/view/MyButtonImage;

.field public d0:Lcom/mycompany/app/view/MyButtonImage;

.field public e0:Lcom/mycompany/app/view/MyButtonImage;

.field public f0:I

.field public g0:Lcom/mycompany/app/image/ImageSeekBar;

.field public h0:Landroidx/appcompat/widget/AppCompatTextView;

.field public i0:Landroidx/appcompat/widget/AppCompatTextView;

.field public j0:Lcom/mycompany/app/view/MyRecyclerView;

.field public k0:Lcom/mycompany/app/image/ImageThumbAdapter;

.field public l0:Lcom/mycompany/app/view/MyScrollBar;

.field public m0:Landroid/view/View;

.field public n0:I

.field public o0:I

.field public p0:I

.field public q0:I

.field public r0:Z

.field public final s0:Ljava/lang/Runnable;

.field public final t0:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field public final y:I

.field public final z:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyFadeRelative;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/image/ImageViewControl$31;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/image/ImageViewControl$31;-><init>(Lcom/mycompany/app/image/ImageViewControl;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->s0:Ljava/lang/Runnable;

    .line 10
    .line 11
    new-instance v0, Lcom/mycompany/app/image/ImageViewControl$33;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/mycompany/app/image/ImageViewControl$33;-><init>(Lcom/mycompany/app/image/ImageViewControl;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->t0:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewControl;->z:Landroid/content/Context;

    .line 19
    .line 20
    sget p1, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 21
    .line 22
    iput p1, p0, Lcom/mycompany/app/image/ImageViewControl;->y:I

    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyFadeRelative;->setTouchable(Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyFadeRelative;->setAutoHide(Z)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private getNaviHeight()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->A:Lcom/mycompany/app/main/MainActivity;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->B:Landroid/view/Window;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewControl;->m()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    return v1

    .line 18
    :cond_1
    sget-boolean v0, Lcom/mycompany/app/main/MainConst;->e:Z

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget v0, p0, Lcom/mycompany/app/image/ImageViewControl;->D:I

    .line 23
    .line 24
    return v0

    .line 25
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->B:Landroid/view/Window;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewControl;->A:Lcom/mycompany/app/main/MainActivity;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainActivity;->a0()Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v2, p0, Lcom/mycompany/app/image/ImageViewControl;->z:Landroid/content/Context;

    .line 34
    .line 35
    invoke-static {v2, v0, v1}, Lcom/mycompany/app/main/MainUtil;->P2(Landroid/content/Context;Landroid/view/Window;Landroid/view/View;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    return v0

    .line 40
    :cond_3
    :goto_0
    return v1
.end method

.method private setIconPage(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->d0:Lcom/mycompany/app/view/MyButtonImage;

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
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_stay_current_landscape_white_24:I

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_stay_current_portrait_white_24:I

    .line 12
    .line 13
    :goto_0
    iget v1, p0, Lcom/mycompany/app/image/ImageViewControl;->q0:I

    .line 14
    .line 15
    if-ne v1, p1, :cond_2

    .line 16
    .line 17
    :goto_1
    return-void

    .line 18
    :cond_2
    iput p1, p0, Lcom/mycompany/app/image/ImageViewControl;->q0:I

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->j0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->p0()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->l0:Lcom/mycompany/app/view/MyScrollBar;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyFadeView;->d(Z)V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method public final B()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyFadeRelative;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lcom/mycompany/app/view/MyFadeRelative;->d(Z)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return v0

    .line 13
    :cond_0
    invoke-virtual {p0, v1}, Lcom/mycompany/app/image/ImageViewControl;->x(Z)V

    .line 14
    .line 15
    .line 16
    return v1
.end method

.method public final C()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyFadeRelative;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0}, Lcom/mycompany/app/image/ImageViewControl;->x(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyFadeRelative;->f()Z

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
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->C:Lcom/mycompany/app/image/ImageViewControl$ControlListener;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/mycompany/app/image/ImageViewControl$ControlListener;->a()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Lcom/mycompany/app/image/ImageViewControl;->setIconsPressed(Z)V

    .line 20
    .line 21
    .line 22
    return v1

    .line 23
    :cond_1
    invoke-super {p0, p1}, Lcom/mycompany/app/view/MyFadeRelative;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1
.end method

.method public final g()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/view/MyFadeRelative;->g()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->H:Lcom/mycompany/app/view/MyButtonImage;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewControl;->H:Lcom/mycompany/app/view/MyButtonImage;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->I:Lcom/mycompany/app/view/MyButtonImage;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewControl;->I:Lcom/mycompany/app/view/MyButtonImage;

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewControl;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 31
    .line 32
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->K:Lcom/mycompany/app/view/MyButtonImage;

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewControl;->K:Lcom/mycompany/app/view/MyButtonImage;

    .line 40
    .line 41
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 42
    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewControl;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 49
    .line 50
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->N:Lcom/mycompany/app/view/MyButtonImage;

    .line 51
    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewControl;->N:Lcom/mycompany/app/view/MyButtonImage;

    .line 58
    .line 59
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 60
    .line 61
    if-eqz v0, :cond_6

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 64
    .line 65
    .line 66
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewControl;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 67
    .line 68
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->P:Lcom/mycompany/app/view/MyButtonImage;

    .line 69
    .line 70
    if-eqz v0, :cond_7

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 73
    .line 74
    .line 75
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewControl;->P:Lcom/mycompany/app/view/MyButtonImage;

    .line 76
    .line 77
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->Q:Lcom/mycompany/app/view/MyButtonImage;

    .line 78
    .line 79
    if-eqz v0, :cond_8

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 82
    .line 83
    .line 84
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewControl;->Q:Lcom/mycompany/app/view/MyButtonImage;

    .line 85
    .line 86
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->R:Lcom/mycompany/app/view/MyButtonImage;

    .line 87
    .line 88
    if-eqz v0, :cond_9

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 91
    .line 92
    .line 93
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewControl;->R:Lcom/mycompany/app/view/MyButtonImage;

    .line 94
    .line 95
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->S:Lcom/mycompany/app/view/MyButtonImage;

    .line 96
    .line 97
    if-eqz v0, :cond_a

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 100
    .line 101
    .line 102
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewControl;->S:Lcom/mycompany/app/view/MyButtonImage;

    .line 103
    .line 104
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->T:Lcom/mycompany/app/view/MyButtonImage;

    .line 105
    .line 106
    if-eqz v0, :cond_b

    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 109
    .line 110
    .line 111
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewControl;->T:Lcom/mycompany/app/view/MyButtonImage;

    .line 112
    .line 113
    :cond_b
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->U:Lcom/mycompany/app/view/MyAreaView;

    .line 114
    .line 115
    if-eqz v0, :cond_c

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyAreaView;->c()V

    .line 118
    .line 119
    .line 120
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewControl;->U:Lcom/mycompany/app/view/MyAreaView;

    .line 121
    .line 122
    :cond_c
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->W:Lcom/mycompany/app/view/MyButtonImage;

    .line 123
    .line 124
    if-eqz v0, :cond_d

    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 127
    .line 128
    .line 129
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewControl;->W:Lcom/mycompany/app/view/MyButtonImage;

    .line 130
    .line 131
    :cond_d
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->a0:Lcom/mycompany/app/view/MyButtonImage;

    .line 132
    .line 133
    if-eqz v0, :cond_e

    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 136
    .line 137
    .line 138
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewControl;->a0:Lcom/mycompany/app/view/MyButtonImage;

    .line 139
    .line 140
    :cond_e
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->b0:Lcom/mycompany/app/view/MyButtonImage;

    .line 141
    .line 142
    if-eqz v0, :cond_f

    .line 143
    .line 144
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 145
    .line 146
    .line 147
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewControl;->b0:Lcom/mycompany/app/view/MyButtonImage;

    .line 148
    .line 149
    :cond_f
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->c0:Lcom/mycompany/app/view/MyButtonImage;

    .line 150
    .line 151
    if-eqz v0, :cond_10

    .line 152
    .line 153
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 154
    .line 155
    .line 156
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewControl;->c0:Lcom/mycompany/app/view/MyButtonImage;

    .line 157
    .line 158
    :cond_10
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->d0:Lcom/mycompany/app/view/MyButtonImage;

    .line 159
    .line 160
    if-eqz v0, :cond_11

    .line 161
    .line 162
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 163
    .line 164
    .line 165
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewControl;->d0:Lcom/mycompany/app/view/MyButtonImage;

    .line 166
    .line 167
    :cond_11
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->e0:Lcom/mycompany/app/view/MyButtonImage;

    .line 168
    .line 169
    if-eqz v0, :cond_12

    .line 170
    .line 171
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 172
    .line 173
    .line 174
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewControl;->e0:Lcom/mycompany/app/view/MyButtonImage;

    .line 175
    .line 176
    :cond_12
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->k0:Lcom/mycompany/app/image/ImageThumbAdapter;

    .line 177
    .line 178
    if-eqz v0, :cond_14

    .line 179
    .line 180
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageThumbAdapter;->d()I

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    iput v2, v0, Lcom/mycompany/app/image/ImageThumbAdapter;->n:I

    .line 185
    .line 186
    iget-object v2, v0, Lcom/mycompany/app/image/ImageThumbAdapter;->j:Lcom/mycompany/app/main/MainListLoader;

    .line 187
    .line 188
    if-eqz v2, :cond_13

    .line 189
    .line 190
    invoke-virtual {v2}, Lcom/mycompany/app/main/MainListLoader;->f()V

    .line 191
    .line 192
    .line 193
    iput-object v1, v0, Lcom/mycompany/app/image/ImageThumbAdapter;->j:Lcom/mycompany/app/main/MainListLoader;

    .line 194
    .line 195
    :cond_13
    iput-object v1, v0, Lcom/mycompany/app/image/ImageThumbAdapter;->d:Landroid/content/Context;

    .line 196
    .line 197
    iput-object v1, v0, Lcom/mycompany/app/image/ImageThumbAdapter;->e:Lcom/mycompany/app/view/MyRecyclerView;

    .line 198
    .line 199
    iput-object v1, v0, Lcom/mycompany/app/image/ImageThumbAdapter;->h:Lcom/mycompany/app/compress/Compress;

    .line 200
    .line 201
    iput-object v1, v0, Lcom/mycompany/app/image/ImageThumbAdapter;->k:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 202
    .line 203
    iput-object v1, v0, Lcom/mycompany/app/image/ImageThumbAdapter;->m:Lcom/mycompany/app/image/ImageThumbAdapter$ThumbListener;

    .line 204
    .line 205
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewControl;->k0:Lcom/mycompany/app/image/ImageThumbAdapter;

    .line 206
    .line 207
    :cond_14
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->j0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 208
    .line 209
    if-eqz v0, :cond_15

    .line 210
    .line 211
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 212
    .line 213
    .line 214
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewControl;->j0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 215
    .line 216
    :cond_15
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->l0:Lcom/mycompany/app/view/MyScrollBar;

    .line 217
    .line 218
    if-eqz v0, :cond_16

    .line 219
    .line 220
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyScrollBar;->k()V

    .line 221
    .line 222
    .line 223
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewControl;->l0:Lcom/mycompany/app/view/MyScrollBar;

    .line 224
    .line 225
    :cond_16
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewControl;->A:Lcom/mycompany/app/main/MainActivity;

    .line 226
    .line 227
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewControl;->B:Landroid/view/Window;

    .line 228
    .line 229
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewControl;->C:Lcom/mycompany/app/image/ImageViewControl$ControlListener;

    .line 230
    .line 231
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewControl;->F:Landroid/view/View;

    .line 232
    .line 233
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewControl;->G:Landroidx/appcompat/widget/AppCompatTextView;

    .line 234
    .line 235
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewControl;->M:Landroid/widget/LinearLayout;

    .line 236
    .line 237
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewControl;->V:Landroid/widget/LinearLayout;

    .line 238
    .line 239
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewControl;->g0:Lcom/mycompany/app/image/ImageSeekBar;

    .line 240
    .line 241
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewControl;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 242
    .line 243
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewControl;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 244
    .line 245
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewControl;->m0:Landroid/view/View;

    .line 246
    .line 247
    return-void
.end method

.method public final j(Landroid/graphics/RectF;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->U:Lcom/mycompany/app/view/MyAreaView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewControl;->M:Landroid/widget/LinearLayout;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iget-object v2, p0, Lcom/mycompany/app/image/ImageViewControl;->V:Landroid/widget/LinearLayout;

    .line 13
    .line 14
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual {v0, p1, v1, v2}, Lcom/mycompany/app/view/MyAreaView;->f(Landroid/graphics/RectF;II)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewControl;->U:Lcom/mycompany/app/view/MyAreaView;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyAreaView;->a()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x4

    .line 32
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewControl;->U:Lcom/mycompany/app/view/MyAreaView;

    .line 36
    .line 37
    iget-boolean v0, p1, Lcom/mycompany/app/view/MyAreaView;->A:Z

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    new-instance v0, Lcom/mycompany/app/image/ImageViewControl$29;

    .line 42
    .line 43
    invoke-direct {v0, p0}, Lcom/mycompany/app/image/ImageViewControl$29;-><init>(Lcom/mycompany/app/image/ImageViewControl;)V

    .line 44
    .line 45
    .line 46
    const-wide/16 v1, 0x64

    .line 47
    .line 48
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 49
    .line 50
    .line 51
    :cond_2
    :goto_1
    return-void
.end method

.method public final k(F)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyFadeRelative;->f()Z

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
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->G:Landroidx/appcompat/widget/AppCompatTextView;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    :goto_0
    const/4 p1, 0x0

    .line 13
    return p1

    .line 14
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    int-to-float v0, v0

    .line 19
    cmpg-float v0, p1, v0

    .line 20
    .line 21
    if-gez v0, :cond_2

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->V:Landroid/widget/LinearLayout;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    int-to-float v0, v0

    .line 31
    cmpl-float p1, p1, v0

    .line 32
    .line 33
    if-lez p1, :cond_3

    .line 34
    .line 35
    :goto_1
    const/4 p1, 0x1

    .line 36
    return p1

    .line 37
    :cond_3
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewControl;->l()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    return p1
.end method

.method public final l()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->G:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_0

    .line 6
    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->H:Lcom/mycompany/app/view/MyButtonImage;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->isPressed()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->I:Lcom/mycompany/app/view/MyButtonImage;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->isPressed()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->isPressed()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->K:Lcom/mycompany/app/view/MyButtonImage;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->isPressed()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->isPressed()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->M:Landroid/widget/LinearLayout;

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_2

    .line 60
    .line 61
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->N:Lcom/mycompany/app/view/MyButtonImage;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->isPressed()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_2

    .line 68
    .line 69
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->isPressed()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_2

    .line 76
    .line 77
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->P:Lcom/mycompany/app/view/MyButtonImage;

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->isPressed()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_2

    .line 84
    .line 85
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->Q:Lcom/mycompany/app/view/MyButtonImage;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->isPressed()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-nez v0, :cond_2

    .line 92
    .line 93
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->R:Lcom/mycompany/app/view/MyButtonImage;

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->isPressed()Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-nez v0, :cond_2

    .line 100
    .line 101
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->S:Lcom/mycompany/app/view/MyButtonImage;

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->isPressed()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-nez v0, :cond_2

    .line 108
    .line 109
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->T:Lcom/mycompany/app/view/MyButtonImage;

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->isPressed()Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-nez v0, :cond_2

    .line 116
    .line 117
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->V:Landroid/widget/LinearLayout;

    .line 118
    .line 119
    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-nez v0, :cond_2

    .line 124
    .line 125
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->W:Lcom/mycompany/app/view/MyButtonImage;

    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->isPressed()Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-nez v0, :cond_2

    .line 132
    .line 133
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->a0:Lcom/mycompany/app/view/MyButtonImage;

    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->isPressed()Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-nez v0, :cond_2

    .line 140
    .line 141
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->b0:Lcom/mycompany/app/view/MyButtonImage;

    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->isPressed()Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-nez v0, :cond_2

    .line 148
    .line 149
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->c0:Lcom/mycompany/app/view/MyButtonImage;

    .line 150
    .line 151
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->isPressed()Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-nez v0, :cond_2

    .line 156
    .line 157
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->d0:Lcom/mycompany/app/view/MyButtonImage;

    .line 158
    .line 159
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->isPressed()Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-nez v0, :cond_2

    .line 164
    .line 165
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->e0:Lcom/mycompany/app/view/MyButtonImage;

    .line 166
    .line 167
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->isPressed()Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-eqz v0, :cond_1

    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 175
    return v0

    .line 176
    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 177
    return v0
.end method

.method public final m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->A:Lcom/mycompany/app/main/MainActivity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->z:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->N5(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainActivity;->h0()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public final n(ZIIII)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->U:Lcom/mycompany/app/view/MyAreaView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewControl;->M:Landroid/widget/LinearLayout;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 8
    .line 9
    .line 10
    move-result v5

    .line 11
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewControl;->V:Landroid/widget/LinearLayout;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    move v7, p1

    .line 18
    move v1, p2

    .line 19
    move v2, p3

    .line 20
    move v3, p4

    .line 21
    move v4, p5

    .line 22
    invoke-virtual/range {v0 .. v7}, Lcom/mycompany/app/view/MyAreaView;->d(IIIIIIZ)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final o()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->N:Lcom/mycompany/app/view/MyButtonImage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    sget v1, Lcom/mycompany/app/pref/PrefImage;->l:I

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v1, v2, :cond_1

    .line 10
    .line 11
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_screen_lock_portrait_white_24:I

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 v2, 0x2

    .line 15
    if-ne v1, v2, :cond_2

    .line 16
    .line 17
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_screen_lock_landscape_white_24:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_screen_rotation_white_24:I

    .line 21
    .line 22
    :goto_0
    iget v2, p0, Lcom/mycompany/app/image/ImageViewControl;->p0:I

    .line 23
    .line 24
    if-ne v2, v1, :cond_3

    .line 25
    .line 26
    :goto_1
    return-void

    .line 27
    :cond_3
    iput v1, p0, Lcom/mycompany/app/image/ImageViewControl;->p0:I

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewControl;->m()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-direct {p0, p1}, Lcom/mycompany/app/image/ImageViewControl;->setIconPage(Z)V

    .line 9
    .line 10
    .line 11
    sget-boolean p1, Lcom/mycompany/app/main/MainConst;->e:Z

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewControl;->v()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/mycompany/app/image/ImageViewControl;->q(II)V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mycompany/app/view/MyFadeRelative;->onSizeChanged(IIII)V

    .line 5
    .line 6
    .line 7
    sget-boolean p1, Lcom/mycompany/app/main/MainConst;->e:Z

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewControl;->v()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/mycompany/app/view/MyFadeRelative;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    sget-boolean p1, Lcom/mycompany/app/main/MainConst;->e:Z

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewControl;->v()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final p(IILcom/mycompany/app/compress/Compress;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->j0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->C:Lcom/mycompany/app/image/ImageViewControl$ControlListener;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    sget-boolean v0, Lcom/mycompany/app/pref/PrefImage;->m:Z

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_4

    .line 15
    .line 16
    if-eqz p3, :cond_4

    .line 17
    .line 18
    invoke-virtual {p3}, Lcom/mycompany/app/compress/Compress;->R()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->j0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->k0:Lcom/mycompany/app/image/ImageThumbAdapter;

    .line 32
    .line 33
    const/4 v2, -0x1

    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    new-instance v0, Lcom/mycompany/app/image/ImageThumbAdapter;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewControl;->j0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 39
    .line 40
    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 41
    .line 42
    .line 43
    iget-object v3, p0, Lcom/mycompany/app/image/ImageViewControl;->z:Landroid/content/Context;

    .line 44
    .line 45
    iput-object v3, v0, Lcom/mycompany/app/image/ImageThumbAdapter;->d:Landroid/content/Context;

    .line 46
    .line 47
    iput-object v1, v0, Lcom/mycompany/app/image/ImageThumbAdapter;->e:Lcom/mycompany/app/view/MyRecyclerView;

    .line 48
    .line 49
    iput p1, v0, Lcom/mycompany/app/image/ImageThumbAdapter;->f:I

    .line 50
    .line 51
    iput p2, v0, Lcom/mycompany/app/image/ImageThumbAdapter;->g:I

    .line 52
    .line 53
    iput-object p3, v0, Lcom/mycompany/app/image/ImageThumbAdapter;->h:Lcom/mycompany/app/compress/Compress;

    .line 54
    .line 55
    iput v2, v0, Lcom/mycompany/app/image/ImageThumbAdapter;->i:I

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageThumbAdapter;->v()V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->k0:Lcom/mycompany/app/image/ImageThumbAdapter;

    .line 61
    .line 62
    new-instance p1, Lcom/mycompany/app/image/ImageViewControl$30;

    .line 63
    .line 64
    invoke-direct {p1, p0}, Lcom/mycompany/app/image/ImageViewControl$30;-><init>(Lcom/mycompany/app/image/ImageViewControl;)V

    .line 65
    .line 66
    .line 67
    iput-object p1, v0, Lcom/mycompany/app/image/ImageThumbAdapter;->m:Lcom/mycompany/app/image/ImageThumbAdapter$ThumbListener;

    .line 68
    .line 69
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewControl;->j0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    iget-object v3, v0, Lcom/mycompany/app/image/ImageThumbAdapter;->j:Lcom/mycompany/app/main/MainListLoader;

    .line 76
    .line 77
    if-eqz v3, :cond_3

    .line 78
    .line 79
    iput-object v1, v3, Lcom/mycompany/app/main/MainListLoader;->c:Ljava/util/ArrayList;

    .line 80
    .line 81
    :cond_3
    iput p1, v0, Lcom/mycompany/app/image/ImageThumbAdapter;->f:I

    .line 82
    .line 83
    iput p2, v0, Lcom/mycompany/app/image/ImageThumbAdapter;->g:I

    .line 84
    .line 85
    iput-object p3, v0, Lcom/mycompany/app/image/ImageThumbAdapter;->h:Lcom/mycompany/app/compress/Compress;

    .line 86
    .line 87
    iput v2, v0, Lcom/mycompany/app/image/ImageThumbAdapter;->i:I

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageThumbAdapter;->v()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 93
    .line 94
    .line 95
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/mycompany/app/image/ImageViewControl;->q(II)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewControl;->j0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 108
    .line 109
    const/16 p2, 0x8

    .line 110
    .line 111
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewControl;->l0:Lcom/mycompany/app/view/MyScrollBar;

    .line 115
    .line 116
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyScrollBar;->setVisibility(I)V

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewControl;->k0:Lcom/mycompany/app/image/ImageThumbAdapter;

    .line 120
    .line 121
    if-eqz p1, :cond_6

    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/mycompany/app/image/ImageThumbAdapter;->d()I

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    iput p2, p1, Lcom/mycompany/app/image/ImageThumbAdapter;->n:I

    .line 128
    .line 129
    iget-object p2, p1, Lcom/mycompany/app/image/ImageThumbAdapter;->j:Lcom/mycompany/app/main/MainListLoader;

    .line 130
    .line 131
    if-eqz p2, :cond_5

    .line 132
    .line 133
    invoke-virtual {p2}, Lcom/mycompany/app/main/MainListLoader;->f()V

    .line 134
    .line 135
    .line 136
    iput-object v1, p1, Lcom/mycompany/app/image/ImageThumbAdapter;->j:Lcom/mycompany/app/main/MainListLoader;

    .line 137
    .line 138
    :cond_5
    iput-object v1, p1, Lcom/mycompany/app/image/ImageThumbAdapter;->d:Landroid/content/Context;

    .line 139
    .line 140
    iput-object v1, p1, Lcom/mycompany/app/image/ImageThumbAdapter;->e:Lcom/mycompany/app/view/MyRecyclerView;

    .line 141
    .line 142
    iput-object v1, p1, Lcom/mycompany/app/image/ImageThumbAdapter;->h:Lcom/mycompany/app/compress/Compress;

    .line 143
    .line 144
    iput-object v1, p1, Lcom/mycompany/app/image/ImageThumbAdapter;->k:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 145
    .line 146
    iput-object v1, p1, Lcom/mycompany/app/image/ImageThumbAdapter;->m:Lcom/mycompany/app/image/ImageThumbAdapter$ThumbListener;

    .line 147
    .line 148
    iput-object v1, p0, Lcom/mycompany/app/image/ImageViewControl;->k0:Lcom/mycompany/app/image/ImageThumbAdapter;

    .line 149
    .line 150
    :cond_6
    :goto_2
    return-void
.end method

.method public final q(II)V
    .locals 2

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/mycompany/app/image/ImageViewControl;->j0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 7
    .line 8
    if-eqz p2, :cond_3

    .line 9
    .line 10
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->k0:Lcom/mycompany/app/image/ImageThumbAdapter;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    if-eqz p2, :cond_3

    .line 20
    .line 21
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->k0:Lcom/mycompany/app/image/ImageThumbAdapter;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageThumbAdapter;->d()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget v1, p0, Lcom/mycompany/app/image/ImageViewControl;->y:I

    .line 28
    .line 29
    mul-int/2addr v0, v1

    .line 30
    if-lt v0, p1, :cond_2

    .line 31
    .line 32
    const/4 p1, -0x1

    .line 33
    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 37
    .line 38
    :cond_3
    :goto_0
    return-void
.end method

.method public final r(IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->l0:Lcom/mycompany/app/view/MyScrollBar;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, v0, Lcom/mycompany/app/view/MyScrollBar;->a0:Z

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyFadeView;->d(Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->j0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 13
    .line 14
    if-eqz v0, :cond_6

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_6

    .line 21
    .line 22
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->k0:Lcom/mycompany/app/image/ImageThumbAdapter;

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    if-ltz p1, :cond_6

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageThumbAdapter;->d()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-lt p1, v0, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    sget-boolean v0, Lcom/mycompany/app/pref/PrefImage;->s:Z

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->k0:Lcom/mycompany/app/image/ImageThumbAdapter;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageThumbAdapter;->d()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    sub-int/2addr v0, p1

    .line 47
    add-int/lit8 p1, v0, -0x1

    .line 48
    .line 49
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->k0:Lcom/mycompany/app/image/ImageThumbAdapter;

    .line 50
    .line 51
    iget-object v1, v0, Lcom/mycompany/app/image/ImageThumbAdapter;->e:Lcom/mycompany/app/view/MyRecyclerView;

    .line 52
    .line 53
    if-nez v1, :cond_4

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_4
    iget v2, v0, Lcom/mycompany/app/image/ImageThumbAdapter;->i:I

    .line 57
    .line 58
    if-ne v2, p1, :cond_5

    .line 59
    .line 60
    if-eqz p2, :cond_6

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->i0(I)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_5
    iput p1, v0, Lcom/mycompany/app/image/ImageThumbAdapter;->i:I

    .line 67
    .line 68
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 69
    .line 70
    .line 71
    iget-object p1, v0, Lcom/mycompany/app/image/ImageThumbAdapter;->e:Lcom/mycompany/app/view/MyRecyclerView;

    .line 72
    .line 73
    iget p2, v0, Lcom/mycompany/app/image/ImageThumbAdapter;->i:I

    .line 74
    .line 75
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->i0(I)V

    .line 76
    .line 77
    .line 78
    :cond_6
    :goto_0
    return-void
.end method

.method public final s(Lcom/mycompany/app/main/MainActivity;Landroid/view/Window;ZLcom/mycompany/app/image/ImageViewControl$ControlListener;)V
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->A:Lcom/mycompany/app/main/MainActivity;

    .line 6
    .line 7
    move-object/from16 v1, p2

    .line 8
    .line 9
    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->B:Landroid/view/Window;

    .line 10
    .line 11
    move/from16 v1, p3

    .line 12
    .line 13
    iput-boolean v1, v0, Lcom/mycompany/app/image/ImageViewControl;->E:Z

    .line 14
    .line 15
    move-object/from16 v1, p4

    .line 16
    .line 17
    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->C:Lcom/mycompany/app/image/ImageViewControl$ControlListener;

    .line 18
    .line 19
    new-instance v1, Lcom/mycompany/app/image/ImageViewControl$1;

    .line 20
    .line 21
    invoke-direct {v1, v0}, Lcom/mycompany/app/image/ImageViewControl$1;-><init>(Lcom/mycompany/app/image/ImageViewControl;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyFadeRelative;->setListener(Lcom/mycompany/app/view/MyFadeListener;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->z:Landroid/content/Context;

    .line 28
    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    sget v2, Lnet/kaki87/soul2/testing/R$id;->ctrl_bottom_view:I

    .line 33
    .line 34
    sget v3, Lnet/kaki87/soul2/testing/R$id;->ctrl_pad_bot:I

    .line 35
    .line 36
    sget v4, Lnet/kaki87/soul2/testing/R$id;->ctrl_curr_time:I

    .line 37
    .line 38
    sget v5, Lnet/kaki87/soul2/testing/R$id;->ctrl_total_time:I

    .line 39
    .line 40
    invoke-direct {v0}, Lcom/mycompany/app/image/ImageViewControl;->getNaviHeight()I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    new-instance v7, Landroid/view/View;

    .line 45
    .line 46
    invoke-direct {v7, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v7, v3}, Landroid/view/View;->setId(I)V

    .line 50
    .line 51
    .line 52
    const/high16 v8, -0x5f000000

    .line 53
    .line 54
    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 55
    .line 56
    .line 57
    const/16 v9, 0xc

    .line 58
    .line 59
    const/4 v10, -0x1

    .line 60
    invoke-static {v10, v6, v9}, Landroidx/work/impl/workers/a;->g(III)Landroid/widget/RelativeLayout$LayoutParams;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    const/4 v11, 0x4

    .line 65
    const/4 v12, 0x0

    .line 66
    if-lez v6, :cond_1

    .line 67
    .line 68
    iput v6, v9, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 69
    .line 70
    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    iput v12, v9, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 75
    .line 76
    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    :goto_0
    invoke-virtual {v0, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    .line 81
    .line 82
    new-instance v6, Landroidx/appcompat/widget/AppCompatTextView;

    .line 83
    .line 84
    const/4 v9, 0x0

    .line 85
    invoke-direct {v6, v1, v9}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    .line 87
    .line 88
    sget v13, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 89
    .line 90
    invoke-virtual {v6, v13, v12, v13, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 91
    .line 92
    .line 93
    const/16 v13, 0x10

    .line 94
    .line 95
    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 96
    .line 97
    .line 98
    const/4 v14, 0x1

    .line 99
    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 100
    .line 101
    .line 102
    sget-object v15, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 103
    .line 104
    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 105
    .line 106
    .line 107
    const/high16 v15, 0x41800000    # 16.0f

    .line 108
    .line 109
    invoke-virtual {v6, v14, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v6, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 116
    .line 117
    .line 118
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 119
    .line 120
    invoke-virtual {v0, v6, v10, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 121
    .line 122
    .line 123
    new-instance v15, Lcom/mycompany/app/view/MyButtonImage;

    .line 124
    .line 125
    invoke-direct {v15, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 126
    .line 127
    .line 128
    sget-object v13, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 129
    .line 130
    invoke-virtual {v15, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 131
    .line 132
    .line 133
    sget v9, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_white_24:I

    .line 134
    .line 135
    invoke-virtual {v15, v9}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 136
    .line 137
    .line 138
    const v9, -0x5e8a8a8b

    .line 139
    .line 140
    .line 141
    invoke-virtual {v15, v9}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 142
    .line 143
    .line 144
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 145
    .line 146
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 147
    .line 148
    invoke-direct {v10, v14, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 149
    .line 150
    .line 151
    sget v14, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 152
    .line 153
    invoke-virtual {v10, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v15, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    .line 158
    .line 159
    invoke-static {v1, v13}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->p(Landroid/content/Context;Landroid/widget/ImageView$ScaleType;)Lcom/mycompany/app/view/MyButtonImage;

    .line 160
    .line 161
    .line 162
    move-result-object v10

    .line 163
    sget v14, Lnet/kaki87/soul2/testing/R$drawable;->outline_filter_list_white_24:I

    .line 164
    .line 165
    invoke-virtual {v10, v14}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v10, v9}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 169
    .line 170
    .line 171
    const/16 v14, 0x8

    .line 172
    .line 173
    invoke-virtual {v10, v14}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 174
    .line 175
    .line 176
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 177
    .line 178
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 179
    .line 180
    invoke-direct {v11, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 181
    .line 182
    .line 183
    const/16 v8, 0x15

    .line 184
    .line 185
    invoke-virtual {v11, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 186
    .line 187
    .line 188
    sget v12, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 189
    .line 190
    invoke-virtual {v11, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    .line 195
    .line 196
    new-instance v11, Lcom/mycompany/app/view/MyButtonImage;

    .line 197
    .line 198
    invoke-direct {v11, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v11, v9}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v11, v14}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 208
    .line 209
    .line 210
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 211
    .line 212
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 213
    .line 214
    invoke-direct {v12, v14, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v12, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 218
    .line 219
    .line 220
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 221
    .line 222
    const/4 v8, 0x2

    .line 223
    mul-int/2addr v14, v8

    .line 224
    sget v20, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 225
    .line 226
    add-int v14, v14, v20

    .line 227
    .line 228
    invoke-virtual {v12, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    .line 233
    .line 234
    invoke-static {v1, v13}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->p(Landroid/content/Context;Landroid/widget/ImageView$ScaleType;)Lcom/mycompany/app/view/MyButtonImage;

    .line 235
    .line 236
    .line 237
    move-result-object v12

    .line 238
    sget v14, Lnet/kaki87/soul2/testing/R$drawable;->outline_kid_star_2_white_24:I

    .line 239
    .line 240
    invoke-virtual {v12, v14}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v12, v9}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 244
    .line 245
    .line 246
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 247
    .line 248
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 249
    .line 250
    invoke-direct {v14, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 251
    .line 252
    .line 253
    const/16 v8, 0x15

    .line 254
    .line 255
    invoke-virtual {v14, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 256
    .line 257
    .line 258
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 259
    .line 260
    sget v21, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 261
    .line 262
    add-int v8, v8, v21

    .line 263
    .line 264
    invoke-virtual {v14, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0, v12, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    .line 269
    .line 270
    invoke-static {v1, v13}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->p(Landroid/content/Context;Landroid/widget/ImageView$ScaleType;)Lcom/mycompany/app/view/MyButtonImage;

    .line 271
    .line 272
    .line 273
    move-result-object v8

    .line 274
    sget v14, Lnet/kaki87/soul2/testing/R$drawable;->outline_format_list_bulleted_white_24:I

    .line 275
    .line 276
    invoke-virtual {v8, v14}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v8, v9}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 280
    .line 281
    .line 282
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 283
    .line 284
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 285
    .line 286
    invoke-direct {v14, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 287
    .line 288
    .line 289
    const/16 v9, 0x15

    .line 290
    .line 291
    invoke-virtual {v14, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 292
    .line 293
    .line 294
    sget v9, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 295
    .line 296
    invoke-virtual {v14, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v0, v8, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    .line 301
    .line 302
    new-instance v9, Landroid/widget/LinearLayout;

    .line 303
    .line 304
    invoke-direct {v9, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 305
    .line 306
    .line 307
    sget v14, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 308
    .line 309
    move-object/from16 v22, v8

    .line 310
    .line 311
    const/4 v8, 0x0

    .line 312
    invoke-virtual {v9, v8, v14, v14, v8}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 319
    .line 320
    .line 321
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 322
    .line 323
    const/4 v14, -0x2

    .line 324
    invoke-direct {v8, v14, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 325
    .line 326
    .line 327
    const/16 v14, 0x15

    .line 328
    .line 329
    invoke-virtual {v8, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 330
    .line 331
    .line 332
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 333
    .line 334
    iput v14, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 335
    .line 336
    invoke-virtual {v0, v9, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    .line 338
    .line 339
    new-instance v8, Lcom/mycompany/app/view/MyButtonImage;

    .line 340
    .line 341
    invoke-direct {v8, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 345
    .line 346
    .line 347
    sget v14, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 348
    .line 349
    int-to-float v14, v14

    .line 350
    move-object/from16 v24, v12

    .line 351
    .line 352
    sget v12, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 353
    .line 354
    int-to-float v12, v12

    .line 355
    invoke-virtual {v8, v14, v12}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 356
    .line 357
    .line 358
    const/high16 v12, -0x5f000000

    .line 359
    .line 360
    const v14, -0x5e8a8a8b

    .line 361
    .line 362
    .line 363
    invoke-virtual {v8, v12, v14}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 364
    .line 365
    .line 366
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 367
    .line 368
    invoke-virtual {v9, v8, v12, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 369
    .line 370
    .line 371
    new-instance v12, Lcom/mycompany/app/view/MyButtonImage;

    .line 372
    .line 373
    invoke-direct {v12, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 377
    .line 378
    .line 379
    sget v14, Lnet/kaki87/soul2/testing/R$drawable;->outline_brightness_6_white_24:I

    .line 380
    .line 381
    invoke-virtual {v12, v14}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 382
    .line 383
    .line 384
    sget v14, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 385
    .line 386
    int-to-float v14, v14

    .line 387
    move-object/from16 v25, v8

    .line 388
    .line 389
    sget v8, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 390
    .line 391
    int-to-float v8, v8

    .line 392
    invoke-virtual {v12, v14, v8}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 393
    .line 394
    .line 395
    const/high16 v8, -0x5f000000

    .line 396
    .line 397
    const v14, -0x5e8a8a8b

    .line 398
    .line 399
    .line 400
    invoke-virtual {v12, v8, v14}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 401
    .line 402
    .line 403
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 404
    .line 405
    invoke-virtual {v9, v12, v8, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 406
    .line 407
    .line 408
    new-instance v8, Lcom/mycompany/app/view/MyButtonImage;

    .line 409
    .line 410
    invoke-direct {v8, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 414
    .line 415
    .line 416
    sget v14, Lnet/kaki87/soul2/testing/R$drawable;->outline_format_color_fill_white_24:I

    .line 417
    .line 418
    invoke-virtual {v8, v14}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 419
    .line 420
    .line 421
    sget v14, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 422
    .line 423
    int-to-float v14, v14

    .line 424
    move-object/from16 v26, v12

    .line 425
    .line 426
    sget v12, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 427
    .line 428
    int-to-float v12, v12

    .line 429
    invoke-virtual {v8, v14, v12}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 430
    .line 431
    .line 432
    const/high16 v12, -0x5f000000

    .line 433
    .line 434
    const v14, -0x5e8a8a8b

    .line 435
    .line 436
    .line 437
    invoke-virtual {v8, v12, v14}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 438
    .line 439
    .line 440
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 441
    .line 442
    invoke-virtual {v9, v8, v12, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 443
    .line 444
    .line 445
    new-instance v12, Lcom/mycompany/app/view/MyButtonImage;

    .line 446
    .line 447
    invoke-direct {v12, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 451
    .line 452
    .line 453
    sget v14, Lnet/kaki87/soul2/testing/R$drawable;->outline_crop_white_24:I

    .line 454
    .line 455
    invoke-virtual {v12, v14}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 456
    .line 457
    .line 458
    sget v14, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 459
    .line 460
    int-to-float v14, v14

    .line 461
    move-object/from16 v27, v8

    .line 462
    .line 463
    sget v8, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 464
    .line 465
    int-to-float v8, v8

    .line 466
    invoke-virtual {v12, v14, v8}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 467
    .line 468
    .line 469
    const/high16 v8, -0x5f000000

    .line 470
    .line 471
    const v14, -0x5e8a8a8b

    .line 472
    .line 473
    .line 474
    invoke-virtual {v12, v8, v14}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 475
    .line 476
    .line 477
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 478
    .line 479
    invoke-virtual {v9, v12, v8, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 480
    .line 481
    .line 482
    new-instance v8, Lcom/mycompany/app/view/MyButtonImage;

    .line 483
    .line 484
    invoke-direct {v8, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 488
    .line 489
    .line 490
    sget v14, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_white_24:I

    .line 491
    .line 492
    invoke-virtual {v8, v14}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 493
    .line 494
    .line 495
    sget v14, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 496
    .line 497
    int-to-float v14, v14

    .line 498
    move-object/from16 v28, v12

    .line 499
    .line 500
    sget v12, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 501
    .line 502
    int-to-float v12, v12

    .line 503
    invoke-virtual {v8, v14, v12}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 504
    .line 505
    .line 506
    const/high16 v12, -0x5f000000

    .line 507
    .line 508
    const v14, -0x5e8a8a8b

    .line 509
    .line 510
    .line 511
    invoke-virtual {v8, v12, v14}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 512
    .line 513
    .line 514
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 515
    .line 516
    invoke-virtual {v9, v8, v12, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 517
    .line 518
    .line 519
    new-instance v12, Lcom/mycompany/app/view/MyAreaView;

    .line 520
    .line 521
    invoke-direct {v12, v1}, Lcom/mycompany/app/view/MyAreaView;-><init>(Landroid/content/Context;)V

    .line 522
    .line 523
    .line 524
    const/4 v14, 0x4

    .line 525
    invoke-virtual {v12, v14}, Landroid/view/View;->setVisibility(I)V

    .line 526
    .line 527
    .line 528
    const/high16 v14, 0x43200000    # 160.0f

    .line 529
    .line 530
    invoke-static {v1, v14}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 531
    .line 532
    .line 533
    move-result v14

    .line 534
    float-to-int v14, v14

    .line 535
    move-object/from16 v29, v8

    .line 536
    .line 537
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 538
    .line 539
    invoke-direct {v8, v14, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 540
    .line 541
    .line 542
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 543
    .line 544
    move/from16 v30, v14

    .line 545
    .line 546
    sget v14, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 547
    .line 548
    move-object/from16 v31, v9

    .line 549
    .line 550
    add-int v9, v30, v14

    .line 551
    .line 552
    iput v9, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 553
    .line 554
    invoke-virtual {v8, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {v0, v12, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 558
    .line 559
    .line 560
    new-instance v8, Landroid/view/View;

    .line 561
    .line 562
    invoke-direct {v8, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 563
    .line 564
    .line 565
    const/16 v9, 0x8

    .line 566
    .line 567
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 568
    .line 569
    .line 570
    const/high16 v9, 0x43070000    # 135.0f

    .line 571
    .line 572
    invoke-static {v1, v9}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 573
    .line 574
    .line 575
    move-result v9

    .line 576
    float-to-int v9, v9

    .line 577
    const/high16 v14, 0x41c00000    # 24.0f

    .line 578
    .line 579
    invoke-static {v1, v14}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 580
    .line 581
    .line 582
    move-result v14

    .line 583
    float-to-int v14, v14

    .line 584
    move-object/from16 v30, v12

    .line 585
    .line 586
    const/4 v12, 0x2

    .line 587
    invoke-static {v9, v14, v12, v2}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 588
    .line 589
    .line 590
    move-result-object v9

    .line 591
    sget v12, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 592
    .line 593
    invoke-virtual {v9, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 594
    .line 595
    .line 596
    const/high16 v12, 0x41400000    # 12.0f

    .line 597
    .line 598
    invoke-static {v1, v12}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 599
    .line 600
    .line 601
    move-result v12

    .line 602
    float-to-int v12, v12

    .line 603
    iput v12, v9, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 604
    .line 605
    invoke-virtual {v0, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 606
    .line 607
    .line 608
    new-instance v9, Lcom/mycompany/app/view/MyScrollBar;

    .line 609
    .line 610
    invoke-direct {v9, v1}, Lcom/mycompany/app/view/MyScrollBar;-><init>(Landroid/content/Context;)V

    .line 611
    .line 612
    .line 613
    const/4 v12, 0x1

    .line 614
    iput-boolean v12, v9, Lcom/mycompany/app/view/MyScrollBar;->Q:Z

    .line 615
    .line 616
    const/4 v14, 0x4

    .line 617
    invoke-virtual {v9, v14}, Lcom/mycompany/app/view/MyScrollBar;->setVisibility(I)V

    .line 618
    .line 619
    .line 620
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 621
    .line 622
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 623
    .line 624
    move-object/from16 v16, v8

    .line 625
    .line 626
    const/4 v8, -0x1

    .line 627
    invoke-direct {v12, v8, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 628
    .line 629
    .line 630
    const/4 v8, 0x2

    .line 631
    invoke-virtual {v12, v8, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 632
    .line 633
    .line 634
    sget v8, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 635
    .line 636
    invoke-virtual {v12, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 637
    .line 638
    .line 639
    sget v8, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 640
    .line 641
    invoke-virtual {v12, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 642
    .line 643
    .line 644
    sget v8, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 645
    .line 646
    iput v8, v12, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 647
    .line 648
    invoke-virtual {v0, v9, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 649
    .line 650
    .line 651
    new-instance v8, Lcom/mycompany/app/view/MyButtonImage;

    .line 652
    .line 653
    invoke-direct {v8, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 654
    .line 655
    .line 656
    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 657
    .line 658
    .line 659
    sget v12, Lnet/kaki87/soul2/testing/R$drawable;->outline_download_white_24:I

    .line 660
    .line 661
    invoke-virtual {v8, v12}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 662
    .line 663
    .line 664
    sget v12, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 665
    .line 666
    int-to-float v12, v12

    .line 667
    sget v14, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 668
    .line 669
    int-to-float v14, v14

    .line 670
    invoke-virtual {v8, v12, v14}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 671
    .line 672
    .line 673
    const/high16 v12, -0x5f000000

    .line 674
    .line 675
    const v14, -0x5e8a8a8b

    .line 676
    .line 677
    .line 678
    invoke-virtual {v8, v12, v14}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 679
    .line 680
    .line 681
    const/16 v12, 0x8

    .line 682
    .line 683
    invoke-virtual {v8, v12}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 684
    .line 685
    .line 686
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 687
    .line 688
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 689
    .line 690
    invoke-direct {v12, v14, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 691
    .line 692
    .line 693
    const/4 v14, 0x2

    .line 694
    invoke-virtual {v12, v14, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 695
    .line 696
    .line 697
    const/16 v14, 0x15

    .line 698
    .line 699
    invoke-virtual {v12, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 700
    .line 701
    .line 702
    sget v14, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 703
    .line 704
    invoke-virtual {v12, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 705
    .line 706
    .line 707
    sget v14, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 708
    .line 709
    iput v14, v12, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 710
    .line 711
    invoke-virtual {v0, v8, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 712
    .line 713
    .line 714
    new-instance v12, Lcom/mycompany/app/view/MyButtonImage;

    .line 715
    .line 716
    invoke-direct {v12, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 717
    .line 718
    .line 719
    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 720
    .line 721
    .line 722
    sget v14, Lnet/kaki87/soul2/testing/R$drawable;->outline_g_translate_white_24:I

    .line 723
    .line 724
    invoke-virtual {v12, v14}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 725
    .line 726
    .line 727
    sget v14, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 728
    .line 729
    int-to-float v14, v14

    .line 730
    move-object/from16 v18, v9

    .line 731
    .line 732
    sget v9, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 733
    .line 734
    int-to-float v9, v9

    .line 735
    invoke-virtual {v12, v14, v9}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 736
    .line 737
    .line 738
    const/high16 v9, -0x5f000000

    .line 739
    .line 740
    const v14, -0x5e8a8a8b

    .line 741
    .line 742
    .line 743
    invoke-virtual {v12, v9, v14}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 744
    .line 745
    .line 746
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 747
    .line 748
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 749
    .line 750
    invoke-direct {v9, v14, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 751
    .line 752
    .line 753
    const/4 v14, 0x2

    .line 754
    invoke-virtual {v9, v14, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 755
    .line 756
    .line 757
    const/16 v14, 0x15

    .line 758
    .line 759
    invoke-virtual {v9, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 760
    .line 761
    .line 762
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 763
    .line 764
    sget v32, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 765
    .line 766
    add-int v14, v14, v32

    .line 767
    .line 768
    invoke-virtual {v9, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 769
    .line 770
    .line 771
    sget v14, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 772
    .line 773
    iput v14, v9, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 774
    .line 775
    invoke-virtual {v0, v12, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 776
    .line 777
    .line 778
    new-instance v9, Landroid/widget/LinearLayout;

    .line 779
    .line 780
    invoke-direct {v9, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 781
    .line 782
    .line 783
    invoke-virtual {v9, v2}, Landroid/view/View;->setId(I)V

    .line 784
    .line 785
    .line 786
    sget v2, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 787
    .line 788
    const/4 v14, 0x0

    .line 789
    invoke-virtual {v9, v14, v14, v14, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 790
    .line 791
    .line 792
    const/high16 v2, -0x5f000000

    .line 793
    .line 794
    invoke-virtual {v9, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 795
    .line 796
    .line 797
    const/4 v2, 0x1

    .line 798
    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 799
    .line 800
    .line 801
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 802
    .line 803
    move-object/from16 v17, v12

    .line 804
    .line 805
    const/4 v12, -0x2

    .line 806
    const/4 v14, -0x1

    .line 807
    invoke-direct {v2, v14, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 808
    .line 809
    .line 810
    const/4 v14, 0x2

    .line 811
    invoke-virtual {v2, v14, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 812
    .line 813
    .line 814
    invoke-virtual {v0, v9, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 815
    .line 816
    .line 817
    new-instance v2, Lcom/mycompany/app/view/MyRecyclerView;

    .line 818
    .line 819
    invoke-direct {v2, v1}, Lcom/mycompany/app/view/MyRecyclerView;-><init>(Landroid/content/Context;)V

    .line 820
    .line 821
    .line 822
    const/4 v14, 0x0

    .line 823
    invoke-virtual {v2, v14}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 824
    .line 825
    .line 826
    invoke-virtual {v2, v14}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 827
    .line 828
    .line 829
    const/high16 v3, 0x42a40000    # 82.0f

    .line 830
    .line 831
    invoke-static {v1, v3}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 832
    .line 833
    .line 834
    move-result v3

    .line 835
    float-to-int v3, v3

    .line 836
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 837
    .line 838
    invoke-direct {v14, v12, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 839
    .line 840
    .line 841
    sget v3, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 842
    .line 843
    iput v3, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 844
    .line 845
    const/4 v3, 0x1

    .line 846
    iput v3, v14, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 847
    .line 848
    invoke-virtual {v9, v2, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 849
    .line 850
    .line 851
    new-instance v3, Landroid/widget/RelativeLayout;

    .line 852
    .line 853
    invoke-direct {v3, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 854
    .line 855
    .line 856
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 857
    .line 858
    move-object/from16 v20, v2

    .line 859
    .line 860
    const/4 v2, -0x1

    .line 861
    invoke-direct {v14, v2, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 862
    .line 863
    .line 864
    sget v2, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 865
    .line 866
    sget v12, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 867
    .line 868
    add-int/2addr v2, v12

    .line 869
    iput v2, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 870
    .line 871
    sget v2, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 872
    .line 873
    invoke-virtual {v14, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 874
    .line 875
    .line 876
    sget v2, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 877
    .line 878
    invoke-virtual {v14, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 879
    .line 880
    .line 881
    invoke-virtual {v9, v3, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 882
    .line 883
    .line 884
    new-instance v2, Landroidx/appcompat/widget/AppCompatTextView;

    .line 885
    .line 886
    const/4 v12, 0x0

    .line 887
    invoke-direct {v2, v1, v12}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 888
    .line 889
    .line 890
    invoke-virtual {v2, v4}, Landroid/view/View;->setId(I)V

    .line 891
    .line 892
    .line 893
    const/4 v12, 0x1

    .line 894
    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 895
    .line 896
    .line 897
    const/high16 v14, 0x41600000    # 14.0f

    .line 898
    .line 899
    invoke-virtual {v2, v12, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 900
    .line 901
    .line 902
    const/4 v12, -0x1

    .line 903
    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 904
    .line 905
    .line 906
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 907
    .line 908
    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 909
    .line 910
    .line 911
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 912
    .line 913
    const/4 v14, -0x2

    .line 914
    invoke-direct {v12, v14, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 915
    .line 916
    .line 917
    const/16 v14, 0xf

    .line 918
    .line 919
    invoke-virtual {v12, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 920
    .line 921
    .line 922
    invoke-virtual {v3, v2, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 923
    .line 924
    .line 925
    new-instance v12, Landroidx/appcompat/widget/AppCompatTextView;

    .line 926
    .line 927
    const/4 v14, 0x0

    .line 928
    invoke-direct {v12, v1, v14}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 929
    .line 930
    .line 931
    invoke-virtual {v12, v5}, Landroid/view/View;->setId(I)V

    .line 932
    .line 933
    .line 934
    const/4 v14, 0x1

    .line 935
    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 936
    .line 937
    .line 938
    move-object/from16 p2, v2

    .line 939
    .line 940
    const/high16 v2, 0x41600000    # 14.0f

    .line 941
    .line 942
    invoke-virtual {v12, v14, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 943
    .line 944
    .line 945
    const/4 v14, -0x1

    .line 946
    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 947
    .line 948
    .line 949
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 950
    .line 951
    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 952
    .line 953
    .line 954
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 955
    .line 956
    const/4 v14, -0x2

    .line 957
    invoke-direct {v2, v14, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 958
    .line 959
    .line 960
    const/16 v14, 0xf

    .line 961
    .line 962
    invoke-virtual {v2, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 963
    .line 964
    .line 965
    const/16 v14, 0x15

    .line 966
    .line 967
    invoke-virtual {v2, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 968
    .line 969
    .line 970
    invoke-virtual {v3, v12, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 971
    .line 972
    .line 973
    new-instance v2, Lcom/mycompany/app/image/ImageSeekBar;

    .line 974
    .line 975
    invoke-direct {v2, v1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 976
    .line 977
    .line 978
    const/4 v14, 0x0

    .line 979
    invoke-virtual {v2, v14}, Landroid/widget/AbsSeekBar;->setSplitTrack(Z)V

    .line 980
    .line 981
    .line 982
    sget v14, Lnet/kaki87/soul2/testing/R$drawable;->seek_progress_w:I

    .line 983
    .line 984
    invoke-static {v1, v14}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 985
    .line 986
    .line 987
    move-result-object v14

    .line 988
    invoke-virtual {v2, v14}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 989
    .line 990
    .line 991
    sget v14, Lnet/kaki87/soul2/testing/R$drawable;->seek_thumb_w:I

    .line 992
    .line 993
    invoke-static {v1, v14}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 994
    .line 995
    .line 996
    move-result-object v14

    .line 997
    invoke-virtual {v2, v14}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 998
    .line 999
    .line 1000
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1001
    .line 1002
    move-object/from16 p3, v8

    .line 1003
    .line 1004
    move-object/from16 p4, v12

    .line 1005
    .line 1006
    const/4 v8, -0x2

    .line 1007
    const/4 v12, -0x1

    .line 1008
    invoke-direct {v14, v12, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1009
    .line 1010
    .line 1011
    const/16 v8, 0x11

    .line 1012
    .line 1013
    invoke-virtual {v14, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1014
    .line 1015
    .line 1016
    const/16 v4, 0x10

    .line 1017
    .line 1018
    invoke-virtual {v14, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1019
    .line 1020
    .line 1021
    const/16 v4, 0xf

    .line 1022
    .line 1023
    invoke-virtual {v14, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1024
    .line 1025
    .line 1026
    invoke-virtual {v3, v2, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1027
    .line 1028
    .line 1029
    new-instance v3, Landroid/widget/LinearLayout;

    .line 1030
    .line 1031
    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1032
    .line 1033
    .line 1034
    const/4 v14, 0x0

    .line 1035
    invoke-virtual {v3, v14}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 1036
    .line 1037
    .line 1038
    invoke-virtual {v3, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1039
    .line 1040
    .line 1041
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 1042
    .line 1043
    const/4 v14, -0x2

    .line 1044
    invoke-direct {v4, v12, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1045
    .line 1046
    .line 1047
    sget v5, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 1048
    .line 1049
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1050
    .line 1051
    sget v5, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 1052
    .line 1053
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 1054
    .line 1055
    .line 1056
    sget v5, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 1057
    .line 1058
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 1059
    .line 1060
    .line 1061
    invoke-virtual {v9, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1062
    .line 1063
    .line 1064
    new-instance v4, Lcom/mycompany/app/view/MyButtonImage;

    .line 1065
    .line 1066
    invoke-direct {v4, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 1067
    .line 1068
    .line 1069
    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1070
    .line 1071
    .line 1072
    const v14, -0x5e8a8a8b

    .line 1073
    .line 1074
    .line 1075
    invoke-virtual {v4, v14}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 1076
    .line 1077
    .line 1078
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 1079
    .line 1080
    invoke-virtual {v3, v4, v5, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 1081
    .line 1082
    .line 1083
    new-instance v5, Landroid/view/View;

    .line 1084
    .line 1085
    invoke-direct {v5, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1086
    .line 1087
    .line 1088
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 1089
    .line 1090
    const/4 v14, 0x0

    .line 1091
    invoke-direct {v8, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1092
    .line 1093
    .line 1094
    const/high16 v12, 0x3f800000    # 1.0f

    .line 1095
    .line 1096
    iput v12, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1097
    .line 1098
    invoke-virtual {v3, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1099
    .line 1100
    .line 1101
    new-instance v5, Lcom/mycompany/app/view/MyButtonImage;

    .line 1102
    .line 1103
    invoke-direct {v5, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 1104
    .line 1105
    .line 1106
    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1107
    .line 1108
    .line 1109
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->baseline_skip_previous_white_24:I

    .line 1110
    .line 1111
    invoke-virtual {v5, v8}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 1112
    .line 1113
    .line 1114
    const v14, -0x5e8a8a8b

    .line 1115
    .line 1116
    .line 1117
    invoke-virtual {v5, v14}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 1118
    .line 1119
    .line 1120
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 1121
    .line 1122
    invoke-virtual {v3, v5, v8, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 1123
    .line 1124
    .line 1125
    new-instance v8, Landroid/view/View;

    .line 1126
    .line 1127
    invoke-direct {v8, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1128
    .line 1129
    .line 1130
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 1131
    .line 1132
    move-object/from16 p1, v2

    .line 1133
    .line 1134
    const/4 v2, 0x0

    .line 1135
    invoke-direct {v14, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1136
    .line 1137
    .line 1138
    iput v12, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1139
    .line 1140
    invoke-virtual {v3, v8, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1141
    .line 1142
    .line 1143
    new-instance v2, Lcom/mycompany/app/view/MyButtonImage;

    .line 1144
    .line 1145
    invoke-direct {v2, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 1146
    .line 1147
    .line 1148
    invoke-virtual {v2, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1149
    .line 1150
    .line 1151
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->baseline_fast_rewind_white_24:I

    .line 1152
    .line 1153
    invoke-virtual {v2, v8}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 1154
    .line 1155
    .line 1156
    const v14, -0x5e8a8a8b

    .line 1157
    .line 1158
    .line 1159
    invoke-virtual {v2, v14}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 1160
    .line 1161
    .line 1162
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 1163
    .line 1164
    invoke-virtual {v3, v2, v8, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 1165
    .line 1166
    .line 1167
    new-instance v8, Landroid/view/View;

    .line 1168
    .line 1169
    invoke-direct {v8, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1170
    .line 1171
    .line 1172
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 1173
    .line 1174
    move-object/from16 v19, v4

    .line 1175
    .line 1176
    const/4 v4, 0x0

    .line 1177
    invoke-direct {v14, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1178
    .line 1179
    .line 1180
    iput v12, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1181
    .line 1182
    invoke-virtual {v3, v8, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1183
    .line 1184
    .line 1185
    new-instance v4, Lcom/mycompany/app/view/MyButtonImage;

    .line 1186
    .line 1187
    invoke-direct {v4, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 1188
    .line 1189
    .line 1190
    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1191
    .line 1192
    .line 1193
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->baseline_fast_forward_white_24:I

    .line 1194
    .line 1195
    invoke-virtual {v4, v8}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 1196
    .line 1197
    .line 1198
    const v14, -0x5e8a8a8b

    .line 1199
    .line 1200
    .line 1201
    invoke-virtual {v4, v14}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 1202
    .line 1203
    .line 1204
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 1205
    .line 1206
    invoke-virtual {v3, v4, v8, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 1207
    .line 1208
    .line 1209
    new-instance v8, Landroid/view/View;

    .line 1210
    .line 1211
    invoke-direct {v8, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1212
    .line 1213
    .line 1214
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 1215
    .line 1216
    move-object/from16 v23, v5

    .line 1217
    .line 1218
    const/4 v5, 0x0

    .line 1219
    invoke-direct {v14, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1220
    .line 1221
    .line 1222
    iput v12, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1223
    .line 1224
    invoke-virtual {v3, v8, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1225
    .line 1226
    .line 1227
    new-instance v5, Lcom/mycompany/app/view/MyButtonImage;

    .line 1228
    .line 1229
    invoke-direct {v5, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 1230
    .line 1231
    .line 1232
    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1233
    .line 1234
    .line 1235
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->baseline_skip_next_white_24:I

    .line 1236
    .line 1237
    invoke-virtual {v5, v8}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 1238
    .line 1239
    .line 1240
    const v14, -0x5e8a8a8b

    .line 1241
    .line 1242
    .line 1243
    invoke-virtual {v5, v14}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 1244
    .line 1245
    .line 1246
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 1247
    .line 1248
    invoke-virtual {v3, v5, v8, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 1249
    .line 1250
    .line 1251
    new-instance v8, Landroid/view/View;

    .line 1252
    .line 1253
    invoke-direct {v8, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1254
    .line 1255
    .line 1256
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 1257
    .line 1258
    move-object/from16 v32, v5

    .line 1259
    .line 1260
    const/4 v5, 0x0

    .line 1261
    invoke-direct {v14, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1262
    .line 1263
    .line 1264
    iput v12, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1265
    .line 1266
    invoke-virtual {v3, v8, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1267
    .line 1268
    .line 1269
    new-instance v5, Lcom/mycompany/app/view/MyButtonImage;

    .line 1270
    .line 1271
    invoke-direct {v5, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 1272
    .line 1273
    .line 1274
    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1275
    .line 1276
    .line 1277
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_pin_white_24:I

    .line 1278
    .line 1279
    invoke-virtual {v5, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 1280
    .line 1281
    .line 1282
    const v14, -0x5e8a8a8b

    .line 1283
    .line 1284
    .line 1285
    invoke-virtual {v5, v14}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 1286
    .line 1287
    .line 1288
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 1289
    .line 1290
    invoke-virtual {v3, v5, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 1291
    .line 1292
    .line 1293
    iput-object v7, v0, Lcom/mycompany/app/image/ImageViewControl;->F:Landroid/view/View;

    .line 1294
    .line 1295
    iput-object v6, v0, Lcom/mycompany/app/image/ImageViewControl;->G:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1296
    .line 1297
    iput-object v15, v0, Lcom/mycompany/app/image/ImageViewControl;->H:Lcom/mycompany/app/view/MyButtonImage;

    .line 1298
    .line 1299
    iput-object v10, v0, Lcom/mycompany/app/image/ImageViewControl;->I:Lcom/mycompany/app/view/MyButtonImage;

    .line 1300
    .line 1301
    iput-object v11, v0, Lcom/mycompany/app/image/ImageViewControl;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 1302
    .line 1303
    move-object/from16 v1, v24

    .line 1304
    .line 1305
    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->K:Lcom/mycompany/app/view/MyButtonImage;

    .line 1306
    .line 1307
    move-object/from16 v1, v22

    .line 1308
    .line 1309
    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 1310
    .line 1311
    move-object/from16 v1, v31

    .line 1312
    .line 1313
    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->M:Landroid/widget/LinearLayout;

    .line 1314
    .line 1315
    move-object/from16 v1, v25

    .line 1316
    .line 1317
    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->N:Lcom/mycompany/app/view/MyButtonImage;

    .line 1318
    .line 1319
    move-object/from16 v1, v26

    .line 1320
    .line 1321
    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 1322
    .line 1323
    move-object/from16 v1, v27

    .line 1324
    .line 1325
    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->P:Lcom/mycompany/app/view/MyButtonImage;

    .line 1326
    .line 1327
    move-object/from16 v1, v28

    .line 1328
    .line 1329
    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->Q:Lcom/mycompany/app/view/MyButtonImage;

    .line 1330
    .line 1331
    move-object/from16 v1, v29

    .line 1332
    .line 1333
    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->R:Lcom/mycompany/app/view/MyButtonImage;

    .line 1334
    .line 1335
    move-object/from16 v1, p3

    .line 1336
    .line 1337
    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->S:Lcom/mycompany/app/view/MyButtonImage;

    .line 1338
    .line 1339
    move-object/from16 v1, v17

    .line 1340
    .line 1341
    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->T:Lcom/mycompany/app/view/MyButtonImage;

    .line 1342
    .line 1343
    move-object/from16 v1, v30

    .line 1344
    .line 1345
    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->U:Lcom/mycompany/app/view/MyAreaView;

    .line 1346
    .line 1347
    iput-object v9, v0, Lcom/mycompany/app/image/ImageViewControl;->V:Landroid/widget/LinearLayout;

    .line 1348
    .line 1349
    iput-object v2, v0, Lcom/mycompany/app/image/ImageViewControl;->W:Lcom/mycompany/app/view/MyButtonImage;

    .line 1350
    .line 1351
    iput-object v4, v0, Lcom/mycompany/app/image/ImageViewControl;->a0:Lcom/mycompany/app/view/MyButtonImage;

    .line 1352
    .line 1353
    move-object/from16 v1, v23

    .line 1354
    .line 1355
    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->b0:Lcom/mycompany/app/view/MyButtonImage;

    .line 1356
    .line 1357
    move-object/from16 v1, v32

    .line 1358
    .line 1359
    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->c0:Lcom/mycompany/app/view/MyButtonImage;

    .line 1360
    .line 1361
    move-object/from16 v1, v19

    .line 1362
    .line 1363
    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->d0:Lcom/mycompany/app/view/MyButtonImage;

    .line 1364
    .line 1365
    iput-object v5, v0, Lcom/mycompany/app/image/ImageViewControl;->e0:Lcom/mycompany/app/view/MyButtonImage;

    .line 1366
    .line 1367
    move-object/from16 v1, p1

    .line 1368
    .line 1369
    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->g0:Lcom/mycompany/app/image/ImageSeekBar;

    .line 1370
    .line 1371
    move-object/from16 v1, p4

    .line 1372
    .line 1373
    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1374
    .line 1375
    move-object/from16 v1, p2

    .line 1376
    .line 1377
    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1378
    .line 1379
    move-object/from16 v1, v20

    .line 1380
    .line 1381
    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->j0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 1382
    .line 1383
    move-object/from16 v1, v18

    .line 1384
    .line 1385
    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->l0:Lcom/mycompany/app/view/MyScrollBar;

    .line 1386
    .line 1387
    move-object/from16 v1, v16

    .line 1388
    .line 1389
    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewControl;->m0:Landroid/view/View;

    .line 1390
    .line 1391
    new-instance v1, Lcom/mycompany/app/image/ImageViewControl$2;

    .line 1392
    .line 1393
    invoke-direct {v1, v0}, Lcom/mycompany/app/image/ImageViewControl$2;-><init>(Lcom/mycompany/app/image/ImageViewControl;)V

    .line 1394
    .line 1395
    .line 1396
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1397
    .line 1398
    .line 1399
    return-void
.end method

.method public setIconCrop(Z)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/mycompany/app/image/ImageViewControl;->n0:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_1
    if-eqz p1, :cond_2

    .line 13
    .line 14
    sget-boolean p1, Lcom/mycompany/app/pref/PrefPdf;->k:Z

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    xor-int/2addr p1, v0

    .line 18
    sput-boolean p1, Lcom/mycompany/app/pref/PrefPdf;->k:Z

    .line 19
    .line 20
    const/4 v1, 0x7

    .line 21
    const-string v2, "mCrop"

    .line 22
    .line 23
    iget-object v3, p0, Lcom/mycompany/app/image/ImageViewControl;->z:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {v1, v3, v2, p1}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewControl;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setNoClickable(Z)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewControl;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 34
    .line 35
    new-instance v0, Lcom/mycompany/app/image/ImageViewControl$28;

    .line 36
    .line 37
    invoke-direct {v0, p0}, Lcom/mycompany/app/image/ImageViewControl$28;-><init>(Lcom/mycompany/app/image/ImageViewControl;)V

    .line 38
    .line 39
    .line 40
    const-wide/16 v1, 0x1f4

    .line 41
    .line 42
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 43
    .line 44
    .line 45
    :cond_2
    sget-boolean p1, Lcom/mycompany/app/pref/PrefPdf;->k:Z

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_fullscreen_white_24:I

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_fullscreen_exit_white_24:I

    .line 53
    .line 54
    :goto_0
    iget v0, p0, Lcom/mycompany/app/image/ImageViewControl;->o0:I

    .line 55
    .line 56
    if-ne v0, p1, :cond_4

    .line 57
    .line 58
    :goto_1
    return-void

    .line 59
    :cond_4
    iput p1, p0, Lcom/mycompany/app/image/ImageViewControl;->o0:I

    .line 60
    .line 61
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public setIconType(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->I:Lcom/mycompany/app/view/MyButtonImage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_1

    .line 6
    .line 7
    :cond_0
    iget v1, p0, Lcom/mycompany/app/image/ImageViewControl;->n0:I

    .line 8
    .line 9
    if-ne v1, p1, :cond_1

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_1
    iput p1, p0, Lcom/mycompany/app/image/ImageViewControl;->n0:I

    .line 14
    .line 15
    const/16 v1, 0xc

    .line 16
    .line 17
    const/16 v2, 0x8

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    if-ne p1, v1, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewControl;->S:Lcom/mycompany/app/view/MyButtonImage;

    .line 26
    .line 27
    invoke-virtual {p1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewControl;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 31
    .line 32
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewControl;->K:Lcom/mycompany/app/view/MyButtonImage;

    .line 36
    .line 37
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewControl;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 41
    .line 42
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    sget p1, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 46
    .line 47
    sget v0, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 48
    .line 49
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 50
    .line 51
    add-int/2addr v0, v1

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const/4 v1, 0x2

    .line 54
    if-ne p1, v1, :cond_3

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewControl;->S:Lcom/mycompany/app/view/MyButtonImage;

    .line 60
    .line 61
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewControl;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 65
    .line 66
    invoke-virtual {p1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewControl;->K:Lcom/mycompany/app/view/MyButtonImage;

    .line 70
    .line 71
    invoke-virtual {p1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewControl;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 75
    .line 76
    invoke-virtual {p1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    sget p1, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 80
    .line 81
    sget v0, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 82
    add-int/2addr p1, v0

    .line 83
    add-int/2addr p1, v0

    .line 84
    sget v0, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 85
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewControl;->A:Lcom/mycompany/app/main/MainActivity;

    .line 86
    if-eqz v1, :cond_2_pdf_done

    .line 87
    invoke-static {p0, v1}, Lcom/mycompany/app/image/PdfPreviewToolbar;->attachForPdf(Lcom/mycompany/app/image/ImageViewControl;Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/mycompany/app/image/PdfPreviewToolbar;->applyControlTimeout(Lcom/mycompany/app/image/ImageViewControl;)V

    .line 88
    :cond_2_pdf_done
    goto :goto_0

    .line 88
    :cond_3
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewControl;->S:Lcom/mycompany/app/view/MyButtonImage;

    .line 92
    .line 93
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewControl;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 97
    .line 98
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewControl;->K:Lcom/mycompany/app/view/MyButtonImage;

    .line 102
    .line 103
    invoke-virtual {p1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewControl;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 107
    .line 108
    invoke-virtual {p1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 109
    .line 110
    .line 111
    sget p1, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 112
    .line 113
    sget v0, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 114
    .line 115
    add-int/2addr p1, v0

    .line 116
    sget v0, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 117
    .line 118
    :goto_0
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewControl;->G:Landroidx/appcompat/widget/AppCompatTextView;

    .line 119
    .line 120
    sget v2, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 121
    .line 122
    invoke-virtual {v1, v2, v3, p1, v3}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewControl;->T:Lcom/mycompany/app/view/MyButtonImage;

    .line 126
    .line 127
    if-nez p1, :cond_4

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 135
    .line 136
    if-nez p1, :cond_5

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_5
    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-ne v1, v0, :cond_6

    .line 144
    .line 145
    :goto_1
    return-void

    .line 146
    :cond_6
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 147
    .line 148
    .line 149
    new-instance p1, Lcom/mycompany/app/image/ImageViewControl$27;

    .line 150
    .line 151
    invoke-direct {p1, p0}, Lcom/mycompany/app/image/ImageViewControl$27;-><init>(Lcom/mycompany/app/image/ImageViewControl;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 155
    .line 156
    .line 157
    return-void
.end method

.method public setIconsClickable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->H:Lcom/mycompany/app/view/MyButtonImage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setClickable(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->I:Lcom/mycompany/app/view/MyButtonImage;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setClickable(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setClickable(Z)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->K:Lcom/mycompany/app/view/MyButtonImage;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setClickable(Z)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setClickable(Z)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->N:Lcom/mycompany/app/view/MyButtonImage;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setClickable(Z)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setClickable(Z)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->P:Lcom/mycompany/app/view/MyButtonImage;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setClickable(Z)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->Q:Lcom/mycompany/app/view/MyButtonImage;

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setClickable(Z)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->R:Lcom/mycompany/app/view/MyButtonImage;

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setClickable(Z)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->S:Lcom/mycompany/app/view/MyButtonImage;

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setClickable(Z)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->T:Lcom/mycompany/app/view/MyButtonImage;

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setClickable(Z)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->W:Lcom/mycompany/app/view/MyButtonImage;

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setClickable(Z)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->a0:Lcom/mycompany/app/view/MyButtonImage;

    .line 70
    .line 71
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setClickable(Z)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->b0:Lcom/mycompany/app/view/MyButtonImage;

    .line 75
    .line 76
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setClickable(Z)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->c0:Lcom/mycompany/app/view/MyButtonImage;

    .line 80
    .line 81
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setClickable(Z)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->d0:Lcom/mycompany/app/view/MyButtonImage;

    .line 85
    .line 86
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setClickable(Z)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->e0:Lcom/mycompany/app/view/MyButtonImage;

    .line 90
    .line 91
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setClickable(Z)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public setIconsPressed(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->G:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->H:Lcom/mycompany/app/view/MyButtonImage;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->I:Lcom/mycompany/app/view/MyButtonImage;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->K:Lcom/mycompany/app/view/MyButtonImage;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->M:Landroid/widget/LinearLayout;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->N:Lcom/mycompany/app/view/MyButtonImage;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->P:Lcom/mycompany/app/view/MyButtonImage;

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->Q:Lcom/mycompany/app/view/MyButtonImage;

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->R:Lcom/mycompany/app/view/MyButtonImage;

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->S:Lcom/mycompany/app/view/MyButtonImage;

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->T:Lcom/mycompany/app/view/MyButtonImage;

    .line 70
    .line 71
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->V:Landroid/widget/LinearLayout;

    .line 75
    .line 76
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->W:Lcom/mycompany/app/view/MyButtonImage;

    .line 80
    .line 81
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->a0:Lcom/mycompany/app/view/MyButtonImage;

    .line 85
    .line 86
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->b0:Lcom/mycompany/app/view/MyButtonImage;

    .line 90
    .line 91
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->c0:Lcom/mycompany/app/view/MyButtonImage;

    .line 95
    .line 96
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->d0:Lcom/mycompany/app/view/MyButtonImage;

    .line 100
    .line 101
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->e0:Lcom/mycompany/app/view/MyButtonImage;

    .line 105
    .line 106
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->g0:Lcom/mycompany/app/image/ImageSeekBar;

    .line 110
    .line 111
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method public setNaviHeight(I)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewControl;->m()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    iput p1, p0, Lcom/mycompany/app/image/ImageViewControl;->D:I

    .line 12
    .line 13
    return-void
.end method

.method public setPathChanged(I)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefImage;->m:Z

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyFadeRelative;->e()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_6

    .line 10
    .line 11
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->k0:Lcom/mycompany/app/image/ImageThumbAdapter;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget v1, v0, Lcom/mycompany/app/image/ImageThumbAdapter;->f:I

    .line 17
    .line 18
    const/16 v2, 0xc

    .line 19
    .line 20
    if-eq v1, v2, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    iget-boolean v1, v0, Lcom/mycompany/app/image/ImageThumbAdapter;->l:Z

    .line 24
    .line 25
    if-nez v1, :cond_6

    .line 26
    .line 27
    iget-object v1, v0, Lcom/mycompany/app/image/ImageThumbAdapter;->h:Lcom/mycompany/app/compress/Compress;

    .line 28
    .line 29
    if-eqz v1, :cond_6

    .line 30
    .line 31
    iget-object v2, v0, Lcom/mycompany/app/image/ImageThumbAdapter;->e:Lcom/mycompany/app/view/MyRecyclerView;

    .line 32
    .line 33
    if-nez v2, :cond_2

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    if-ltz p1, :cond_6

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/mycompany/app/compress/Compress;->R()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-lt p1, v1, :cond_3

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    sget-boolean v1, Lcom/mycompany/app/pref/PrefImage;->s:Z

    .line 46
    .line 47
    if-eqz v1, :cond_4

    .line 48
    .line 49
    iget-object v1, v0, Lcom/mycompany/app/image/ImageThumbAdapter;->h:Lcom/mycompany/app/compress/Compress;

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/mycompany/app/compress/Compress;->R()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    sub-int/2addr v1, p1

    .line 56
    add-int/lit8 v1, v1, -0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_4
    move v1, p1

    .line 60
    :goto_0
    iget-object v2, v0, Lcom/mycompany/app/image/ImageThumbAdapter;->e:Lcom/mycompany/app/view/MyRecyclerView;

    .line 61
    .line 62
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->I(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-nez v1, :cond_5

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_5
    instance-of v2, v1, Lcom/mycompany/app/image/ImageThumbAdapter$ViewHolder;

    .line 70
    .line 71
    if-eqz v2, :cond_6

    .line 72
    .line 73
    check-cast v1, Lcom/mycompany/app/image/ImageThumbAdapter$ViewHolder;

    .line 74
    .line 75
    iget-object v1, v1, Lcom/mycompany/app/image/ImageThumbAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyThumbView;

    .line 76
    .line 77
    invoke-virtual {v0, v1, p1}, Lcom/mycompany/app/image/ImageThumbAdapter;->w(Lcom/mycompany/app/view/MyThumbView;I)V

    .line 78
    .line 79
    .line 80
    :cond_6
    :goto_1
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->G:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eq v0, p1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Lcom/mycompany/app/image/ImageViewControl;->setIconsPressed(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-super {p0, p1}, Lcom/mycompany/app/view/MyFadeRelative;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final t(III)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyFadeRelative;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->g0:Lcom/mycompany/app/image/ImageSeekBar;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    add-int/lit8 v1, p1, -0x1

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-gez v1, :cond_2

    .line 17
    .line 18
    move v1, v2

    .line 19
    :cond_2
    iget v3, p0, Lcom/mycompany/app/image/ImageViewControl;->f0:I

    .line 20
    .line 21
    const/4 v4, 0x1

    .line 22
    if-eq v3, v1, :cond_4

    .line 23
    .line 24
    iput v1, p0, Lcom/mycompany/app/image/ImageViewControl;->f0:I

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->g0:Lcom/mycompany/app/image/ImageSeekBar;

    .line 30
    .line 31
    iget v1, p0, Lcom/mycompany/app/image/ImageViewControl;->f0:I

    .line 32
    .line 33
    if-lez v1, :cond_3

    .line 34
    .line 35
    move v1, v4

    .line 36
    goto :goto_1

    .line 37
    :cond_3
    move v1, v2

    .line 38
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 39
    .line 40
    .line 41
    :cond_4
    sget-boolean v0, Lcom/mycompany/app/pref/PrefImage;->s:Z

    .line 42
    .line 43
    const-string v1, ""

    .line 44
    .line 45
    if-eqz v0, :cond_5

    .line 46
    .line 47
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 48
    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 66
    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    :goto_2
    if-nez p1, :cond_7

    .line 83
    .line 84
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewControl;->g0:Lcom/mycompany/app/image/ImageSeekBar;

    .line 85
    .line 86
    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v2, v2}, Lcom/mycompany/app/image/ImageViewControl;->r(IZ)V

    .line 90
    .line 91
    .line 92
    sget-boolean p1, Lcom/mycompany/app/pref/PrefImage;->s:Z

    .line 93
    .line 94
    const-string p2, "0"

    .line 95
    .line 96
    if-eqz p1, :cond_6

    .line 97
    .line 98
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewControl;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 99
    .line 100
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_6
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewControl;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 105
    .line 106
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_7
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewControl;->g0:Lcom/mycompany/app/image/ImageSeekBar;

    .line 111
    .line 112
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, p2, v2}, Lcom/mycompany/app/image/ImageViewControl;->r(IZ)V

    .line 116
    .line 117
    .line 118
    const/4 p1, 0x3

    .line 119
    if-ne p3, p1, :cond_8

    .line 120
    .line 121
    const-string v1, "L"

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_8
    const/4 p1, 0x4

    .line 125
    if-ne p3, p1, :cond_9

    .line 126
    .line 127
    const-string v1, "R"

    .line 128
    .line 129
    :cond_9
    :goto_3
    sget-boolean p1, Lcom/mycompany/app/pref/PrefImage;->s:Z

    .line 130
    .line 131
    if-eqz p1, :cond_a

    .line 132
    .line 133
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewControl;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 134
    .line 135
    new-instance p3, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    add-int/2addr p2, v4

    .line 141
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :cond_a
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewControl;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 156
    .line 157
    new-instance p3, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    add-int/2addr p2, v4

    .line 163
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    .line 175
    .line 176
    return-void
.end method

.method public final u(ZIILcom/mycompany/app/compress/Compress;III)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->e0:Lcom/mycompany/app/view/MyButtonImage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/image/ImageViewControl;->E:Z

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_pin_2_white_24:I

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_pin_white_24:I

    .line 14
    .line 15
    :goto_0
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewControl;->g0:Lcom/mycompany/app/image/ImageSeekBar;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 21
    .line 22
    .line 23
    sget-boolean p1, Lcom/mycompany/app/pref/PrefImage;->s:Z

    .line 24
    .line 25
    const-string v0, ""

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewControl;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewControl;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 48
    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    :goto_1
    if-nez p5, :cond_4

    .line 65
    .line 66
    sget-boolean p1, Lcom/mycompany/app/pref/PrefImage;->s:Z

    .line 67
    .line 68
    const-string p5, "0"

    .line 69
    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewControl;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 73
    .line 74
    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewControl;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 79
    .line 80
    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    :goto_2
    invoke-virtual {p0, p2, p3, p4}, Lcom/mycompany/app/image/ImageViewControl;->p(IILcom/mycompany/app/compress/Compress;)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_4
    const/4 p1, 0x3

    .line 88
    if-ne p7, p1, :cond_5

    .line 89
    .line 90
    const-string v0, "L"

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_5
    const/4 p1, 0x4

    .line 94
    if-ne p7, p1, :cond_6

    .line 95
    .line 96
    const-string v0, "R"

    .line 97
    .line 98
    :cond_6
    :goto_3
    sget-boolean p1, Lcom/mycompany/app/pref/PrefImage;->s:Z

    .line 99
    .line 100
    if-eqz p1, :cond_7

    .line 101
    .line 102
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewControl;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 103
    .line 104
    new-instance p5, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    add-int/lit8 p6, p6, 0x1

    .line 110
    .line 111
    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p5

    .line 121
    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_7
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewControl;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 126
    .line 127
    new-instance p5, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    add-int/lit8 p6, p6, 0x1

    .line 133
    .line 134
    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p5

    .line 144
    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    .line 146
    .line 147
    :goto_4
    invoke-virtual {p0, p2, p3, p4}, Lcom/mycompany/app/image/ImageViewControl;->p(IILcom/mycompany/app/compress/Compress;)V

    .line 148
    .line 149
    .line 150
    return-void
.end method

.method public final v()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->A:Lcom/mycompany/app/main/MainActivity;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->B:Landroid/view/Window;

    .line 6
    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->F:Landroid/view/View;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/mycompany/app/image/ImageViewControl;->getNaviHeight()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    if-lez v0, :cond_2

    .line 20
    .line 21
    iget-object v2, p0, Lcom/mycompany/app/image/ImageViewControl;->F:Landroid/view/View;

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewControl;->F:Landroid/view/View;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_4

    .line 33
    .line 34
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 35
    .line 36
    if-ne v2, v0, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->F:Landroid/view/View;

    .line 43
    .line 44
    const/4 v2, 0x4

    .line 45
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->F:Landroid/view/View;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 57
    .line 58
    if-nez v2, :cond_3

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 62
    .line 63
    :goto_0
    new-instance v0, Lcom/mycompany/app/image/ImageViewControl$32;

    .line 64
    .line 65
    invoke-direct {v0, p0}, Lcom/mycompany/app/image/ImageViewControl$32;-><init>(Lcom/mycompany/app/image/ImageViewControl;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 69
    .line 70
    .line 71
    :cond_4
    :goto_1
    return-void
.end method

.method public final w()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->U:Lcom/mycompany/app/view/MyAreaView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyAreaView;->a()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->U:Lcom/mycompany/app/view/MyAreaView;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewControl;->M:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iget-object v2, p0, Lcom/mycompany/app/image/ImageViewControl;->V:Landroid/widget/LinearLayout;

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyAreaView;->e(II)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->U:Lcom/mycompany/app/view/MyAreaView;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->U:Lcom/mycompany/app/view/MyAreaView;

    .line 37
    .line 38
    const/4 v1, 0x4

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final x(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->N:Lcom/mycompany/app/view/MyButtonImage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyFadeRelative;->f()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_3

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lcom/mycompany/app/image/ImageViewControl;->setIconsPressed(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->k0:Lcom/mycompany/app/image/ImageThumbAdapter;

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-boolean v3, v0, Lcom/mycompany/app/image/ImageThumbAdapter;->l:Z

    .line 22
    .line 23
    if-ne v3, v2, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iput-boolean v2, v0, Lcom/mycompany/app/image/ImageThumbAdapter;->l:Z

    .line 27
    .line 28
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->g0:Lcom/mycompany/app/image/ImageSeekBar;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-virtual {p0, v0, v2}, Lcom/mycompany/app/image/ImageViewControl;->r(IZ)V

    .line 35
    .line 36
    .line 37
    :cond_3
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewControl;->m()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-virtual {p0, v1}, Lcom/mycompany/app/image/ImageViewControl;->setIconCrop(Z)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/mycompany/app/image/ImageViewControl;->o()V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, v0}, Lcom/mycompany/app/image/ImageViewControl;->setIconPage(Z)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->e0:Lcom/mycompany/app/view/MyButtonImage;

    .line 51
    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    iget-boolean v2, p0, Lcom/mycompany/app/image/ImageViewControl;->E:Z

    .line 55
    .line 56
    if-eqz v2, :cond_4

    .line 57
    .line 58
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_pin_2_white_24:I

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_4
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_pin_white_24:I

    .line 62
    .line 63
    :goto_1
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 64
    .line 65
    .line 66
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->U:Lcom/mycompany/app/view/MyAreaView;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyAreaView;->a()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_6

    .line 73
    .line 74
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->U:Lcom/mycompany/app/view/MyAreaView;

    .line 75
    .line 76
    iget-object v2, p0, Lcom/mycompany/app/image/ImageViewControl;->M:Landroid/widget/LinearLayout;

    .line 77
    .line 78
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    iget-object v3, p0, Lcom/mycompany/app/image/ImageViewControl;->V:Landroid/widget/LinearLayout;

    .line 83
    .line 84
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    invoke-virtual {v0, v2, v3}, Lcom/mycompany/app/view/MyAreaView;->e(II)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->U:Lcom/mycompany/app/view/MyAreaView;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->U:Lcom/mycompany/app/view/MyAreaView;

    .line 98
    .line 99
    const/4 v1, 0x4

    .line 100
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    :goto_2
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyFadeRelative;->i(Z)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public final y(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->m0:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->trans_logo_short_back_white_2:I

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewControl;->m0:Landroid/view/View;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    const/16 p1, 0x8

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final z(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewControl;->U:Lcom/mycompany/app/view/MyAreaView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyAreaView;->setSkipDraw(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
