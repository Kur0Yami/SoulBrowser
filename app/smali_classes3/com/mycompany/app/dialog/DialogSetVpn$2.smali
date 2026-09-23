.class Lcom/mycompany/app/dialog/DialogSetVpn$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetVpn;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetVpn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetVpn$2;->c:Lcom/mycompany/app/dialog/DialogSetVpn;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetVpn$2;->c:Lcom/mycompany/app/dialog/DialogSetVpn;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetVpn;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_4

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetVpn;->b0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetVpn;->D()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v7

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v8, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 27
    .line 28
    sget v10, Lnet/kaki87/soul2/testing/R$string;->vpn:I

    .line 29
    .line 30
    sget v11, Lnet/kaki87/soul2/testing/R$string;->not_support_locale:I

    .line 31
    .line 32
    sget-boolean v13, Lcom/mycompany/app/pref/PrefTts;->y:Z

    .line 33
    .line 34
    const/4 v14, 0x1

    .line 35
    const/4 v12, 0x0

    .line 36
    const/4 v9, 0x0

    .line 37
    invoke-direct/range {v8 .. v14}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    new-instance v9, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 44
    .line 45
    sget v11, Lnet/kaki87/soul2/testing/R$string;->vpn_server:I

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetVpn;->C()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v12

    .line 51
    const/4 v13, 0x0

    .line 52
    const/4 v14, 0x0

    .line 53
    const/4 v10, 0x1

    .line 54
    invoke-direct/range {v9 .. v14}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;II)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 61
    .line 62
    sget v4, Lnet/kaki87/soul2/testing/R$string;->visit_site:I

    .line 63
    .line 64
    const/4 v6, 0x0

    .line 65
    const/4 v9, 0x0

    .line 66
    const/4 v3, 0x2

    .line 67
    move v8, v7

    .line 68
    invoke-direct/range {v2 .. v9}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;Ljava/lang/String;ZZI)V

    .line 69
    .line 70
    .line 71
    const/4 v3, 0x1

    .line 72
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->t(Ljava/util/ArrayList;Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;I)Lcom/mycompany/app/view/MyManagerLinear;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter;

    .line 77
    .line 78
    new-instance v5, Lcom/mycompany/app/dialog/DialogSetVpn$3;

    .line 79
    .line 80
    invoke-direct {v5, v0}, Lcom/mycompany/app/dialog/DialogSetVpn$3;-><init>(Lcom/mycompany/app/dialog/DialogSetVpn;)V

    .line 81
    .line 82
    .line 83
    invoke-direct {v4, v1, v3, v2, v5}, Lcom/mycompany/app/setting/SettingListAdapter;-><init>(Ljava/util/ArrayList;ZLandroidx/recyclerview/widget/LinearLayoutManager;Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;)V

    .line 84
    .line 85
    .line 86
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogSetVpn;->f0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 87
    .line 88
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetVpn;->e0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 91
    .line 92
    .line 93
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetVpn;->e0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 94
    .line 95
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetVpn;->f0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 98
    .line 99
    .line 100
    sget-boolean v1, Lcom/mycompany/app/pref/PrefTts;->y:Z

    .line 101
    .line 102
    const/4 v2, 0x0

    .line 103
    if-eqz v1, :cond_1

    .line 104
    .line 105
    const/4 v1, 0x2

    .line 106
    iput v1, v0, Lcom/mycompany/app/dialog/DialogSetVpn;->g0:I

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_1
    iput v2, v0, Lcom/mycompany/app/dialog/DialogSetVpn;->g0:I

    .line 110
    .line 111
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetVpn;->b0:Landroid/content/Context;

    .line 112
    .line 113
    invoke-static {v1}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    if-nez v1, :cond_2

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_2
    new-instance v3, Lcom/mycompany/app/dialog/DialogSetVpn$6;

    .line 121
    .line 122
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogSetVpn$6;-><init>(Lcom/mycompany/app/dialog/DialogSetVpn;)V

    .line 123
    .line 124
    .line 125
    iput-object v3, v1, Lcom/mycompany/app/main/MainApp;->K:Lcom/mycompany/app/vpn/VpnSvc$VpnSvcListener;

    .line 126
    .line 127
    iget-object v1, v1, Lcom/mycompany/app/main/MainApp;->I:Lcom/mycompany/app/vpn/VpnSvc;

    .line 128
    .line 129
    if-eqz v1, :cond_3

    .line 130
    .line 131
    iget v1, v1, Lcom/mycompany/app/vpn/VpnSvc;->h:I

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_3
    move v1, v2

    .line 135
    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/dialog/DialogSetVpn;->F(IZ)V

    .line 136
    .line 137
    .line 138
    :goto_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetVpn;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 139
    .line 140
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetVpn$4;

    .line 141
    .line 142
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetVpn$4;-><init>(Lcom/mycompany/app/dialog/DialogSetVpn;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 146
    .line 147
    .line 148
    :cond_4
    :goto_3
    return-void
.end method
