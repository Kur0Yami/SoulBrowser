.class public Lcom/mycompany/app/main/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/main/MainActivity$MainHeightListener;,
        Lcom/mycompany/app/main/MainActivity$MainInsetListener;,
        Lcom/mycompany/app/main/MainActivity$MainViewerListener;,
        Lcom/mycompany/app/main/MainActivity$EventHandler;,
        Lcom/mycompany/app/main/MainActivity$SystemBarListener;
    }
.end annotation


# static fields
.field public static b1:I

.field public static c1:I

.field public static d1:I

.field public static e1:Z


# instance fields
.field public A0:I

.field public B0:Z

.field public C0:Ljava/util/concurrent/ExecutorService;

.field public D0:Lcom/mycompany/app/main/MainActivity$MainHeightListener;

.field public E0:Z

.field public F:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public F0:Landroid/view/View;

.field public G:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public G0:Lcom/mycompany/app/main/MainActivity$MainInsetListener;

.field public H:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public H0:Lcom/mycompany/app/main/MainActivity$MainViewerListener;

.field public I:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public I0:Z

.field public J:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public J0:I

.field public K:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public K0:I

.field public L:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public L0:I

.field public M:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public M0:I

.field public N:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public N0:I

.field public O:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public O0:Landroid/os/Handler;

.field public P:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public P0:Landroid/view/View;

.field public Q:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public Q0:Landroid/view/View;

.field public R:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public R0:Landroid/view/View;

.field public S:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public S0:Lcom/mycompany/app/main/MainActivity$EventHandler;

.field public T:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public T0:Z

.field public U:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public U0:I

.field public V:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public V0:Lcom/mycompany/app/main/MainActivity$SystemBarListener;

.field public W:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public W0:Z

.field public X:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public X0:Landroid/window/OnBackInvokedCallback;

.field public Y:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public Y0:Lcom/mycompany/app/view/MyEditAuto$KeyBackListener;

.field public Z:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public Z0:Lcom/mycompany/app/view/MyPopupWrap;

.field public a0:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public a1:Lcom/mycompany/app/view/MyEditAuto;

.field public b0:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public c0:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public d0:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public e0:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public f0:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public g0:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public h0:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public i0:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public j0:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public k0:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public l0:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public m0:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public n0:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public o0:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public p0:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public q0:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public r0:Landroid/view/View;

.field public s0:Landroidx/core/view/WindowInsetsControllerCompat;

.field public t0:Z

.field public u0:Z

.field public v0:Z

.field public w0:Z

.field public x0:Z

.field public y0:Z

.field public z0:Landroid/graphics/Point;


