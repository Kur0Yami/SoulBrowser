.class Lcom/mycompany/app/main/MainListView$61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:Lcom/mycompany/app/main/MainListView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView$61;->f:Lcom/mycompany/app/main/MainListView;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/main/MainListView$61;->c:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView$61;->f:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/main/MainListView;->M:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p1, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    iput-boolean v2, v1, Lcom/mycompany/app/main/MainListAdapter;->t:Z

    .line 14
    .line 15
    :cond_1
    iget v1, p0, Lcom/mycompany/app/main/MainListView$61;->c:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_8

    .line 22
    .line 23
    iget-object v0, p1, Lcom/mycompany/app/main/MainListView;->M:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 24
    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    :goto_0
    return-void

    .line 28
    :cond_2
    iget-object v0, p1, Lcom/mycompany/app/main/MainListView;->p:Lcom/mycompany/app/view/MyListGroup;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    if-eqz v0, :cond_7

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_7

    .line 38
    .line 39
    iget-object v0, p1, Lcom/mycompany/app/main/MainListView;->M:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    move v3, v2

    .line 46
    :goto_1
    if-ge v3, v0, :cond_7

    .line 47
    .line 48
    iget-object v4, p1, Lcom/mycompany/app/main/MainListView;->M:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 49
    .line 50
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    if-nez v4, :cond_3

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    if-nez v5, :cond_4

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_4
    instance-of v6, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;

    .line 65
    .line 66
    if-nez v6, :cond_5

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_5
    check-cast v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;

    .line 70
    .line 71
    iget v5, v5, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->t:I

    .line 72
    .line 73
    if-ne v5, v1, :cond_6

    .line 74
    .line 75
    invoke-virtual {v4}, Landroid/view/View;->getY()F

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    iget v2, p1, Lcom/mycompany/app/main/MainListView;->j:I

    .line 80
    .line 81
    int-to-float v2, v2

    .line 82
    add-float/2addr v0, v2

    .line 83
    iget-object v2, p1, Lcom/mycompany/app/main/MainListView;->p:Lcom/mycompany/app/view/MyListGroup;

    .line 84
    .line 85
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    invoke-virtual {p1}, Lcom/mycompany/app/main/MainListView;->r()I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    int-to-float v3, v3

    .line 94
    add-float/2addr v2, v3

    .line 95
    sub-float/2addr v2, v0

    .line 96
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    goto :goto_3

    .line 101
    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_7
    :goto_3
    iget-object p1, p1, Lcom/mycompany/app/main/MainListView;->M:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 105
    .line 106
    invoke-virtual {p1, v1, v2}, Lcom/mycompany/app/expand/ExpandListView;->a(II)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_8
    iget-object p1, p1, Lcom/mycompany/app/main/MainListView;->M:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 111
    .line 112
    invoke-virtual {p1, v1}, Lcom/mycompany/app/expand/ExpandListView;->b(I)V

    .line 113
    .line 114
    .line 115
    return-void
.end method
