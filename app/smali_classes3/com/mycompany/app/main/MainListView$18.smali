.class Lcom/mycompany/app/main/MainListView$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupCollapseListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/MainListView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView$18;->a:Lcom/mycompany/app/main/MainListView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onGroupCollapse(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView$18;->a:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->M:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_4

    .line 8
    .line 9
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 10
    .line 11
    const/4 v2, -0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    iget-boolean v4, v1, Lcom/mycompany/app/main/MainListAdapter;->t:Z

    .line 16
    .line 17
    if-eqz v4, :cond_1

    .line 18
    .line 19
    iput-boolean v3, v1, Lcom/mycompany/app/main/MainListAdapter;->t:Z

    .line 20
    .line 21
    iput p1, v1, Lcom/mycompany/app/main/MainListAdapter;->u:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iput v2, v1, Lcom/mycompany/app/main/MainListAdapter;->u:I

    .line 25
    .line 26
    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->p:Lcom/mycompany/app/view/MyListGroup;

    .line 27
    .line 28
    if-eqz v1, :cond_9

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_9

    .line 35
    .line 36
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 37
    .line 38
    iget-object v4, v1, Lcom/mycompany/app/main/MainListAdapter;->g:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 39
    .line 40
    if-eqz v4, :cond_8

    .line 41
    .line 42
    iget-object v4, v1, Lcom/mycompany/app/main/MainListAdapter;->h:Ljava/util/List;

    .line 43
    .line 44
    if-eqz v4, :cond_8

    .line 45
    .line 46
    if-ltz p1, :cond_8

    .line 47
    .line 48
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-lt p1, v4, :cond_3

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_3
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter;->h:Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    const/4 v4, 0x1

    .line 62
    if-ne v2, v4, :cond_4

    .line 63
    .line 64
    move v2, v3

    .line 65
    goto :goto_3

    .line 66
    :cond_4
    move v2, p1

    .line 67
    :goto_1
    if-ge v3, p1, :cond_8

    .line 68
    .line 69
    iget-object v4, v1, Lcom/mycompany/app/main/MainListAdapter;->h:Ljava/util/List;

    .line 70
    .line 71
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-lt v3, v4, :cond_5

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_5
    iget-object v4, v1, Lcom/mycompany/app/main/MainListAdapter;->h:Ljava/util/List;

    .line 79
    .line 80
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    check-cast v4, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 85
    .line 86
    if-eqz v4, :cond_7

    .line 87
    .line 88
    iget v5, v4, Lcom/mycompany/app/main/MainItem$GroupItem;->c:I

    .line 89
    .line 90
    if-nez v5, :cond_6

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_6
    iget-object v5, v1, Lcom/mycompany/app/main/MainListAdapter;->g:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 94
    .line 95
    invoke-virtual {v5, v3}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    if-eqz v5, :cond_7

    .line 100
    .line 101
    iget v4, v4, Lcom/mycompany/app/main/MainItem$GroupItem;->c:I

    .line 102
    .line 103
    add-int/2addr v2, v4

    .line 104
    :cond_7
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_8
    :goto_3
    iget-object p1, v0, Lcom/mycompany/app/main/MainListView;->p:Lcom/mycompany/app/view/MyListGroup;

    .line 108
    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->M:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 118
    .line 119
    invoke-virtual {v1, v2, p1}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    .line 120
    .line 121
    .line 122
    iget-object p1, v0, Lcom/mycompany/app/main/MainListView;->M:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 123
    .line 124
    new-instance v0, Lcom/mycompany/app/main/MainListView$18$1;

    .line 125
    .line 126
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/MainListView$18$1;-><init>(Lcom/mycompany/app/main/MainListView$18;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 130
    .line 131
    .line 132
    :cond_9
    :goto_4
    return-void
.end method
