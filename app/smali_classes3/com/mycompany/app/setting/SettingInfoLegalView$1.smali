.class Lcom/mycompany/app/setting/SettingInfoLegalView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingInfoLegalView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingInfoLegalView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingInfoLegalView$1;->c:Lcom/mycompany/app/setting/SettingInfoLegalView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    sget v0, Lcom/mycompany/app/setting/SettingInfoLegalView;->i2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingInfoLegalView$1;->c:Lcom/mycompany/app/setting/SettingInfoLegalView;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 15
    .line 16
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_dark_24:I

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 19
    .line 20
    .line 21
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 22
    .line 23
    const v2, -0xc0c0c1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 27
    .line 28
    .line 29
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->H1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 30
    .line 31
    const v2, -0x50506

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    .line 36
    .line 37
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->L1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 38
    .line 39
    const v2, -0xdededf

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 47
    .line 48
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_black_24:I

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 51
    .line 52
    .line 53
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 54
    .line 55
    const/high16 v2, 0x21000000

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 58
    .line 59
    .line 60
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->H1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 61
    .line 62
    const/high16 v2, -0x1000000

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    .line 66
    .line 67
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->L1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 68
    .line 69
    const/4 v2, -0x1

    .line 70
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 71
    .line 72
    .line 73
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 74
    .line 75
    new-instance v2, Lcom/mycompany/app/setting/SettingInfoLegalView$2;

    .line 76
    .line 77
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingInfoLegalView$2;-><init>(Lcom/mycompany/app/setting/SettingInfoLegalView;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    .line 82
    .line 83
    new-instance v1, Lcom/mycompany/app/view/MyManagerLinear;

    .line 84
    .line 85
    const/4 v2, 0x1

    .line 86
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 87
    .line 88
    .line 89
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->M1:Lcom/mycompany/app/view/MyManagerLinear;

    .line 90
    .line 91
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingActivity;->L1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 92
    .line 93
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 94
    .line 95
    .line 96
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->L1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 97
    .line 98
    new-instance v3, Lcom/mycompany/app/setting/SettingInfoLegalView$3;

    .line 99
    .line 100
    invoke-direct {v3, v0}, Lcom/mycompany/app/setting/SettingInfoLegalView$3;-><init>(Lcom/mycompany/app/setting/SettingInfoLegalView;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->j(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 104
    .line 105
    .line 106
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingInfoLegalView;->Z1:Lcom/mycompany/app/view/MyCoverView;

    .line 107
    .line 108
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyCoverView;->m(Z)V

    .line 109
    .line 110
    .line 111
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingInfoLegalView;->b2:Lcom/mycompany/app/setting/SettingInfoLegalView$LoadTask;

    .line 112
    .line 113
    if-eqz v1, :cond_2

    .line 114
    .line 115
    iput-boolean v2, v1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 116
    .line 117
    :cond_2
    const/4 v1, 0x0

    .line 118
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingInfoLegalView;->b2:Lcom/mycompany/app/setting/SettingInfoLegalView$LoadTask;

    .line 119
    .line 120
    new-instance v1, Lcom/mycompany/app/setting/SettingInfoLegalView$LoadTask;

    .line 121
    .line 122
    invoke-direct {v1, v0}, Lcom/mycompany/app/setting/SettingInfoLegalView$LoadTask;-><init>(Lcom/mycompany/app/setting/SettingInfoLegalView;)V

    .line 123
    .line 124
    .line 125
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingInfoLegalView;->b2:Lcom/mycompany/app/setting/SettingInfoLegalView$LoadTask;

    .line 126
    .line 127
    iget-object v0, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 128
    .line 129
    invoke-virtual {v1, v0}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 130
    .line 131
    .line 132
    return-void
.end method
