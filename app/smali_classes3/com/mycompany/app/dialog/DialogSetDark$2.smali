.class Lcom/mycompany/app/dialog/DialogSetDark$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetDark;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetDark;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetDark$2;->c:Lcom/mycompany/app/dialog/DialogSetDark;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDark$2;->c:Lcom/mycompany/app/dialog/DialogSetDark;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetDark;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetDark;->b0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetDark;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetDark$3;

    .line 17
    .line 18
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetDark$3;-><init>(Lcom/mycompany/app/dialog/DialogSetDark;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogSetDark;->G(Z)V

    .line 26
    .line 27
    .line 28
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetDark;->i0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    invoke-virtual {v2, v3, v1}, Lcom/mycompany/app/view/MyRecyclerView;->u0(ZZ)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Lcom/mycompany/app/view/MyManagerLinear;

    .line 35
    .line 36
    invoke-direct {v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 37
    .line 38
    .line 39
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetDark;->C()Ljava/util/ArrayList;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    new-instance v5, Lcom/mycompany/app/dialog/DialogSetDark$4;

    .line 46
    .line 47
    invoke-direct {v5, v0}, Lcom/mycompany/app/dialog/DialogSetDark$4;-><init>(Lcom/mycompany/app/dialog/DialogSetDark;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {v2, v4, v3, v1, v5}, Lcom/mycompany/app/setting/SettingListAdapter;-><init>(Ljava/util/ArrayList;ZLandroidx/recyclerview/widget/LinearLayoutManager;Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;)V

    .line 51
    .line 52
    .line 53
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogSetDark;->m0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 54
    .line 55
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetDark;->i0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 56
    .line 57
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetDark;->i0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 61
    .line 62
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetDark;->m0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 65
    .line 66
    .line 67
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetDark;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 68
    .line 69
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetDark$5;

    .line 70
    .line 71
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetDark$5;-><init>(Lcom/mycompany/app/dialog/DialogSetDark;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    .line 76
    .line 77
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetDark;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 78
    .line 79
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetDark$6;

    .line 80
    .line 81
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetDark$6;-><init>(Lcom/mycompany/app/dialog/DialogSetDark;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    .line 86
    .line 87
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetDark;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 88
    .line 89
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetDark$7;

    .line 90
    .line 91
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetDark$7;-><init>(Lcom/mycompany/app/dialog/DialogSetDark;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    .line 96
    .line 97
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetDark;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 98
    .line 99
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetDark$8;

    .line 100
    .line 101
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetDark$8;-><init>(Lcom/mycompany/app/dialog/DialogSetDark;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    .line 106
    .line 107
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetDark;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 108
    .line 109
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetDark$9;

    .line 110
    .line 111
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetDark$9;-><init>(Lcom/mycompany/app/dialog/DialogSetDark;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 115
    .line 116
    .line 117
    :cond_2
    :goto_0
    return-void
.end method
