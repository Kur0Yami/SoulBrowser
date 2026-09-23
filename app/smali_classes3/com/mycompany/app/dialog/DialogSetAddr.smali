.class public Lcom/mycompany/app/dialog/DialogSetAddr;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# static fields
.field public static final synthetic v0:I


# instance fields
.field public a0:Landroid/app/Activity;

.field public b0:Landroid/content/Context;

.field public c0:Lcom/mycompany/app/view/MyDialogLinear;

.field public d0:Lcom/mycompany/app/view/MyAddrView;

.field public e0:Lcom/mycompany/app/view/MyRecyclerView;

.field public f0:Landroidx/appcompat/widget/AppCompatTextView;

.field public g0:Landroid/widget/LinearLayout;

.field public h0:[Lcom/mycompany/app/view/MyButtonImage;

.field public i0:Landroid/widget/RelativeLayout;

.field public j0:Landroidx/appcompat/widget/AppCompatTextView;

.field public k0:Landroidx/appcompat/widget/AppCompatTextView;

.field public l0:Landroidx/appcompat/widget/AppCompatTextView;

.field public m0:Lcom/mycompany/app/view/MyLineText;

.field public n0:Lcom/mycompany/app/main/AddrIconAdapter;

.field public o0:Lcom/mycompany/app/view/MyManagerLinear;

.field public p0:Lcom/mycompany/app/quick/MenuDragHelper;

.field public q0:Landroidx/recyclerview/widget/ItemTouchHelper;

.field public r0:Z

.field public s0:[I

.field public t0:Lcom/mycompany/app/dialog/DialogSetMsg;

.field public u0:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetAddr;->a0:Landroid/app/Activity;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetAddr;->b0:Landroid/content/Context;

    .line 11
    .line 12
    sget-object p1, Lcom/mycompany/app/pref/PrefMain;->H:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->a2(Ljava/lang/String;)[I

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetAddr;->s0:[I

    .line 19
    .line 20
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    new-instance v0, Lcom/mycompany/app/dialog/DialogSetAddr$1;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogSetAddr$1;-><init>(Lcom/mycompany/app/dialog/DialogSetAddr;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogSetAddr;Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetAddr;->n0:Lcom/mycompany/app/main/AddrIconAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_b

    .line 6
    .line 7
    :cond_0
    iget v1, v0, Lcom/mycompany/app/main/AddrIconAdapter;->d:I

    .line 8
    .line 9
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogSetAddr;->s0:[I

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    array-length v4, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    move v4, v3

    .line 17
    :goto_0
    iget-object v5, v0, Lcom/mycompany/app/main/AddrIconAdapter;->g:Ljava/util/ArrayList;

    .line 18
    .line 19
    if-nez v5, :cond_2

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    sub-int/2addr v5, v1

    .line 27
    if-gez v5, :cond_3

    .line 28
    .line 29
    :goto_1
    move v5, v3

    .line 30
    :cond_3
    if-eq v4, v5, :cond_4

    .line 31
    .line 32
    goto :goto_3

    .line 33
    :cond_4
    if-nez v5, :cond_5

    .line 34
    .line 35
    goto/16 :goto_a

    .line 36
    .line 37
    :cond_5
    move v4, v3

    .line 38
    :goto_2
    if-ge v4, v5, :cond_10

    .line 39
    .line 40
    iget-object v6, v0, Lcom/mycompany/app/main/AddrIconAdapter;->g:Ljava/util/ArrayList;

    .line 41
    .line 42
    add-int v7, v4, v1

    .line 43
    .line 44
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    check-cast v6, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;

    .line 49
    .line 50
    if-nez v6, :cond_6

    .line 51
    .line 52
    goto :goto_9

    .line 53
    :cond_6
    aget v7, v2, v4

    .line 54
    .line 55
    iget v6, v6, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;->a:I

    .line 56
    .line 57
    if-eq v7, v6, :cond_f

    .line 58
    .line 59
    :goto_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetAddr;->n0:Lcom/mycompany/app/main/AddrIconAdapter;

    .line 60
    .line 61
    iget-object v1, v0, Lcom/mycompany/app/main/AddrIconAdapter;->g:Ljava/util/ArrayList;

    .line 62
    .line 63
    iget v2, v0, Lcom/mycompany/app/main/AddrIconAdapter;->d:I

    .line 64
    .line 65
    if-nez v1, :cond_7

    .line 66
    .line 67
    goto :goto_4

    .line 68
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    sub-int/2addr v1, v2

    .line 73
    if-gez v1, :cond_8

    .line 74
    .line 75
    :goto_4
    move v1, v3

    .line 76
    :cond_8
    if-nez v1, :cond_9

    .line 77
    .line 78
    const/4 v0, 0x0

    .line 79
    goto :goto_7

    .line 80
    :cond_9
    new-array v4, v1, [I

    .line 81
    .line 82
    move v5, v3

    .line 83
    :goto_5
    if-ge v5, v1, :cond_d

    .line 84
    .line 85
    iget-object v6, v0, Lcom/mycompany/app/main/AddrIconAdapter;->g:Ljava/util/ArrayList;

    .line 86
    .line 87
    add-int v7, v5, v2

    .line 88
    .line 89
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    check-cast v6, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;

    .line 94
    .line 95
    if-nez v6, :cond_a

    .line 96
    .line 97
    goto :goto_6

    .line 98
    :cond_a
    iget v6, v6, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;->a:I

    .line 99
    .line 100
    if-ltz v6, :cond_c

    .line 101
    .line 102
    const/4 v7, 0x3

    .line 103
    if-lt v6, v7, :cond_b

    .line 104
    .line 105
    goto :goto_6

    .line 106
    :cond_b
    aput v6, v4, v5

    .line 107
    .line 108
    :cond_c
    :goto_6
    add-int/lit8 v5, v5, 0x1

    .line 109
    .line 110
    goto :goto_5

    .line 111
    :cond_d
    move-object v0, v4

    .line 112
    :goto_7
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->b2([I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    sput-object v0, Lcom/mycompany/app/pref/PrefMain;->H:Ljava/lang/String;

    .line 117
    .line 118
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetAddr;->b0:Landroid/content/Context;

    .line 119
    .line 120
    invoke-static {v0, v3}, Lcom/mycompany/app/pref/PrefMain;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefMain;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    const-string v1, "mAddrItems2"

    .line 125
    .line 126
    if-eqz p1, :cond_e

    .line 127
    .line 128
    sget-object v2, Lcom/mycompany/app/pref/PrefMain;->H:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    goto :goto_8

    .line 134
    :cond_e
    invoke-virtual {v0, v1}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    :goto_8
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 138
    .line 139
    .line 140
    goto :goto_a

    .line 141
    :cond_f
    :goto_9
    add-int/lit8 v4, v4, 0x1

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_10
    :goto_a
    if-eqz p1, :cond_11

    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogSetAddr;->dismiss()V

    .line 147
    .line 148
    .line 149
    :cond_11
    :goto_b
    return-void
.end method


# virtual methods
.method public final C()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetAddr;->t0:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetMsg;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetAddr;->t0:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final D()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetAddr;->n0:Lcom/mycompany/app/main/AddrIconAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetAddr;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_4

    .line 10
    .line 11
    :cond_0
    iget-object v0, v0, Lcom/mycompany/app/main/AddrIconAdapter;->h:Ljava/util/ArrayList;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_7

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    goto :goto_3

    .line 23
    :cond_1
    invoke-static {v1, v1}, Lcom/mycompany/app/main/MainUtil;->s0(IZ)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x1

    .line 28
    invoke-static {v2, v1, v3}, Lcom/mycompany/app/view/MyIconView;->j(IIZ)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-static {v2, v1}, Lcom/mycompany/app/main/MainUtil;->P1(II)I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    move v6, v1

    .line 41
    :goto_0
    const/4 v7, 0x3

    .line 42
    const/4 v8, 0x4

    .line 43
    if-ge v6, v7, :cond_6

    .line 44
    .line 45
    iget-object v9, p0, Lcom/mycompany/app/dialog/DialogSetAddr;->h0:[Lcom/mycompany/app/view/MyButtonImage;

    .line 46
    .line 47
    aget-object v9, v9, v6

    .line 48
    .line 49
    if-nez v9, :cond_2

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    if-lt v6, v5, :cond_3

    .line 53
    .line 54
    invoke-virtual {v9, v8}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_3
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v10

    .line 62
    check-cast v10, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;

    .line 63
    .line 64
    if-eqz v10, :cond_5

    .line 65
    .line 66
    iget v10, v10, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;->a:I

    .line 67
    .line 68
    if-ltz v10, :cond_5

    .line 69
    .line 70
    if-lt v10, v7, :cond_4

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_4
    invoke-static {v10, v2}, Lcom/mycompany/app/main/MainUtil;->N(II)I

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    invoke-virtual {v9, v7}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v9, v3, v4}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v9, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_5
    :goto_1
    invoke-virtual {v9, v8}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetAddr;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetAddr;->g0:Landroid/widget/LinearLayout;

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetAddr;->i0:Landroid/widget/RelativeLayout;

    .line 104
    .line 105
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetAddr;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 110
    .line 111
    const/16 v2, 0x8

    .line 112
    .line 113
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetAddr;->g0:Landroid/widget/LinearLayout;

    .line 117
    .line 118
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetAddr;->i0:Landroid/widget/RelativeLayout;

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 124
    .line 125
    .line 126
    :cond_8
    :goto_4
    return-void
.end method

.method public final dismiss()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetAddr;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogSetAddr;->C()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetAddr;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetAddr;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetAddr;->d0:Lcom/mycompany/app/view/MyAddrView;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iput-object v1, v0, Lcom/mycompany/app/view/MyAddrView;->c:Lcom/mycompany/app/view/MyBarView$BarListener;

    .line 27
    .line 28
    iput-object v1, v0, Lcom/mycompany/app/view/MyAddrView;->f:[I

    .line 29
    .line 30
    iput-object v1, v0, Lcom/mycompany/app/view/MyAddrView;->g:[Lcom/mycompany/app/view/MyIconView;

    .line 31
    .line 32
    iput-object v1, v0, Lcom/mycompany/app/view/MyAddrView;->k:Landroid/graphics/RectF;

    .line 33
    .line 34
    iput-object v1, v0, Lcom/mycompany/app/view/MyAddrView;->l:Landroid/graphics/Paint;

    .line 35
    .line 36
    iput-object v1, v0, Lcom/mycompany/app/view/MyAddrView;->n:Landroid/graphics/Paint;

    .line 37
    .line 38
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetAddr;->d0:Lcom/mycompany/app/view/MyAddrView;

    .line 39
    .line 40
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetAddr;->e0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetAddr;->e0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 48
    .line 49
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetAddr;->m0:Lcom/mycompany/app/view/MyLineText;

    .line 50
    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 54
    .line 55
    .line 56
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetAddr;->m0:Lcom/mycompany/app/view/MyLineText;

    .line 57
    .line 58
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetAddr;->n0:Lcom/mycompany/app/main/AddrIconAdapter;

    .line 59
    .line 60
    if-eqz v0, :cond_5

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/mycompany/app/main/AddrIconAdapter;->d()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    iput v2, v0, Lcom/mycompany/app/main/AddrIconAdapter;->j:I

    .line 67
    .line 68
    iput-object v1, v0, Lcom/mycompany/app/main/AddrIconAdapter;->e:Landroid/view/View;

    .line 69
    .line 70
    iput-object v1, v0, Lcom/mycompany/app/main/AddrIconAdapter;->f:Lcom/mycompany/app/main/AddrIconAdapter$AddrListener;

    .line 71
    .line 72
    iput-object v1, v0, Lcom/mycompany/app/main/AddrIconAdapter;->g:Ljava/util/ArrayList;

    .line 73
    .line 74
    iput-object v1, v0, Lcom/mycompany/app/main/AddrIconAdapter;->h:Ljava/util/ArrayList;

    .line 75
    .line 76
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetAddr;->n0:Lcom/mycompany/app/main/AddrIconAdapter;

    .line 77
    .line 78
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetAddr;->p0:Lcom/mycompany/app/quick/MenuDragHelper;

    .line 79
    .line 80
    if-eqz v0, :cond_6

    .line 81
    .line 82
    iput-object v1, v0, Lcom/mycompany/app/quick/MenuDragHelper;->d:Lcom/mycompany/app/quick/MenuDragHelper$MenuDragListener;

    .line 83
    .line 84
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetAddr;->p0:Lcom/mycompany/app/quick/MenuDragHelper;

    .line 85
    .line 86
    :cond_6
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetAddr;->a0:Landroid/app/Activity;

    .line 87
    .line 88
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetAddr;->b0:Landroid/content/Context;

    .line 89
    .line 90
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetAddr;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 91
    .line 92
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetAddr;->g0:Landroid/widget/LinearLayout;

    .line 93
    .line 94
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetAddr;->h0:[Lcom/mycompany/app/view/MyButtonImage;

    .line 95
    .line 96
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetAddr;->i0:Landroid/widget/RelativeLayout;

    .line 97
    .line 98
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetAddr;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 99
    .line 100
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetAddr;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 101
    .line 102
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetAddr;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 103
    .line 104
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetAddr;->o0:Lcom/mycompany/app/view/MyManagerLinear;

    .line 105
    .line 106
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetAddr;->q0:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 107
    .line 108
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetAddr;->s0:[I

    .line 109
    .line 110
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 111
    .line 112
    .line 113
    return-void
.end method
