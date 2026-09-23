.class Lcom/mycompany/app/dialog/DialogSetSort2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetSort2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetSort2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetSort2$2;->c:Lcom/mycompany/app/dialog/DialogSetSort2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetSort2$2;->c:Lcom/mycompany/app/dialog/DialogSetSort2;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetSort2;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetSort2;->b0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetSort2;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 17
    .line 18
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 21
    .line 22
    .line 23
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetSort2;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 24
    .line 25
    const v2, -0x50506

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetSort2;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 33
    .line 34
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 37
    .line 38
    .line 39
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetSort2;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 40
    .line 41
    const v2, -0xe19938

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    .line 46
    .line 47
    :goto_0
    iget v1, v0, Lcom/mycompany/app/dialog/DialogSetSort2;->f0:I

    .line 48
    .line 49
    sget-object v2, Lcom/mycompany/app/dialog/DialogSetSort;->o0:[I

    .line 50
    .line 51
    rem-int/lit8 v1, v1, 0x5

    .line 52
    .line 53
    iput v1, v0, Lcom/mycompany/app/dialog/DialogSetSort2;->f0:I

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetSort2;->B()Ljava/util/ArrayList;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    new-instance v2, Lcom/mycompany/app/view/MyManagerLinear;

    .line 60
    .line 61
    const/4 v3, 0x1

    .line 62
    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 63
    .line 64
    .line 65
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter;

    .line 66
    .line 67
    new-instance v5, Lcom/mycompany/app/dialog/DialogSetSort2$3;

    .line 68
    .line 69
    invoke-direct {v5, v0}, Lcom/mycompany/app/dialog/DialogSetSort2$3;-><init>(Lcom/mycompany/app/dialog/DialogSetSort2;)V

    .line 70
    .line 71
    .line 72
    invoke-direct {v4, v1, v3, v2, v5}, Lcom/mycompany/app/setting/SettingListAdapter;-><init>(Ljava/util/ArrayList;ZLandroidx/recyclerview/widget/LinearLayoutManager;Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;)V

    .line 73
    .line 74
    .line 75
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogSetSort2;->k0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 76
    .line 77
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetSort2;->i0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 80
    .line 81
    .line 82
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetSort2;->i0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 83
    .line 84
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetSort2;->k0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 87
    .line 88
    .line 89
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetSort2;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 90
    .line 91
    sget v2, Lnet/kaki87/soul2/testing/R$string;->apply:I

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 94
    .line 95
    .line 96
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetSort2;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 97
    .line 98
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetSort2$4;

    .line 99
    .line 100
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetSort2$4;-><init>(Lcom/mycompany/app/dialog/DialogSetSort2;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    .line 105
    .line 106
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetSort2;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 107
    .line 108
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetSort2$5;

    .line 109
    .line 110
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetSort2$5;-><init>(Lcom/mycompany/app/dialog/DialogSetSort2;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 114
    .line 115
    .line 116
    :cond_2
    :goto_1
    return-void
.end method
