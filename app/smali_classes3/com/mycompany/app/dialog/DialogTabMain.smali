.class public Lcom/mycompany/app/dialog/DialogTabMain;
.super Lcom/mycompany/app/dialog/DialogCast;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogTabMain$ListTabListener;,
        Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;,
        Lcom/mycompany/app/dialog/DialogTabMain$ReleaseBackListener;,
        Lcom/mycompany/app/dialog/DialogTabMain$ViewPagerAdapter;,
        Lcom/mycompany/app/dialog/DialogTabMain$ViewPagerHolder;
    }
.end annotation


# static fields
.field public static final l1:[I

.field public static final m1:[I


# instance fields
.field public A0:F

.field public B0:Landroid/view/GestureDetector;

.field public C0:Z

.field public D0:Lcom/mycompany/app/view/MySnackbar;

.field public E0:Z

.field public F0:Lcom/mycompany/app/dialog/DialogTabFind;

.field public G:Lcom/mycompany/app/web/WebViewActivity;

.field public G0:Z

.field public H:Landroid/content/Context;

.field public H0:Z

.field public I:Lcom/mycompany/app/dialog/DialogTabMain$ListTabListener;

.field public I0:Lcom/mycompany/app/dialog/DialogTabMain$ReleaseBackListener;

.field public J:Ljava/util/List;

.field public J0:Z

.field public final K:Z

.field public K0:Z

.field public L:Z

.field public L0:Z

.field public M:Z

.field public M0:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

.field public N:Z

.field public N0:Lcom/mycompany/app/web/WebTabAdapter;

.field public O:Lcom/mycompany/app/view/MyMainRelative;

.field public O0:I

.field public P:Landroid/widget/FrameLayout;

.field public P0:I

.field public Q:Lcom/mycompany/app/view/MyButtonImage;

.field public Q0:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

.field public R:Lcom/mycompany/app/view/MyButtonImage;

.field public R0:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

.field public S:Landroidx/appcompat/widget/AppCompatTextView;

.field public S0:I

.field public T:Lcom/mycompany/app/view/MyButtonCheck;

.field public T0:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

.field public U:Landroid/widget/LinearLayout;

.field public U0:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

.field public V:Lcom/mycompany/app/view/MyButtonRelative;

.field public V0:Ljava/util/List;

.field public W:Landroid/widget/ImageView;

.field public W0:I

.field public X:Lcom/mycompany/app/view/MyButtonRelative;

.field public X0:I

.field public Y:Landroid/widget/ImageView;

.field public Y0:I

.field public Z:Lcom/google/android/material/tabs/TabLayout;

.field public Z0:Ljava/util/List;

.field public a0:Landroidx/viewpager2/widget/ViewPager2;

.field public a1:J

.field public b0:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field public b1:I

.field public c0:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

.field public c1:J

.field public d0:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

.field public d1:Z

.field public e0:Lcom/mycompany/app/view/MyScrollBar;

.field public e1:Z

.field public f0:Lcom/mycompany/app/view/MyLineText;

.field public f1:Z

.field public g0:Landroidx/appcompat/widget/AppCompatTextView;

.field public g1:Z

.field public h0:I

.field public h1:Z

.field public i0:I

.field public i1:Z

.field public j0:Lcom/mycompany/app/view/MyPopupMenu;

.field public j1:Z

.field public k0:Lcom/mycompany/app/view/MyPopupMenu;

.field public k1:Z

.field public l0:Lcom/mycompany/app/view/MyPopupMenu;

.field public m0:Lcom/mycompany/app/view/MyFadeFrame;

.field public n0:Lcom/mycompany/app/dialog/DialogSetTabRestore;

.field public o0:Lcom/mycompany/app/dialog/DialogDeleteItem;

.field public p0:Lcom/mycompany/app/dialog/DialogDeleteItem;

.field public q0:Lcom/mycompany/app/dialog/DialogTabEdit;

.field public r0:Lcom/mycompany/app/dialog/DialogEditIcon;

.field public s0:Lcom/mycompany/app/quick/TabSubView;

.field public t0:Z

.field public u0:Z

.field public v0:Z

.field public w0:Z

.field public x0:I

.field public final y0:I

.field public z0:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x0

    .line 4
    filled-new-array {v2, v0, v1}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/mycompany/app/dialog/DialogTabMain;->l1:[I

    .line 9
    .line 10
    sget v0, Lnet/kaki87/soul2/testing/R$string;->thumb_mode:I

    .line 11
    .line 12
    sget v1, Lnet/kaki87/soul2/testing/R$string;->list_mode:I

    .line 13
    .line 14
    sget v2, Lnet/kaki87/soul2/testing/R$string;->simple_mode:I

    .line 15
    .line 16
    filled-new-array {v0, v1, v2}, [I

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lcom/mycompany/app/dialog/DialogTabMain;->m1:[I

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;Ljava/util/List;ZLcom/mycompany/app/dialog/DialogTabMain$ListTabListener;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget v0, Lnet/kaki87/soul2/testing/R$style;->DialogFullBlack:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget v0, Lnet/kaki87/soul2/testing/R$style;->DialogFullTheme:I

    .line 9
    .line 10
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/mycompany/app/dialog/DialogCast;-><init>(Lcom/mycompany/app/main/MainActivity;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogNormal;->j()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->G:Lcom/mycompany/app/web/WebViewActivity;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->H:Landroid/content/Context;

    .line 23
    .line 24
    iput-object p4, p0, Lcom/mycompany/app/dialog/DialogTabMain;->I:Lcom/mycompany/app/dialog/DialogTabMain$ListTabListener;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->J:Ljava/util/List;

    .line 27
    .line 28
    iput-boolean p3, p0, Lcom/mycompany/app/dialog/DialogTabMain;->K:Z

    .line 29
    .line 30
    sget-boolean p1, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 31
    .line 32
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->L:Z

    .line 33
    .line 34
    const/4 p2, 0x1

    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    sget-boolean p1, Lcom/mycompany/app/pref/PrefSecret;->u:Z

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    sget p1, Lcom/mycompany/app/pref/PrefSecret;->s:I

    .line 42
    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    move p1, p2

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/4 p1, 0x0

    .line 48
    :goto_1
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->M:Z

    .line 49
    .line 50
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 51
    .line 52
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->E0:Z

    .line 53
    .line 54
    sget p1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 55
    .line 56
    sget p3, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 57
    .line 58
    add-int/2addr p1, p3

    .line 59
    iput p1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->y0:I

    .line 60
    .line 61
    iput-boolean p2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->N:Z

    .line 62
    .line 63
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 64
    .line 65
    if-nez p1, :cond_2

    .line 66
    .line 67
    return-void

    .line 68
    :cond_2
    new-instance p2, Lcom/mycompany/app/dialog/DialogTabMain$1;

    .line 69
    .line 70
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogTabMain$1;-><init>(Lcom/mycompany/app/dialog/DialogTabMain;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public static r(Lcom/mycompany/app/dialog/DialogTabMain;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->D0:Lcom/mycompany/app/view/MySnackbar;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MySnackbar;->i(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->D0:Lcom/mycompany/app/view/MySnackbar;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->I:Lcom/mycompany/app/dialog/DialogTabMain$ListTabListener;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-boolean v3, p0, Lcom/mycompany/app/dialog/DialogTabMain;->u0:Z

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    iget-boolean v3, p0, Lcom/mycompany/app/dialog/DialogTabMain;->t0:Z

    .line 25
    .line 26
    :goto_0
    iput-boolean v1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->t0:Z

    .line 27
    .line 28
    iput-boolean v1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->u0:Z

    .line 29
    .line 30
    if-eqz v3, :cond_4

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lcom/mycompany/app/dialog/DialogTabMain;->x(Z)Lcom/mycompany/app/web/WebTabAdapter;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-nez v0, :cond_3

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogTabMain;->I:Lcom/mycompany/app/dialog/DialogTabMain$ListTabListener;

    .line 40
    .line 41
    iget-object v4, v0, Lcom/mycompany/app/web/WebTabAdapter;->j:Ljava/util/List;

    .line 42
    .line 43
    iget v0, v0, Lcom/mycompany/app/web/WebTabAdapter;->m:I

    .line 44
    .line 45
    invoke-interface {v3, v0, v4}, Lcom/mycompany/app/dialog/DialogTabMain$ListTabListener;->a(ILjava/util/List;)V

    .line 46
    .line 47
    .line 48
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->j0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 49
    .line 50
    if-eqz v0, :cond_5

    .line 51
    .line 52
    iput-object v2, p0, Lcom/mycompany/app/view/MyDialogNormal;->u:Lcom/mycompany/app/view/MyPopupWrap;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 55
    .line 56
    .line 57
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->j0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 58
    .line 59
    :cond_5
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogTabMain;->E()V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->l0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 63
    .line 64
    if-eqz v0, :cond_6

    .line 65
    .line 66
    iput-object v2, p0, Lcom/mycompany/app/view/MyDialogNormal;->u:Lcom/mycompany/app/view/MyPopupWrap;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 69
    .line 70
    .line 71
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->l0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 72
    .line 73
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->n0:Lcom/mycompany/app/dialog/DialogSetTabRestore;

    .line 74
    .line 75
    if-eqz v0, :cond_7

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetTabRestore;->dismiss()V

    .line 78
    .line 79
    .line 80
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->n0:Lcom/mycompany/app/dialog/DialogSetTabRestore;

    .line 81
    .line 82
    :cond_7
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogTabMain;->B()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogTabMain;->A()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogTabMain;->C()V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->r0:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 92
    .line 93
    if-eqz v0, :cond_8

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditIcon;->dismiss()V

    .line 96
    .line 97
    .line 98
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->r0:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 99
    .line 100
    :cond_8
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogTabMain;->D()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogTabMain;->J()V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->a0:Landroidx/viewpager2/widget/ViewPager2;

    .line 107
    .line 108
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogTabMain;->b0:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 109
    .line 110
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->a0:Landroidx/viewpager2/widget/ViewPager2;

    .line 111
    .line 112
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->b0:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 113
    .line 114
    if-nez v0, :cond_9

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_9
    if-eqz v3, :cond_a

    .line 118
    .line 119
    invoke-virtual {v0, v3}, Landroidx/viewpager2/widget/ViewPager2;->f(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 120
    .line 121
    .line 122
    :cond_a
    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 123
    .line 124
    .line 125
    :goto_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->O:Lcom/mycompany/app/view/MyMainRelative;

    .line 126
    .line 127
    if-eqz v0, :cond_b

    .line 128
    .line 129
    iput-object v2, v0, Lcom/mycompany/app/view/MyMainRelative;->c:Lcom/mycompany/app/image/ImageSizeListener;

    .line 130
    .line 131
    iput-object v2, v0, Lcom/mycompany/app/view/MyMainRelative;->f:Landroid/view/View;

    .line 132
    .line 133
    iput-object v2, v0, Lcom/mycompany/app/view/MyMainRelative;->g:Landroidx/core/view/WindowInsetsControllerCompat;

    .line 134
    .line 135
    iput-object v2, v0, Lcom/mycompany/app/view/MyMainRelative;->l:Landroid/view/Window;

    .line 136
    .line 137
    iput-object v2, v0, Lcom/mycompany/app/view/MyMainRelative;->n:Landroid/view/Window;

    .line 138
    .line 139
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->O:Lcom/mycompany/app/view/MyMainRelative;

    .line 140
    .line 141
    :cond_b
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->Q:Lcom/mycompany/app/view/MyButtonImage;

    .line 142
    .line 143
    if-eqz v0, :cond_c

    .line 144
    .line 145
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 146
    .line 147
    .line 148
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->Q:Lcom/mycompany/app/view/MyButtonImage;

    .line 149
    .line 150
    :cond_c
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->R:Lcom/mycompany/app/view/MyButtonImage;

    .line 151
    .line 152
    if-eqz v0, :cond_d

    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 155
    .line 156
    .line 157
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->R:Lcom/mycompany/app/view/MyButtonImage;

    .line 158
    .line 159
    :cond_d
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->T:Lcom/mycompany/app/view/MyButtonCheck;

    .line 160
    .line 161
    if-eqz v0, :cond_e

    .line 162
    .line 163
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonCheck;->l()V

    .line 164
    .line 165
    .line 166
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->T:Lcom/mycompany/app/view/MyButtonCheck;

    .line 167
    .line 168
    :cond_e
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->V:Lcom/mycompany/app/view/MyButtonRelative;

    .line 169
    .line 170
    if-eqz v0, :cond_f

    .line 171
    .line 172
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonRelative;->f()V

    .line 173
    .line 174
    .line 175
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->V:Lcom/mycompany/app/view/MyButtonRelative;

    .line 176
    .line 177
    :cond_f
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->X:Lcom/mycompany/app/view/MyButtonRelative;

    .line 178
    .line 179
    if-eqz v0, :cond_10

    .line 180
    .line 181
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonRelative;->f()V

    .line 182
    .line 183
    .line 184
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->X:Lcom/mycompany/app/view/MyButtonRelative;

    .line 185
    .line 186
    :cond_10
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->c0:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

    .line 187
    .line 188
    if-eqz v0, :cond_11

    .line 189
    .line 190
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->c()V

    .line 191
    .line 192
    .line 193
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->c0:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

    .line 194
    .line 195
    :cond_11
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->d0:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

    .line 196
    .line 197
    if-eqz v0, :cond_12

    .line 198
    .line 199
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->c()V

    .line 200
    .line 201
    .line 202
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->d0:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

    .line 203
    .line 204
    :cond_12
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->e0:Lcom/mycompany/app/view/MyScrollBar;

    .line 205
    .line 206
    if-eqz v0, :cond_13

    .line 207
    .line 208
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyScrollBar;->k()V

    .line 209
    .line 210
    .line 211
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->e0:Lcom/mycompany/app/view/MyScrollBar;

    .line 212
    .line 213
    :cond_13
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 214
    .line 215
    if-eqz v0, :cond_14

    .line 216
    .line 217
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 218
    .line 219
    .line 220
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 221
    .line 222
    :cond_14
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->G:Lcom/mycompany/app/web/WebViewActivity;

    .line 223
    .line 224
    if-eqz v0, :cond_15

    .line 225
    .line 226
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/main/MainActivity;->n0(Landroid/view/View;Z)V

    .line 227
    .line 228
    .line 229
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->G:Lcom/mycompany/app/web/WebViewActivity;

    .line 230
    .line 231
    :cond_15
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->H:Landroid/content/Context;

    .line 232
    .line 233
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->I:Lcom/mycompany/app/dialog/DialogTabMain$ListTabListener;

    .line 234
    .line 235
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->J:Ljava/util/List;

    .line 236
    .line 237
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->P:Landroid/widget/FrameLayout;

    .line 238
    .line 239
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->S:Landroidx/appcompat/widget/AppCompatTextView;

    .line 240
    .line 241
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->U:Landroid/widget/LinearLayout;

    .line 242
    .line 243
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->W:Landroid/widget/ImageView;

    .line 244
    .line 245
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->Y:Landroid/widget/ImageView;

    .line 246
    .line 247
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->Z:Lcom/google/android/material/tabs/TabLayout;

    .line 248
    .line 249
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 250
    .line 251
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->B0:Landroid/view/GestureDetector;

    .line 252
    .line 253
    invoke-super {p0}, Lcom/mycompany/app/dialog/DialogCast;->dismiss()V

    .line 254
    .line 255
    .line 256
    return-void
.end method

.method public static s(Lcom/mycompany/app/dialog/DialogTabMain;Z)Lcom/mycompany/app/view/MyRecyclerView;
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->d0:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->h:Lcom/mycompany/app/view/MyRecyclerView;

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_1
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->c0:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

    .line 12
    .line 13
    if-nez p0, :cond_2

    .line 14
    .line 15
    :goto_0
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :cond_2
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->h:Lcom/mycompany/app/view/MyRecyclerView;

    .line 18
    .line 19
    return-object p0
.end method

.method public static t(Lcom/mycompany/app/dialog/DialogTabMain;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->s0:Lcom/mycompany/app/quick/TabSubView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->L:Z

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/mycompany/app/dialog/DialogTabMain;->x(Z)Lcom/mycompany/app/web/WebTabAdapter;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    invoke-virtual {v0, p1}, Lcom/mycompany/app/web/WebTabAdapter;->H(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    iget-object p1, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_2
    const/4 p1, 0x0

    .line 25
    :goto_1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogTabMain;->O()V

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    iput-boolean v1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->v0:Z

    .line 30
    .line 31
    if-eqz p1, :cond_4

    .line 32
    .line 33
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const/4 v2, 0x2

    .line 38
    if-ge v1, v2, :cond_3

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_3
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->s0:Lcom/mycompany/app/quick/TabSubView;

    .line 42
    .line 43
    iget-wide v1, v0, Lcom/mycompany/app/web/WebTabAdapter;->l:J

    .line 44
    .line 45
    iget v0, v0, Lcom/mycompany/app/web/WebTabAdapter;->m:I

    .line 46
    .line 47
    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/mycompany/app/quick/TabSubView;->o(Ljava/util/List;JI)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogTabMain;->D()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public static u(Lcom/mycompany/app/dialog/DialogTabMain;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->I:Lcom/mycompany/app/dialog/DialogTabMain$ListTabListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-boolean v0, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->u0:Z

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->t0:Z

    .line 14
    .line 15
    :goto_0
    const/4 v2, 0x0

    .line 16
    iput-boolean v2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->t0:Z

    .line 17
    .line 18
    iput-boolean v2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->u0:Z

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/mycompany/app/dialog/DialogTabMain;->x(Z)Lcom/mycompany/app/web/WebTabAdapter;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_1

    .line 28
    :cond_2
    move-object v0, v3

    .line 29
    :goto_1
    if-eqz v0, :cond_3

    .line 30
    .line 31
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->I:Lcom/mycompany/app/dialog/DialogTabMain$ListTabListener;

    .line 32
    .line 33
    iget-object v1, v0, Lcom/mycompany/app/web/WebTabAdapter;->j:Ljava/util/List;

    .line 34
    .line 35
    iget v0, v0, Lcom/mycompany/app/web/WebTabAdapter;->m:I

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    invoke-interface {p0, v2, v1, v0, p1}, Lcom/mycompany/app/dialog/DialogTabMain$ListTabListener;->d(ZLjava/util/List;IZ)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_3
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->I:Lcom/mycompany/app/dialog/DialogTabMain$ListTabListener;

    .line 43
    .line 44
    invoke-interface {p0, v2, v3, v2, p1}, Lcom/mycompany/app/dialog/DialogTabMain$ListTabListener;->d(ZLjava/util/List;IZ)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public static v(Lcom/mycompany/app/dialog/DialogTabMain;IZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->I:Lcom/mycompany/app/dialog/DialogTabMain$ListTabListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-boolean v0, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->u0:Z

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->t0:Z

    .line 14
    .line 15
    :goto_0
    const/4 v2, 0x0

    .line 16
    iput-boolean v2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->t0:Z

    .line 17
    .line 18
    iput-boolean v2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->u0:Z

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/mycompany/app/dialog/DialogTabMain;->x(Z)Lcom/mycompany/app/web/WebTabAdapter;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_1

    .line 28
    :cond_2
    move-object v0, v3

    .line 29
    :goto_1
    if-eqz v0, :cond_3

    .line 30
    .line 31
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->I:Lcom/mycompany/app/dialog/DialogTabMain$ListTabListener;

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    iget-object v0, v0, Lcom/mycompany/app/web/WebTabAdapter;->j:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {p0, v1, v0, p1, p2}, Lcom/mycompany/app/dialog/DialogTabMain$ListTabListener;->c(ZLjava/util/List;IZ)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_3
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->I:Lcom/mycompany/app/dialog/DialogTabMain$ListTabListener;

    .line 41
    .line 42
    invoke-interface {p0, v2, v3, p1, p2}, Lcom/mycompany/app/dialog/DialogTabMain$ListTabListener;->c(ZLjava/util/List;IZ)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public static w(Lcom/mycompany/app/dialog/DialogTabMain;Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->G:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_3

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogTabMain;->G()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    goto :goto_3

    .line 13
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogTabMain;->B()V

    .line 14
    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->L:Z

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/mycompany/app/dialog/DialogTabMain;->x(Z)Lcom/mycompany/app/web/WebTabAdapter;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    goto :goto_3

    .line 25
    :cond_2
    const/4 v1, 0x0

    .line 26
    const/4 v2, 0x1

    .line 27
    if-eqz p1, :cond_3

    .line 28
    .line 29
    move v3, v2

    .line 30
    goto :goto_0

    .line 31
    :cond_3
    move v3, v1

    .line 32
    :goto_0
    iput-boolean v3, p0, Lcom/mycompany/app/dialog/DialogTabMain;->K0:Z

    .line 33
    .line 34
    if-eqz p1, :cond_4

    .line 35
    .line 36
    move v3, v2

    .line 37
    goto :goto_1

    .line 38
    :cond_4
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebTabAdapter;->u:Z

    .line 39
    .line 40
    if-eqz v3, :cond_5

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebTabAdapter;->E()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    goto :goto_1

    .line 47
    :cond_5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebTabAdapter;->J()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    :goto_1
    if-nez v3, :cond_6

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_6
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebTabAdapter;->J()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-ne v3, v4, :cond_7

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_7
    move v2, v1

    .line 62
    :goto_2
    iput-boolean v2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->L0:Z

    .line 63
    .line 64
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->M0:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 65
    .line 66
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->N0:Lcom/mycompany/app/web/WebTabAdapter;

    .line 67
    .line 68
    iput v3, p0, Lcom/mycompany/app/dialog/DialogTabMain;->O0:I

    .line 69
    .line 70
    if-nez p1, :cond_8

    .line 71
    .line 72
    new-instance p1, Lcom/mycompany/app/dialog/DialogTabMain$29;

    .line 73
    .line 74
    invoke-direct {p1, p0}, Lcom/mycompany/app/dialog/DialogTabMain$29;-><init>(Lcom/mycompany/app/dialog/DialogTabMain;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v1, p1}, Lcom/mycompany/app/dialog/DialogTabMain;->I(ZLcom/mycompany/app/dialog/DialogTabMain$ReleaseBackListener;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_8
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->G:Lcom/mycompany/app/web/WebViewActivity;

    .line 82
    .line 83
    if-nez p1, :cond_9

    .line 84
    .line 85
    :goto_3
    return-void

    .line 86
    :cond_9
    new-instance v0, Lcom/mycompany/app/dialog/DialogDeleteItem;

    .line 87
    .line 88
    new-instance v1, Lcom/mycompany/app/dialog/DialogTabMain$30;

    .line 89
    .line 90
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogTabMain$30;-><init>(Lcom/mycompany/app/dialog/DialogTabMain;)V

    .line 91
    .line 92
    .line 93
    invoke-direct {v0, p1, v1}, Lcom/mycompany/app/dialog/DialogDeleteItem;-><init>(Landroid/app/Activity;Lcom/mycompany/app/dialog/DialogDeleteItem$DelItemListener;)V

    .line 94
    .line 95
    .line 96
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->o0:Lcom/mycompany/app/dialog/DialogDeleteItem;

    .line 97
    .line 98
    new-instance p1, Lcom/mycompany/app/dialog/DialogTabMain$31;

    .line 99
    .line 100
    invoke-direct {p1, p0}, Lcom/mycompany/app/dialog/DialogTabMain$31;-><init>(Lcom/mycompany/app/dialog/DialogTabMain;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->p0:Lcom/mycompany/app/dialog/DialogDeleteItem;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogDeleteItem;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->p0:Lcom/mycompany/app/dialog/DialogDeleteItem;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final B()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->o0:Lcom/mycompany/app/dialog/DialogDeleteItem;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogDeleteItem;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->o0:Lcom/mycompany/app/dialog/DialogDeleteItem;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final C()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->q0:Lcom/mycompany/app/dialog/DialogTabEdit;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogTabEdit;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->q0:Lcom/mycompany/app/dialog/DialogTabEdit;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final D()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->s0:Lcom/mycompany/app/quick/TabSubView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/quick/TabSubView;->j()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->O:Lcom/mycompany/app/view/MyMainRelative;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->s0:Lcom/mycompany/app/quick/TabSubView;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->s0:Lcom/mycompany/app/quick/TabSubView;

    .line 19
    .line 20
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->v0:Z

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->v0:Z

    .line 26
    .line 27
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->L:Z

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/mycompany/app/dialog/DialogTabMain;->x(Z)Lcom/mycompany/app/web/WebTabAdapter;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 36
    .line 37
    .line 38
    :cond_2
    return-void
.end method

.method public final E()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->k0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->j0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 6
    .line 7
    iput-object v1, p0, Lcom/mycompany/app/view/MyDialogNormal;->u:Lcom/mycompany/app/view/MyPopupWrap;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->k0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final F()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->d1:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->e1:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->f1:Z

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->g1:Z

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->h1:Z

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->i1:Z

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->j1:Z

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->k1:Z

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    return v0

    .line 36
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 37
    return v0
.end method

.method public final G()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->n0:Lcom/mycompany/app/dialog/DialogSetTabRestore;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->o0:Lcom/mycompany/app/dialog/DialogDeleteItem;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    return v1

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->p0:Lcom/mycompany/app/dialog/DialogDeleteItem;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    return v1

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->q0:Lcom/mycompany/app/dialog/DialogTabEdit;

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    return v1

    .line 22
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->r0:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 23
    .line 24
    if-eqz v0, :cond_4

    .line 25
    .line 26
    return v1

    .line 27
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->s0:Lcom/mycompany/app/quick/TabSubView;

    .line 28
    .line 29
    if-eqz v0, :cond_5

    .line 30
    .line 31
    return v1

    .line 32
    :cond_5
    const/4 v0, 0x0

    .line 33
    return v0
.end method

.method public final H()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogTabMain;->D()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogTabMain;->K()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v1, v0}, Lcom/mycompany/app/dialog/DialogTabMain;->I(ZLcom/mycompany/app/dialog/DialogTabMain$ReleaseBackListener;)V

    .line 10
    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->E0:Z

    .line 13
    .line 14
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 15
    .line 16
    if-eq v0, v2, :cond_8

    .line 17
    .line 18
    iput-boolean v2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->E0:Z

    .line 19
    .line 20
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->O:Lcom/mycompany/app/view/MyMainRelative;

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto/16 :goto_4

    .line 25
    .line 26
    :cond_0
    const v3, -0x50506

    .line 27
    .line 28
    .line 29
    const/high16 v4, -0x1000000

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v0, v2, v4}, Lcom/mycompany/app/view/MyMainRelative;->b(Landroid/view/Window;I)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->Q:Lcom/mycompany/app/view/MyButtonImage;

    .line 41
    .line 42
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_dark_24:I

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->S:Landroidx/appcompat/widget/AppCompatTextView;

    .line 48
    .line 49
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->R:Lcom/mycompany/app/view/MyButtonImage;

    .line 53
    .line 54
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_more_vert_dark_20:I

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->T:Lcom/mycompany/app/view/MyButtonCheck;

    .line 60
    .line 61
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_dark_24:I

    .line 62
    .line 63
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_dark_24:I

    .line 64
    .line 65
    invoke-virtual {v0, v2, v4}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->W:Landroid/widget/ImageView;

    .line 69
    .line 70
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_mood_dark_20:I

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->Y:Landroid/widget/ImageView;

    .line 76
    .line 77
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_secret_mode_dark_20:I

    .line 78
    .line 79
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->Z:Lcom/google/android/material/tabs/TabLayout;

    .line 83
    .line 84
    const v2, -0x4f4f50

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 91
    .line 92
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 93
    .line 94
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 98
    .line 99
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 100
    .line 101
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->V:Lcom/mycompany/app/view/MyButtonRelative;

    .line 105
    .line 106
    const v2, -0xc0c0c1

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonRelative;->setBgPreColor(I)V

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->X:Lcom/mycompany/app/view/MyButtonRelative;

    .line 113
    .line 114
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonRelative;->setBgPreColor(I)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->Q:Lcom/mycompany/app/view/MyButtonImage;

    .line 118
    .line 119
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->T:Lcom/mycompany/app/view/MyButtonCheck;

    .line 123
    .line 124
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->R:Lcom/mycompany/app/view/MyButtonImage;

    .line 128
    .line 129
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    const v5, -0x70708

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v2, v5}, Lcom/mycompany/app/view/MyMainRelative;->b(Landroid/view/Window;I)V

    .line 141
    .line 142
    .line 143
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->Q:Lcom/mycompany/app/view/MyButtonImage;

    .line 144
    .line 145
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_black_24:I

    .line 146
    .line 147
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->S:Landroidx/appcompat/widget/AppCompatTextView;

    .line 151
    .line 152
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->R:Lcom/mycompany/app/view/MyButtonImage;

    .line 156
    .line 157
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_more_vert_black_20:I

    .line 158
    .line 159
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 160
    .line 161
    .line 162
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->T:Lcom/mycompany/app/view/MyButtonCheck;

    .line 163
    .line 164
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_black_24:I

    .line 165
    .line 166
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_black_24:I

    .line 167
    .line 168
    invoke-virtual {v0, v2, v4}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 169
    .line 170
    .line 171
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->W:Landroid/widget/ImageView;

    .line 172
    .line 173
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_mood_black_20:I

    .line 174
    .line 175
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 176
    .line 177
    .line 178
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->Y:Landroid/widget/ImageView;

    .line 179
    .line 180
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_secret_mode_black_20:I

    .line 181
    .line 182
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 183
    .line 184
    .line 185
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->Z:Lcom/google/android/material/tabs/TabLayout;

    .line 186
    .line 187
    const v2, -0x595616

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 191
    .line 192
    .line 193
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 194
    .line 195
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_gray:I

    .line 196
    .line 197
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 198
    .line 199
    .line 200
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 201
    .line 202
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_gray:I

    .line 203
    .line 204
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 205
    .line 206
    .line 207
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->V:Lcom/mycompany/app/view/MyButtonRelative;

    .line 208
    .line 209
    const/high16 v2, 0x21000000

    .line 210
    .line 211
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonRelative;->setBgPreColor(I)V

    .line 212
    .line 213
    .line 214
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->X:Lcom/mycompany/app/view/MyButtonRelative;

    .line 215
    .line 216
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonRelative;->setBgPreColor(I)V

    .line 217
    .line 218
    .line 219
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->Q:Lcom/mycompany/app/view/MyButtonImage;

    .line 220
    .line 221
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 222
    .line 223
    .line 224
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->T:Lcom/mycompany/app/view/MyButtonCheck;

    .line 225
    .line 226
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 227
    .line 228
    .line 229
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->R:Lcom/mycompany/app/view/MyButtonImage;

    .line 230
    .line 231
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 232
    .line 233
    .line 234
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogTabMain;->M()V

    .line 235
    .line 236
    .line 237
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 238
    .line 239
    if-eqz v0, :cond_5

    .line 240
    .line 241
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    if-eqz v0, :cond_3

    .line 246
    .line 247
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 248
    .line 249
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 250
    .line 251
    if-eqz v2, :cond_2

    .line 252
    .line 253
    goto :goto_1

    .line 254
    :cond_2
    const v3, -0xe19938

    .line 255
    .line 256
    .line 257
    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 258
    .line 259
    .line 260
    goto :goto_3

    .line 261
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 262
    .line 263
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 264
    .line 265
    if-eqz v2, :cond_4

    .line 266
    .line 267
    const v2, -0x7f7f80

    .line 268
    .line 269
    .line 270
    goto :goto_2

    .line 271
    :cond_4
    const v2, -0x252526

    .line 272
    .line 273
    .line 274
    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 275
    .line 276
    .line 277
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->c0:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

    .line 278
    .line 279
    if-eqz v0, :cond_6

    .line 280
    .line 281
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->e()V

    .line 282
    .line 283
    .line 284
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->c0:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

    .line 285
    .line 286
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->o:Lcom/mycompany/app/web/WebTabAdapter;

    .line 287
    .line 288
    if-eqz v0, :cond_6

    .line 289
    .line 290
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 291
    .line 292
    .line 293
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->d0:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

    .line 294
    .line 295
    if-eqz v0, :cond_7

    .line 296
    .line 297
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->e()V

    .line 298
    .line 299
    .line 300
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->d0:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

    .line 301
    .line 302
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->o:Lcom/mycompany/app/web/WebTabAdapter;

    .line 303
    .line 304
    if-eqz v0, :cond_7

    .line 305
    .line 306
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 307
    .line 308
    .line 309
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->F0:Lcom/mycompany/app/dialog/DialogTabFind;

    .line 310
    .line 311
    if-eqz v0, :cond_8

    .line 312
    .line 313
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogTabFind;->a()V

    .line 314
    .line 315
    .line 316
    :cond_8
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->J0:Z

    .line 317
    .line 318
    if-eqz v0, :cond_9

    .line 319
    .line 320
    iput-boolean v1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->J0:Z

    .line 321
    .line 322
    return-void

    .line 323
    :cond_9
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogNormal;->f()V

    .line 324
    .line 325
    .line 326
    return-void
.end method

.method public final I(ZLcom/mycompany/app/dialog/DialogTabMain$ReleaseBackListener;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->i1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->i1:Z

    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->H0:Z

    .line 10
    .line 11
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->I0:Lcom/mycompany/app/dialog/DialogTabMain$ReleaseBackListener;

    .line 12
    .line 13
    new-instance p1, Lcom/mycompany/app/dialog/DialogTabMain$20;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/mycompany/app/dialog/DialogTabMain$20;-><init>(Lcom/mycompany/app/dialog/DialogTabMain;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyDialogNormal;->m(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final J()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->F0:Lcom/mycompany/app/dialog/DialogTabFind;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogTabFind;->b()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->F0:Lcom/mycompany/app/dialog/DialogTabFind;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final K()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->O:Lcom/mycompany/app/view/MyMainRelative;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->I:Lcom/mycompany/app/dialog/DialogTabMain$ListTabListener;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->I:Lcom/mycompany/app/dialog/DialogTabMain$ListTabListener;

    .line 17
    .line 18
    invoke-interface {v0}, Lcom/mycompany/app/dialog/DialogTabMain$ListTabListener;->b()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_1
    sget v1, Lcom/mycompany/app/main/MainApp;->q1:I

    .line 26
    .line 27
    const/4 v2, 0x2

    .line 28
    mul-int/2addr v1, v2

    .line 29
    sub-int/2addr v0, v1

    .line 30
    sget v1, Lcom/mycompany/app/pref/PrefZone;->C:I

    .line 31
    .line 32
    const v3, 0x3fa66666    # 1.3f

    .line 33
    .line 34
    .line 35
    if-nez v1, :cond_4

    .line 36
    .line 37
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->G:Lcom/mycompany/app/web/WebViewActivity;

    .line 38
    .line 39
    if-nez v1, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainActivity;->b0()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    const/4 v4, -0x1

    .line 47
    if-eq v1, v4, :cond_3

    .line 48
    .line 49
    const/4 v1, 0x3

    .line 50
    div-int/2addr v0, v1

    .line 51
    iput v1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->h0:I

    .line 52
    .line 53
    int-to-float v0, v0

    .line 54
    const v1, 0x3f19999a    # 0.6f

    .line 55
    .line 56
    .line 57
    mul-float/2addr v0, v1

    .line 58
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iput v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->i0:I

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    :goto_0
    div-int/2addr v0, v2

    .line 66
    iput v2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->h0:I

    .line 67
    .line 68
    int-to-float v0, v0

    .line 69
    mul-float/2addr v0, v3

    .line 70
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    iput v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->i0:I

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    const/4 v1, 0x1

    .line 78
    iput v1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->h0:I

    .line 79
    .line 80
    int-to-float v0, v0

    .line 81
    mul-float/2addr v0, v3

    .line 82
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    iput v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->i0:I

    .line 87
    .line 88
    :goto_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->d0:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

    .line 89
    .line 90
    if-eqz v0, :cond_5

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->f()V

    .line 93
    .line 94
    .line 95
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->c0:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

    .line 96
    .line 97
    if-eqz v0, :cond_6

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->f()V

    .line 100
    .line 101
    .line 102
    :cond_6
    :goto_2
    return-void
.end method

.method public final L(ZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->W:Landroid/widget/ImageView;

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
    iget-boolean p2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->L:Z

    .line 9
    .line 10
    if-ne p2, p1, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->L:Z

    .line 14
    .line 15
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    if-eqz p2, :cond_5

    .line 19
    .line 20
    if-eqz p1, :cond_3

    .line 21
    .line 22
    iget-boolean p1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->M:Z

    .line 23
    .line 24
    if-eqz p1, :cond_3

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 31
    .line 32
    sget-boolean p2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 33
    .line 34
    if-eqz p2, :cond_2

    .line 35
    .line 36
    const p2, -0x7f7f80

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    const p2, -0x252526

    .line 41
    .line 42
    .line 43
    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44
    .line 45
    .line 46
    goto :goto_3

    .line 47
    :cond_3
    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 51
    .line 52
    sget-boolean p2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 53
    .line 54
    if-eqz p2, :cond_4

    .line 55
    .line 56
    const p2, -0x50506

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_4
    const p2, -0xe19938

    .line 61
    .line 62
    .line 63
    :goto_2
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    .line 65
    .line 66
    :cond_5
    :goto_3
    iget-boolean p1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->L:Z

    .line 67
    .line 68
    const/high16 p2, 0x3f800000    # 1.0f

    .line 69
    .line 70
    const v1, 0x3ecccccd    # 0.4f

    .line 71
    .line 72
    .line 73
    if-eqz p1, :cond_6

    .line 74
    .line 75
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->W:Landroid/widget/ImageView;

    .line 76
    .line 77
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->Y:Landroid/widget/ImageView;

    .line 81
    .line 82
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 86
    .line 87
    if-eqz p1, :cond_7

    .line 88
    .line 89
    sget p2, Lnet/kaki87/soul2/testing/R$string;->secret_tab:I

    .line 90
    .line 91
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 92
    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_6
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->W:Landroid/widget/ImageView;

    .line 96
    .line 97
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->Y:Landroid/widget/ImageView;

    .line 101
    .line 102
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 106
    .line 107
    if-eqz p1, :cond_7

    .line 108
    .line 109
    sget p2, Lnet/kaki87/soul2/testing/R$string;->new_url:I

    .line 110
    .line 111
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 112
    .line 113
    .line 114
    :cond_7
    :goto_4
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogTabMain;->M()V

    .line 115
    .line 116
    .line 117
    const/4 p1, 0x0

    .line 118
    invoke-virtual {p0, v0, p1}, Lcom/mycompany/app/dialog/DialogTabMain;->I(ZLcom/mycompany/app/dialog/DialogTabMain$ReleaseBackListener;)V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method public final M()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_2

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->c0:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->o:Lcom/mycompany/app/web/WebTabAdapter;

    .line 15
    .line 16
    if-eqz v3, :cond_3

    .line 17
    .line 18
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->i:Landroid/widget/ImageView;

    .line 19
    .line 20
    if-nez v4, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {v3}, Lcom/mycompany/app/web/WebTabAdapter;->J()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-lez v3, :cond_2

    .line 28
    .line 29
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->i:Landroid/widget/ImageView;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->i:Landroid/widget/ImageView;

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->d0:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

    .line 41
    .line 42
    if-eqz v0, :cond_6

    .line 43
    .line 44
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->o:Lcom/mycompany/app/web/WebTabAdapter;

    .line 45
    .line 46
    if-eqz v3, :cond_6

    .line 47
    .line 48
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->i:Landroid/widget/ImageView;

    .line 49
    .line 50
    if-nez v4, :cond_4

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_4
    invoke-virtual {v3}, Lcom/mycompany/app/web/WebTabAdapter;->J()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-lez v3, :cond_5

    .line 58
    .line 59
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->i:Landroid/widget/ImageView;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_5
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->i:Landroid/widget/ImageView;

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->e0:Lcom/mycompany/app/view/MyScrollBar;

    .line 71
    .line 72
    const/4 v1, 0x1

    .line 73
    if-eqz v0, :cond_7

    .line 74
    .line 75
    iput-boolean v1, v0, Lcom/mycompany/app/view/MyScrollBar;->a0:Z

    .line 76
    .line 77
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyFadeView;->d(Z)V

    .line 78
    .line 79
    .line 80
    :cond_7
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->L:Z

    .line 81
    .line 82
    const v3, -0x252526

    .line 83
    .line 84
    .line 85
    const v4, -0x7f7f80

    .line 86
    .line 87
    .line 88
    if-eqz v0, :cond_9

    .line 89
    .line 90
    iget-boolean v5, p0, Lcom/mycompany/app/dialog/DialogTabMain;->M:Z

    .line 91
    .line 92
    if-eqz v5, :cond_9

    .line 93
    .line 94
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 95
    .line 96
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 100
    .line 101
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 102
    .line 103
    if-eqz v1, :cond_8

    .line 104
    .line 105
    move v3, v4

    .line 106
    :cond_8
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_9
    invoke-virtual {p0, v0}, Lcom/mycompany/app/dialog/DialogTabMain;->x(Z)Lcom/mycompany/app/web/WebTabAdapter;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    if-nez v0, :cond_a

    .line 115
    .line 116
    :goto_2
    return-void

    .line 117
    :cond_a
    iget-boolean v5, v0, Lcom/mycompany/app/web/WebTabAdapter;->u:Z

    .line 118
    .line 119
    const v6, -0xe19938

    .line 120
    .line 121
    .line 122
    const v7, -0x50506

    .line 123
    .line 124
    .line 125
    if-eqz v5, :cond_e

    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebTabAdapter;->E()I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-lez v0, :cond_c

    .line 132
    .line 133
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 139
    .line 140
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 141
    .line 142
    if-eqz v1, :cond_b

    .line 143
    .line 144
    move v6, v7

    .line 145
    :cond_b
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->f0:Lcom/mycompany/app/view/MyLineText;

    if-eqz v0, :cond_b_done

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->f0:Lcom/mycompany/app/view/MyLineText;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_b_done
    return-void

    .line 149
    :cond_c
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 150
    .line 151
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 152
    .line 153
    .line 154
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 155
    .line 156
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 157
    .line 158
    if-eqz v1, :cond_d

    .line 159
    .line 160
    move v3, v4

    .line 161
    :cond_d
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->f0:Lcom/mycompany/app/view/MyLineText;

    if-eqz v0, :cond_d_done

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->f0:Lcom/mycompany/app/view/MyLineText;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_d_done
    return-void

    .line 165
    :cond_e
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebTabAdapter;->J()I

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-lez v0, :cond_10

    .line 170
    .line 171
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 174
    .line 175
    .line 176
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 177
    .line 178
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 179
    .line 180
    if-eqz v1, :cond_f

    .line 181
    .line 182
    move v6, v7

    .line 183
    :cond_f
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 184
    .line 185
    .line 186
    return-void

    .line 187
    :cond_10
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 188
    .line 189
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 190
    .line 191
    .line 192
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 193
    .line 194
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 195
    .line 196
    if-eqz v1, :cond_11

    .line 197
    .line 198
    move v3, v4

    .line 199
    :cond_11
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 200
    .line 201
    .line 202
    return-void
.end method

.method public final N(IZZ)V
    .locals 4

    .line 1
    invoke-virtual {p0, p3}, Lcom/mycompany/app/dialog/DialogTabMain;->x(Z)Lcom/mycompany/app/web/WebTabAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_0

    .line 8
    .line 9
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebTabAdapter;->u:Z

    .line 10
    .line 11
    if-ne p2, v1, :cond_1

    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :cond_1
    invoke-virtual {p0, p3}, Lcom/mycompany/app/dialog/DialogTabMain;->y(Z)Lcom/mycompany/app/quick/TabDragHelper;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    if-eqz p3, :cond_2

    .line 20
    .line 21
    xor-int/lit8 v1, p2, 0x1

    .line 22
    .line 23
    iput-boolean v1, p3, Lcom/mycompany/app/quick/TabDragHelper;->h:Z

    .line 24
    .line 25
    :cond_2
    invoke-virtual {v0, p1, p2}, Lcom/mycompany/app/web/WebTabAdapter;->Y(IZ)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->a0:Landroidx/viewpager2/widget/ViewPager2;

    .line 29
    .line 30
    if-eqz p1, :cond_3

    .line 31
    .line 32
    xor-int/lit8 p3, p2, 0x1

    .line 33
    .line 34
    invoke-virtual {p1, p3}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    .line 35
    .line 36
    .line 37
    :cond_3
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogTabMain;->M()V

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x1

    .line 41
    const/4 p3, 0x0

    .line 42
    if-eqz p2, :cond_a

    .line 43
    .line 44
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 45
    .line 46
    const/16 v1, 0x8

    .line 47
    .line 48
    sget v2, Lnet/kaki87/soul2/testing/R$string;->copy_url:I

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(I)V

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 52
    .line 53
    sget v2, Lnet/kaki87/soul2/testing/R$string;->delete:I

    .line 54
    .line 55
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(I)V

    .line 56
    .line 57
    .line 58
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->S:Landroidx/appcompat/widget/AppCompatTextView;

    .line 59
    .line 60
    if-eqz p2, :cond_4

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebTabAdapter;->E()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebTabAdapter;->J()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->h3(II)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    :cond_4
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->T:Lcom/mycompany/app/view/MyButtonCheck;

    .line 78
    .line 79
    if-eqz p2, :cond_5

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebTabAdapter;->N()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    invoke-virtual {p2, v0, p1}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 86
    .line 87
    .line 88
    :cond_5
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->U:Landroid/widget/LinearLayout;

    .line 89
    .line 90
    if-eqz p2, :cond_6

    .line 91
    .line 92
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->H:Landroid/content/Context;

    .line 93
    .line 94
    sget v2, Lnet/kaki87/soul2/testing/R$anim;->ic_scale_out:I

    .line 95
    .line 96
    invoke-static {v0, p2, v2, p1}, Lcom/mycompany/app/main/MainUtil;->h8(Landroid/content/Context;Landroid/view/View;IZ)V

    .line 97
    .line 98
    .line 99
    :cond_6
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->R:Lcom/mycompany/app/view/MyButtonImage;

    .line 100
    .line 101
    if-eqz p2, :cond_7

    .line 102
    .line 103
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->H:Landroid/content/Context;

    .line 104
    .line 105
    sget v2, Lnet/kaki87/soul2/testing/R$anim;->ic_rotate_out:I

    .line 106
    .line 107
    invoke-static {v0, p2, v2, p1}, Lcom/mycompany/app/main/MainUtil;->h8(Landroid/content/Context;Landroid/view/View;IZ)V

    .line 108
    .line 109
    .line 110
    :cond_7
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->S:Landroidx/appcompat/widget/AppCompatTextView;

    .line 111
    .line 112
    if-eqz p1, :cond_8

    .line 113
    .line 114
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->H:Landroid/content/Context;

    .line 115
    .line 116
    sget v0, Lnet/kaki87/soul2/testing/R$anim;->ic_scale_in:I

    .line 117
    .line 118
    invoke-static {p2, p1, v0, p3}, Lcom/mycompany/app/main/MainUtil;->h8(Landroid/content/Context;Landroid/view/View;IZ)V

    .line 119
    .line 120
    .line 121
    :cond_8
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->T:Lcom/mycompany/app/view/MyButtonCheck;

    .line 122
    .line 123
    if-eqz p1, :cond_9

    .line 124
    .line 125
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->H:Landroid/content/Context;

    .line 126
    .line 127
    sget v0, Lnet/kaki87/soul2/testing/R$anim;->ic_rotate_in:I

    .line 128
    .line 129
    invoke-static {p2, p1, v0, p3}, Lcom/mycompany/app/main/MainUtil;->h8(Landroid/content/Context;Landroid/view/View;IZ)V

    .line 130
    .line 131
    .line 132
    :cond_9
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->Z:Lcom/google/android/material/tabs/TabLayout;

    .line 133
    .line 134
    if-eqz p1, :cond_f

    .line 135
    .line 136
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :cond_a
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 141
    .line 142
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->L:Z

    if-eqz v0, :cond_a_new

    sget v0, Lnet/kaki87/soul2/testing/R$string;->secret_tab:I

    goto :cond_a_text

    :cond_a_new
    sget v0, Lnet/kaki87/soul2/testing/R$string;->new_url:I

    :cond_a_text
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    if-eqz v0, :cond_a_light

    const v0, -0x50506

    goto :cond_a_color

    :cond_a_light
    const v0, -0xe19938

    :cond_a_color
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    .line 144
    .line 145
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 146
    .line 147
    sget v0, Lnet/kaki87/soul2/testing/R$string;->delete_all:I

    .line 148
    .line 149
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 150
    .line 151
    .line 152
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->U:Landroid/widget/LinearLayout;

    .line 153
    .line 154
    if-eqz p2, :cond_b

    .line 155
    .line 156
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->H:Landroid/content/Context;

    .line 157
    .line 158
    sget v1, Lnet/kaki87/soul2/testing/R$anim;->ic_scale_in:I

    .line 159
    .line 160
    invoke-static {v0, p2, v1, p3}, Lcom/mycompany/app/main/MainUtil;->h8(Landroid/content/Context;Landroid/view/View;IZ)V

    .line 161
    .line 162
    .line 163
    :cond_b
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->R:Lcom/mycompany/app/view/MyButtonImage;

    .line 164
    .line 165
    if-eqz p2, :cond_c

    .line 166
    .line 167
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->H:Landroid/content/Context;

    .line 168
    .line 169
    sget v1, Lnet/kaki87/soul2/testing/R$anim;->ic_rotate_in:I

    .line 170
    .line 171
    invoke-static {v0, p2, v1, p3}, Lcom/mycompany/app/main/MainUtil;->h8(Landroid/content/Context;Landroid/view/View;IZ)V

    .line 172
    .line 173
    .line 174
    :cond_c
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->S:Landroidx/appcompat/widget/AppCompatTextView;

    .line 175
    .line 176
    if-eqz p2, :cond_d

    .line 177
    .line 178
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->H:Landroid/content/Context;

    .line 179
    .line 180
    sget v1, Lnet/kaki87/soul2/testing/R$anim;->ic_scale_out:I

    .line 181
    .line 182
    invoke-static {v0, p2, v1, p1}, Lcom/mycompany/app/main/MainUtil;->h8(Landroid/content/Context;Landroid/view/View;IZ)V

    .line 183
    .line 184
    .line 185
    :cond_d
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->T:Lcom/mycompany/app/view/MyButtonCheck;

    .line 186
    .line 187
    if-eqz p2, :cond_e

    .line 188
    .line 189
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->H:Landroid/content/Context;

    .line 190
    .line 191
    sget v1, Lnet/kaki87/soul2/testing/R$anim;->ic_rotate_out:I

    .line 192
    .line 193
    invoke-static {v0, p2, v1, p1}, Lcom/mycompany/app/main/MainUtil;->h8(Landroid/content/Context;Landroid/view/View;IZ)V

    .line 194
    .line 195
    .line 196
    :cond_e
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->Z:Lcom/google/android/material/tabs/TabLayout;

    .line 197
    .line 198
    if-eqz p1, :cond_f

    .line 199
    .line 200
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 201
    .line 202
    .line 203
    :cond_f
    :goto_0
    return-void
.end method

.method public final O()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->L:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->u0:Z

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iput-boolean v1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->t0:Z

    .line 10
    .line 11
    return-void
.end method

.method public final P()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->N:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    new-instance v1, Lcom/mycompany/app/dialog/DialogTabMain$18;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogTabMain$18;-><init>(Lcom/mycompany/app/dialog/DialogTabMain;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final dismiss()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->H:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->G0:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    :goto_0
    return-void

    .line 14
    :cond_1
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->G0:Z

    .line 16
    .line 17
    new-instance v0, Lcom/mycompany/app/dialog/DialogTabMain$14;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogTabMain$14;-><init>(Lcom/mycompany/app/dialog/DialogTabMain;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyDialogNormal;->m(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogTabMain;->F()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, -0x1

    .line 8
    const-wide/16 v4, 0x0

    .line 9
    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x1

    .line 12
    if-eqz v0, :cond_6

    .line 13
    .line 14
    if-eqz p1, :cond_5

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    iget-wide v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->c1:J

    .line 23
    .line 24
    cmp-long p1, v0, v4

    .line 25
    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    iput-wide v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->c1:J

    .line 33
    .line 34
    :cond_0
    iput-boolean v6, p0, Lcom/mycompany/app/dialog/DialogTabMain;->w0:Z

    .line 35
    .line 36
    iput v3, p0, Lcom/mycompany/app/dialog/DialogTabMain;->x0:I

    .line 37
    .line 38
    iput v2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->A0:F

    .line 39
    .line 40
    return v7

    .line 41
    :cond_1
    if-eq p1, v7, :cond_2

    .line 42
    .line 43
    if-ne p1, v1, :cond_5

    .line 44
    .line 45
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    iget-wide v2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->c1:J

    .line 50
    .line 51
    sub-long/2addr v0, v2

    .line 52
    const-wide/16 v2, 0x1f4

    .line 53
    .line 54
    cmp-long p1, v0, v2

    .line 55
    .line 56
    if-lez p1, :cond_3

    .line 57
    .line 58
    iput-wide v4, p0, Lcom/mycompany/app/dialog/DialogTabMain;->c1:J

    .line 59
    .line 60
    iput-boolean v6, p0, Lcom/mycompany/app/dialog/DialogTabMain;->d1:Z

    .line 61
    .line 62
    iput-boolean v6, p0, Lcom/mycompany/app/dialog/DialogTabMain;->e1:Z

    .line 63
    .line 64
    iput-boolean v6, p0, Lcom/mycompany/app/dialog/DialogTabMain;->f1:Z

    .line 65
    .line 66
    iput-boolean v6, p0, Lcom/mycompany/app/dialog/DialogTabMain;->g1:Z

    .line 67
    .line 68
    iput-boolean v6, p0, Lcom/mycompany/app/dialog/DialogTabMain;->h1:Z

    .line 69
    .line 70
    iput-boolean v6, p0, Lcom/mycompany/app/dialog/DialogTabMain;->i1:Z

    .line 71
    .line 72
    iput-boolean v6, p0, Lcom/mycompany/app/dialog/DialogTabMain;->j1:Z

    .line 73
    .line 74
    iput-boolean v6, p0, Lcom/mycompany/app/dialog/DialogTabMain;->k1:Z

    .line 75
    .line 76
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->a0:Landroidx/viewpager2/widget/ViewPager2;

    .line 77
    .line 78
    if-eqz p1, :cond_4

    .line 79
    .line 80
    invoke-virtual {p1, v7}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    .line 81
    .line 82
    .line 83
    :cond_4
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->e0:Lcom/mycompany/app/view/MyScrollBar;

    .line 84
    .line 85
    if-eqz p1, :cond_5

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyFadeView;->e()V

    .line 88
    .line 89
    .line 90
    :cond_5
    return v7

    .line 91
    :cond_6
    iput-wide v4, p0, Lcom/mycompany/app/dialog/DialogTabMain;->c1:J

    .line 92
    .line 93
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->B0:Landroid/view/GestureDetector;

    .line 94
    .line 95
    if-eqz v0, :cond_7

    .line 96
    .line 97
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 98
    .line 99
    .line 100
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_d

    .line 105
    .line 106
    if-eq v0, v7, :cond_9

    .line 107
    .line 108
    const/4 v2, 0x2

    .line 109
    if-eq v0, v2, :cond_8

    .line 110
    .line 111
    if-eq v0, v1, :cond_9

    .line 112
    .line 113
    goto/16 :goto_0

    .line 114
    .line 115
    :cond_8
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->w0:Z

    .line 116
    .line 117
    if-eqz v0, :cond_11

    .line 118
    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    iget v1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->z0:F

    .line 124
    .line 125
    sub-float/2addr v0, v1

    .line 126
    iput v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->A0:F

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->a0:Landroidx/viewpager2/widget/ViewPager2;

    .line 130
    .line 131
    if-eqz v0, :cond_a

    .line 132
    .line 133
    invoke-virtual {v0, v7}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    .line 134
    .line 135
    .line 136
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->e0:Lcom/mycompany/app/view/MyScrollBar;

    .line 137
    .line 138
    if-eqz v0, :cond_b

    .line 139
    .line 140
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyFadeView;->e()V

    .line 141
    .line 142
    .line 143
    :cond_b
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZone;->E:Z

    .line 144
    .line 145
    if-nez v0, :cond_c

    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_c
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->L:Z

    .line 149
    .line 150
    invoke-virtual {p0, v0}, Lcom/mycompany/app/dialog/DialogTabMain;->x(Z)Lcom/mycompany/app/web/WebTabAdapter;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    if-eqz v0, :cond_11

    .line 155
    .line 156
    iget-boolean v0, v0, Lcom/mycompany/app/web/WebTabAdapter;->u:Z

    .line 157
    .line 158
    if-nez v0, :cond_11

    .line 159
    .line 160
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->L:Z

    .line 161
    .line 162
    invoke-virtual {p0, v0}, Lcom/mycompany/app/dialog/DialogTabMain;->y(Z)Lcom/mycompany/app/quick/TabDragHelper;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    if-eqz v0, :cond_11

    .line 167
    .line 168
    iput-boolean v7, v0, Lcom/mycompany/app/quick/TabDragHelper;->h:Z

    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_d
    iput-boolean v6, p0, Lcom/mycompany/app/dialog/DialogTabMain;->w0:Z

    .line 172
    .line 173
    iput v3, p0, Lcom/mycompany/app/dialog/DialogTabMain;->x0:I

    .line 174
    .line 175
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    iput v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->z0:F

    .line 180
    .line 181
    iput v2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->A0:F

    .line 182
    .line 183
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZone;->E:Z

    .line 184
    .line 185
    if-nez v1, :cond_e

    .line 186
    .line 187
    goto :goto_0

    .line 188
    :cond_e
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->a0:Landroidx/viewpager2/widget/ViewPager2;

    .line 189
    .line 190
    if-nez v1, :cond_f

    .line 191
    .line 192
    goto :goto_0

    .line 193
    :cond_f
    iget v2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->y0:I

    .line 194
    .line 195
    int-to-float v3, v2

    .line 196
    cmpg-float v3, v0, v3

    .line 197
    .line 198
    if-ltz v3, :cond_10

    .line 199
    .line 200
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    sub-int/2addr v1, v2

    .line 205
    int-to-float v1, v1

    .line 206
    cmpl-float v0, v0, v1

    .line 207
    .line 208
    if-lez v0, :cond_11

    .line 209
    .line 210
    :cond_10
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->L:Z

    .line 211
    .line 212
    invoke-virtual {p0, v0}, Lcom/mycompany/app/dialog/DialogTabMain;->y(Z)Lcom/mycompany/app/quick/TabDragHelper;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    if-eqz v0, :cond_11

    .line 217
    .line 218
    iput-boolean v6, v0, Lcom/mycompany/app/quick/TabDragHelper;->h:Z

    .line 219
    .line 220
    :cond_11
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->F0:Lcom/mycompany/app/dialog/DialogTabFind;

    .line 221
    .line 222
    if-eqz v0, :cond_12

    .line 223
    .line 224
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabFind;->f:Lcom/mycompany/app/main/MainListView;

    .line 225
    .line 226
    if-eqz v0, :cond_12

    .line 227
    .line 228
    invoke-virtual {v0, p1}, Lcom/mycompany/app/main/MainListView;->q(Landroid/view/MotionEvent;)V

    .line 229
    .line 230
    .line 231
    :cond_12
    invoke-super {p0, p1}, Lcom/mycompany/app/dialog/DialogCast;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 232
    .line 233
    .line 234
    move-result p1

    .line 235
    return p1
.end method

.method public final l()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogTabMain;->F()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-wide v4, p0, Lcom/mycompany/app/dialog/DialogTabMain;->c1:J

    .line 11
    .line 12
    cmp-long v0, v4, v2

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    iput-wide v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->c1:J

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    iget-wide v6, p0, Lcom/mycompany/app/dialog/DialogTabMain;->c1:J

    .line 28
    .line 29
    sub-long/2addr v4, v6

    .line 30
    const-wide/16 v6, 0x1f4

    .line 31
    .line 32
    cmp-long v0, v4, v6

    .line 33
    .line 34
    if-lez v0, :cond_1

    .line 35
    .line 36
    iput-wide v2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->c1:J

    .line 37
    .line 38
    iput-boolean v1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->d1:Z

    .line 39
    .line 40
    iput-boolean v1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->e1:Z

    .line 41
    .line 42
    iput-boolean v1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->f1:Z

    .line 43
    .line 44
    iput-boolean v1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->g1:Z

    .line 45
    .line 46
    iput-boolean v1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->h1:Z

    .line 47
    .line 48
    iput-boolean v1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->i1:Z

    .line 49
    .line 50
    iput-boolean v1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->j1:Z

    .line 51
    .line 52
    iput-boolean v1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->k1:Z

    .line 53
    .line 54
    :cond_1
    return-void

    .line 55
    :cond_2
    iput-wide v2, p0, Lcom/mycompany/app/dialog/DialogTabMain;->c1:J

    .line 56
    .line 57
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->s0:Lcom/mycompany/app/quick/TabSubView;

    .line 58
    .line 59
    const/4 v2, -0x1

    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    iget-object v3, v0, Lcom/mycompany/app/quick/TabSubView;->D:Lcom/mycompany/app/web/WebTabAdapter;

    .line 63
    .line 64
    if-eqz v3, :cond_3

    .line 65
    .line 66
    iget-boolean v3, v3, Lcom/mycompany/app/web/WebTabAdapter;->u:Z

    .line 67
    .line 68
    if-eqz v3, :cond_3

    .line 69
    .line 70
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/quick/TabSubView;->m(IZ)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_3
    invoke-virtual {v0}, Lcom/mycompany/app/quick/TabSubView;->g()V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->F0:Lcom/mycompany/app/dialog/DialogTabFind;

    .line 79
    .line 80
    if-eqz v0, :cond_6

    .line 81
    .line 82
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabFind;->f:Lcom/mycompany/app/main/MainListView;

    .line 83
    .line 84
    if-eqz v0, :cond_5

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView;->V()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_5

    .line 91
    .line 92
    return-void

    .line 93
    :cond_5
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogTabMain;->J()V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_6
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->L:Z

    .line 98
    .line 99
    invoke-virtual {p0, v0}, Lcom/mycompany/app/dialog/DialogTabMain;->x(Z)Lcom/mycompany/app/web/WebTabAdapter;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    if-eqz v0, :cond_7

    .line 104
    .line 105
    iget-boolean v0, v0, Lcom/mycompany/app/web/WebTabAdapter;->u:Z

    .line 106
    .line 107
    if-eqz v0, :cond_7

    .line 108
    .line 109
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogTabMain;->L:Z

    .line 110
    .line 111
    invoke-virtual {p0, v2, v1, v0}, Lcom/mycompany/app/dialog/DialogTabMain;->N(IZZ)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_7
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogTabMain;->dismiss()V

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogNormal;->e()Z

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
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogTabMain;->l()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final x(Z)Lcom/mycompany/app/web/WebTabAdapter;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->d0:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->o:Lcom/mycompany/app/web/WebTabAdapter;

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->c0:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

    .line 13
    .line 14
    if-nez p1, :cond_2

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_2
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->o:Lcom/mycompany/app/web/WebTabAdapter;

    .line 18
    .line 19
    return-object p1
.end method

.method public final y(Z)Lcom/mycompany/app/quick/TabDragHelper;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->d0:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->q:Lcom/mycompany/app/quick/TabDragHelper;

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->c0:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

    .line 13
    .line 14
    if-nez p1, :cond_2

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_2
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->q:Lcom/mycompany/app/quick/TabDragHelper;

    .line 18
    .line 19
    return-object p1
.end method

.method public final z(IILandroid/content/Intent;)Z
    .locals 9

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    if-ne p1, v0, :cond_6

    .line 4
    .line 5
    const/4 p1, -0x1

    .line 6
    const/4 v0, 0x1

    .line 7
    if-eq p2, p1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iput-boolean v1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->M:Z

    .line 11
    .line 12
    if-eqz p3, :cond_2

    .line 13
    .line 14
    const-string p1, "EXTRA_LOAD"

    .line 15
    .line 16
    invoke-virtual {p3, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/mycompany/app/dialog/DialogTabMain;->x(Z)Lcom/mycompany/app/web/WebTabAdapter;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/mycompany/app/web/WebTabAdapter;->J()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    sget p1, Lcom/mycompany/app/pref/PrefSync;->m:I

    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    sput v1, Lcom/mycompany/app/pref/PrefSync;->m:I

    .line 39
    .line 40
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->H:Landroid/content/Context;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/mycompany/app/pref/PrefSync;->t(Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    const/4 v7, 0x0

    .line 46
    const/4 v8, 0x0

    .line 47
    const/4 v3, 0x0

    .line 48
    const/4 v4, 0x0

    .line 49
    const-wide/16 v5, 0x0

    .line 50
    .line 51
    invoke-virtual/range {v2 .. v8}, Lcom/mycompany/app/web/WebTabAdapter;->b0(Ljava/util/List;Ljava/util/List;JII)V

    .line 52
    .line 53
    .line 54
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 55
    .line 56
    if-eqz p1, :cond_4

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 62
    .line 63
    sget-boolean p2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 64
    .line 65
    if-eqz p2, :cond_3

    .line 66
    .line 67
    const p2, -0x50506

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    const p2, -0xe19938

    .line 72
    .line 73
    .line 74
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    .line 76
    .line 77
    :cond_4
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogTabMain;->M()V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain;->d0:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

    .line 81
    .line 82
    if-eqz p1, :cond_5

    .line 83
    .line 84
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->m:Lcom/mycompany/app/view/MyRoundLinear;

    .line 85
    .line 86
    if-eqz p1, :cond_5

    .line 87
    .line 88
    const/16 p2, 0x8

    .line 89
    .line 90
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 91
    .line 92
    .line 93
    :cond_5
    :goto_1
    return v0

    .line 94
    :cond_6
    return v1
.end method
