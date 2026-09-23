.class Lcom/mycompany/app/main/list/MainListDown$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/list/MainListDown;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/list/MainListDown;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/list/MainListDown$19;->c:Lcom/mycompany/app/main/list/MainListDown;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListDown$19;->c:Lcom/mycompany/app/main/list/MainListDown;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListDown;->V1:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/main/list/MainListDown;->V1:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 7
    .line 8
    iget-boolean v3, v0, Lcom/mycompany/app/main/list/MainListDown;->M1:Z

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    iput-boolean v4, v0, Lcom/mycompany/app/main/list/MainListDown;->M1:Z

    .line 14
    .line 15
    iget-object v0, v0, Lcom/mycompany/app/main/list/MainListDown;->G1:Lcom/mycompany/app/main/MainListView;

    .line 16
    .line 17
    if-eqz v0, :cond_a

    .line 18
    .line 19
    invoke-virtual {v0, v4, v4}, Lcom/mycompany/app/main/MainListView;->U(ZZ)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v0, v0, Lcom/mycompany/app/main/list/MainListDown;->G1:Lcom/mycompany/app/main/MainListView;

    .line 24
    .line 25
    if-eqz v0, :cond_a

    .line 26
    .line 27
    iget-object v0, v0, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 28
    .line 29
    if-eqz v0, :cond_a

    .line 30
    .line 31
    iget-object v3, v0, Lcom/mycompany/app/main/MainListAdapter;->g:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 32
    .line 33
    if-eqz v3, :cond_a

    .line 34
    .line 35
    iget-object v5, v0, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    .line 36
    .line 37
    if-eqz v5, :cond_a

    .line 38
    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    :goto_0
    if-ge v4, v3, :cond_a

    .line 47
    .line 48
    iget-object v5, v0, Lcom/mycompany/app/main/MainListAdapter;->g:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 49
    .line 50
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    if-nez v5, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    if-nez v5, :cond_3

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    instance-of v6, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;

    .line 65
    .line 66
    if-nez v6, :cond_4

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_4
    check-cast v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;

    .line 70
    .line 71
    iget-wide v6, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->w:J

    .line 72
    .line 73
    iget-wide v8, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->b:J

    .line 74
    .line 75
    cmp-long v6, v6, v8

    .line 76
    .line 77
    if-eqz v6, :cond_5

    .line 78
    .line 79
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_5
    iget v3, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->v:I

    .line 83
    .line 84
    if-ltz v3, :cond_a

    .line 85
    .line 86
    iget-object v4, v0, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    .line 87
    .line 88
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-lt v3, v4, :cond_6

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_6
    iget-object v3, v0, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    .line 96
    .line 97
    iget v4, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->v:I

    .line 98
    .line 99
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    check-cast v3, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 104
    .line 105
    if-nez v3, :cond_7

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_7
    iget v4, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 109
    .line 110
    iput v4, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->d:I

    .line 111
    .line 112
    iget-wide v6, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 113
    .line 114
    iput-wide v6, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->B:J

    .line 115
    .line 116
    iget-wide v6, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    .line 117
    .line 118
    iput-wide v6, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->C:J

    .line 119
    .line 120
    iget-wide v6, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->r:J

    .line 121
    .line 122
    iput-wide v6, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->D:J

    .line 123
    .line 124
    iget-wide v6, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->s:J

    .line 125
    .line 126
    iput-wide v6, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->E:J

    .line 127
    .line 128
    iget-boolean v1, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->J:Z

    .line 129
    .line 130
    iput-boolean v1, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->M:Z

    .line 131
    .line 132
    const/4 v1, 0x3

    .line 133
    if-eq v4, v1, :cond_8

    .line 134
    .line 135
    const/4 v1, 0x5

    .line 136
    if-ne v4, v1, :cond_9

    .line 137
    .line 138
    :cond_8
    iput-object v2, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 139
    .line 140
    :cond_9
    invoke-virtual {v0, v5, v3}, Lcom/mycompany/app/main/MainListAdapter;->x(Lcom/mycompany/app/main/MainListAdapter$ChildHolder;Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 141
    .line 142
    .line 143
    :cond_a
    :goto_2
    return-void
.end method
