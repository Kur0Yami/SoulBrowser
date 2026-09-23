.class Lcom/mycompany/app/dialog/DialogTabMini$12$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogTabMini$12;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMini$12;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMini$12$1;->c:Lcom/mycompany/app/dialog/DialogTabMini$12;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMini$12$1;->c:Lcom/mycompany/app/dialog/DialogTabMini$12;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMini$12;->c:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->t0:Lcom/google/android/material/tabs/TabLayout;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_1

    .line 11
    .line 12
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    .line 14
    const/16 v3, 0x1f

    .line 15
    .line 16
    if-ge v1, v3, :cond_1

    .line 17
    .line 18
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->u0:Landroidx/viewpager2/widget/ViewPager2;

    .line 19
    .line 20
    const/4 v3, 0x2

    .line 21
    invoke-virtual {v1, v3}, Landroid/view/View;->setOverScrollMode(I)V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->g0:Z

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->u0:Landroidx/viewpager2/widget/ViewPager2;

    .line 30
    .line 31
    invoke-virtual {v1, v3}, Landroidx/viewpager2/widget/ViewPager2;->setLayoutDirection(I)V

    .line 32
    .line 33
    .line 34
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->u0:Landroidx/viewpager2/widget/ViewPager2;

    .line 35
    .line 36
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->q7(Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->u0:Landroidx/viewpager2/widget/ViewPager2;

    .line 40
    .line 41
    if-nez v1, :cond_3

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    new-instance v4, Lcom/mycompany/app/dialog/DialogTabMini$18;

    .line 45
    .line 46
    invoke-direct {v4, v0}, Lcom/mycompany/app/dialog/DialogTabMini$18;-><init>(Lcom/mycompany/app/dialog/DialogTabMini;)V

    .line 47
    .line 48
    .line 49
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogTabMini;->v0:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 50
    .line 51
    new-instance v4, Lcom/mycompany/app/dialog/DialogTabMini$ViewPagerAdapter;

    .line 52
    .line 53
    invoke-direct {v4, v0}, Lcom/mycompany/app/dialog/DialogTabMini$ViewPagerAdapter;-><init>(Lcom/mycompany/app/dialog/DialogTabMini;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v4}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 57
    .line 58
    .line 59
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->u0:Landroidx/viewpager2/widget/ViewPager2;

    .line 60
    .line 61
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogTabMini;->v0:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 62
    .line 63
    invoke-virtual {v1, v4}, Landroidx/viewpager2/widget/ViewPager2;->b(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    new-instance v1, Lcom/google/android/material/tabs/TabLayoutMediator;

    .line 67
    .line 68
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogTabMini;->t0:Lcom/google/android/material/tabs/TabLayout;

    .line 69
    .line 70
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogTabMini;->u0:Landroidx/viewpager2/widget/ViewPager2;

    .line 71
    .line 72
    new-instance v6, Lcom/mycompany/app/dialog/DialogTabMini$13;

    .line 73
    .line 74
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-direct {v1, v4, v5, v6}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayoutMediator;->a()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogTabMini;->X()V

    .line 84
    .line 85
    .line 86
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->w0:Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;

    .line 87
    .line 88
    if-eqz v1, :cond_4

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->b(Z)V

    .line 91
    .line 92
    .line 93
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->x0:Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;

    .line 94
    .line 95
    if-eqz v1, :cond_5

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->b(Z)V

    .line 98
    .line 99
    .line 100
    :cond_5
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->h0:Z

    .line 101
    .line 102
    if-eqz v1, :cond_6

    .line 103
    .line 104
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->u0:Landroidx/viewpager2/widget/ViewPager2;

    .line 105
    .line 106
    invoke-virtual {v1, v3, v2}, Landroidx/viewpager2/widget/ViewPager2;->d(IZ)V

    .line 107
    .line 108
    .line 109
    :cond_6
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->h0:Z

    .line 110
    .line 111
    invoke-virtual {v0, v1, v3}, Lcom/mycompany/app/dialog/DialogTabMini;->Y(ZZ)V

    .line 112
    .line 113
    .line 114
    sget-boolean v1, Lcom/mycompany/app/pref/PrefAlbum;->n:Z

    .line 115
    .line 116
    if-eqz v1, :cond_c

    .line 117
    .line 118
    if-nez v1, :cond_7

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->H0:Lcom/mycompany/app/view/MyFadeFrame;

    .line 122
    .line 123
    if-eqz v1, :cond_8

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_8
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogTabMini;->S()Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_9

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_9
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->k0:Lcom/mycompany/app/view/MyDialogMenu;

    .line 134
    .line 135
    if-nez v1, :cond_a

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_a
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 139
    .line 140
    if-nez v1, :cond_b

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_b
    new-instance v3, Lcom/mycompany/app/dialog/DialogTabMini$23;

    .line 144
    .line 145
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogTabMini$23;-><init>(Lcom/mycompany/app/dialog/DialogTabMini;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 149
    .line 150
    .line 151
    :cond_c
    :goto_1
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogTabMini;->j0:Z

    .line 152
    .line 153
    return-void
.end method
