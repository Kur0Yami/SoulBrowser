.class Lcom/mycompany/app/main/MainTxtAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainTxtAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainTxtAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainTxtAdapter$1;->c:Lcom/mycompany/app/main/MainTxtAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtAdapter$1;->c:Lcom/mycompany/app/main/MainTxtAdapter;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/MainTxtAdapter;->m:Lcom/mycompany/app/main/MainTxtAdapter$MainTxtListener;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
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
    instance-of v2, p1, Lcom/mycompany/app/main/MainTxtAdapter$ViewHolder;

    .line 20
    .line 21
    if-nez v2, :cond_3

    .line 22
    .line 23
    :goto_0
    const/4 p1, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_3
    check-cast p1, Lcom/mycompany/app/main/MainTxtAdapter$ViewHolder;

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
    check-cast v0, Lcom/mycompany/app/main/MainTxtView$26;

    .line 41
    .line 42
    iget-object v2, v0, Lcom/mycompany/app/main/MainTxtView$26;->a:Lcom/mycompany/app/main/MainTxtView;

    .line 43
    .line 44
    iget-object v3, v2, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 45
    .line 46
    const/4 v4, 0x1

    .line 47
    if-nez v3, :cond_6

    .line 48
    .line 49
    goto :goto_5

    .line 50
    :cond_6
    iget-boolean v3, v2, Lcom/mycompany/app/main/MainTxtView;->O2:Z

    .line 51
    .line 52
    if-eqz v3, :cond_7

    .line 53
    .line 54
    goto :goto_5

    .line 55
    :cond_7
    iput-boolean v4, v2, Lcom/mycompany/app/main/MainTxtView;->O2:Z

    .line 56
    .line 57
    iput-boolean v1, v2, Lcom/mycompany/app/main/MainTxtView;->A2:Z

    .line 58
    .line 59
    iget-boolean v3, v2, Lcom/mycompany/app/main/MainTxtView;->x2:Z

    .line 60
    .line 61
    if-eqz v3, :cond_b

    .line 62
    .line 63
    iget-object v3, v2, Lcom/mycompany/app/main/MainTxtView;->J1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 64
    .line 65
    if-nez v3, :cond_8

    .line 66
    .line 67
    goto :goto_4

    .line 68
    :cond_8
    iget-object v3, v2, Lcom/mycompany/app/main/MainTxtView;->s2:Ljava/util/ArrayList;

    .line 69
    .line 70
    if-nez v3, :cond_9

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_9
    invoke-virtual {v2, p1}, Lcom/mycompany/app/main/MainTxtView;->I0(I)I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    iget v3, v2, Lcom/mycompany/app/main/MainTxtView;->t2:I

    .line 78
    .line 79
    if-ne p1, v3, :cond_a

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_a
    invoke-virtual {v2, p1, v4}, Lcom/mycompany/app/main/MainTxtView;->X0(IZ)V

    .line 83
    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_b
    iput p1, v2, Lcom/mycompany/app/main/MainTxtView;->v2:I

    .line 87
    .line 88
    invoke-virtual {v2}, Lcom/mycompany/app/main/MainTxtView;->T0()V

    .line 89
    .line 90
    .line 91
    :goto_4
    iput-boolean v1, v2, Lcom/mycompany/app/main/MainTxtView;->A2:Z

    .line 92
    .line 93
    iget-object p1, v2, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 94
    .line 95
    new-instance v1, Lcom/mycompany/app/main/MainTxtView$26$1;

    .line 96
    .line 97
    invoke-direct {v1, v0}, Lcom/mycompany/app/main/MainTxtView$26$1;-><init>(Lcom/mycompany/app/main/MainTxtView$26;)V

    .line 98
    .line 99
    .line 100
    const-wide/16 v2, 0xc8

    .line 101
    .line 102
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 103
    .line 104
    .line 105
    :goto_5
    return v4
.end method
