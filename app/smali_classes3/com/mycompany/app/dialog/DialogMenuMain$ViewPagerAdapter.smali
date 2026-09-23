.class Lcom/mycompany/app/dialog/DialogMenuMain$ViewPagerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogMenuMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewPagerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mycompany/app/dialog/DialogMenuMain$ViewPagerHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lcom/mycompany/app/dialog/DialogMenuMain;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogMenuMain;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogMenuMain$ViewPagerAdapter;->d:Lcom/mycompany/app/dialog/DialogMenuMain;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuMain$ViewPagerAdapter;->d:Lcom/mycompany/app/dialog/DialogMenuMain;

    .line 2
    .line 3
    iget v0, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->z0:I

    .line 4
    .line 5
    return v0
.end method

.method public final f(I)I
    .locals 0

    .line 1
    return p1
.end method

.method public final bridge synthetic n(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/mycompany/app/dialog/DialogMenuMain$ViewPagerHolder;

    .line 2
    .line 3
    return-void
.end method

.method public final o(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogMenuMain$ViewPagerAdapter;->d:Lcom/mycompany/app/dialog/DialogMenuMain;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogMenuMain;->b0:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    goto :goto_3

    .line 9
    :cond_0
    new-instance v1, Lcom/mycompany/app/view/MyRecyclerView;

    .line 10
    .line 11
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogMenuMain;->b0:Landroid/content/Context;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Lcom/mycompany/app/view/MyRecyclerView;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogMenuMain;->d0:[I

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    array-length v3, v0

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move v3, v2

    .line 24
    :goto_0
    if-nez v3, :cond_2

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_2
    iget v3, p1, Lcom/mycompany/app/dialog/DialogMenuMain;->A0:I

    .line 28
    .line 29
    mul-int/2addr p2, v3

    .line 30
    add-int/2addr v3, p2

    .line 31
    array-length v0, v0

    .line 32
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    sub-int/2addr v0, p2

    .line 37
    if-nez v0, :cond_3

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_3
    new-array v6, v0, [I

    .line 41
    .line 42
    :goto_1
    if-ge v2, v0, :cond_4

    .line 43
    .line 44
    iget-object v3, p1, Lcom/mycompany/app/dialog/DialogMenuMain;->d0:[I

    .line 45
    .line 46
    add-int v4, v2, p2

    .line 47
    .line 48
    aget v3, v3, v4

    .line 49
    .line 50
    aput v3, v6, v2

    .line 51
    .line 52
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_4
    new-instance v0, Lcom/mycompany/app/main/MenuIconAdapter;

    .line 56
    .line 57
    new-instance v5, Lcom/mycompany/app/dialog/DialogMenuMain$17;

    .line 58
    .line 59
    invoke-direct {v5, p1}, Lcom/mycompany/app/dialog/DialogMenuMain$17;-><init>(Lcom/mycompany/app/dialog/DialogMenuMain;)V

    .line 60
    .line 61
    .line 62
    const/4 v2, 0x0

    .line 63
    const/4 v3, 0x0

    .line 64
    const/4 v4, 0x0

    .line 65
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/main/MenuIconAdapter;-><init>(Landroid/view/View;[IIZLcom/mycompany/app/main/MenuIconAdapter$MenuListener;)V

    .line 66
    .line 67
    .line 68
    new-instance p2, Lcom/mycompany/app/view/MyManagerGrid;

    .line 69
    .line 70
    iget v2, p1, Lcom/mycompany/app/dialog/DialogMenuMain;->j0:I

    .line 71
    .line 72
    invoke-direct {p2, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 79
    .line 80
    .line 81
    iget-object p2, p1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 82
    .line 83
    if-nez p2, :cond_5

    .line 84
    .line 85
    :goto_2
    move-object p2, v1

    .line 86
    goto :goto_3

    .line 87
    :cond_5
    new-instance v2, Lcom/mycompany/app/dialog/DialogMenuMain$18;

    .line 88
    .line 89
    invoke-direct {v2, p1, v0, v6}, Lcom/mycompany/app/dialog/DialogMenuMain$18;-><init>(Lcom/mycompany/app/dialog/DialogMenuMain;Lcom/mycompany/app/main/MenuIconAdapter;[I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :goto_3
    :try_start_0
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->W6(Landroid/view/View;)V

    .line 97
    .line 98
    .line 99
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 100
    .line 101
    const/4 v1, -0x1

    .line 102
    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .line 107
    .line 108
    goto :goto_4

    .line 109
    :catch_0
    iget-object v0, p1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 110
    .line 111
    if-nez v0, :cond_6

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_6
    new-instance v1, Lcom/mycompany/app/dialog/DialogMenuMain$8;

    .line 115
    .line 116
    invoke-direct {v1, p1}, Lcom/mycompany/app/dialog/DialogMenuMain$8;-><init>(Lcom/mycompany/app/dialog/DialogMenuMain;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 120
    .line 121
    .line 122
    :goto_4
    new-instance p1, Lcom/mycompany/app/dialog/DialogMenuMain$ViewPagerHolder;

    .line 123
    .line 124
    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 125
    .line 126
    .line 127
    return-object p1
.end method
