.class Lcom/mycompany/app/main/list/MainListSearch$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/list/MainListSearch;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/list/MainListSearch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/list/MainListSearch$7;->c:Lcom/mycompany/app/main/list/MainListSearch;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListSearch$7;->c:Lcom/mycompany/app/main/list/MainListSearch;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListSearch;->D1:Lcom/mycompany/app/view/MyMainRelative;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_5

    .line 8
    .line 9
    :cond_0
    new-instance v1, Lcom/mycompany/app/view/MyRecyclerView;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Lcom/mycompany/app/view/MyRecyclerView;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, v0, Lcom/mycompany/app/main/list/MainListSearch;->Q1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 15
    .line 16
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 17
    .line 18
    const/4 v3, -0x1

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    const v2, -0xdededf

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListSearch;->Q1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 32
    .line 33
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 34
    .line 35
    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListSearch;->Q1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->w(ILcom/mycompany/app/view/MyRecyclerView;)V

    .line 45
    .line 46
    .line 47
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListSearch;->Q1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 48
    .line 49
    new-instance v3, Lcom/mycompany/app/main/list/MainListSearch$8;

    .line 50
    .line 51
    invoke-direct {v3, v0}, Lcom/mycompany/app/main/list/MainListSearch$8;-><init>(Lcom/mycompany/app/main/list/MainListSearch;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->j(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 55
    .line 56
    .line 57
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->M5()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    iput-boolean v1, v0, Lcom/mycompany/app/main/list/MainListSearch;->O1:Z

    .line 62
    .line 63
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->r3()[Z

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iput-object v1, v0, Lcom/mycompany/app/main/list/MainListSearch;->P1:[Z

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/mycompany/app/main/list/MainListSearch;->E0()V

    .line 70
    .line 71
    .line 72
    new-instance v4, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .line 76
    .line 77
    const/4 v1, 0x0

    .line 78
    move v3, v1

    .line 79
    :goto_1
    sget-object v5, Lcom/mycompany/app/main/MainConst;->D:[I

    .line 80
    .line 81
    array-length v6, v5

    .line 82
    if-ge v3, v6, :cond_5

    .line 83
    .line 84
    iget-boolean v6, v0, Lcom/mycompany/app/main/list/MainListSearch;->O1:Z

    .line 85
    .line 86
    if-eqz v6, :cond_2

    .line 87
    .line 88
    sget-object v6, Lcom/mycompany/app/main/MainConst;->C:[I

    .line 89
    .line 90
    aget v6, v6, v3

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_2
    move v6, v3

    .line 94
    :goto_2
    iget-object v7, v0, Lcom/mycompany/app/main/list/MainListSearch;->P1:[Z

    .line 95
    .line 96
    if-eqz v7, :cond_4

    .line 97
    .line 98
    if-ltz v6, :cond_3

    .line 99
    .line 100
    array-length v8, v7

    .line 101
    if-ge v6, v8, :cond_3

    .line 102
    .line 103
    aget-boolean v7, v7, v6

    .line 104
    .line 105
    if-eqz v7, :cond_3

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_3
    move v7, v1

    .line 109
    goto :goto_4

    .line 110
    :cond_4
    :goto_3
    move v7, v2

    .line 111
    :goto_4
    new-instance v8, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 112
    .line 113
    sget-object v9, Lcom/mycompany/app/main/MainConst;->E:[I

    .line 114
    .line 115
    aget v9, v9, v6

    .line 116
    .line 117
    aget v5, v5, v6

    .line 118
    .line 119
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 120
    .line 121
    .line 122
    iput v6, v8, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->a:I

    .line 123
    .line 124
    iput v9, v8, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->c:I

    .line 125
    .line 126
    iput v5, v8, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->d:I

    .line 127
    .line 128
    iput-boolean v7, v8, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->j:Z

    .line 129
    .line 130
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    add-int/lit8 v3, v3, 0x1

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_5
    new-instance v3, Lcom/mycompany/app/main/MainSelectAdapter;

    .line 137
    .line 138
    sget v5, Lcom/mycompany/app/pref/PrefZtwo;->j:I

    .line 139
    .line 140
    new-instance v8, Lcom/mycompany/app/main/list/MainListSearch$9;

    .line 141
    .line 142
    invoke-direct {v8, v0}, Lcom/mycompany/app/main/list/MainListSearch$9;-><init>(Lcom/mycompany/app/main/list/MainListSearch;)V

    .line 143
    .line 144
    .line 145
    const/4 v6, 0x4

    .line 146
    const/4 v7, 0x1

    .line 147
    invoke-direct/range {v3 .. v8}, Lcom/mycompany/app/main/MainSelectAdapter;-><init>(Ljava/util/List;IIZLcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;)V

    .line 148
    .line 149
    .line 150
    iput-object v3, v0, Lcom/mycompany/app/main/list/MainListSearch;->R1:Lcom/mycompany/app/main/MainSelectAdapter;

    .line 151
    .line 152
    new-instance v1, Lcom/mycompany/app/main/list/MainListSearch$10;

    .line 153
    .line 154
    invoke-direct {v1, v0}, Lcom/mycompany/app/main/list/MainListSearch$10;-><init>(Lcom/mycompany/app/main/list/MainListSearch;)V

    .line 155
    .line 156
    .line 157
    iput-object v1, v3, Lcom/mycompany/app/main/MainSelectAdapter;->j:Lcom/mycompany/app/main/MainDragAdapter$MainDragListener;

    .line 158
    .line 159
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListSearch;->Q1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 160
    .line 161
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 162
    .line 163
    .line 164
    :goto_5
    iget-object v0, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 165
    .line 166
    if-nez v0, :cond_6

    .line 167
    .line 168
    return-void

    .line 169
    :cond_6
    new-instance v1, Lcom/mycompany/app/main/list/MainListSearch$7$1;

    .line 170
    .line 171
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/list/MainListSearch$7$1;-><init>(Lcom/mycompany/app/main/list/MainListSearch$7;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 175
    .line 176
    .line 177
    return-void
.end method
