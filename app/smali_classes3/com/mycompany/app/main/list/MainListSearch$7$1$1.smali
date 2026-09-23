.class Lcom/mycompany/app/main/list/MainListSearch$7$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/list/MainListSearch$7$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/list/MainListSearch$7$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/list/MainListSearch$7$1$1;->c:Lcom/mycompany/app/main/list/MainListSearch$7$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListSearch$7$1$1;->c:Lcom/mycompany/app/main/list/MainListSearch$7$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/list/MainListSearch$7$1;->c:Lcom/mycompany/app/main/list/MainListSearch$7;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/main/list/MainListSearch$7;->c:Lcom/mycompany/app/main/list/MainListSearch;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListSearch;->D1:Lcom/mycompany/app/view/MyMainRelative;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 v2, 0x1f

    .line 16
    .line 17
    if-ge v1, v2, :cond_1

    .line 18
    .line 19
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListSearch;->M1:Landroidx/viewpager2/widget/ViewPager2;

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    invoke-virtual {v1, v2}, Landroid/view/View;->setOverScrollMode(I)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->O5(Landroid/content/Context;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/4 v2, 0x1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListSearch;->M1:Landroidx/viewpager2/widget/ViewPager2;

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setLayoutDirection(I)V

    .line 37
    .line 38
    .line 39
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListSearch;->M1:Landroidx/viewpager2/widget/ViewPager2;

    .line 40
    .line 41
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->q7(Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListSearch;->M1:Landroidx/viewpager2/widget/ViewPager2;

    .line 45
    .line 46
    if-nez v1, :cond_3

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    new-instance v3, Lcom/mycompany/app/main/list/MainListSearch$14;

    .line 50
    .line 51
    invoke-direct {v3, v0}, Lcom/mycompany/app/main/list/MainListSearch$14;-><init>(Lcom/mycompany/app/main/list/MainListSearch;)V

    .line 52
    .line 53
    .line 54
    iput-object v3, v0, Lcom/mycompany/app/main/list/MainListSearch;->N1:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 55
    .line 56
    new-instance v3, Lcom/mycompany/app/main/list/MainListSearch$ViewPagerAdapter;

    .line 57
    .line 58
    invoke-direct {v3, v0}, Lcom/mycompany/app/main/list/MainListSearch$ViewPagerAdapter;-><init>(Lcom/mycompany/app/main/list/MainListSearch;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v3}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 62
    .line 63
    .line 64
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListSearch;->M1:Landroidx/viewpager2/widget/ViewPager2;

    .line 65
    .line 66
    iget-object v3, v0, Lcom/mycompany/app/main/list/MainListSearch;->N1:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 67
    .line 68
    invoke-virtual {v1, v3}, Landroidx/viewpager2/widget/ViewPager2;->b(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 69
    .line 70
    .line 71
    :goto_0
    new-instance v1, Lcom/google/android/material/tabs/TabLayoutMediator;

    .line 72
    .line 73
    iget-object v3, v0, Lcom/mycompany/app/main/list/MainListSearch;->L1:Lcom/google/android/material/tabs/TabLayout;

    .line 74
    .line 75
    iget-object v4, v0, Lcom/mycompany/app/main/list/MainListSearch;->M1:Landroidx/viewpager2/widget/ViewPager2;

    .line 76
    .line 77
    new-instance v5, Lcom/mycompany/app/main/list/MainListSearch$12;

    .line 78
    .line 79
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-direct {v1, v3, v4, v5}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayoutMediator;->a()V

    .line 86
    .line 87
    .line 88
    sget v1, Lcom/mycompany/app/pref/PrefZtwo;->j:I

    .line 89
    .line 90
    const/16 v3, 0xa

    .line 91
    .line 92
    if-ge v1, v3, :cond_6

    .line 93
    .line 94
    iget-object v3, v0, Lcom/mycompany/app/main/list/MainListSearch;->Q1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 95
    .line 96
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->i0(I)V

    .line 97
    .line 98
    .line 99
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListSearch;->R1:Lcom/mycompany/app/main/MainSelectAdapter;

    .line 100
    .line 101
    sget v3, Lcom/mycompany/app/pref/PrefZtwo;->j:I

    .line 102
    .line 103
    iget-object v4, v1, Lcom/mycompany/app/main/MainSelectAdapter;->d:Ljava/util/List;

    .line 104
    .line 105
    if-nez v4, :cond_4

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_4
    iput v3, v1, Lcom/mycompany/app/main/MainSelectAdapter;->f:I

    .line 109
    .line 110
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-eqz v4, :cond_5

    .line 119
    .line 120
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    check-cast v4, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 125
    .line 126
    iput-boolean v2, v4, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->i:Z

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_5
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_6
    const/16 v3, 0x64

    .line 134
    .line 135
    if-le v1, v3, :cond_7

    .line 136
    .line 137
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListSearch;->M1:Landroidx/viewpager2/widget/ViewPager2;

    .line 138
    .line 139
    const/4 v3, 0x0

    .line 140
    invoke-virtual {v1, v2, v3}, Landroidx/viewpager2/widget/ViewPager2;->d(IZ)V

    .line 141
    .line 142
    .line 143
    :cond_7
    :goto_2
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 144
    .line 145
    if-nez v1, :cond_8

    .line 146
    .line 147
    :goto_3
    return-void

    .line 148
    :cond_8
    new-instance v2, Lcom/mycompany/app/main/list/MainListSearch$13;

    .line 149
    .line 150
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/list/MainListSearch$13;-><init>(Lcom/mycompany/app/main/list/MainListSearch;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 154
    .line 155
    .line 156
    return-void
.end method
