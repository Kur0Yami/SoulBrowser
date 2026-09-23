.class Lcom/mycompany/app/dialog/DialogSetUseTts$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetUseTts;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetUseTts;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetUseTts$2;->c:Lcom/mycompany/app/dialog/DialogSetUseTts;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetUseTts$2;->c:Lcom/mycompany/app/dialog/DialogSetUseTts;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetUseTts;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetUseTts;->b0:Landroid/content/Context;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetUseTts;->e0:Lcom/mycompany/app/view/MyButtonImage;

    .line 17
    .line 18
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_dark_20:I

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 21
    .line 22
    .line 23
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetUseTts;->e0:Lcom/mycompany/app/view/MyButtonImage;

    .line 24
    .line 25
    const v2, -0xc0c0c1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetUseTts;->e0:Lcom/mycompany/app/view/MyButtonImage;

    .line 33
    .line 34
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_black_20:I

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 37
    .line 38
    .line 39
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetUseTts;->e0:Lcom/mycompany/app/view/MyButtonImage;

    .line 40
    .line 41
    const/high16 v2, 0x21000000

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 44
    .line 45
    .line 46
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 52
    .line 53
    sget v4, Lnet/kaki87/soul2/testing/R$string;->tts_on:I

    .line 54
    .line 55
    sget v5, Lnet/kaki87/soul2/testing/R$string;->tts_info_1:I

    .line 56
    .line 57
    sget-boolean v7, Lcom/mycompany/app/pref/PrefTts;->j:Z

    .line 58
    .line 59
    const/4 v8, 0x1

    .line 60
    const/4 v6, 0x0

    .line 61
    const/4 v3, 0x0

    .line 62
    invoke-direct/range {v2 .. v8}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 69
    .line 70
    sget v5, Lnet/kaki87/soul2/testing/R$string;->detail_setting:I

    .line 71
    .line 72
    const/4 v7, 0x0

    .line 73
    const/4 v8, 0x0

    .line 74
    const/4 v4, 0x1

    .line 75
    invoke-direct/range {v3 .. v8}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 76
    .line 77
    .line 78
    const/4 v2, 0x1

    .line 79
    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->t(Ljava/util/ArrayList;Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;I)Lcom/mycompany/app/view/MyManagerLinear;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter;

    .line 84
    .line 85
    new-instance v5, Lcom/mycompany/app/dialog/DialogSetUseTts$3;

    .line 86
    .line 87
    invoke-direct {v5, v0}, Lcom/mycompany/app/dialog/DialogSetUseTts$3;-><init>(Lcom/mycompany/app/dialog/DialogSetUseTts;)V

    .line 88
    .line 89
    .line 90
    invoke-direct {v4, v1, v2, v3, v5}, Lcom/mycompany/app/setting/SettingListAdapter;-><init>(Ljava/util/ArrayList;ZLandroidx/recyclerview/widget/LinearLayoutManager;Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;)V

    .line 91
    .line 92
    .line 93
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogSetUseTts;->g0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 94
    .line 95
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetUseTts;->f0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 96
    .line 97
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 98
    .line 99
    .line 100
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetUseTts;->f0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 101
    .line 102
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetUseTts;->g0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 105
    .line 106
    .line 107
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetUseTts;->e0:Lcom/mycompany/app/view/MyButtonImage;

    .line 108
    .line 109
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetUseTts$4;

    .line 110
    .line 111
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetUseTts$4;-><init>(Lcom/mycompany/app/dialog/DialogSetUseTts;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    .line 116
    .line 117
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetUseTts;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 118
    .line 119
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetUseTts$5;

    .line 120
    .line 121
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetUseTts$5;-><init>(Lcom/mycompany/app/dialog/DialogSetUseTts;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 125
    .line 126
    .line 127
    :cond_2
    :goto_1
    return-void
.end method
