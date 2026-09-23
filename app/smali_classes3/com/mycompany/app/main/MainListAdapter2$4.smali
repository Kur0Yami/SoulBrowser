.class Lcom/mycompany/app/main/MainListAdapter2$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainListAdapter2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListAdapter2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListAdapter2$4;->c:Lcom/mycompany/app/main/MainListAdapter2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter2$4;->c:Lcom/mycompany/app/main/MainListAdapter2;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainListAdapter2;->q:Lcom/mycompany/app/main/MainListAdapter2$List2Listener;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto/16 :goto_5

    .line 9
    .line 10
    :cond_0
    if-nez p1, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-nez p1, :cond_2

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    instance-of v1, p1, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;

    .line 21
    .line 22
    if-nez v1, :cond_3

    .line 23
    .line 24
    :goto_0
    const/4 p1, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_3
    check-cast p1, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;

    .line 27
    .line 28
    :goto_1
    if-eqz p1, :cond_11

    .line 29
    .line 30
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 31
    .line 32
    if-nez v1, :cond_4

    .line 33
    .line 34
    goto/16 :goto_5

    .line 35
    .line 36
    :cond_4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iget-object v0, v0, Lcom/mycompany/app/main/MainListAdapter2;->q:Lcom/mycompany/app/main/MainListAdapter2$List2Listener;

    .line 41
    .line 42
    check-cast v0, Lcom/mycompany/app/main/MainListView2$38;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/mycompany/app/main/MainListView2$38;->a:Lcom/mycompany/app/main/MainListView2;

    .line 45
    .line 46
    iget v3, v0, Lcom/mycompany/app/main/MainListView2;->e:I

    .line 47
    .line 48
    iget-boolean v4, v0, Lcom/mycompany/app/main/MainListView2;->k:Z

    .line 49
    .line 50
    if-eqz v4, :cond_11

    .line 51
    .line 52
    iget-boolean v5, v0, Lcom/mycompany/app/main/MainListView2;->B:Z

    .line 53
    .line 54
    if-nez v5, :cond_11

    .line 55
    .line 56
    iget-object v5, v0, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 57
    .line 58
    if-nez v5, :cond_5

    .line 59
    .line 60
    goto/16 :goto_5

    .line 61
    .line 62
    :cond_5
    iget-object v5, v0, Lcom/mycompany/app/main/MainListView2;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 63
    .line 64
    if-eqz v5, :cond_11

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView2;->m()Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_6

    .line 71
    .line 72
    goto :goto_5

    .line 73
    :cond_6
    iget-object v5, v0, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 74
    .line 75
    invoke-virtual {v5, v1}, Lcom/mycompany/app/main/MainListAdapter2;->E(I)Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-eqz v5, :cond_7

    .line 80
    .line 81
    goto :goto_5

    .line 82
    :cond_7
    iget-object v5, v0, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 83
    .line 84
    iget-boolean v6, v5, Lcom/mycompany/app/main/MainListAdapter2;->m:Z

    .line 85
    .line 86
    const/16 v7, 0x11

    .line 87
    .line 88
    if-nez v6, :cond_8

    .line 89
    .line 90
    invoke-virtual {v0, v1, v2, v2}, Lcom/mycompany/app/main/MainListView2;->B(IZZ)V

    .line 91
    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_8
    if-eqz v4, :cond_a

    .line 95
    .line 96
    iget-boolean v6, v0, Lcom/mycompany/app/main/MainListView2;->E0:Z

    .line 97
    .line 98
    if-eqz v6, :cond_9

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_9
    if-ne v3, v7, :cond_d

    .line 102
    .line 103
    sget-boolean v6, Lcom/mycompany/app/pref/PrefList;->F:Z

    .line 104
    .line 105
    if-nez v6, :cond_d

    .line 106
    .line 107
    :cond_a
    :goto_2
    iget-object v6, v5, Lcom/mycompany/app/main/MainListAdapter2;->h:[Z

    .line 108
    .line 109
    if-eqz v6, :cond_c

    .line 110
    .line 111
    iget v8, v5, Lcom/mycompany/app/main/MainListAdapter2;->j:I

    .line 112
    .line 113
    if-lt v1, v8, :cond_c

    .line 114
    .line 115
    array-length v8, v6

    .line 116
    iget v9, v5, Lcom/mycompany/app/main/MainListAdapter2;->k:I

    .line 117
    .line 118
    sub-int/2addr v8, v9

    .line 119
    if-lt v1, v8, :cond_b

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_b
    aget-boolean v6, v6, v1

    .line 123
    .line 124
    xor-int/2addr v6, v2

    .line 125
    invoke-virtual {v5, v1, v6}, Lcom/mycompany/app/main/MainListAdapter2;->G(IZ)V

    .line 126
    .line 127
    .line 128
    :cond_c
    :goto_3
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView2;->A()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView2;->y()V

    .line 132
    .line 133
    .line 134
    :cond_d
    :goto_4
    if-eqz v4, :cond_11

    .line 135
    .line 136
    iget-boolean v4, v0, Lcom/mycompany/app/main/MainListView2;->E0:Z

    .line 137
    .line 138
    if-eqz v4, :cond_e

    .line 139
    .line 140
    goto :goto_5

    .line 141
    :cond_e
    if-ne v3, v7, :cond_f

    .line 142
    .line 143
    sget-boolean v3, Lcom/mycompany/app/pref/PrefList;->F:Z

    .line 144
    .line 145
    if-nez v3, :cond_f

    .line 146
    .line 147
    goto :goto_5

    .line 148
    :cond_f
    iget-object v3, v0, Lcom/mycompany/app/main/MainListView2;->A:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 149
    .line 150
    if-nez v3, :cond_10

    .line 151
    .line 152
    goto :goto_5

    .line 153
    :cond_10
    iput v1, v0, Lcom/mycompany/app/main/MainListView2;->C:I

    .line 154
    .line 155
    iput v1, v0, Lcom/mycompany/app/main/MainListView2;->D:I

    .line 156
    .line 157
    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->t(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 158
    .line 159
    .line 160
    :cond_11
    :goto_5
    return v2
.end method
