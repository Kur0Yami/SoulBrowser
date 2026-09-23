.class Lcom/mycompany/app/setting/SettingAdvanced$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingAdvanced;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingAdvanced;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingAdvanced$4;->a:Lcom/mycompany/app/setting/SettingAdvanced;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V
    .locals 1

    .line 1
    sget p4, Lcom/mycompany/app/setting/SettingAdvanced;->c2:I

    .line 2
    .line 3
    iget-object p4, p0, Lcom/mycompany/app/setting/SettingAdvanced$4;->a:Lcom/mycompany/app/setting/SettingAdvanced;

    .line 4
    .line 5
    const/4 v0, 0x7

    .line 6
    packed-switch p2, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    :pswitch_0
    goto :goto_0

    .line 10
    :pswitch_1
    sput-boolean p3, Lcom/mycompany/app/pref/PrefPdf;->t:Z

    .line 11
    .line 12
    iget-object p1, p4, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 13
    .line 14
    const-string p2, "mDebugMode"

    .line 15
    .line 16
    invoke-static {v0, p1, p2, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    sget-boolean p1, Lcom/mycompany/app/pref/PrefPdf;->t:Z

    .line 20
    .line 21
    invoke-static {p1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_2
    sput-boolean p3, Lcom/mycompany/app/pref/PrefPdf;->s:Z

    .line 26
    .line 27
    iget-object p1, p4, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 28
    .line 29
    const-string p2, "mBlockSsl"

    .line 30
    .line 31
    invoke-static {v0, p1, p2, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_3
    sput-boolean p3, Lcom/mycompany/app/pref/PrefPdf;->p:Z

    .line 36
    .line 37
    iget-object p1, p4, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 38
    .line 39
    const-string p2, "mOnlyHttps2"

    .line 40
    .line 41
    invoke-static {v0, p1, p2, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_4
    iget-object p1, p4, Lcom/mycompany/app/setting/SettingAdvanced;->a2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 46
    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    :goto_0
    return-void

    .line 50
    :cond_0
    const/4 p2, 0x0

    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogListBook;->dismiss()V

    .line 54
    .line 55
    .line 56
    iput-object p2, p4, Lcom/mycompany/app/setting/SettingAdvanced;->a2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 57
    .line 58
    :cond_1
    new-instance p1, Lcom/mycompany/app/main/MainListView$ListViewConfig;

    .line 59
    .line 60
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 61
    .line 62
    .line 63
    const/16 p3, 0x1c

    .line 64
    .line 65
    iput p3, p1, Lcom/mycompany/app/main/MainListView$ListViewConfig;->a:I

    .line 66
    .line 67
    const/4 p3, 0x1

    .line 68
    iput-boolean p3, p1, Lcom/mycompany/app/main/MainListView$ListViewConfig;->i:Z

    .line 69
    .line 70
    sget p3, Lnet/kaki87/soul2/testing/R$string;->js_black:I

    .line 71
    .line 72
    iput p3, p1, Lcom/mycompany/app/main/MainListView$ListViewConfig;->f:I

    .line 73
    .line 74
    new-instance p3, Lcom/mycompany/app/dialog/DialogListBook;

    .line 75
    .line 76
    iget-object v0, p4, Lcom/mycompany/app/setting/SettingAdvanced;->Y1:Ljava/lang/String;

    .line 77
    .line 78
    invoke-direct {p3, p4, p1, v0, p2}, Lcom/mycompany/app/dialog/DialogListBook;-><init>(Lcom/mycompany/app/main/MainActivity;Lcom/mycompany/app/main/MainListView$ListViewConfig;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogListBook$ListBookListener;)V

    .line 79
    .line 80
    .line 81
    iput-object p3, p4, Lcom/mycompany/app/setting/SettingAdvanced;->a2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 82
    .line 83
    new-instance p1, Lcom/mycompany/app/setting/SettingAdvanced$6;

    .line 84
    .line 85
    invoke-direct {p1, p4}, Lcom/mycompany/app/setting/SettingAdvanced$6;-><init>(Lcom/mycompany/app/setting/SettingAdvanced;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p3, p1}, Lcom/mycompany/app/view/MyDialogNormal;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p4, Lcom/mycompany/app/setting/SettingAdvanced;->a2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 92
    .line 93
    new-instance p2, Lcom/mycompany/app/setting/SettingAdvanced$7;

    .line 94
    .line 95
    invoke-direct {p2, p4}, Lcom/mycompany/app/setting/SettingAdvanced$7;-><init>(Lcom/mycompany/app/setting/SettingAdvanced;)V

    .line 96
    .line 97
    .line 98
    iput-object p2, p1, Lcom/mycompany/app/view/MyDialogNormal;->o:Lcom/mycompany/app/view/MyDialogBottom$UserShowListener;

    .line 99
    .line 100
    return-void

    .line 101
    :pswitch_5
    sput-boolean p3, Lcom/mycompany/app/pref/PrefWeb;->H:Z

    .line 102
    .line 103
    iget-object p1, p4, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 104
    .line 105
    const/16 p2, 0xe

    .line 106
    .line 107
    const-string p4, "mEnableJs"

    .line 108
    .line 109
    invoke-static {p2, p1, p4, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :pswitch_6
    invoke-virtual {p4, p1, p2}, Lcom/mycompany/app/setting/SettingAdvanced;->P0(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;I)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :pswitch_7
    invoke-virtual {p4, p1, p2}, Lcom/mycompany/app/setting/SettingAdvanced;->P0(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;I)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :pswitch_8
    sput-boolean p3, Lcom/mycompany/app/pref/PrefPdf;->r:Z

    .line 122
    .line 123
    iget-object p1, p4, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 124
    .line 125
    const-string p2, "mBlockAmp"

    .line 126
    .line 127
    invoke-static {v0, p1, p2, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :pswitch_9
    sput-boolean p3, Lcom/mycompany/app/pref/PrefZone;->v:Z

    .line 132
    .line 133
    iget-object p1, p4, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 134
    .line 135
    const/16 p2, 0xf

    .line 136
    .line 137
    const-string p4, "mPreRaster"

    .line 138
    .line 139
    invoke-static {p2, p1, p4, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :pswitch_a
    sput-boolean p3, Lcom/mycompany/app/pref/PrefPdf;->q:Z

    .line 144
    .line 145
    iget-object p1, p4, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 146
    .line 147
    const-string p2, "mSaveData"

    .line 148
    .line 149
    invoke-static {v0, p1, p2, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 150
    .line 151
    .line 152
    return-void

    :pswitch_b
    sput-boolean p3, Lcom/mycompany/app/pref/PrefPdf;->Q:Z

    iget-object p1, p4, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    const-string p2, "mFreshTabRestore"

    invoke-static {v0, p1, p2, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    return-void

    :pswitch_c
    sput-boolean p3, Lcom/mycompany/app/pref/PrefPdf;->R:Z

    iget-object p1, p4, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    const-string p2, "mErudaPreload"

    invoke-static {v0, p1, p2, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    return-void

    .line 153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