# direct methods
.method public static X(Lcom/mycompany/app/main/MainActivity;Landroid/view/WindowInsets;)V
    .locals 8

    .line 1
    sget-boolean v0, Lcom/mycompany/app/main/MainConst;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_5

    .line 6
    .line 7
    :cond_0
    if-nez p1, :cond_1

    .line 8
    .line 9
    goto/16 :goto_5

    .line 10
    .line 11
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    goto/16 :goto_5

    .line 22
    .line 23
    :cond_2
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {p1, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-nez v1, :cond_3

    .line 32
    .line 33
    goto/16 :goto_5

    .line 34
    .line 35
    :cond_3
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-virtual {p1, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    if-nez v2, :cond_4

    .line 44
    .line 45
    goto/16 :goto_5

    .line 46
    .line 47
    :cond_4
    iget-boolean v3, p0, Lcom/mycompany/app/main/MainActivity;->t0:Z

    .line 48
    .line 49
    if-eqz v3, :cond_5

    .line 50
    .line 51
    iget-boolean v3, p0, Lcom/mycompany/app/main/MainActivity;->x0:Z

    .line 52
    .line 53
    if-nez v3, :cond_5

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MainActivity;->j0(Landroid/view/WindowInsets;)Z

    .line 56
    .line 57
    .line 58
    :cond_5
    iget p1, v0, Landroid/graphics/Insets;->top:I

    .line 59
    .line 60
    const/4 v3, 0x0

    .line 61
    if-lez p1, :cond_6

    .line 62
    .line 63
    move v0, p1

    .line 64
    move v5, v0

    .line 65
    move p1, v3

    .line 66
    move v4, p1

    .line 67
    move v6, v4

    .line 68
    goto :goto_2

    .line 69
    :cond_6
    iget p1, v0, Landroid/graphics/Insets;->bottom:I

    .line 70
    .line 71
    if-lez p1, :cond_7

    .line 72
    .line 73
    move v0, p1

    .line 74
    move v4, v0

    .line 75
    move p1, v3

    .line 76
    move v5, p1

    .line 77
    :goto_0
    move v6, v5

    .line 78
    goto :goto_2

    .line 79
    :cond_7
    iget p1, v0, Landroid/graphics/Insets;->left:I

    .line 80
    .line 81
    if-lez p1, :cond_8

    .line 82
    .line 83
    move v0, v3

    .line 84
    :goto_1
    move v4, v0

    .line 85
    move v5, v4

    .line 86
    goto :goto_0

    .line 87
    :cond_8
    iget p1, v0, Landroid/graphics/Insets;->right:I

    .line 88
    .line 89
    if-lez p1, :cond_9

    .line 90
    .line 91
    move v6, p1

    .line 92
    move p1, v3

    .line 93
    move v0, p1

    .line 94
    move v4, v0

    .line 95
    move v5, v4

    .line 96
    goto :goto_2

    .line 97
    :cond_9
    move p1, v3

    .line 98
    move v0, p1

    .line 99
    goto :goto_1

    .line 100
    :goto_2
    iget v7, v1, Landroid/graphics/Insets;->top:I

    .line 101
    .line 102
    if-lez v7, :cond_a

    .line 103
    .line 104
    move v3, v7

    .line 105
    move v5, v3

    .line 106
    goto :goto_3

    .line 107
    :cond_a
    iget v7, v1, Landroid/graphics/Insets;->bottom:I

    .line 108
    .line 109
    if-lez v7, :cond_b

    .line 110
    .line 111
    move v3, v7

    .line 112
    move v4, v3

    .line 113
    goto :goto_3

    .line 114
    :cond_b
    iget v7, v1, Landroid/graphics/Insets;->left:I

    .line 115
    .line 116
    if-lez v7, :cond_c

    .line 117
    .line 118
    move p1, v7

    .line 119
    goto :goto_3

    .line 120
    :cond_c
    iget v1, v1, Landroid/graphics/Insets;->right:I

    .line 121
    .line 122
    if-lez v1, :cond_d

    .line 123
    .line 124
    move v6, v1

    .line 125
    :cond_d
    :goto_3
    iget v1, v2, Landroid/graphics/Insets;->bottom:I

    .line 126
    .line 127
    iget v2, v2, Landroid/graphics/Insets;->top:I

    .line 128
    .line 129
    sub-int/2addr v1, v2

    .line 130
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    iget v2, p0, Lcom/mycompany/app/main/MainActivity;->J0:I

    .line 135
    .line 136
    if-eq v2, v1, :cond_e

    .line 137
    .line 138
    iput v1, p0, Lcom/mycompany/app/main/MainActivity;->J0:I

    .line 139
    .line 140
    iget-object v2, p0, Lcom/mycompany/app/main/MainActivity;->G0:Lcom/mycompany/app/main/MainActivity$MainInsetListener;

    .line 141
    .line 142
    if-eqz v2, :cond_e

    .line 143
    .line 144
    invoke-interface {v2, v1}, Lcom/mycompany/app/main/MainActivity$MainInsetListener;->a(I)V

    .line 145
    .line 146
    .line 147
    :cond_e
    sput v0, Lcom/mycompany/app/pref/PrefMain;->u:I

    .line 148
    .line 149
    sput v3, Lcom/mycompany/app/pref/PrefMain;->w:I

    .line 150
    .line 151
    const/4 v0, 0x1

    .line 152
    sput-boolean v0, Lcom/mycompany/app/pref/PrefMain;->v:Z

    .line 153
    .line 154
    sput-boolean v0, Lcom/mycompany/app/pref/PrefMain;->x:Z

    .line 155
    .line 156
    iget-boolean v0, p0, Lcom/mycompany/app/main/MainActivity;->t0:Z

    .line 157
    .line 158
    if-eqz v0, :cond_f

    .line 159
    .line 160
    sput p1, Lcom/mycompany/app/main/MainActivity;->d1:I

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_f
    iget-boolean v0, p0, Lcom/mycompany/app/main/MainActivity;->E0:Z

    .line 164
    .line 165
    if-eqz v0, :cond_10

    .line 166
    .line 167
    if-le v1, v4, :cond_10

    .line 168
    .line 169
    move v4, v1

    .line 170
    :cond_10
    :goto_4
    iput v5, p0, Lcom/mycompany/app/main/MainActivity;->K0:I

    .line 171
    .line 172
    iput v4, p0, Lcom/mycompany/app/main/MainActivity;->L0:I

    .line 173
    .line 174
    iput p1, p0, Lcom/mycompany/app/main/MainActivity;->M0:I

    .line 175
    .line 176
    iput v6, p0, Lcom/mycompany/app/main/MainActivity;->N0:I

    .line 177
    .line 178
    iget-boolean p1, p0, Lcom/mycompany/app/main/MainActivity;->u0:Z

    .line 179
    .line 180
    if-eqz p1, :cond_12

    .line 181
    .line 182
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 183
    .line 184
    if-nez p1, :cond_11

    .line 185
    .line 186
    goto :goto_5

    .line 187
    :cond_11
    new-instance v0, Lcom/mycompany/app/main/MainActivity$43;

    .line 188
    .line 189
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/MainActivity$43;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    :cond_12
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->g0()Z

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    if-nez p1, :cond_13

    .line 201
    .line 202
    goto :goto_5

    .line 203
    :cond_13
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 204
    .line 205
    if-nez p1, :cond_14

    .line 206
    .line 207
    goto :goto_5

    .line 208
    :cond_14
    new-instance v0, Lcom/mycompany/app/main/MainActivity$42;

    .line 209
    .line 210
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/MainActivity$42;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .line 215
    .line 216
    :catch_0
    :goto_5
    return-void
.end method


# virtual methods
.method public final Y()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity;->a1:Lcom/mycompany/app/view/MyEditAuto;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->a1:Lcom/mycompany/app/view/MyEditAuto;

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyEditAuto;->d()V

    .line 10
    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 14
    .line 15
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    return v0

    .line 21
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupWrap;->b()V

    .line 22
    .line 23
    .line 24
    return v2
.end method

.method public final Z(Z)V
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
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->V5(Landroidx/appcompat/app/AppCompatActivity;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    sget p1, Lcom/mycompany/app/main/MainActivity;->b1:I

    .line 13
    .line 14
    sget v1, Lcom/mycompany/app/main/MainActivity;->c1:I

    .line 15
    .line 16
    if-eqz p1, :cond_5

    .line 17
    .line 18
    if-nez v1, :cond_2

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_2
    if-ge p1, v1, :cond_3

    .line 22
    .line 23
    move v4, v1

    .line 24
    move v1, p1

    .line 25
    move p1, v4

    .line 26
    :cond_3
    sget v2, Lcom/mycompany/app/pref/PrefTts;->F:I

    .line 27
    .line 28
    sget v3, Lcom/mycompany/app/pref/PrefTts;->G:I

    .line 29
    .line 30
    add-int/2addr v2, v3

    .line 31
    div-int/lit8 v3, p1, 0x3

    .line 32
    .line 33
    if-le v2, v3, :cond_4

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_4
    sub-int/2addr p1, v2

    .line 37
    if-le p1, v1, :cond_5

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    :cond_5
    :goto_0
    sput-boolean v0, Lcom/mycompany/app/main/MainActivity;->e1:Z

    .line 41
    .line 42
    return-void
.end method

.method public final a0()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity;->r0:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity;->r0:Landroid/view/View;

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/mycompany/app/main/MainActivity;->r0:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    :catch_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity;->r0:Landroid/view/View;

    .line 22
    .line 23
    return-object v0
.end method

.method public final b0()I
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->V5(Landroidx/appcompat/app/AppCompatActivity;)Z

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
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity;->z0:Landroid/graphics/Point;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 14
    .line 15
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 16
    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    int-to-float v0, v0

    .line 27
    const v2, 0x3f266666    # 0.65f

    .line 28
    .line 29
    .line 30
    mul-float/2addr v0, v2

    .line 31
    float-to-int v0, v0

    .line 32
    if-ge v0, v1, :cond_3

    .line 33
    .line 34
    return v0

    .line 35
    :cond_3
    :goto_0
    const/4 v0, -0x1

    .line 36
    return v0
.end method

.method public final c0()Landroidx/core/view/WindowInsetsControllerCompat;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity;->s0:Landroidx/core/view/WindowInsetsControllerCompat;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->a0()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->r4(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/mycompany/app/main/MainActivity;->s0:Landroidx/core/view/WindowInsetsControllerCompat;

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity;->s0:Landroidx/core/view/WindowInsetsControllerCompat;

    .line 20
    .line 21
    return-object v0
.end method

.method public final d0()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/mycompany/app/main/MainConst;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/main/MainActivity;->I0:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->a0()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    :goto_0
    return-void

    .line 18
    :cond_2
    const/4 v1, 0x1

    .line 19
    iput-boolean v1, p0, Lcom/mycompany/app/main/MainActivity;->I0:Z

    .line 20
    .line 21
    new-instance v1, Lcom/mycompany/app/main/MainActivity$41;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/MainActivity$41;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->j7(Landroid/view/Window;Z)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity;->P0:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    const/4 v2, 0x3

    .line 13
    if-ne v0, v2, :cond_1

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0, v1}, Lcom/mycompany/app/main/MainActivity;->q0(Z)V

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1
.end method

.method public final e0(Lcom/mycompany/app/view/MyEditAuto$KeyBackListener;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/mycompany/app/main/MainConst;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity;->X0:Landroid/window/OnBackInvokedCallback;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity;->Y0:Lcom/mycompany/app/view/MyEditAuto$KeyBackListener;

    .line 12
    .line 13
    new-instance v0, Lcom/mycompany/app/main/MainActivity$49;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/MainActivity$49;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/mycompany/app/main/MainActivity;->X0:Landroid/window/OnBackInvokedCallback;

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    const p1, 0xf4240

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    const/4 p1, 0x0

    .line 27
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/mycompany/app/main/MainActivity;->X0:Landroid/window/OnBackInvokedCallback;

    .line 32
    .line 33
    invoke-interface {v0, p1, v1}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final f0()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/mycompany/app/main/MainConst;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->d0()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final g0()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity;->F0:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget v3, p0, Lcom/mycompany/app/main/MainActivity;->K0:I

    .line 12
    .line 13
    if-ne v2, v3, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    iget v3, p0, Lcom/mycompany/app/main/MainActivity;->L0:I

    .line 20
    .line 21
    if-ne v2, v3, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    iget v3, p0, Lcom/mycompany/app/main/MainActivity;->M0:I

    .line 28
    .line 29
    if-ne v2, v3, :cond_2

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget v2, p0, Lcom/mycompany/app/main/MainActivity;->N0:I

    .line 36
    .line 37
    if-eq v0, v2, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return v1

    .line 41
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 42
    return v0
.end method

.method public final h0()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/mycompany/app/main/MainActivity;->A0:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x2

    .line 5
    if-nez v0, :cond_4

    .line 6
    .line 7
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->s4(Landroid/content/Context;)Landroid/graphics/Point;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iput-object v0, p0, Lcom/mycompany/app/main/MainActivity;->z0:Landroid/graphics/Point;

    .line 15
    .line 16
    iget-boolean v3, p0, Lcom/mycompany/app/main/MainActivity;->t0:Z

    .line 17
    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    iget v3, v0, Landroid/graphics/Point;->x:I

    .line 21
    .line 22
    sput v3, Lcom/mycompany/app/main/MainActivity;->b1:I

    .line 23
    .line 24
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 25
    .line 26
    sput v0, Lcom/mycompany/app/main/MainActivity;->c1:I

    .line 27
    .line 28
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity;->z0:Landroid/graphics/Point;

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    iget v3, v0, Landroid/graphics/Point;->x:I

    .line 34
    .line 35
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 36
    .line 37
    if-le v3, v0, :cond_3

    .line 38
    .line 39
    iput v2, p0, Lcom/mycompany/app/main/MainActivity;->A0:I

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_3
    :goto_1
    iput v1, p0, Lcom/mycompany/app/main/MainActivity;->A0:I

    .line 43
    .line 44
    :cond_4
    :goto_2
    iget v0, p0, Lcom/mycompany/app/main/MainActivity;->A0:I

    .line 45
    .line 46
    if-ne v0, v2, :cond_5

    .line 47
    .line 48
    return v1

    .line 49
    :cond_5
    const/4 v0, 0x0

    .line 50
    return v0
.end method

.method public final i0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/main/MainActivity;->x0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/mycompany/app/main/MainActivity;->y0:Z

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    sget-boolean v0, Lcom/mycompany/app/main/MainConst;->d:Z

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->a0()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0, v0}, Lcom/mycompany/app/main/MainActivity;->j0(Landroid/view/WindowInsets;)Z

    .line 25
    .line 26
    .line 27
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    return v0

    .line 29
    :catch_0
    :goto_0
    const/4 v0, 0x0

    .line 30
    return v0
.end method

.method public initMainScreenOn(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity;->P0:Landroid/view/View;

    .line 2
    .line 3
    return-void
.end method

.method public final j0(Landroid/view/WindowInsets;)Z
    .locals 3

    .line 1
    sget-boolean v0, Lcom/mycompany/app/main/MainConst;->d:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    if-nez p1, :cond_1

    .line 8
    .line 9
    return v1

    .line 10
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-nez p1, :cond_2

    .line 19
    .line 20
    return v1

    .line 21
    :cond_2
    invoke-static {p1}, Landroidx/activity/i;->b(Landroid/graphics/Insets;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v2, 0x1

    .line 26
    if-gtz v0, :cond_4

    .line 27
    .line 28
    invoke-static {p1}, Landroidx/activity/i;->h(Landroid/graphics/Insets;)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-lez p1, :cond_3

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_3
    move p1, v1

    .line 36
    goto :goto_1

    .line 37
    :cond_4
    :goto_0
    move p1, v2

    .line 38
    :goto_1
    iput-boolean v2, p0, Lcom/mycompany/app/main/MainActivity;->x0:Z

    .line 39
    .line 40
    iput-boolean p1, p0, Lcom/mycompany/app/main/MainActivity;->y0:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    return p1

    .line 43
    :catch_0
    return v1
.end method

.method public k0(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public l0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->Y()Z

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
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final m0(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity;->C0:Ljava/util/concurrent/ExecutorService;

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
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

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
    iput-object v0, p0, Lcom/mycompany/app/main/MainActivity;->C0:Ljava/util/concurrent/ExecutorService;

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

.method public final n0(Landroid/view/View;Z)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lcom/mycompany/app/main/MainActivity;->P0:Landroid/view/View;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/mycompany/app/main/MainActivity;->Q0:Landroid/view/View;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity;->P0:Landroid/view/View;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->Q0:Landroid/view/View;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity;->P0:Landroid/view/View;

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity;->Q0:Landroid/view/View;

    .line 16
    .line 17
    :goto_0
    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/mycompany/app/main/MainActivity;->T0:Z

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MainActivity;->q0(Z)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final o0(Landroid/content/Intent;I)V
    .locals 0

    .line 1
    packed-switch p2, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_25

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p2, p0, Lcom/mycompany/app/main/MainActivity;->q0:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 13
    .line 14
    if-eqz p2, :cond_25

    .line 15
    .line 16
    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultRegistry$register$2;->a(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance p2, Lcom/mycompany/app/main/MainActivity$38;

    .line 26
    .line 27
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/MainActivity$38;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->S(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity;->q0:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_1
    if-eqz p1, :cond_1

    .line 40
    .line 41
    iget-object p2, p0, Lcom/mycompany/app/main/MainActivity;->p0:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 42
    .line 43
    if-eqz p2, :cond_25

    .line 44
    .line 45
    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultRegistry$register$2;->a(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 50
    .line 51
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 52
    .line 53
    .line 54
    new-instance p2, Lcom/mycompany/app/main/MainActivity$37;

    .line 55
    .line 56
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/MainActivity$37;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->S(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 64
    .line 65
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity;->p0:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 66
    .line 67
    return-void

    .line 68
    :pswitch_2
    if-eqz p1, :cond_2

    .line 69
    .line 70
    iget-object p2, p0, Lcom/mycompany/app/main/MainActivity;->o0:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 71
    .line 72
    if-eqz p2, :cond_25

    .line 73
    .line 74
    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultRegistry$register$2;->a(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_2
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 79
    .line 80
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 81
    .line 82
    .line 83
    new-instance p2, Lcom/mycompany/app/main/MainActivity$36;

    .line 84
    .line 85
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/MainActivity$36;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->S(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 93
    .line 94
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity;->o0:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 95
    .line 96
    return-void

    .line 97
    :pswitch_3
    if-eqz p1, :cond_3

    .line 98
    .line 99
    iget-object p2, p0, Lcom/mycompany/app/main/MainActivity;->n0:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 100
    .line 101
    if-eqz p2, :cond_25

    .line 102
    .line 103
    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultRegistry$register$2;->a(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_3
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 108
    .line 109
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 110
    .line 111
    .line 112
    new-instance p2, Lcom/mycompany/app/main/MainActivity$35;

    .line 113
    .line 114
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/MainActivity$35;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->S(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    check-cast p1, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 122
    .line 123
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity;->n0:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 124
    .line 125
    return-void

    .line 126
    :pswitch_4
    if-eqz p1, :cond_4

    .line 127
    .line 128
    iget-object p2, p0, Lcom/mycompany/app/main/MainActivity;->m0:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 129
    .line 130
    if-eqz p2, :cond_25

    .line 131
    .line 132
    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultRegistry$register$2;->a(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :cond_4
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 137
    .line 138
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 139
    .line 140
    .line 141
    new-instance p2, Lcom/mycompany/app/main/MainActivity$34;

    .line 142
    .line 143
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/MainActivity$34;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->S(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    check-cast p1, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 151
    .line 152
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity;->m0:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 153
    .line 154
    return-void

    .line 155
    :pswitch_5
    if-eqz p1, :cond_5

    .line 156
    .line 157
    iget-object p2, p0, Lcom/mycompany/app/main/MainActivity;->l0:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 158
    .line 159
    if-eqz p2, :cond_25

    .line 160
    .line 161
    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultRegistry$register$2;->a(Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :cond_5
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 166
    .line 167
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 168
    .line 169
    .line 170
    new-instance p2, Lcom/mycompany/app/main/MainActivity$33;

    .line 171
    .line 172
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/MainActivity$33;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->S(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    check-cast p1, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 180
    .line 181
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity;->l0:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 182
    .line 183
    return-void

    .line 184
    :pswitch_6
    if-eqz p1, :cond_6

    .line 185
    .line 186
    iget-object p2, p0, Lcom/mycompany/app/main/MainActivity;->k0:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 187
    .line 188
    if-eqz p2, :cond_25

    .line 189
    .line 190
    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultRegistry$register$2;->a(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    return-void

    .line 194
    :cond_6
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 195
    .line 196
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 197
    .line 198
    .line 199
    new-instance p2, Lcom/mycompany/app/main/MainActivity$32;

    .line 200
    .line 201
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/MainActivity$32;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->S(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    check-cast p1, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 209
    .line 210
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity;->k0:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 211
    .line 212
    return-void

    .line 213
    :pswitch_7
    if-eqz p1, :cond_7

    .line 214
    .line 215
    iget-object p2, p0, Lcom/mycompany/app/main/MainActivity;->j0:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 216
    .line 217
    if-eqz p2, :cond_25

    .line 218
    .line 219
    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultRegistry$register$2;->a(Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    return-void

    .line 223
    :cond_7
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 224
    .line 225
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 226
    .line 227
    .line 228
    new-instance p2, Lcom/mycompany/app/main/MainActivity$31;

    .line 229
    .line 230
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/MainActivity$31;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->S(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    check-cast p1, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 238
    .line 239
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity;->j0:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 240
    .line 241
    return-void

    .line 242
    :pswitch_8
    if-eqz p1, :cond_8

    .line 243
    .line 244
    iget-object p2, p0, Lcom/mycompany/app/main/MainActivity;->i0:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 245
    .line 246
    if-eqz p2, :cond_25

    .line 247
    .line 248
    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultRegistry$register$2;->a(Ljava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    return-void

    .line 252
    :cond_8
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 253
    .line 254
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 255
    .line 256
    .line 257
    new-instance p2, Lcom/mycompany/app/main/MainActivity$30;

    .line 258
    .line 259
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/MainActivity$30;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->S(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    check-cast p1, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 267
    .line 268
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity;->i0:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 269
    .line 270
    return-void

    .line 271
    :pswitch_9
    if-eqz p1, :cond_9

    .line 272
    .line 273
    iget-object p2, p0, Lcom/mycompany/app/main/MainActivity;->h0:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 274
    .line 275
    if-eqz p2, :cond_25

    .line 276
    .line 277
    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultRegistry$register$2;->a(Ljava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    return-void

    .line 281
    :cond_9
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 282
    .line 283
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 284
    .line 285
    .line 286
    new-instance p2, Lcom/mycompany/app/main/MainActivity$29;

    .line 287
    .line 288
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/MainActivity$29;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->S(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    check-cast p1, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 296
    .line 297
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity;->h0:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 298
    .line 299
    return-void

    .line 300
    :pswitch_a
    if-eqz p1, :cond_a

    .line 301
    .line 302
    iget-object p2, p0, Lcom/mycompany/app/main/MainActivity;->g0:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 303
    .line 304
    if-eqz p2, :cond_25

    .line 305
    .line 306
    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultRegistry$register$2;->a(Ljava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    return-void

    .line 310
    :cond_a
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 311
    .line 312
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 313
    .line 314
    .line 315
    new-instance p2, Lcom/mycompany/app/main/MainActivity$28;

    .line 316
    .line 317
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/MainActivity$28;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->S(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    check-cast p1, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 325
    .line 326
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity;->g0:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 327
    .line 328
    return-void

    .line 329
    :pswitch_b
    if-eqz p1, :cond_b

    .line 330
    .line 331
    iget-object p2, p0, Lcom/mycompany/app/main/MainActivity;->f0:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 332
    .line 333
    if-eqz p2, :cond_25

    .line 334
    .line 335
    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultRegistry$register$2;->a(Ljava/lang/Object;)V

    .line 336
    .line 337
    .line 338
    return-void

    .line 339
    :cond_b
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 340
    .line 341
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 342
    .line 343
    .line 344
    new-instance p2, Lcom/mycompany/app/main/MainActivity$27;

    .line 345
    .line 346
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/MainActivity$27;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->S(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    check-cast p1, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 354
    .line 355
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity;->f0:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 356
    .line 357
    return-void

    .line 358
    :pswitch_c
    if-eqz p1, :cond_c

    .line 359
    .line 360
    iget-object p2, p0, Lcom/mycompany/app/main/MainActivity;->e0:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 361
    .line 362
    if-eqz p2, :cond_25

    .line 363
    .line 364
    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultRegistry$register$2;->a(Ljava/lang/Object;)V

    .line 365
    .line 366
    .line 367
    return-void

    .line 368
    :cond_c
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 369
    .line 370
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 371
    .line 372
    .line 373
    new-instance p2, Lcom/mycompany/app/main/MainActivity$26;

    .line 374
    .line 375
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/MainActivity$26;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->S(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 379
    .line 380
    .line 381
    move-result-object p1

    .line 382
    check-cast p1, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 383
    .line 384
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity;->e0:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 385
    .line 386
    return-void

    .line 387
    :pswitch_d
    if-eqz p1, :cond_d

    .line 388
    .line 389
    iget-object p2, p0, Lcom/mycompany/app/main/MainActivity;->d0:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 390
    .line 391
    if-eqz p2, :cond_25

    .line 392
    .line 393
    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultRegistry$register$2;->a(Ljava/lang/Object;)V

    .line 394
    .line 395
    .line 396
    return-void

    .line 397
    :cond_d
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 398
    .line 399
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 400
    .line 401
    .line 402
    new-instance p2, Lcom/mycompany/app/main/MainActivity$25;

    .line 403
    .line 404
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/MainActivity$25;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->S(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 408
    .line 409
    .line 410
    move-result-object p1

    .line 411
    check-cast p1, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 412
    .line 413
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity;->d0:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 414
    .line 415
    return-void

    .line 416
    :pswitch_e
    if-eqz p1, :cond_e

    .line 417
    .line 418
    iget-object p2, p0, Lcom/mycompany/app/main/MainActivity;->c0:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 419
    .line 420
    if-eqz p2, :cond_25

    .line 421
    .line 422
    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultRegistry$register$2;->a(Ljava/lang/Object;)V

    .line 423
    .line 424
    .line 425
    return-void

    .line 426
    :cond_e
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 427
    .line 428
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 429
    .line 430
    .line 431
    new-instance p2, Lcom/mycompany/app/main/MainActivity$24;

    .line 432
    .line 433
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/MainActivity$24;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->S(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 437
    .line 438
    .line 439
    move-result-object p1

    .line 440
    check-cast p1, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 441
    .line 442
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity;->c0:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 443
    .line 444
    return-void

    .line 445
    :pswitch_f
    if-eqz p1, :cond_f

    .line 446
    .line 447
    iget-object p2, p0, Lcom/mycompany/app/main/MainActivity;->b0:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 448
    .line 449
    if-eqz p2, :cond_25

    .line 450
    .line 451
    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultRegistry$register$2;->a(Ljava/lang/Object;)V

    .line 452
    .line 453
    .line 454
    return-void

    .line 455
    :cond_f
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 456
    .line 457
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 458
    .line 459
    .line 460
    new-instance p2, Lcom/mycompany/app/main/MainActivity$23;

    .line 461
    .line 462
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/MainActivity$23;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->S(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 466
    .line 467
    .line 468
    move-result-object p1

    .line 469
    check-cast p1, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 470
    .line 471
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity;->b0:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 472
    .line 473
    return-void

    .line 474
    :pswitch_10
    if-eqz p1, :cond_10

    .line 475
    .line 476
    iget-object p2, p0, Lcom/mycompany/app/main/MainActivity;->a0:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 477
    .line 478
    if-eqz p2, :cond_25

    .line 479
    .line 480
    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultRegistry$register$2;->a(Ljava/lang/Object;)V

    .line 481
    .line 482
    .line 483
    return-void

    .line 484
    :cond_10
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 485
    .line 486
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 487
    .line 488
    .line 489
    new-instance p2, Lcom/mycompany/app/main/MainActivity$22;

    .line 490
    .line 491
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/MainActivity$22;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->S(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 495
    .line 496
    .line 497
    move-result-object p1

    .line 498
    check-cast p1, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 499
    .line 500
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity;->a0:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 501
    .line 502
    return-void

    .line 503
    :pswitch_11
    if-eqz p1, :cond_11

    .line 504
    .line 505
    iget-object p2, p0, Lcom/mycompany/app/main/MainActivity;->Z:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 506
    .line 507
    if-eqz p2, :cond_25

    .line 508
    .line 509
    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultRegistry$register$2;->a(Ljava/lang/Object;)V

    .line 510
    .line 511
    .line 512
    return-void

    .line 513
    :cond_11
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 514
    .line 515
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 516
    .line 517
    .line 518
    new-instance p2, Lcom/mycompany/app/main/MainActivity$21;

    .line 519
    .line 520
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/MainActivity$21;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 521
    .line 522
    .line 523
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->S(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 524
    .line 525
    .line 526
    move-result-object p1

    .line 527
    check-cast p1, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 528
    .line 529
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity;->Z:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 530
    .line 531
    return-void

    .line 532
    :pswitch_12
    if-eqz p1, :cond_12

    .line 533
    .line 534
    iget-object p2, p0, Lcom/mycompany/app/main/MainActivity;->Y:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 535
    .line 536
    if-eqz p2, :cond_25

    .line 537
    .line 538
    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultRegistry$register$2;->a(Ljava/lang/Object;)V

    .line 539
    .line 540
    .line 541
    return-void

    .line 542
    :cond_12
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 543
    .line 544
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 545
    .line 546
    .line 547
    new-instance p2, Lcom/mycompany/app/main/MainActivity$20;

    .line 548
    .line 549
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/MainActivity$20;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->S(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 553
    .line 554
    .line 555
    move-result-object p1

    .line 556
    check-cast p1, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 557
    .line 558
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity;->Y:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 559
    .line 560
    return-void

    .line 561
    :pswitch_13
    if-eqz p1, :cond_13

    .line 562
    .line 563
    iget-object p2, p0, Lcom/mycompany/app/main/MainActivity;->X:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 564
    .line 565
    if-eqz p2, :cond_25

    .line 566
    .line 567
    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultRegistry$register$2;->a(Ljava/lang/Object;)V

    .line 568
    .line 569
    .line 570
    return-void

    .line 571
    :cond_13
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 572
    .line 573
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 574
    .line 575
    .line 576
    new-instance p2, Lcom/mycompany/app/main/MainActivity$19;

    .line 577
    .line 578
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/MainActivity$19;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 579
    .line 580
    .line 581
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->S(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 582
    .line 583
    .line 584
    move-result-object p1

    .line 585
    check-cast p1, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 586
    .line 587
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity;->X:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 588
    .line 589
    return-void

    .line 590
    :pswitch_14
    if-eqz p1, :cond_14

    .line 591
    .line 592
    iget-object p2, p0, Lcom/mycompany/app/main/MainActivity;->W:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 593
    .line 594
    if-eqz p2, :cond_25

    .line 595
    .line 596
    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultRegistry$register$2;->a(Ljava/lang/Object;)V

    .line 597
    .line 598
    .line 599
    return-void

    .line 600
    :cond_14
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 601
    .line 602
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 603
    .line 604
    .line 605
    new-instance p2, Lcom/mycompany/app/main/MainActivity$18;

    .line 606
    .line 607
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/MainActivity$18;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 608
    .line 609
    .line 610
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->S(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 611
    .line 612
    .line 613
    move-result-object p1

    .line 614
    check-cast p1, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 615
    .line 616
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity;->W:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 617
    .line 618
    return-void

    .line 619
    :pswitch_15
    if-eqz p1, :cond_15

    .line 620
    .line 621
    iget-object p2, p0, Lcom/mycompany/app/main/MainActivity;->V:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 622
    .line 623
    if-eqz p2, :cond_25

    .line 624
    .line 625
    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultRegistry$register$2;->a(Ljava/lang/Object;)V

    .line 626
    .line 627
    .line 628
    return-void

    .line 629
    :cond_15
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 630
    .line 631
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 632
    .line 633
    .line 634
    new-instance p2, Lcom/mycompany/app/main/MainActivity$17;

    .line 635
    .line 636
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/MainActivity$17;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 637
    .line 638
    .line 639
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->S(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 640
    .line 641
    .line 642
    move-result-object p1

    .line 643
    check-cast p1, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 644
    .line 645
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity;->V:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 646
    .line 647
    return-void

    .line 648
    :pswitch_16
    if-eqz p1, :cond_16

    .line 649
    .line 650
    iget-object p2, p0, Lcom/mycompany/app/main/MainActivity;->U:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 651
    .line 652
    if-eqz p2, :cond_25

    .line 653
    .line 654
    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultRegistry$register$2;->a(Ljava/lang/Object;)V

    .line 655
    .line 656
    .line 657
    return-void

    .line 658
    :cond_16
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 659
    .line 660
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 661
    .line 662
    .line 663
    new-instance p2, Lcom/mycompany/app/main/MainActivity$16;

    .line 664
    .line 665
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/MainActivity$16;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 666
    .line 667
    .line 668
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->S(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 669
    .line 670
    .line 671
    move-result-object p1

    .line 672
    check-cast p1, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 673
    .line 674
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity;->U:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 675
    .line 676
    return-void

    .line 677
    :pswitch_17
    if-eqz p1, :cond_17

    .line 678
    .line 679
    iget-object p2, p0, Lcom/mycompany/app/main/MainActivity;->T:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 680
    .line 681
    if-eqz p2, :cond_25

    .line 682
    .line 683
    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultRegistry$register$2;->a(Ljava/lang/Object;)V

    .line 684
    .line 685
    .line 686
    return-void

    .line 687
    :cond_17
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 688
    .line 689
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 690
    .line 691
    .line 692
    new-instance p2, Lcom/mycompany/app/main/MainActivity$15;

    .line 693
    .line 694
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/MainActivity$15;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 695
    .line 696
    .line 697
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->S(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 698
    .line 699
    .line 700
    move-result-object p1

    .line 701
    check-cast p1, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 702
    .line 703
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity;->T:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 704
    .line 705
    return-void

    .line 706
    :pswitch_18
    if-eqz p1, :cond_18

    .line 707
    .line 708
    iget-object p2, p0, Lcom/mycompany/app/main/MainActivity;->S:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 709
    .line 710
    if-eqz p2, :cond_25

    .line 711
    .line 712
    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultRegistry$register$2;->a(Ljava/lang/Object;)V

    .line 713
    .line 714
    .line 715
    return-void

    .line 716
    :cond_18
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 717
    .line 718
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 719
    .line 720
    .line 721
    new-instance p2, Lcom/mycompany/app/main/MainActivity$14;

    .line 722
    .line 723
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/MainActivity$14;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 724
    .line 725
    .line 726
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->S(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 727
    .line 728
    .line 729
    move-result-object p1

    .line 730
    check-cast p1, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 731
    .line 732
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity;->S:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 733
    .line 734
    return-void

    .line 735
    :pswitch_19
    if-eqz p1, :cond_19

    .line 736
    .line 737
    iget-object p2, p0, Lcom/mycompany/app/main/MainActivity;->R:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 738
    .line 739
    if-eqz p2, :cond_25

    .line 740
    .line 741
    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultRegistry$register$2;->a(Ljava/lang/Object;)V

    .line 742
    .line 743
    .line 744
    return-void

    .line 745
    :cond_19
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 746
    .line 747
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 748
    .line 749
    .line 750
    new-instance p2, Lcom/mycompany/app/main/MainActivity$13;

    .line 751
    .line 752
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/MainActivity$13;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 753
    .line 754
    .line 755
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->S(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 756
    .line 757
    .line 758
    move-result-object p1

    .line 759
    check-cast p1, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 760
    .line 761
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity;->R:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 762
    .line 763
    return-void

    .line 764
    :pswitch_1a
    if-eqz p1, :cond_1a

    .line 765
    .line 766
    iget-object p2, p0, Lcom/mycompany/app/main/MainActivity;->Q:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 767
    .line 768
    if-eqz p2, :cond_25

    .line 769
    .line 770
    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultRegistry$register$2;->a(Ljava/lang/Object;)V

    .line 771
    .line 772
    .line 773
    return-void

    .line 774
    :cond_1a
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 775
    .line 776
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 777
    .line 778
    .line 779
    new-instance p2, Lcom/mycompany/app/main/MainActivity$12;

    .line 780
    .line 781
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/MainActivity$12;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 782
    .line 783
    .line 784
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->S(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 785
    .line 786
    .line 787
    move-result-object p1

    .line 788
    check-cast p1, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 789
    .line 790
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity;->Q:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 791
    .line 792
    return-void

    .line 793
    :pswitch_1b
    if-eqz p1, :cond_1b

    .line 794
    .line 795
    iget-object p2, p0, Lcom/mycompany/app/main/MainActivity;->P:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 796
    .line 797
    if-eqz p2, :cond_25

    .line 798
    .line 799
    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultRegistry$register$2;->a(Ljava/lang/Object;)V

    .line 800
    .line 801
    .line 802
    return-void

    .line 803
    :cond_1b
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 804
    .line 805
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 806
    .line 807
    .line 808
    new-instance p2, Lcom/mycompany/app/main/MainActivity$11;

    .line 809
    .line 810
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/MainActivity$11;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 811
    .line 812
    .line 813
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->S(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 814
    .line 815
    .line 816
    move-result-object p1

    .line 817
    check-cast p1, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 818
    .line 819
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity;->P:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 820
    .line 821
    return-void

    .line 822
    :pswitch_1c
    if-eqz p1, :cond_1c

    .line 823
    .line 824
    iget-object p2, p0, Lcom/mycompany/app/main/MainActivity;->O:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 825
    .line 826
    if-eqz p2, :cond_25

    .line 827
    .line 828
    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultRegistry$register$2;->a(Ljava/lang/Object;)V

    .line 829
    .line 830
    .line 831
    return-void

    .line 832
    :cond_1c
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 833
    .line 834
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 835
    .line 836
    .line 837
    new-instance p2, Lcom/mycompany/app/main/MainActivity$10;

    .line 838
    .line 839
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/MainActivity$10;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 840
    .line 841
    .line 842
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->S(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 843
    .line 844
    .line 845
    move-result-object p1

    .line 846
    check-cast p1, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 847
    .line 848
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 849
    .line 850
    return-void

    .line 851
    :pswitch_1d
    if-eqz p1, :cond_1d

    .line 852
    .line 853
    iget-object p2, p0, Lcom/mycompany/app/main/MainActivity;->N:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 854
    .line 855
    if-eqz p2, :cond_25

    .line 856
    .line 857
    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultRegistry$register$2;->a(Ljava/lang/Object;)V

    .line 858
    .line 859
    .line 860
    return-void

    .line 861
    :cond_1d
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 862
    .line 863
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 864
    .line 865
    .line 866
    new-instance p2, Lcom/mycompany/app/main/MainActivity$9;

    .line 867
    .line 868
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/MainActivity$9;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 869
    .line 870
    .line 871
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->S(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 872
    .line 873
    .line 874
    move-result-object p1

    .line 875
    check-cast p1, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 876
    .line 877
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity;->N:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 878
    .line 879
    return-void

    .line 880
    :pswitch_1e
    if-eqz p1, :cond_1e

    .line 881
    .line 882
    iget-object p2, p0, Lcom/mycompany/app/main/MainActivity;->M:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 883
    .line 884
    if-eqz p2, :cond_25

    .line 885
    .line 886
    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultRegistry$register$2;->a(Ljava/lang/Object;)V

    .line 887
    .line 888
    .line 889
    return-void

    .line 890
    :cond_1e
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 891
    .line 892
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 893
    .line 894
    .line 895
    new-instance p2, Lcom/mycompany/app/main/MainActivity$8;

    .line 896
    .line 897
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/MainActivity$8;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 898
    .line 899
    .line 900
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->S(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 901
    .line 902
    .line 903
    move-result-object p1

    .line 904
    check-cast p1, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 905
    .line 906
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity;->M:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 907
    .line 908
    return-void

    .line 909
    :pswitch_1f
    if-eqz p1, :cond_1f

    .line 910
    .line 911
    iget-object p2, p0, Lcom/mycompany/app/main/MainActivity;->L:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 912
    .line 913
    if-eqz p2, :cond_25

    .line 914
    .line 915
    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultRegistry$register$2;->a(Ljava/lang/Object;)V

    .line 916
    .line 917
    .line 918
    return-void

    .line 919
    :cond_1f
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 920
    .line 921
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 922
    .line 923
    .line 924
    new-instance p2, Lcom/mycompany/app/main/MainActivity$7;

    .line 925
    .line 926
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/MainActivity$7;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 927
    .line 928
    .line 929
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->S(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 930
    .line 931
    .line 932
    move-result-object p1

    .line 933
    check-cast p1, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 934
    .line 935
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity;->L:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 936
    .line 937
    return-void

    .line 938
    :pswitch_20
    if-eqz p1, :cond_20

    .line 939
    .line 940
    iget-object p2, p0, Lcom/mycompany/app/main/MainActivity;->K:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 941
    .line 942
    if-eqz p2, :cond_25

    .line 943
    .line 944
    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultRegistry$register$2;->a(Ljava/lang/Object;)V

    .line 945
    .line 946
    .line 947
    return-void

    .line 948
    :cond_20
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 949
    .line 950
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 951
    .line 952
    .line 953
    new-instance p2, Lcom/mycompany/app/main/MainActivity$6;

    .line 954
    .line 955
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/MainActivity$6;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 956
    .line 957
    .line 958
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->S(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 959
    .line 960
    .line 961
    move-result-object p1

    .line 962
    check-cast p1, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 963
    .line 964
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity;->K:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 965
    .line 966
    return-void

    .line 967
    :pswitch_21
    if-eqz p1, :cond_21

    .line 968
    .line 969
    iget-object p2, p0, Lcom/mycompany/app/main/MainActivity;->J:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 970
    .line 971
    if-eqz p2, :cond_25

    .line 972
    .line 973
    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultRegistry$register$2;->a(Ljava/lang/Object;)V

    .line 974
    .line 975
    .line 976
    return-void

    .line 977
    :cond_21
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 978
    .line 979
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 980
    .line 981
    .line 982
    new-instance p2, Lcom/mycompany/app/main/MainActivity$5;

    .line 983
    .line 984
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/MainActivity$5;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 985
    .line 986
    .line 987
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->S(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 988
    .line 989
    .line 990
    move-result-object p1

    .line 991
    check-cast p1, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 992
    .line 993
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity;->J:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 994
    .line 995
    return-void

    .line 996
    :pswitch_22
    if-eqz p1, :cond_22

    .line 997
    .line 998
    iget-object p2, p0, Lcom/mycompany/app/main/MainActivity;->I:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 999
    .line 1000
    if-eqz p2, :cond_25

    .line 1001
    .line 1002
    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultRegistry$register$2;->a(Ljava/lang/Object;)V

    .line 1003
    .line 1004
    .line 1005
    return-void

    .line 1006
    :cond_22
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 1007
    .line 1008
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 1009
    .line 1010
    .line 1011
    new-instance p2, Lcom/mycompany/app/main/MainActivity$4;

    .line 1012
    .line 1013
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/MainActivity$4;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 1014
    .line 1015
    .line 1016
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->S(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 1017
    .line 1018
    .line 1019
    move-result-object p1

    .line 1020
    check-cast p1, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 1021
    .line 1022
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity;->I:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 1023
    .line 1024
    return-void

    .line 1025
    :pswitch_23
    if-eqz p1, :cond_23

    .line 1026
    .line 1027
    iget-object p2, p0, Lcom/mycompany/app/main/MainActivity;->H:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 1028
    .line 1029
    if-eqz p2, :cond_25

    .line 1030
    .line 1031
    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultRegistry$register$2;->a(Ljava/lang/Object;)V

    .line 1032
    .line 1033
    .line 1034
    return-void

    .line 1035
    :cond_23
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 1036
    .line 1037
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 1038
    .line 1039
    .line 1040
    new-instance p2, Lcom/mycompany/app/main/MainActivity$3;

    .line 1041
    .line 1042
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/MainActivity$3;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 1043
    .line 1044
    .line 1045
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->S(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 1046
    .line 1047
    .line 1048
    move-result-object p1

    .line 1049
    check-cast p1, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 1050
    .line 1051
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity;->H:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 1052
    .line 1053
    return-void

    .line 1054
    :pswitch_24
    if-eqz p1, :cond_24

    .line 1055
    .line 1056
    iget-object p2, p0, Lcom/mycompany/app/main/MainActivity;->G:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 1057
    .line 1058
    if-eqz p2, :cond_25

    .line 1059
    .line 1060
    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultRegistry$register$2;->a(Ljava/lang/Object;)V

    .line 1061
    .line 1062
    .line 1063
    return-void

    .line 1064
    :cond_24
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 1065
    .line 1066
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 1067
    .line 1068
    .line 1069
    new-instance p2, Lcom/mycompany/app/main/MainActivity$2;

    .line 1070
    .line 1071
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/MainActivity$2;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 1072
    .line 1073
    .line 1074
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->S(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 1075
    .line 1076
    .line 1077
    move-result-object p1

    .line 1078
    check-cast p1, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 1079
    .line 1080
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity;->G:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 1081
    .line 1082
    return-void

    .line 1083
    :pswitch_25
    if-eqz p1, :cond_26

    .line 1084
    .line 1085
    iget-object p2, p0, Lcom/mycompany/app/main/MainActivity;->F:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 1086
    .line 1087
    if-eqz p2, :cond_25

    .line 1088
    .line 1089
    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultRegistry$register$2;->a(Ljava/lang/Object;)V

    .line 1090
    .line 1091
    .line 1092
    :cond_25
    return-void

    .line 1093
    :cond_26
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 1094
    .line 1095
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 1096
    .line 1097
    .line 1098
    new-instance p2, Lcom/mycompany/app/main/MainActivity$1;

    .line 1099
    .line 1100
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/MainActivity$1;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 1101
    .line 1102
    .line 1103
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->S(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 1104
    .line 1105
    .line 1106
    move-result-object p1

    .line 1107
    check-cast p1, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 1108
    .line 1109
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity;->F:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 1110
    .line 1111
    return-void

    .line 1112
    nop

    .line 1113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->Y()Z

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
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->l0()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    iput v0, p0, Lcom/mycompany/app/main/MainActivity;->A0:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x1

    .line 13
    iput p1, p0, Lcom/mycompany/app/main/MainActivity;->A0:I

    .line 14
    .line 15
    :goto_0
    new-instance p1, Lcom/mycompany/app/main/MainActivity$39;

    .line 16
    .line 17
    invoke-direct {p1, p0}, Lcom/mycompany/app/main/MainActivity$39;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 24
    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 29
    .line 30
    if-nez p1, :cond_2

    .line 31
    .line 32
    :goto_1
    return-void

    .line 33
    :cond_2
    new-instance v0, Lcom/mycompany/app/main/MainActivity$50;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/MainActivity$50;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 14
    .line 15
    new-instance p1, Lcom/mycompany/app/main/MainActivity$39;

    .line 16
    .line 17
    invoke-direct {p1, p0}, Lcom/mycompany/app/main/MainActivity$39;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    iget-boolean p1, p0, Lcom/mycompany/app/main/MainActivity;->W0:Z

    .line 24
    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MainActivity;->e0(Lcom/mycompany/app/view/MyEditAuto$KeyBackListener;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity;->S0:Lcom/mycompany/app/main/MainActivity$EventHandler;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->S0:Lcom/mycompany/app/main/MainActivity$EventHandler;

    .line 14
    .line 15
    :cond_0
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->P0:Landroid/view/View;

    .line 16
    .line 17
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Q0:Landroid/view/View;

    .line 18
    .line 19
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->R0:Landroid/view/View;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->R6(Landroid/os/Handler;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 27
    .line 28
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->r0:Landroid/view/View;

    .line 29
    .line 30
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->s0:Landroidx/core/view/WindowInsetsControllerCompat;

    .line 31
    .line 32
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->z0:Landroid/graphics/Point;

    .line 33
    .line 34
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->C0:Ljava/util/concurrent/ExecutorService;

    .line 35
    .line 36
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->F0:Landroid/view/View;

    .line 37
    .line 38
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->G0:Lcom/mycompany/app/main/MainActivity$MainInsetListener;

    .line 39
    .line 40
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->D0:Lcom/mycompany/app/main/MainActivity$MainHeightListener;

    .line 41
    .line 42
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->V0:Lcom/mycompany/app/main/MainActivity$SystemBarListener;

    .line 43
    .line 44
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->X0:Landroid/window/OnBackInvokedCallback;

    .line 45
    .line 46
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Y0:Lcom/mycompany/app/view/MyEditAuto$KeyBackListener;

    .line 47
    .line 48
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/mycompany/app/main/MainActivity;->q0(Z)V

    .line 3
    .line 4
    .line 5
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/mycompany/app/main/MainActivity;->q0(Z)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    new-instance v1, Lcom/mycompany/app/main/MainActivity$50;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/MainActivity$50;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    iget-boolean v1, v0, Lcom/mycompany/app/main/MainApp;->u:Z

    .line 37
    .line 38
    if-eqz v1, :cond_3

    .line 39
    .line 40
    iget-object v0, v0, Lcom/mycompany/app/main/MainApp;->v:Lcom/mycompany/app/main/MainDownSvc;

    .line 41
    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    const/4 v1, 0x1

    .line 46
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainDownSvc;->W(Z)V

    .line 47
    .line 48
    .line 49
    :cond_3
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainActivity;->w0:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/mycompany/app/main/MainActivity;->x0:Z

    .line 9
    .line 10
    new-instance v2, Lcom/mycompany/app/main/MainActivity$39;

    .line 11
    .line 12
    invoke-direct {v2, p0}, Lcom/mycompany/app/main/MainActivity$39;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v2}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainActivity;->T0:Z

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/mycompany/app/main/MainActivity;->q0(Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-boolean v2, v0, Lcom/mycompany/app/main/MainApp;->u:Z

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    iget-object v0, v0, Lcom/mycompany/app/main/MainApp;->v:Lcom/mycompany/app/main/MainDownSvc;

    .line 38
    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainDownSvc;->W(Z)V

    .line 43
    .line 44
    .line 45
    :cond_1
    :goto_0
    return-void
.end method

.method public final p0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity;->P0:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const v1, 0x36ee80

    .line 7
    .line 8
    .line 9
    iget v2, p0, Lcom/mycompany/app/main/MainActivity;->U0:I

    .line 10
    .line 11
    sub-int/2addr v1, v2

    .line 12
    if-gtz v1, :cond_4

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getKeepScreenOn()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 25
    .line 26
    if-nez v0, :cond_3

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_3
    new-instance v1, Lcom/mycompany/app/main/MainActivity$46;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/MainActivity$46;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity;->S0:Lcom/mycompany/app/main/MainActivity$EventHandler;

    .line 39
    .line 40
    if-nez v0, :cond_5

    .line 41
    .line 42
    new-instance v0, Lcom/mycompany/app/main/MainActivity$EventHandler;

    .line 43
    .line 44
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/MainActivity$EventHandler;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/mycompany/app/main/MainActivity;->S0:Lcom/mycompany/app/main/MainActivity$EventHandler;

    .line 48
    .line 49
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity;->S0:Lcom/mycompany/app/main/MainActivity$EventHandler;

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    int-to-long v3, v1

    .line 53
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity;->P0:Landroid/view/View;

    .line 57
    .line 58
    if-nez v0, :cond_6

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getKeepScreenOn()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_7

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 69
    .line 70
    if-nez v0, :cond_8

    .line 71
    .line 72
    :goto_0
    return-void

    .line 73
    :cond_8
    new-instance v1, Lcom/mycompany/app/main/MainActivity$45;

    .line 74
    .line 75
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/MainActivity$45;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public final q0(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity;->P0:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity;->S0:Lcom/mycompany/app/main/MainActivity$EventHandler;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 12
    .line 13
    .line 14
    sget v0, Lcom/mycompany/app/pref/PrefPdf;->m:I

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    if-eq v0, v2, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/mycompany/app/main/MainActivity;->S0:Lcom/mycompany/app/main/MainActivity$EventHandler;

    .line 21
    .line 22
    :cond_1
    sget v0, Lcom/mycompany/app/pref/PrefPdf;->m:I

    .line 23
    .line 24
    const/4 v2, 0x2

    .line 25
    if-ne v0, v2, :cond_5

    .line 26
    .line 27
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->P0:Landroid/view/View;

    .line 28
    .line 29
    if-nez p1, :cond_2

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getKeepScreenOn()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_3

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 40
    .line 41
    if-nez p1, :cond_4

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_4
    new-instance v0, Lcom/mycompany/app/main/MainActivity$45;

    .line 45
    .line 46
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/MainActivity$45;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_5
    if-eqz p1, :cond_8

    .line 54
    .line 55
    if-nez v0, :cond_6

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_6
    iget-boolean p1, p0, Lcom/mycompany/app/main/MainActivity;->T0:Z

    .line 59
    .line 60
    if-nez p1, :cond_7

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->p0()V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_7
    iput-boolean v1, p0, Lcom/mycompany/app/main/MainActivity;->T0:Z

    .line 67
    .line 68
    new-instance p1, Lcom/mycompany/app/main/MainActivity$44;

    .line 69
    .line 70
    invoke-direct {p1, p0}, Lcom/mycompany/app/main/MainActivity$44;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_8
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->P0:Landroid/view/View;

    .line 78
    .line 79
    if-nez p1, :cond_9

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getKeepScreenOn()Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-nez p1, :cond_a

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_a
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 90
    .line 91
    if-nez p1, :cond_b

    .line 92
    .line 93
    :goto_1
    return-void

    .line 94
    :cond_b
    new-instance v0, Lcom/mycompany/app/main/MainActivity$46;

    .line 95
    .line 96
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/MainActivity$46;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public final r0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Lcom/mycompany/app/main/MainActivity$47;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/MainActivity$47;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final s0(Landroid/view/View;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity;->S0:Lcom/mycompany/app/main/MainActivity$EventHandler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    iget-object p2, p0, Lcom/mycompany/app/main/MainActivity;->P0:Landroid/view/View;

    .line 14
    .line 15
    iput-object p2, p0, Lcom/mycompany/app/main/MainActivity;->R0:Landroid/view/View;

    .line 16
    .line 17
    iput-object v2, p0, Lcom/mycompany/app/main/MainActivity;->P0:Landroid/view/View;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->R0:Landroid/view/View;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity;->P0:Landroid/view/View;

    .line 29
    .line 30
    iput-object v2, p0, Lcom/mycompany/app/main/MainActivity;->R0:Landroid/view/View;

    .line 31
    .line 32
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainActivity;->T0:Z

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/mycompany/app/main/MainActivity;->q0(Z)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public setMainInsetView(Landroid/view/View;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/mycompany/app/main/MainConst;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity;->F0:Landroid/view/View;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->g0()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 16
    .line 17
    if-nez p1, :cond_2

    .line 18
    .line 19
    :goto_0
    return-void

    .line 20
    :cond_2
    new-instance v0, Lcom/mycompany/app/main/MainActivity$42;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/MainActivity$42;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public t0(Landroid/content/Intent;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
