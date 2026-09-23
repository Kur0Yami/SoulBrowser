.class Lcom/mycompany/app/main/MainListView$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/fragment/FragmentExpandView$FragmentScrollListener;


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
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView$14;->a:Lcom/mycompany/app/main/MainListView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView$14;->a:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView;->l()V

    .line 6
    .line 7
    .line 8
    :cond_0
    if-nez p2, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    const/4 p1, 0x0

    .line 12
    invoke-virtual {v0, p1}, Lcom/mycompany/app/main/MainListView;->o(Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final b(IIIIII)V
    .locals 4

    .line 1
    iget-object p3, p0, Lcom/mycompany/app/main/MainListView$14;->a:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    iget-object v0, p3, Lcom/mycompany/app/main/MainListView;->M:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_3

    .line 8
    .line 9
    :cond_0
    iget-boolean v0, p3, Lcom/mycompany/app/main/MainListView;->c1:Z

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget v0, p3, Lcom/mycompany/app/main/MainListView;->d:I

    .line 16
    .line 17
    invoke-static {v0}, Lcom/mycompany/app/pref/PrefUtil;->d(I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p3, Lcom/mycompany/app/main/MainListView;->M:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Lcom/mycompany/app/fragment/FragmentExpandView;->e(Z)V

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    iget-object v0, p3, Lcom/mycompany/app/main/MainListView;->M:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 30
    .line 31
    if-lez p2, :cond_2

    .line 32
    .line 33
    move v3, v1

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    move v3, v2

    .line 36
    :goto_0
    invoke-virtual {v0, v3}, Lcom/mycompany/app/fragment/FragmentExpandView;->e(Z)V

    .line 37
    .line 38
    .line 39
    :goto_1
    if-nez p1, :cond_7

    .line 40
    .line 41
    iget p5, p3, Lcom/mycompany/app/main/MainListView;->i0:I

    .line 42
    .line 43
    if-ne p5, p1, :cond_3

    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_3
    iput p1, p3, Lcom/mycompany/app/main/MainListView;->i0:I

    .line 47
    .line 48
    sget p1, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 49
    .line 50
    if-lt p2, p1, :cond_6

    .line 51
    .line 52
    const/4 p1, 0x2

    .line 53
    if-ne p4, p1, :cond_4

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_4
    if-ne p4, v1, :cond_9

    .line 57
    .line 58
    iget-object p1, p3, Lcom/mycompany/app/main/MainListView;->x:Lcom/mycompany/app/view/MyHeaderView;

    .line 59
    .line 60
    if-nez p1, :cond_5

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    sget p2, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 68
    .line 69
    neg-int p2, p2

    .line 70
    int-to-float p2, p2

    .line 71
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_9

    .line 76
    .line 77
    sget p1, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 78
    .line 79
    neg-int p1, p1

    .line 80
    int-to-float p1, p1

    .line 81
    invoke-virtual {p3, p1, v1}, Lcom/mycompany/app/main/MainListView;->l0(FZ)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_6
    :goto_2
    invoke-virtual {p3}, Lcom/mycompany/app/main/MainListView;->z0()V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_7
    iput p1, p3, Lcom/mycompany/app/main/MainListView;->i0:I

    .line 90
    .line 91
    iput-boolean v2, p3, Lcom/mycompany/app/main/MainListView;->j0:Z

    .line 92
    .line 93
    iget-object p1, p3, Lcom/mycompany/app/main/MainListView;->O:Lcom/mycompany/app/view/MyScrollBar;

    .line 94
    .line 95
    if-eqz p1, :cond_8

    .line 96
    .line 97
    invoke-virtual {p1, p5, p6}, Lcom/mycompany/app/view/MyScrollBar;->p(II)V

    .line 98
    .line 99
    .line 100
    :cond_8
    iget-object p1, p3, Lcom/mycompany/app/main/MainListView;->x:Lcom/mycompany/app/view/MyHeaderView;

    .line 101
    .line 102
    if-eqz p1, :cond_9

    .line 103
    .line 104
    const/4 p1, 0x0

    .line 105
    invoke-virtual {p3, p1, v2}, Lcom/mycompany/app/main/MainListView;->l0(FZ)V

    .line 106
    .line 107
    .line 108
    :cond_9
    :goto_3
    return-void
.end method
