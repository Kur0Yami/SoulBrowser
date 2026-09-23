.class Lcom/mycompany/app/main/MainListView2$45;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/MainListView2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView2$45;->a:Lcom/mycompany/app/main/MainListView2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2$45;->a:Lcom/mycompany/app/main/MainListView2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView2;->j()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2$45;->a:Lcom/mycompany/app/main/MainListView2;

    .line 2
    .line 3
    iget v0, p1, Lcom/mycompany/app/main/MainListView2;->e:I

    .line 4
    .line 5
    iget-object v1, p1, Lcom/mycompany/app/main/MainListView2;->c:Landroid/content/Context;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz p2, :cond_9

    .line 9
    .line 10
    if-eq p2, v2, :cond_6

    .line 11
    .line 12
    const/4 v3, 0x2

    .line 13
    if-eq p2, v3, :cond_3

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    if-eq p2, v0, :cond_2

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    if-eq p2, v0, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x5

    .line 22
    if-eq p2, v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p1, Lcom/mycompany/app/main/MainListView2;->l:Lcom/mycompany/app/main/MainListListener;

    .line 26
    .line 27
    if-eqz p1, :cond_b

    .line 28
    .line 29
    const/4 p2, 0x0

    .line 30
    invoke-virtual {p1, p2}, Lcom/mycompany/app/main/MainListListener;->n(Z)V

    .line 31
    .line 32
    .line 33
    return v2

    .line 34
    :cond_1
    iget-object p1, p1, Lcom/mycompany/app/main/MainListView2;->l:Lcom/mycompany/app/main/MainListListener;

    .line 35
    .line 36
    if-eqz p1, :cond_b

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/mycompany/app/main/MainListListener;->j()V

    .line 39
    .line 40
    .line 41
    return v2

    .line 42
    :cond_2
    iget-object p1, p1, Lcom/mycompany/app/main/MainListView2;->l:Lcom/mycompany/app/main/MainListListener;

    .line 43
    .line 44
    if-eqz p1, :cond_b

    .line 45
    .line 46
    invoke-virtual {p1, v2}, Lcom/mycompany/app/main/MainListListener;->n(Z)V

    .line 47
    .line 48
    .line 49
    return v2

    .line 50
    :cond_3
    iget-object v3, p1, Lcom/mycompany/app/main/MainListView2;->c0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 51
    .line 52
    if-nez v3, :cond_4

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_4
    invoke-virtual {v3, p2}, Lcom/mycompany/app/view/MyPopupMenu;->d(I)Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    xor-int/2addr p2, v2

    .line 60
    invoke-static {v1, v0, p2}, Lcom/mycompany/app/pref/PrefUtil;->h(Landroid/content/Context;IZ)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p1, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 64
    .line 65
    if-nez p1, :cond_5

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 69
    .line 70
    .line 71
    return v2

    .line 72
    :cond_6
    iget-object v3, p1, Lcom/mycompany/app/main/MainListView2;->c0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 73
    .line 74
    if-nez v3, :cond_7

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_7
    invoke-virtual {v3, p2}, Lcom/mycompany/app/view/MyPopupMenu;->d(I)Z

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    xor-int/2addr p2, v2

    .line 82
    invoke-static {v1, v0, p2}, Lcom/mycompany/app/pref/PrefUtil;->g(Landroid/content/Context;IZ)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p1, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 86
    .line 87
    if-nez p1, :cond_8

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 91
    .line 92
    .line 93
    return v2

    .line 94
    :cond_9
    iget-object p2, p1, Lcom/mycompany/app/main/MainListView2;->b:Lcom/mycompany/app/main/MainActivity;

    .line 95
    .line 96
    if-nez p2, :cond_a

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_a
    invoke-virtual {p1}, Lcom/mycompany/app/main/MainListView2;->m()Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_c

    .line 104
    .line 105
    :cond_b
    :goto_0
    return v2

    .line 106
    :cond_c
    iget-object v0, p1, Lcom/mycompany/app/main/MainListView2;->i0:Lcom/mycompany/app/dialog/DialogSetSort2;

    .line 107
    .line 108
    if-eqz v0, :cond_d

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetSort2;->dismiss()V

    .line 111
    .line 112
    .line 113
    const/4 v0, 0x0

    .line 114
    iput-object v0, p1, Lcom/mycompany/app/main/MainListView2;->i0:Lcom/mycompany/app/dialog/DialogSetSort2;

    .line 115
    .line 116
    :cond_d
    new-instance v0, Lcom/mycompany/app/dialog/DialogSetSort2;

    .line 117
    .line 118
    new-instance v1, Lcom/mycompany/app/main/MainListView2$48;

    .line 119
    .line 120
    invoke-direct {v1, p1}, Lcom/mycompany/app/main/MainListView2$48;-><init>(Lcom/mycompany/app/main/MainListView2;)V

    .line 121
    .line 122
    .line 123
    invoke-direct {v0, p2, v1}, Lcom/mycompany/app/dialog/DialogSetSort2;-><init>(Lcom/mycompany/app/main/MainActivity;Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V

    .line 124
    .line 125
    .line 126
    iput-object v0, p1, Lcom/mycompany/app/main/MainListView2;->i0:Lcom/mycompany/app/dialog/DialogSetSort2;

    .line 127
    .line 128
    new-instance p2, Lcom/mycompany/app/main/MainListView2$49;

    .line 129
    .line 130
    invoke-direct {p2, p1}, Lcom/mycompany/app/main/MainListView2$49;-><init>(Lcom/mycompany/app/main/MainListView2;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, p2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 134
    .line 135
    .line 136
    return v2
.end method
