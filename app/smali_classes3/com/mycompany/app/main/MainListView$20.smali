.class Lcom/mycompany/app/main/MainListView$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView$20;->a:Lcom/mycompany/app/main/MainListView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView$20;->a:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    iget-object p3, p1, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 4
    .line 5
    const/4 p4, 0x0

    .line 6
    if-nez p3, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    if-nez p2, :cond_1

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    instance-of p3, p2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;

    .line 17
    .line 18
    if-eqz p3, :cond_2

    .line 19
    .line 20
    check-cast p2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;

    .line 21
    .line 22
    iget p2, p2, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->m:I

    .line 23
    .line 24
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainListView;->b(Lcom/mycompany/app/main/MainListView;I)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1

    .line 29
    :cond_2
    instance-of p3, p2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;

    .line 30
    .line 31
    if-eqz p3, :cond_8

    .line 32
    .line 33
    check-cast p2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;

    .line 34
    .line 35
    iget p2, p2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->v:I

    .line 36
    .line 37
    iget-object p3, p1, Lcom/mycompany/app/main/MainListView;->M:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 38
    .line 39
    if-eqz p3, :cond_8

    .line 40
    .line 41
    iget-object p3, p1, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 42
    .line 43
    if-eqz p3, :cond_8

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/mycompany/app/main/MainListView;->J()Z

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    if-eqz p3, :cond_3

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    iget-object p3, p1, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 53
    .line 54
    invoke-virtual {p3, p2}, Lcom/mycompany/app/main/MainListAdapter;->t(I)Z

    .line 55
    .line 56
    .line 57
    move-result p3

    .line 58
    if-eqz p3, :cond_4

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_4
    iget-object p3, p1, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 62
    .line 63
    iget-boolean p5, p3, Lcom/mycompany/app/main/MainListAdapter;->q:Z

    .line 64
    .line 65
    const/4 v0, 0x1

    .line 66
    if-nez p5, :cond_5

    .line 67
    .line 68
    invoke-virtual {p1, v0, p2, p4, v0}, Lcom/mycompany/app/main/MainListView;->d0(ZIZZ)V

    .line 69
    .line 70
    .line 71
    return v0

    .line 72
    :cond_5
    iget-object p4, p3, Lcom/mycompany/app/main/MainListAdapter;->l:[Z

    .line 73
    .line 74
    if-eqz p4, :cond_7

    .line 75
    .line 76
    if-ltz p2, :cond_7

    .line 77
    .line 78
    array-length p5, p4

    .line 79
    if-lt p2, p5, :cond_6

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_6
    aget-boolean p4, p4, p2

    .line 83
    .line 84
    xor-int/2addr p4, v0

    .line 85
    invoke-virtual {p3, p2, p4}, Lcom/mycompany/app/main/MainListAdapter;->v(IZ)V

    .line 86
    .line 87
    .line 88
    :cond_7
    :goto_0
    invoke-virtual {p1}, Lcom/mycompany/app/main/MainListView;->c0()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/mycompany/app/main/MainListView;->a0()V

    .line 92
    .line 93
    .line 94
    return v0

    .line 95
    :cond_8
    :goto_1
    return p4
.end method
