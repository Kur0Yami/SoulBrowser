.class Lcom/mycompany/app/main/MainHeadAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainHeadAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainHeadAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainHeadAdapter$1;->c:Lcom/mycompany/app/main/MainHeadAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainHeadAdapter$1;->c:Lcom/mycompany/app/main/MainHeadAdapter;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainHeadAdapter;->f:Lcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    if-nez p1, :cond_1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-nez p1, :cond_2

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_2
    instance-of v2, p1, Lcom/mycompany/app/main/MainHeadAdapter$HeadHolder;

    .line 20
    .line 21
    if-nez v2, :cond_3

    .line 22
    .line 23
    :goto_0
    move-object p1, v1

    .line 24
    goto :goto_1

    .line 25
    :cond_3
    check-cast p1, Lcom/mycompany/app/main/MainHeadAdapter$HeadHolder;

    .line 26
    .line 27
    :goto_1
    if-eqz p1, :cond_5

    .line 28
    .line 29
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 30
    .line 31
    if-nez v2, :cond_4

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    goto :goto_3

    .line 39
    :cond_5
    :goto_2
    const/4 p1, -0x1

    .line 40
    :goto_3
    iget-object v2, v0, Lcom/mycompany/app/main/MainHeadAdapter;->e:Lcom/mycompany/app/view/MyManagerGrid;

    .line 41
    .line 42
    if-nez v2, :cond_6

    .line 43
    .line 44
    goto :goto_9

    .line 45
    :cond_6
    iget v3, v0, Lcom/mycompany/app/main/MainHeadAdapter;->d:I

    .line 46
    .line 47
    if-ne v3, p1, :cond_7

    .line 48
    .line 49
    goto :goto_9

    .line 50
    :cond_7
    iput p1, v0, Lcom/mycompany/app/main/MainHeadAdapter;->d:I

    .line 51
    .line 52
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->U0()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->V0()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    const/4 v4, 0x1

    .line 61
    add-int/2addr v2, v4

    .line 62
    :goto_4
    if-ge v3, v2, :cond_10

    .line 63
    .line 64
    iget-object v5, v0, Lcom/mycompany/app/main/MainHeadAdapter;->e:Lcom/mycompany/app/view/MyManagerGrid;

    .line 65
    .line 66
    if-nez v5, :cond_8

    .line 67
    .line 68
    goto :goto_8

    .line 69
    :cond_8
    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->s(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    if-nez v5, :cond_9

    .line 74
    .line 75
    goto :goto_8

    .line 76
    :cond_9
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    if-nez v5, :cond_a

    .line 81
    .line 82
    goto :goto_5

    .line 83
    :cond_a
    instance-of v6, v5, Lcom/mycompany/app/main/MainHeadAdapter$HeadHolder;

    .line 84
    .line 85
    if-nez v6, :cond_b

    .line 86
    .line 87
    :goto_5
    move-object v5, v1

    .line 88
    goto :goto_6

    .line 89
    :cond_b
    check-cast v5, Lcom/mycompany/app/main/MainHeadAdapter$HeadHolder;

    .line 90
    .line 91
    :goto_6
    if-eqz v5, :cond_f

    .line 92
    .line 93
    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 94
    .line 95
    if-nez v6, :cond_c

    .line 96
    .line 97
    goto :goto_8

    .line 98
    :cond_c
    instance-of v7, v6, Lcom/mycompany/app/view/MyButtonCheck;

    .line 99
    .line 100
    if-nez v7, :cond_d

    .line 101
    .line 102
    goto :goto_8

    .line 103
    :cond_d
    check-cast v6, Lcom/mycompany/app/view/MyButtonCheck;

    .line 104
    .line 105
    iget v7, v0, Lcom/mycompany/app/main/MainHeadAdapter;->d:I

    .line 106
    .line 107
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-ne v7, v5, :cond_e

    .line 112
    .line 113
    move v5, v4

    .line 114
    goto :goto_7

    .line 115
    :cond_e
    const/4 v5, 0x0

    .line 116
    :goto_7
    invoke-virtual {v6, v5, v4}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 117
    .line 118
    .line 119
    :cond_f
    :goto_8
    add-int/lit8 v3, v3, 0x1

    .line 120
    .line 121
    goto :goto_4

    .line 122
    :cond_10
    :goto_9
    iget-object v0, v0, Lcom/mycompany/app/main/MainHeadAdapter;->f:Lcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;

    .line 123
    .line 124
    invoke-interface {v0, p1}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;->a(I)V

    .line 125
    .line 126
    .line 127
    return-void
.end method
